tfm.exec.disableAfkDeath(true)
tfm.exec.disableAutoNewGame(true)
tfm.exec.disableAutoScore(true)
tfm.exec.disableAutoShaman(true)
tfm.exec.disableAutoTimeLeft(true)
tfm.exec.disablePhysicalConsumables(true)
tfm.exec.disableMortCommand(true)
tfm.exec.disableWatchCommand(true)

tfm.exec.newGame(MAP)
tfm.exec.setGameTime(0, true)

for playerName in pairs(tfm.get.room.playerList) do
    eventNewPlayer(playerName)
end