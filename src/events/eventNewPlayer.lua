function eventNewPlayer(playerName)
	playerData[playerName] = PlayerData:new(playerName)
    tfm.exec.respawnPlayer(playerName)
    tfm.exec.changePlayerSize(playerName, MOUSE_SIZE)
    
    system.bindKeyboard(playerName, 0, true, true) -- left
    system.bindKeyboard(playerName, 2, true, true) -- right
    system.bindMouse(playerName, true)
    
    ui.addTextArea(enum.textArea.HELP, "<a href='event:helpQuestionMark'><p align='center'><font size='16'><b>?</b></font></p></a>", playerName, 760, 35, 25, 25, 0x111111, 0x111111, 1.0, true)
    ui.setMapName(MAP_NAME);

    for player, data in pairs(playerData) do
        if data.hidden then
            hideMouseFor(player, playerName)
        end
    end

    addWoodCoinsCounter(playerName)
    updateWoodCoinsCounter(playerName)
    addStartGameButton(playerName)
    ui.addTextArea(enum.textArea.SHOP_BUTTON, "<a href='event:shop'><p align='center'><font size='16' color='#FFFFFF'>Shop</font></p></a>", playerName, 115, 35, 75, 25, 0x111111, 0x111111, 0.9, true)
end