local WhiteIDs = {58085809581, 4739215471, 3261096198}
local player = game.Players.LocalPlayer

if table.find(WhiteIDs, player.UserId) then
	print("Разрешено")
else
	player:Kick("Вас нет в белом списке!")
end
