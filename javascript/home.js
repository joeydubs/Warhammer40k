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
                    gearRow.insertCell(-1).innerHTML = `<input class="${key}-gear" type="checkbox" name="${gear}" value="${wargear.id}">`
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
    console.log(army)
    for (let key in army) {
        var unit = army[key]
        var unitDiv = document.createElement("div")
        unitDiv.id = `unit-${key}`
        var unitTable = document.createElement("table")
        console.log(unit)
        var tr = document.createElement("tr")
        var removeTH = document.createElement("th")
        removeTH.innerHTML = `<button onclick="removeUnit(${key})">Remove</button>`
        tr.appendChild(removeTH)
        var th = document.createElement("th")
        th.innerText = `${unit.name} - ${unit.subfaction} - ${unit.role}`
        th.colSpan = 10
        tr.appendChild(th)
        unitTable.appendChild(tr)
        unitTable.insertRow(-1).innerHTML = "<td>Model</td><td>Gear</td><td>M</td><td>WS</td><td>BS</td><td>S</td><td>T</td><td>W</td><td>A</td><td>Ld</td><td>Sv</td>"
        for (let modelName in unit.models) {
            let model = unit.models[modelName]
            console.log(model)
            let modelRow = unitTable.insertRow(-1)
            modelRow.insertCell(-1).innerText = modelName
            modelRow.insertCell(-1)
            modelRow.insertCell(-1).innerText = model.move
            modelRow.insertCell(-1).innerText = model.weapon
            modelRow.insertCell(-1).innerText = model.ballistic
            modelRow.insertCell(-1).innerText = model.strength
            modelRow.insertCell(-1).innerText = model.toughness
            modelRow.insertCell(-1).innerText = model.wounds
            modelRow.insertCell(-1).innerText = model.attacks
            modelRow.insertCell(-1).innerText = model.leadership
            modelRow.insertCell(-1).innerText = model.save

            console.log(model.gear)
            if (Object.keys(model.gear).length > 0) {
                unitTable.insertRow(-1).innerHTML = '<td></td><td></td><td>Range</td><td>Type</td><td>S</td><td>AP</td><td>D</td><td colspan="4">Abilities</td>'
                for (let gearName in model.gear) {
                    let profiles = model.gear[gearName]
                    console.log(profiles)
                    for (let profile in profiles) {
                        let gear = profiles[profile]
                        console.log(profile)
                        let gearRow = unitTable.insertRow(-1)
                        gearRow.insertCell(-1)
                        if (gearName == profile) {
                            gearRow.insertCell(-1).innerText = gearName
                        }
                        else {
                            gearRow.insertCell(-1).innerText = gearName + " " + profile
                        }
                        gearRow.insertCell(-1).innerText = gear.range
                        gearRow.insertCell(-1).innerText = gear.type
                        gearRow.insertCell(-1).innerText = gear.strength
                        gearRow.insertCell(-1).innerText = gear.armorPen
                        gearRow.insertCell(-1).innerText = gear.damage
                        let abilitiesCell = gearRow.insertCell(-1)
                        abilitiesCell.colSpan = 4
                        abilitiesCell.innerText = gear.abilities
                    }
                }
            }
        }
        unitTable.insertRow(-1).innerHTML = '<td>Abilities</td>'
        for (let abilityName in unit.abilities) {
            let ability = unit.abilities[abilityName]
            let abilitiesRow = unitTable.insertRow(-1)
            abilitiesRow.insertCell(-1)
            abilitiesRow.insertCell(-1).innerText = abilityName
        }
        unitDiv.appendChild(unitTable)
        section.appendChild(unitDiv)
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
    var points = 0
    var myUnit = {
        name: document.getElementById("unit-selector").value,
        details: {},
    }
    console.log(unit)
    for (let key in unit.models) {
        let modelID = unit.models[key].id
        let qty = parseInt(document.getElementById(`${key}-qty`).value)
        if (qty > 0) {
            points += (qty * unit.models[key].cost)
            myUnit.details[modelID] = {
                gear: [],
                quantity: qty
            }

            var boxes = document.getElementsByClassName(`${key}-gear`)
            for (let box in boxes) {
                let gearName = boxes[box].name
                let gearID = boxes[box].value
                if (boxes[box].checked) {
                    console.log(`Gear: ${gearName}, ID: ${gearID}`)
                    if (myUnit.details[modelID]) {
                        points += (qty * unit.models[key].gear[gearName].cost)
                        myUnit.details[modelID].gear.push(gearID)
                    }
                }
            }

        }
    }

    myUnit["points"] = points
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