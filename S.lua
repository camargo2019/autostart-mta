------------------------------------------
--- 		CAMARGO SCRIPTS  		   ---
	 -----  AUTO SYSTEM BRP		-----
------------------------------------------
function callFunctionWithSleeps(calledFunction, ...) 
    local co = coroutine.create(calledFunction)
    coroutine.resume(co, ...)
end 
  
function sleep(time) 
    local co = coroutine.running() 
    local function resumeThisCoroutine()
        coroutine.resume(co) 
    end 
    setTimer(resumeThisCoroutine, time, 1)
    coroutine.yield()
end 

function CMR_IniciarOsMods(res)
		DBConnection = dbConnect("sqlite", "sqlite.db")
	    if (not DBConnection) then
	        outputDebugString("Error: Falha ao se conectar com banco de dados - Auto System")
	    else
	        outputDebugString("Success: Banco de Dados Conectado com Sucesso - Auto System")
	    end

	    Items = dbQuery(DBConnection, "SELECT * FROM cmr_autosystem")
		ResultItems = dbPoll(Items, -1)
		setServerPassword("CamargoHost")
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
				sleep(500)
			end
		end
		outputDebugString("Success: Resources Iniciado com sucesso!")
end

addEventHandler("onResourceStart", root, function(res)
	if res == getThisResource() then
    	callFunctionWithSleeps(CMR_IniciarOsMods, 1, 2, 3) 
     end
 end)

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
