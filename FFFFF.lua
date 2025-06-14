local LocalPlayer = game.Players.LocalPlayer

local function getNearestATM()
    local nearestAtm, nearestDistance = nil, math.huge

    for i, v in next, game:GetService("CollectionService"):GetTagged("ATM") do
        v.PrimaryPart = v.Area
        local distance = LocalPlayer:DistanceFromCharacter(v.Part.Position)
        if distance < nearestDistance then
            nearestDistance = distance
            nearestAtm = v
        end
    end

    return nearestAtm, nearestDistance
end

while true do
    task.wait()
    local Passed, Statement = pcall(function()
        local atm = getNearestATM()

        if atm and LocalPlayer:DistanceFromCharacter(atm.Part.Position) <= 30 then
            local playerPosition = LocalPlayer.Character.PrimaryPart.Position
            local atmPosition = atm.Part.Position

            local direction = (atmPosition - playerPosition).unit
            local oppositeDirection = Vector3.new(direction.X, 0, direction.Z).unit
            local newPosition = Vector3.new(atmPosition.X + oppositeDirection.X * 5, atmPosition.Y, atmPosition.Z + oppositeDirection.Z * 5)
            atm:SetPrimaryPartCFrame(CFrame.new(newPosition))
        end
    end)
end
