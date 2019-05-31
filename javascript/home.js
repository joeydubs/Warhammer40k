var unit = {}

function updateTroopTable() {
    var request = new XMLHttpRequest()
    request.onreadystatechange = function () {
        if (this.readyState == 4 && this.status == 200) {
            var response = JSON.parse(request.responseText)
            console.log(typeof response.value)
            document.getElementById("troops").innerHTML = response.value
        }
    }
    request.open("POST", "resources/models.json", true)
    request.send()
}

function fetchUnitList() {
    var request = new XMLHttpRequest()
    request.onreadystatechange = function () {
        if (this.readyState == 4 && this.status == 200) {
            console.log("Get Model List request received")
            var modelList = JSON.parse(request.responseText)
            console.log(modelList)
            document.getElementById("unit-selector").innerHTML = "<option>-- Select Unit --</option>"
            for (model in modelList) {
                var option = document.createElement("option")
                option.innerHTML = modelList[model]
                document.getElementById("unit-selector").add(option)
            }
            document.getElementById("my-army").setAttribute("hidden", true)
            document.getElementById("stratagems").setAttribute("hidden", true)
            document.getElementById("wargear").setAttribute("hidden", true)
            document.getElementById("unit-builder").removeAttribute("hidden")
        }
    }
    request.open("POST", "/fetchUnitList")
    request.send()
}

function fetchUnit() {
    document.getElementById("model-stats").setAttribute("hidden", true)
    document.getElementById("get-stats").innerText = "Get Stats"

    var request = new XMLHttpRequest()
    var unitName = document.getElementById("unit-selector").value
    request.onreadystatechange = function () {
        if (this.readyState == 4 && this.status == 200) {
            console.log("Fetch Unit request received")
            unit = JSON.parse(request.responseText)
            console.log(unit)
            var modelsSection = document.createElement("section")
            modelsSection.id = "unit-models"

            modelsSection.innerHTML = `<p><em>${unit.description}</em></p>`
            if (unit.options != null) {
                modelsSection.innerHTML += `<p><em>${unit.options}</em></p>`
            }
            else {
                modelsSection.innerHTML += "<p><em>This unit has no wargear options.</em></p>"
            }

            var modelTable = document.createElement("table")
            var titleRow = modelTable.insertRow(-1)
            titleRow.insertCell(-1).innerText = "Name"
            titleRow.insertCell(-1).innerText = "Power"
            titleRow.insertCell(-1).innerText = "Min"
            titleRow.insertCell(-1).innerText = "Max"
            titleRow.insertCell(-1).innerText = "Points"
            titleRow.insertCell(-1).innerText = "Gear"
            titleRow.insertCell(-1).innerText = "Include"

            for (key in unit.models) {
                var model = unit.models[key]
                var row = modelTable.insertRow(-1)
                row.insertCell(-1).innerHTML = `<b>${key}</b>`
                row.insertCell(-1).innerText = model.power
                row.insertCell(-1).innerText = model.min
                row.insertCell(-1).innerText = model.max
                row.insertCell(-1).innerText = model.cost
                row.insertCell(-1)
                row.insertCell(-1).innerHTML = `<input id="${key}-qty" type="number" name="${model.id}" min="${model.min}" max="${model.max}" value="${model.min}">`

                for (gear in model.gear) {
                    var wargear = model.gear[gear]
                    var gearRow = modelTable.insertRow(-1)
                    gearRow.insertCell(-1)
                    gearRow.insertCell(-1)
                    gearRow.insertCell(-1)
                    gearRow.insertCell(-1)
                    gearRow.insertCell(-1).innerText = wargear.cost
                    gearRow.insertCell(-1).innerText = gear
                    gearRow.insertCell(-1).innerHTML = `<input class="selected-gear" type="checkbox" name="${model.id}" value="${wargear.id}">`
                }
            }

            modelsSection.appendChild(modelTable)
            document.getElementById("unit-models").replaceWith(modelsSection)
            document.getElementById("submit-unit").removeAttribute("disabled")

            // var row = document.getElementById("unit-models").rows[index]
            // for (option in modelGear.wargearoptions) {
            //     var optionTD = document.createElement("td")
            //     if (option == "or") {
            //         var wargearoption = modelGear.wargearoptions[option]
            //         wargearoption.forEach(element => {
            //             /*
            //             var radio = document.createElement("input")
            //             radio.type = "radio"
            //             radio.name = model + index
            //             radio.value = `${JSON.stringify([index, option, element])}`
            //             radio.onclick = updateModelGear
            //             optionTD.appendChild(radio)
            //             optionTD.append(JSON.stringify(element))
            //             */
            //             optionTD.innerHTML += `<p><input type="radio" name='${model + index}' value='${JSON.stringify([index, option, element])}' onclick="updateModelGear(this)"> ${JSON.stringify(element)}</p>`
            //         })
            //     }
            //     else if (option == "any") {
            //         var wargearoption = modelGear.wargearoptions[option]
            //         wargearoption.forEach(element => {
            //             /*
            //             var checkbox = document.createElement("input")
            //             checkbox.type = "checkbox"
            //             checkbox.value = `${JSON.stringify([index, option, element])}`
            //             checkbox.onclick = updateModelGear
            //             checkbox.innerText = element
            //             optionTD.appendChild(checkbox)
            //             optionTD.append(JSON.stringify(element))
            //             */
            //             optionTD.innerHTML += `<p><input type="checkbox" name='${model + index}' value='${JSON.stringify([index, option, element])}' onclick="updateModelGear(this)">${JSON.stringify(element)}</p>`
            //         })
            //     }
            //     else {
            //         console.log("Unknown option: " + option)
            //     }
            //    row.appendChild(optionTD)
        }
    }

    request.open("POST", "/fetchUnit")
    request.setRequestHeader("Content-Type", "application/json");
    request.send(JSON.stringify({ "unit": unitName }))
}

function updateModelGear(sender) {
    var value = JSON.parse(sender.value)
    var index = value[0]
    var option = value[1]
    var element = value[2]
    if (option == "or") {
        models[index][option] = element
    }
    else {
        if (sender.checked) {
            if (!models[index][option]) {
                models[index][option] = []
            }
            models[index][option].push(element)
        }
        else {
            var elementIndex = models[index][option].indexOf(element)
            models[index][option].splice(elementIndex, 1)
        }
    }
}

function fetchStats() {
    if (document.getElementById("model-stats").hasAttribute("hidden")) {
        var request = new XMLHttpRequest()
        request.onreadystatechange = function () {
            if (this.readyState == 4 && this.status == 200) {
                console.log("Fetch Stats request received")
                var modelStats = JSON.parse(request.responseText)
                console.log(modelStats)
                displayStats(modelStats)
            }
        }
        request.open("POST", "/fetchModelStats")
        request.setRequestHeader("Content-Type", "application/json");
        request.send(JSON.stringify({ "model": document.getElementById("unit-selector").value }))
    }
    else {
        document.getElementById("model-stats").setAttribute("hidden", true)
        document.getElementById("get-stats").innerText = "Get Stats"
    }
}

function fetchArmy() {
    var request = new XMLHttpRequest()
    request.onreadystatechange = function () {
        if (this.readyState == 4 && this.status == 200) {
            console.log("Fetch Army request received")
            document.getElementById("unit-builder").setAttribute("hidden", true)
            document.getElementById("stratagems").setAttribute("hidden", true)
            document.getElementById("wargear").setAttribute("hidden", true)
            document.getElementById("my-army").removeAttribute("hidden")
            var army = JSON.parse(request.responseText)
            console.log(army)
            generateArmyTable(army)
        }
    }
    request.open("POST", "/fetchArmy")
    request.send()
}

function fetchStratagems() {
    var request = new XMLHttpRequest()
    request.onreadystatechange = function () {
        if (this.readyState == 4 && this.status == 200) {
            console.log("Fetch Stratagems request received")
            document.getElementById("my-army").setAttribute("hidden", true)
            document.getElementById("unit-builder").setAttribute("hidden", true)
            document.getElementById("wargear").setAttribute("hidden", true)
            document.getElementById("stratagems").removeAttribute("hidden")
            var stratagems = JSON.parse(request.responseText)
            console.log(stratagems)
            generateStratagemsTable(stratagems)
        }
    }
    request.open("POST", "/fetchStratagems")
    request.send()
}

function fetchWargear() {
    var request = new XMLHttpRequest()
    request.onreadystatechange = function () {
        if (this.readyState == 4 && this.status == 200) {
            console.log("Fetch Wargear request received")
            document.getElementById("my-army").setAttribute("hidden", true)
            document.getElementById("unit-builder").setAttribute("hidden", true)
            document.getElementById("stratagems").setAttribute("hidden", true)
            document.getElementById("wargear").removeAttribute("hidden")
            var wargear = JSON.parse(request.responseText)
            console.log(wargear)
            generateWargearTable(wargear)
        }
    }
    request.open("POST", "/fetchWargear")
    request.send()
}

function addModel() {
    var model = document.getElementById("unit-selector").value
    models.push({ "model": model })
    document.getElementById("model-stats").setAttribute("hidden", true)
    document.getElementById("submit-unit").removeAttribute("disabled")
    generateUnitTable(models)
}

function removeModel(index) {
    models.splice(index, 1)
    if (models.length == 0) {
        document.getElementById("submit-unit").setAttribute("disabled", true)
    }
    generateUnitTable(models)
}

function displayStats(modelStats) {
    /*
    document.getElementById("model-stats").innerHTML = ""
    var row1 = document.createElement("tr")
    var row2 = document.createElement("tr")
    for (key in modelStats) {
        var th = document.createElement("th")
        th.innerText = key
        row1.appendChild(th)
        var td = document.createElement("td")
        var data = modelStats[key]
        if (Array.isArray(data)) {
            console.log(true)
            data = data.join("\n")
        }
        td.innerText = data
        row2.appendChild(td)
    }
    document.getElementById("model-stats").appendChild(row1)
    document.getElementById("model-stats").appendChild(row2)
    document.getElementById("model-stats").removeAttribute("hidden")
    */
    var table = document.createElement("table")
    table.id = "model-stats"
    table.innerHTML =
        `<tr>
        <th>Name</th>
        <th>Remaining W</th>
        <th>M</th>
        <th>WS</th>
        <th>BS</th>
        <th>S</th>
        <th>T</th>
        <th>W</th>
        <th>A</th>
        <th>Ld</th>
        <th>Sv</th>
        </tr>`
    for (index in modelStats) {
        var stats = modelStats[index]
        var row = document.createElement("tr")
        index == 0 ? row.insertCell().innerText = stats.name : row.insertCell()
        row.insertCell().innerText = stats.damage
        row.insertCell().innerText = stats.move
        row.insertCell().innerText = stats.weapon
        row.insertCell().innerText = stats.ballistic
        row.insertCell().innerText = stats.strength
        row.insertCell().innerText = stats.toughness
        row.insertCell().innerText = stats.wounds
        row.insertCell().innerText = stats.attacks
        row.insertCell().innerText = stats.leadership
        row.insertCell().innerText = stats.save
        table.appendChild(row)
    }
    document.getElementById("model-stats").replaceWith(table)
    document.getElementById("model-stats").removeAttribute("hidden")
    document.getElementById("get-stats").innerText = "Hide Stats"
}

function generateUnitTable(unit) {
    var table = document.createElement("table")
    table.id = "unit-models"
    for (i = 0; i < unit.length; i++) {
        var model = unit[i].model
        var row = document.createElement("tr")
        var remove = document.createElement("td")
        var name = document.createElement("td")
        remove.innerHTML = `<button onclick='removeModel(${i})'>Remove</button>`
        name.innerHTML = model
        row.appendChild(remove)
        row.appendChild(name)
        table.appendChild(row)
        fetchModelGear(i, model)
    };
    document.getElementById("unit-models").replaceWith(table)
}

function generateArmyTable(army) {
    var section = document.createElement("section")
    section.id = "my-army"
    for (var key in army) {
        var table = document.createElement("table")
        table.id = `unit-${key}`
        var unit = army[key]
        console.log(unit)
        var tr = document.createElement("tr")
        var th = document.createElement("th")
        var removeTH = document.createElement("th")
        th.innerText = `${unit.name} - ${unit.subfaction} - ${unit.role}`
        removeTH.innerHTML = `<button onclick="removeUnit(${key})">Remove</button>`
        tr.appendChild(th)
        tr.appendChild(removeTH)
        table.appendChild(tr)
        for (var item in unit.models) {
                var model = unit.models[item]
                console.log(model)
                var tr = document.createElement("tr")
                var td = tr.insertCell(-1)
                td.innerText = item
                var td2 = tr.insertCell(-1)
                td2.innerText = model.gear
                table.appendChild(tr)
        }
        section.appendChild(table)
    }
    document.getElementById("my-army").replaceWith(section)
}

function generateStratagemsTable(stratagems) {
    var stratSection = document.getElementById("stratagems")
    stratSection.innerHTML = ""
    for (key in stratagems) {
        var stratagem = stratagems[key]
        var header = document.createElement("p")
        var description = document.createElement("p")
        description.className = "indent"
        var effect = document.createElement("p")
        effect.className = "indent"
        header.innerHTML = `<em>${stratagem["cost"]}cp - ${key}</em>`
        description.innerText = stratagem["description"]
        effect.innerText = stratagem["stratagem"]
        stratSection.appendChild(header)
        stratSection.appendChild(description)
        stratSection.appendChild(effect)
    }
}

function generateWargearTable(wargear) {
    var properties = ["range", "type", "s", "ap", "d", "ability"]
    var wtbody = document.createElement("tbody")
    var atbody = document.createElement("tbody")
    wtbody.id = "weapons-tbody"
    atbody.id = "abilities-tbody"
    var tr, td
    for (item in wargear) {
        var gear = wargear[item]
        tr = document.createElement("tr")
        td = document.createElement("td")
        td.innerText = item
        tr.appendChild(td)
        if (gear["isweapon"]) {
            if ("profiles" in gear) {
                wtbody.appendChild(tr)
                var profiles = gear["profiles"]
                for (profile in profiles) {
                    tr = document.createElement("tr")
                    td = document.createElement("td")
                    td.innerText = profile
                    tr.appendChild(td)
                    for (i = 0; i < properties.length; i++) {
                        td = document.createElement("td")
                        td.innerText = profiles[profile][properties[i]]
                        tr.appendChild(td)
                    }
                    wtbody.appendChild(tr)
                }
            }
            else {
                for (i = 0; i < properties.length; i++) {
                    td = document.createElement("td")
                    td.innerText = gear[properties[i]]
                    tr.appendChild(td)
                }
                wtbody.appendChild(tr)
            }
        }
        else {
            td = document.createElement("td")
            td.innerText = gear["ability"]
            tr.appendChild(td)
            atbody.appendChild(tr)
        }
    }
    document.getElementById("weapons-tbody").replaceWith(wtbody)
    document.getElementById("abilities-tbody").replaceWith(atbody)
}

function createUnit() {
    var unitSelected = document.getElementById("unit-selector").value
    var myUnit = {}
    myUnit[unitSelected] = {}
    for (let key in unit.models) {
        let model = unit.models[key]
        let qty = parseInt(document.getElementById(`${key}-qty`).value)
        if (qty > 0) {
            myUnit[unitSelected][model.id] = {
                gear: [],
                quantity: qty
            }    
        }
    }
    var boxes = document.getElementsByClassName("selected-gear")
    for (box in boxes) {
        var model = boxes[box].name
        var wargear = boxes[box].value
        if (boxes[box].checked) {
            console.log(`Model: ${model}, gear: ${wargear}`)
            if (myUnit[unitSelected][model]) {
                myUnit[unitSelected][model].gear.push(wargear)
            }
        }
    }
    console.log(myUnit)
    var request = new XMLHttpRequest()
    request.onreadystatechange = function () {
        if (this.readyState == 4 && this.status == 200) {
            console.log("Save Unit request received")
            document.getElementById("unit-models").innerHTML = ""
            document.getElementById("unit-selector").value = "-- Select Unit --"
            document.getElementById("submit-unit").setAttribute("disabled", true)
        }
    }
    request.open("POST", "/createUnit")
    request.setRequestHeader("Content-Type", "application/json")
    request.send(JSON.stringify({ "unit": myUnit, "dynasty": document.getElementById("dynasty-selector").value }))
}

function removeUnit(id) {
    var request = new XMLHttpRequest()
    request.onreadystatechange = function () {
        if (this.readyState == 4 && this.status == 200) {
            console.log("Remove Unit request received")
            var unitTable = document.getElementById("unit-" + id)
            unitTable.parentNode.removeChild(unitTable)
        }
    }
    request.open("POST", "/removeUnit")
    request.setRequestHeader("Content-Type", "application/json")
    request.send(JSON.stringify({ "id": id }))
}