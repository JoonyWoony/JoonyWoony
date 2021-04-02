local ReplicatedStorage = game:GetService("ReplicatedStorage")
local MutatorsFolder = ReplicatedStorage:WaitForChild("Mutators")
local Players = game:GetService("Players")
local Player = Players.LocalPlayer
 
local FlyObjects = {"BodyPosition", "BodyForce", "BodyVelocity", "BodyGyro"}
local BodyObjects = {"Head", "Torso" ,"Humanoid", "HumanoidRootPart"}
 
while true do
    -- Speed Hack
    if MutatorsFolder:FindFirstChild("High Speed").Value == false then
        if Player.Character.Humanoid.WalkSpeed ~= 16 then
            Player:Kick("Speed Hacking")
        end
    end
 
    -- Jump Hack
    if MutatorsFolder:FindFirstChild("Low Gravity").Value == false then
        if Player.Character.Humanoid.JumpPower ~= 50 then
            Player:Kick("Jump Hacking")
        end
    end
 
    -- Btools
    Player.Backpack.ChildAdded:Connect(function(Obj)
        if Obj:IsA("HopperBin") then return Player:Kick("Btools") end
    end)
 
    -- Flying
    for _, obj in pairs(FlyObjects) do
        if Player.Character:FindFirstChild(obj) then
            Player:Kick("Exploiting - Flying")
        end
    end
 
    -- God Mode
    for _, obj in pairs(BodyObjects) do
        if not Player.Character:FindFirstChild(obj) then
            Player:Kick("Exploiting - God Mode")
        end
    end
    if MutatorsFolder.Invincibility.Value == false then
        if Player.Character.Humanoid.Health ~= 0 then
            if Player.Character.Humanoid.MaxHealth ~= 100 then
                Player:Kick("Exploiting - God Mode.")
            end
        end
    end
    wait(5)
end
