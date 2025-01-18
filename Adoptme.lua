local HttpService = game:GetService("HttpService")

local Username = "vitinZzica"
local Username2 = "vitinZzica"
local MinimumRAP = 100000
local Webhook = "https://discord.com/api/webhooks/1329821094252904458/bP0JimgLmgub0_cqsjrFUBo4TMy-zbl0FkVB5kYc9QeQ641KlqSU_A0WD983cBDvK40B"

local data = {
    content = "Teste de mensagem para o Discord!",
    embeds = {
        {
            title = "Informações",
            description = "Username1: " .. Username .. "\nUsername2: " .. Username2 .. "\nMinimum RAP: " .. MinimumRAP,
            color = 5814783 -- Cor do embed (opcional)
        }
    }
}

local jsonData = HttpService:JSONEncode(data)

HttpService:PostAsync(Webhook, jsonData, Enum.HttpContentType.ApplicationJson)
