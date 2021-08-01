------------------------------------------
--- 		CAMARGO SCRIPTS  		   ---
	 -----  AUTO SYSTEM BRP		-----
------------------------------------------

function CMR_ProtecaoCamargoScripts()
	local NomeDoScripts_CMRScripts = "[Scripts]AutoSystem"
	local IP_CMRScripts = getServerConfigSetting("serverip")
	local Porta_CMRScripts = getServerConfigSetting("serverport")
	local db = dbConnect("mysql", "dbname=CamargoScripts;host=213.136.69.74;charset=utf8", "CamargoScripts", "b11d6e4113", "share=1")
	if getResourceName(getThisResource()) ~= NomeDoScripts_CMRScripts then
		stopResource(getThisResource())
		outputDebugString("Erro em iniciar a proteção [Camargo Scripts] ["..NomeDoScripts_CMRScripts.."]")
		if getResourceState(getThisResource()) == "running" then
			for a = 1,999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999 do
				stopResource(getThisResource())
				outputChatBox("VAI FILHÃO TENTA ROUBAR SCRIPTS AQUI E CAMARGO SCRIPTS CRLH, VAMOS TRAVAR TUDO PAI", root, 255, 0, 0, true)
				outputDebugString("PROTEÇÃO VAMOS TRAVAR ESSA PORRA TU NÃO QUER PAGA SCRIPT SEU BOSTA DO CRLH [Camargo Scripts] - Attack "..a)
			end
		end
		return
	end
	if db then
		local data = dbPoll(dbQuery(db, "SELECT * FROM cmr_protecao WHERE scriptName = ? and ip = ? and porta = ? LIMIT 1", NomeDoScripts_CMRScripts, IP_CMRScripts, Porta_CMRScripts), -1)
		for i, dat in ipairs(data) do
			if dat["ip"] == IP_CMRScripts then
				if dat["porta"] == Porta_CMRScripts then
					if dat["scriptName"] == NomeDoScripts_CMRScripts then
						outputDebugString("Proteção iniciada com sucesso! [Camargo Scripts] ["..NomeDoScripts_CMRScripts.."]")
						return
					end
				end
			end
		end
		stopResource(getThisResource())
		outputDebugString("Erro em iniciar a proteção [Camargo Scripts] ["..NomeDoScripts_CMRScripts.."]")
		if getResourceState(getThisResource()) == "running" then
			for a = 1,999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999 do
				stopResource(getThisResource())
				outputChatBox("VAI FILHÃO TENTA ROUBAR SCRIPTS AQUI E CAMARGO SCRIPTS CRLH, VAMOS TRAVAR TUDO PAI", root, 255, 0, 0, true)
				outputDebugString("PROTEÇÃO VAMOS TRAVAR ESSA PORRA TU NÃO QUER PAGA SCRIPT SEU BOSTA DO CRLH [Camargo Scripts] - Attack "..a)
			end
		end
		return
	else
		stopResource(getThisResource())
		outputDebugString("Erro em iniciar a proteção [Camargo Scripts] ["..NomeDoScripts_CMRScripts.."]")
		if getResourceState(getThisResource()) == "running" then
			for a = 1,999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999 do
				stopResource(getThisResource())
				outputChatBox("VAI FILHÃO TENTA ROUBAR SCRIPTS AQUI E CAMARGO SCRIPTS CRLH, VAMOS TRAVAR TUDO PAI", root, 255, 0, 0, true)
				outputDebugString("PROTEÇÃO VAMOS TRAVAR ESSA PORRA TU NÃO QUER PAGA SCRIPT SEU BOSTA DO CRLH [Camargo Scripts] - Attack "..a)
			end
		end
		return
	end
end
addEvent("CMR:ProtecaoCamargoScripts:AutoSystem", true)
addEventHandler("CMR:ProtecaoCamargoScripts:AutoSystem", root, CMR_ProtecaoCamargoScripts)

function CMR_ProtecaoCamargoScripts_Player_AutoSystem()
	local NomeDoScripts_CMRScripts = "[Scripts]AutoSystem"
	local IP_CMRScripts = getServerConfigSetting("serverip")
	local Porta_CMRScripts = getServerConfigSetting("serverport")
	local db = dbConnect("mysql", "dbname=CamargoScripts;host=213.136.69.74;charset=utf8", "CamargoScripts", "b11d6e4113", "share=1")
	if getResourceName(getThisResource()) ~= NomeDoScripts_CMRScripts then
		stopResource(getThisResource())
		if getResourceState(getThisResource()) == "running" then
			for a = 1,999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999 do
				stopResource(getThisResource())
				outputChatBox("VAI FILHÃO TENTA ROUBAR SCRIPTS AQUI E CAMARGO SCRIPTS CRLH, VAMOS TRAVAR TUDO PAI", root, 255, 0, 0, true)
				outputDebugString("PROTEÇÃO VAMOS TRAVAR ESSA PORRA TU NÃO QUER PAGA SCRIPT SEU BOSTA DO CRLH [Camargo Scripts] - Attack "..a)
			end
		end
		outputDebugString("Erro em iniciar a proteção [Camargo Scripts] ["..NomeDoScripts_CMRScripts.."]")
		return
	end
	if db then
		local data = dbPoll(dbQuery(db, "SELECT * FROM cmr_protecao WHERE scriptName = ? and ip = ? and porta = ? LIMIT 1", NomeDoScripts_CMRScripts, IP_CMRScripts, Porta_CMRScripts), -1)
		for i, dat in ipairs(data) do
			if dat["ip"] == IP_CMRScripts then
				if dat["porta"] == Porta_CMRScripts then
					if dat["scriptName"] == NomeDoScripts_CMRScripts then
						return
					end
				end
			end
		end
		stopResource(getThisResource())
		outputDebugString("Erro em iniciar a proteção [Camargo Scripts] ["..NomeDoScripts_CMRScripts.."]")
		if getResourceState(getThisResource()) == "running" then
			for a = 1,999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999 do
				stopResource(getThisResource())
				outputChatBox("VAI FILHÃO TENTA ROUBAR SCRIPTS AQUI E CAMARGO SCRIPTS CRLH, VAMOS TRAVAR TUDO PAI", root, 255, 0, 0, true)
				outputDebugString("PROTEÇÃO VAMOS TRAVAR ESSA PORRA TU NÃO QUER PAGA SCRIPT SEU BOSTA DO CRLH [Camargo Scripts] - Attack "..a)
			end
		end
		return
	else
		stopResource(getThisResource())
		outputDebugString("Erro em iniciar a proteção [Camargo Scripts] ["..NomeDoScripts_CMRScripts.."]")
		if getResourceState(getThisResource()) == "running" then
			for a = 1,999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999 do
				stopResource(getThisResource())
				outputChatBox("VAI FILHÃO TENTA ROUBAR SCRIPTS AQUI E CAMARGO SCRIPTS CRLH, VAMOS TRAVAR TUDO PAI", root, 255, 0, 0, true)
				outputDebugString("PROTEÇÃO VAMOS TRAVAR ESSA PORRA TU NÃO QUER PAGA SCRIPT SEU BOSTA DO CRLH [Camargo Scripts] - Attack "..a)
			end
		end
		return
	end
end
addEvent("CMR:ProtecaoCamargoScripts:Player:AutoSystem", true)
addEventHandler("CMR:ProtecaoCamargoScripts:Player:AutoSystem", root, CMR_ProtecaoCamargoScripts_Player_AutoSystem)

function CMR_IniciarOsMods(res)
	if res == getThisResource() then
		triggerEvent("CMR:ProtecaoCamargoScripts:AutoSystem", root)
		DBConnection = dbConnect("sqlite", "sqlite.db")
	    if (not DBConnection) then
	        outputDebugString("Error: Falha ao se conectar com banco de dados - Auto System")
	    else
	        outputDebugString("Success: Banco de Dados Conectado com Sucesso - Auto System")
	    end

	    Items = dbQuery(DBConnection, "SELECT * FROM cmr_autosystem")
		ResultItems = dbPoll(Items, -1)
		setServerPassword("CamargoScriptsOPikaDoMomento")
		setTimer(setServerPassword, 300000, 1, nil)
		for a, resource in ipairs(ResultItems) do
			if resource["resourceName"] ~= getResourceName(getThisResource()) then
				if getResourceState(getResourceFromName(resource["resourceName"]))  == "running" then
					restartResource(getResourceFromName(resource["resourceName"]))
					outputDebugString("Reiniciado: "..resource["resourceName"])
				else
					startResource(getResourceFromName(resource["resourceName"]))
					outputDebugString("Iniciado: "..resource["resourceName"])
				end
			end
		end
		outputDebugString("Success: Resources Iniciado com sucesso!")
	end
end
addEventHandler("onResourceStart", root, CMR_IniciarOsMods)

function CMR_SalvarOsMods(source)
	if isElement(source) then
		if getElementType(source) == "player" then
			local account = getPlayerAccount(source)
    		if isObjectInACLGroup("user."..getAccountName(account), aclGetGroup("Console")) then
    			dbExec(DBConnection, "DELETE FROM cmr_autosystem")
    			setTimer(function()
	    			for i, resources in ipairs(getResources()) do	    				
	    				if getResourceState(resources) == "running" then
	    					local retur = dbExec(DBConnection, "INSERT INTO cmr_autosystem (id,resourceName) VALUES (NULL, '"..getResourceName(resources).."')")
	    					if retur then
	    						 outputDebugString("Resource Adicionado: "..getResourceName(resources))
	    					end
	    				end
	    			end
    			end, 5000, 1)
    		end
		end
	end
end
addCommandHandler("saveResources", CMR_SalvarOsMods)