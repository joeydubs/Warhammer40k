var unit = {}

function fetchUnitList() {
    var request = new XMLHttpRequest()
    request.onreadystatechange = function () {
        if (this.readyState == 4 && this.status == 200) {
            //console.log("Get Model List request received")
            var modelList = JSON.parse(request.responseText)
            //console.log(modelList)
            document.getElementById("unit-selector").innerHTML = "<option>-- Select Unit --</option>"
            for (model in modelList) {
                var option = document.createElement("option")
                option.innerHTML = modelList[model]
                document.getElementById("unit-selector").add(option)
            }
            document.getElementById("unit-builder").removeAttribute("hidden")
            document.getElementById("my-army").setAttribute("hidden", true)
            document.getElementById("stratagems").setAttribute("hidden", true)
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
            //console.log("Fetch Unit request received")
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

            for (let key in unit.models) {
                var model = unit.models[key]
                var row = modelTable.insertRow(-1)
                row.insertCell(-1).innerHTML = `<b>${key}</b>`
                row.insertCell(-1).innerText = model.power
                row.insertCell(-1).innerText = model.min
                row.insertCell(-1).innerText = model.max
                row.insertCell(-1).innerText = model.cost
                row.insertCell(-1)
                row.insertCell(-1).innerHTML = `<input id="${key.split(' ').join('-')}-qty" type="number" name="${model.id}" min="${model.min}" max="${model.max}" value="${model.min}">`

                for (let gear in model.gear) {
                    var wargear = model.gear[gear]
                    var gearRow = modelTable.insertRow(-1)
                    gearRow.insertCell(-1)
                    gearRow.insertCell(-1)
                    gearRow.insertCell(-1)
                    gearRow.insertCell(-1)
                    gearRow.insertCell(-1).innerText = wargear.cost
                    gearRow.insertCell(-1).innerText = gear
                    gearRow.insertCell(-1).innerHTML = `<input class="${key.split(' ').join('-')}-gear" type="checkbox" name="${gear}" value="${wargear.id}">`
                }
            }

            modelsSection.appendChild(modelTable)
            document.getElementById("unit-models").replaceWith(modelsSection)
            document.getElementById("submit-unit").removeAttribute("disabled")
        }
    }

    request.open("POST", "/fetchUnit")
    request.setRequestHeader("Content-Type", "application/json");
    request.send(JSON.stringify({ "unit": unitName }))
}

function fetchStats() {
    if (document.getElementById("model-stats").hasAttribute("hidden")) {
        var request = new XMLHttpRequest()
        request.onreadystatechange = function () {
            if (this.readyState == 4 && this.status == 200) {
                //console.log("Fetch Stats request received")
                var modelStats = JSON.parse(request.responseText)
                //console.log(modelStats)
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
            //console.log("Fetch Army request received")
            document.getElementById("unit-builder").setAttribute("hidden", true)
            document.getElementById("my-army").removeAttribute("hidden")
            document.getElementById("stratagems").setAttribute("hidden", true)
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
            //console.log("Fetch Stratagems request received")
            document.getElementById("unit-builder").setAttribute("hidden", true)
            document.getElementById("my-army").setAttribute("hidden", true)
            document.getElementById("stratagems").removeAttribute("hidden")
            var stratagems = JSON.parse(request.responseText)
            //console.log(stratagems)
            generateStratagemsTable(stratagems)
        }
    }
    request.open("POST", "/fetchStratagems")
    request.send()
}

function fetchStratagemDetails(stratagemID, callback) {
    var request = new XMLHttpRequest()
    request.onreadystatechange = function () {
        if (this.readyState == 4 && this.status == 200) {
            //console.log("Fetch Stratagem Details request received")
            var stratagemDetails = JSON.parse(request.responseText)
            //console.log(stratagemDetails)
            callback(stratagemDetails)
        }
    }
    request.open("POST", "/fetchStratagemDetails")
    request.setRequestHeader("Content-Type", "application/json");
    request.send(JSON.stringify({ "stratagemID": parseInt(stratagemID) }))
}

function createUnit() {
    var points = 0
    var myUnit = {
        name: document.getElementById("unit-selector").value,
        details: {},
    }
    //console.log(unit)
    for (let key in unit.models) {
        let modelID = unit.models[key].id
        let qty = parseInt(document.getElementById(`${key.split(' ').join('-')}-qty`).value)
        if (qty > 0) {
            points += (qty * unit.models[key].cost)
            myUnit.details[modelID] = {
                gear: [],
                quantity: qty
            }

            var boxes = document.getElementsByClassName(`${key.split(' ').join('-')}-gear`)
            //console.log(boxes)
            for (let box in boxes) {
                let gearName = boxes[box].name
                let gearID = boxes[box].value
                if (boxes[box].checked) {
                    //console.log(`Key: ${key}, Gear: ${gearName}, ID: ${gearID}`)
                    if (myUnit.details[modelID]) {
                        points += (qty * unit.models[key].gear[gearName].cost)
                        myUnit.details[modelID].gear.push(gearID)
                    }
                }
            }

        }
    }

    myUnit["points"] = points
    //console.log(myUnit)

    var request = new XMLHttpRequest()
    request.onreadystatechange = function () {
        if (this.readyState == 4 && this.status == 200) {
            //console.log("Save Unit request received")
            document.getElementById("unit-models").innerHTML = ""
            document.getElementById("unit-selector").value = "-- Select Unit --"
            document.getElementById("submit-unit").setAttribute("disabled", true)
            if (!document.getElementById("model-stats").hasAttribute("hidden")) {
                document.getElementById("model-stats").setAttribute("hidden", true)
                document.getElementById("get-stats").innerText = "Get Stats"
            }
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
            //console.log("Remove Unit request received")
            var unitTable = document.getElementById("unit-" + id)
            unitTable.parentNode.removeChild(unitTable)
        }
    }
    request.open("POST", "/removeUnit")
    request.setRequestHeader("Content-Type", "application/json")
    request.send(JSON.stringify({ "id": id }))
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

function generateArmyTable(army) {
    var section = document.createElement("section")
    section.id = "my-army"
    console.log(army)
    var div = document.createElement("p")
    var pointTotal = 0;
    section.appendChild(div)

    for (let key in army) {
        var unit = army[key]
        pointTotal += unit.points
        var unitDiv = document.createElement("div")
        unitDiv.id = `unit-${key}`
        var unitTable = document.createElement("table")
        //console.log(unit)
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
            //console.log(model)
            let modelRow = unitTable.insertRow(-1)
            modelRow.insertCell(-1).innerText = modelName + " (" + model.quantity + ")"
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

            //console.log(model.gear)
            if (Object.keys(model.gear).length > 0) {
                unitTable.insertRow(-1).innerHTML = '<td></td><td></td><td>Range</td><td>Type</td><td>S</td><td>AP</td><td>D</td><td colspan="4">Abilities</td>'
                for (let gearName in model.gear) {
                    let profiles = model.gear[gearName]
                    //console.log(profiles)
                    for (let profile in profiles) {
                        let gear = profiles[profile]
                        //console.log(profile)
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
            let abilityDescription = unit.abilities[abilityName]
            let abilitiesRow = unitTable.insertRow(-1)
            abilitiesRow.insertCell(-1)
            abilitiesRow.insertCell(-1).innerText = abilityName
            let descriptionCell = abilitiesRow.insertCell(-1)
            descriptionCell.colSpan = 9
            descriptionCell.innerText = abilityDescription
        }
        unitDiv.appendChild(unitTable)
        section.appendChild(unitDiv)
    }
    div.innerText = "Army point total: " + pointTotal
    document.getElementById("my-army").replaceWith(section)
}

function generateStratagemsTable(stratagems) {
    document.getElementById("stratagems").innerHTML = ""
    for (let key in stratagems) {
        let stratSection = document.getElementById("stratagems")
        let header = document.createElement("p")
        let description = document.createElement("p")
        description.className = "indent"
        let effect = document.createElement("p")
        effect.className = "indent"
        stratSection.appendChild(header)
        stratSection.appendChild(description)
        stratSection.appendChild(effect)

        fetchStratagemDetails(stratagems[key], function (stratagemDetails) {
            header.innerHTML = `<em>${stratagemDetails.commandPts}cp - ${stratagemDetails.name}</em>`
            description.innerText = stratagemDetails.flavor
            effect.innerText = stratagemDetails.description
        })
    }
}