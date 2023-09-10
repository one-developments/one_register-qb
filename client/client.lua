local idChar



RegisterNetEvent('one_register:showRegister', function(id)
	idChar = id
	StartRegistry()
end)


function toggleNuiFrame(shouldShow)
  SetNuiFocus(shouldShow, shouldShow)
  SendReactMessage('setVisible', shouldShow)
end


function StartRegistry()
  toggleNuiFrame(true)
end


RegisterNUICallback('register', function(data, cb)
	local cData = data
    if cData.sex == 'male' then
        cData.gender = 0
    elseif cData.sex == 'female' then
        cData.gender = 1
    end
    cData.nationality = Config.DefaultNationality
    cData.birthdate = cData.dateofbirth
    print(json.encode(cData))
    cData.cid = tonumber(idChar)
    TriggerServerEvent('qb-multicharacter:server:createCharacter', cData)
    Wait(500)
    toggleNuiFrame(false)
    cb("ok")
end)


