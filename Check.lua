local WhiteIDs = {5808580958, 4739215471, 3261096198, 7483516086}
local player = game.Players.LocalPlayer

if table.find(WhiteIDs, player.UserId) then
	print("Разрешено")
else
	player:Kick("Вас нет в белом списке!")
end
