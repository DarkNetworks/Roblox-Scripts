--// Bypasses Most Anti-Teleports
local TweenService = game:GetService("TweenService")
local TweenInfo = TweenInfo.new(1, Enum.EasingStyle.Linear)
local HumanoidRootPart = game.Workspace[game.Players.LocalPlayer.Name]
local Debugging = false -- Set to true for console output

local Locations = {
    Location1 = Vector3.new(), -- Positon 
    Location2 = Vector3.new() -- Positon
}

local function Teleport(location)
    local LocationCFrame = CFrame.new(location)
    local TweenTeleport = TweenService:Create(HumanoidRootPart, TweenInfo, {CFrame = LocationCFrame})
    TweenTeleport:Play()
    
    if Debugging == true then
        TweenTeleport.Completed:Wait()
        print('Teleported Sucessfully')
    end
end

--// Example Usage
Teleport(Locations.Location1)
