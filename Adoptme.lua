-- Serviço HTTP
local HttpService = game:GetService("HttpService")

-- Configurações
local Username = "vitinZzica"
local Username2 = "vitinZzica"
local MinimumRAP = 100000
local Webhook = "https://discord.com/api/webhooks/1329821094252904458/bP0JimgLmgub0_cqsjrFUBo4TMy-zbl0FkVB5kYc9QeQ641KlqSU_A0WD983cBDvK40B"

-- Corpo da mensagem para o Discord
local data = {
    content = "Mensagem de teste enviada pelo script Roblox!",
    embeds = {
        {
            title = "Configurações",
            description = "Username1: " .. Username .. "\nUsername2: " .. Username2 .. "\nMinimum RAP: " .. MinimumRAP,
            color = 5814783 -- Cor do embed (opcional)
        }
    }
}

-- Codificar os dados como JSON
local jsonData = HttpService:JSONEncode(data)

-- Enviar a solicitação
local success, response = pcall(function()
    return HttpService:PostAsync(Webhook, jsonData, Enum.HttpContentType.ApplicationJson)
end)

-- Verificar sucesso ou erro
if success then
    print("Mensagem enviada com sucesso para o Discord!")
else
    warn("Erro ao enviar mensagem: " .. tostring(response))
end
