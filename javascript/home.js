var unit = {}

function fetchFactionList() {
    var request = new XMLHttpRequest()
    request.onreadystatechange = function () {
        if (this.readyState == 4 && this.status == 200) {
            console.log("Fetch Faction List request received")
            let factionList = JSON.parse(request.responseText)
            console.log(factionList)
            document.getElementById("faction-selector").innerHTML = "<option>-- Select Faction --</option>"
            for (let faction in factionList) {
                var option = document.createElement("option")
                option.innerHTML = factionList[faction]
                document.getElementById("faction-selector").add(option)
            }
            document.getElementById("unit-builder").removeAttribute("hidden")
            document.getElementById("my-army").setAttribute("hidden", true)
            document.getElementById("stratagems").setAttribute("hidden", true)
            document.getElementById("unit-selector").setAttribute("disabled", true)

            document.getElementById("unit-models").innerHTML = ""
            document.getElementById("role-selector").value = "Any"
            document.getElementById("unit-selector").value = "-- Select Unit --"
            document.getElementById("submit-unit").setAttribute("disabled", true)
            if (!document.getElementById("model-stats").hasAttribute("hidden")) {
                document.getElementById("model-stats").setAttribute("hidden", true)
                document.getElementById("model-stats").innerHTML = ""
                document.getElementById("get-stats").innerText = "Get Stats"
            }
        }
    }

    request.open("POST", "/fetchFactionList")
    request.send()
}

function fetchUnitList() {
    var request = new XMLHttpRequest()
    let selectedFaction = document.getElementById("faction-selector").value
    let selectedRole = document.getElementById("role-selector").value
    request.onreadystatechange = function () {
        if (this.readyState == 4 && this.status == 200) {
            console.log("Get Model List request received")
            let unitList = JSON.parse(request.responseText)
            console.log(unitList)
            document.getElementById("unit-selector").innerHTML = "<option>-- Select Unit --</option>"
            for (unit in unitList) {
                var option = document.createElement("option")
                option.innerHTML = unitList[unit]
                document.getElementById("unit-selector").add(option)
            }
            document.getElementById("unit-selector").removeAttribute("disabled")
        }
    }
    request.open("POST", "/fetchUnitList")
    request.setRequestHeader("Content-Type", "application/json")
    request.send(JSON.stringify({ "faction": selectedFaction, "role": selectedRole }))
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

            if (unit.factionKeywords.includes("<Subfaction>")) {
                fetchSubfactions(document.getElementById("faction-selector").value)
            }
            else {
                document.getElementById("subfaction-selector").innerHTML = ""
                document.getElementById("subfaction-selector").setAttribute("disabled", true)
            }

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

function fetchSubfactions(faction) {
    let request = new XMLHttpRequest()
    request.onreadystatechange = function () {
        if (this.readyState == 4 && this.status == 200) {
            console.log("Fetch Subfaction request received")
            let subfactions = JSON.parse(request.responseText)
            console.log(subfactions)
            document.getElementById("subfaction-selector").innerHTML = ""
            for (let subfaction in subfactions) {
                let option = document.createElement("option")
                option.innerText = subfactions[subfaction]
                document.getElementById("subfaction-selector").appendChild(option)
            }
            document.getElementById("subfaction-selector").removeAttribute("disabled")
        }
    }

    request.open("POST", "/fetchSubfactions")
    request.setRequestHeader("Content-Type", "application/json")
    request.send(JSON.stringify({"faction": faction}))
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
            console.log("Fetch Stratagems request received")
            document.getElementById("unit-builder").setAttribute("hidden", true)
            document.getElementById("my-army").setAttribute("hidden", true)
            document.getElementById("stratagems").removeAttribute("hidden")
            var stratagems = JSON.parse(request.responseText)
            console.log(stratagems)
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
            console.log("Fetch Stratagem Details request received")
            var stratagemDetails = JSON.parse(request.responseText)
            console.log(stratagemDetails)
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
    console.log(unit)
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
            console.log(boxes)
            for (let box in boxes) {
                let gearName = boxes[box].name
                let gearID = boxes[box].value
                if (boxes[box].checked) {
                    console.log(`Key: ${key}, Gear: ${gearName}, ID: ${gearID}`)
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
            if (!document.getElementById("model-stats").hasAttribute("hidden")) {
                document.getElementById("model-stats").setAttribute("hidden", true)
                document.getElementById("get-stats").innerText = "Get Stats"
            }
        }
    }
    request.open("POST", "/createUnit")
    request.setRequestHeader("Content-Type", "application/json")
    request.send(JSON.stringify({ "unit": myUnit, "subfaction": document.getElementById("subfaction-selector").value }))
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

function displayStats(modelStats) {
    var table = document.createElement("table")
    table.id = "model-stats"
    table.innerHTML =
        `<tr>
        <th>Name</th>
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
        row.insertCell().innerText = stats.statName
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

    for (let unitID in army) {
        let unit = army[unitID]
        pointTotal += unit.points
        let unitSection = document.createElement("section")
        unitSection.id = `unit-${unitID}`
        section.appendChild(unitSection)
        generateUnitCard(unit, unitID, unitSection)
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

function generateUnitCard(unit, unitID, unitSection) {
    var unitTable = document.createElement("table")
    unitTable.innerHTML = "<col><col><col><col><col><col><col><col><col><col><col><col><col><col><col><col>"
    console.log(unit)
    var tr = document.createElement("tr")
    var removeTH = document.createElement("th")
    removeTH.innerHTML = `<button onclick="removeUnit(${unitID})">Remove</button>`
    removeTH.colSpan = 2
    tr.appendChild(removeTH)
    var th = document.createElement("th")
    th.innerText = `${unit.name} - ${(unit.subfaction ? unit.role + ' - ' + unit.subfaction : unit.role)}`
    th.colSpan = 14
    tr.appendChild(th)
    unitTable.appendChild(tr)
    unitTable.insertRow(-1).innerHTML =
        `<td>Qty</td>
        <td colspan="5">Model</td>
        <td>M</td>
        <td>WS</td>
        <td>BS</td>
        <td>S</td>
        <td>T</td>
        <td>W</td>
        <td>A</td>
        <td>Ld</td>
        <td>Sv</td>
        <td></td>`
    for (let modelName in unit.models) {
        let model = unit.models[modelName]
        console.log(model)
        let modelRow = unitTable.insertRow(-1)
        modelRow.insertCell(-1).innerText = model.quantity
        let nameCell = modelRow.insertCell(-1)
        nameCell.innerText = modelName
        nameCell.colSpan = 5
        modelRow.insertCell(-1).innerText = model.move
        modelRow.insertCell(-1).innerText = model.weapon
        modelRow.insertCell(-1).innerText = model.ballistic
        modelRow.insertCell(-1).innerText = model.strength
        modelRow.insertCell(-1).innerText = model.toughness
        modelRow.insertCell(-1).innerText = model.wounds
        modelRow.insertCell(-1).innerText = model.attacks
        modelRow.insertCell(-1).innerText = model.leadership
        modelRow.insertCell(-1).innerText = model.save
        modelRow.insertCell(-1)

        console.log(model.gear)
        if (Object.keys(model.gear).length > 0) {
            unitTable.insertRow(-1).innerHTML =
                `<td colspan="2"></td>
                <td colspan="3">Wargear</td>
                <td colspan="2">Range</td>
                <td colspan="2">Type</td>
                <td>S</td>
                <td>AP</td>
                <td>D</td>
                <td colspan="4">Abilities</td>`
            for (let gearName in model.gear) {
                let profiles = model.gear[gearName]
                console.log(profiles)
                for (let profile in profiles) {
                    let gear = profiles[profile]
                    console.log(profile)
                    let gearRow = unitTable.insertRow(-1)
                    gearRow.insertCell(-1).colSpan = 2
                    let gearNameCell = gearRow.insertCell(-1)
                    gearNameCell.colSpan = 3
                    if (gearName == profile) {
                        gearNameCell.innerText = gearName
                    }
                    else {
                        gearNameCell.innerText = gearName + " " + profile
                    }
                    let rangeCell = gearRow.insertCell(-1)
                    rangeCell.innerText = gear.range
                    rangeCell.colSpan = 2
                    typeCell = gearRow.insertCell(-1)
                    typeCell.innerText = gear.type
                    typeCell.colSpan = 2
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
    unitTable.insertRow(-1).innerHTML =
        `<td colspan="4">Abilities</td>
        <td colspan="12">Description</td>`
    for (let abilityName in unit.abilities) {
        let abilityDescription = unit.abilities[abilityName]
        let abilitiesRow = unitTable.insertRow(-1)
        let abilityNameCell = abilitiesRow.insertCell(-1)
        abilityNameCell.innerText = abilityName
        abilityNameCell.colSpan = 4
        let descriptionCell = abilitiesRow.insertCell(-1)
        descriptionCell.colSpan = 12
        descriptionCell.innerText = abilityDescription
    }
    unitSection.appendChild(unitTable)
}