-- Список разрешенных игроков
local allowedPlayers = {"PlayerName1", "PlayerName2", "PlayerName3"} -- замените на нужные имена

-- Получаем текущего игрока
local player = game.Players.LocalPlayer
local isAllowed = false

-- Проверка, есть ли имя игрока в списке разрешенных
for _, name in ipairs(allowedPlayers) do
    if player.Name == name then
        isAllowed = true
        break
    end
end

-- Если игрок не разрешен, кик
if not isAllowed then
    player:Kick("Что-то я тебя здесь не видел:/")
    return
else
    print("Доступ разрешен")
    -- Здесь можно продолжить выполнение скрипта для разрешённых игроков
end
