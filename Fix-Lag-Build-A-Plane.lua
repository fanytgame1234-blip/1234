-- Fix Lag cho game PlaceId 137925884276740

-- Danh sách model cần ẩn
local modelNames = {
    "ActiveObjects", "SpawnedSections", "AirBalloonSegment", "AirBalloonSegment2",
    "CannonSegment2", "Wall", "Cannon", "Wheels", "Wheel",
    "Islands", "Island1", "Island2", "Island3", "Island4", "Island5",
    "PlacedBlocks", "wing_2", "fuel_3", "Barrel", "shield", "driver_seat_1",
    "balloon", "tail_1", "propeller_2", "Prop", "IslandModel",
    "White Flower", "bob", "MechanicShop", "TomsTools", "tom", "ToolBelt",
    "Cone", "BgDeco", "BlockDeco", "p", "BestFuel", "UpgFuel", "Fuel",
    "SprayPaint", "Wrench", "UpgradePlot", "Offline", "ClientBlocks",
    "wing_1", "fuel_1", "block_1", "propeller_1", "missile_1",
    "fuel_2", "seat_1", "fuel_3", "propeller_3", "propeller_0", "boost_1",
    "shield", "wing_blood", "propeller_blood", "missile_blood", "blood_block",
    "blood_lantern", "blood_tail", "driver_seat_blood", "block_reinforced",
    "block_metal", "propeller_4", "half_block", "galactic_block",
    "galactic_wing", "galactic_propeller", "galactic_tail", "galactic_seat",
    "dark_glass_block", "propeller_collector", "wing_collector",
    "tail_collector", "fuel_collector", "IslandModel", "Map Walls",
    "Debris", "CannonBalls", "CannonBall", "Tornados", "PrototypeBlocks",
    "Gold", "Bridges", "Blood Moon Stuff", "Evil Eye", "Models",
    "Blood Propeller(MoreDetailVFX)", "Blood Propeller(LessDetailVFX)",
    "BloodMoonPortals", "Winter", "BigRock1", "Rocks", "Missile",
    "Monkey", "Blood Propeller", "Firework Launcher", "Fan", "Balloon",
    "Jet", "Balloon Deploy", "Soda", "Blood Wing", "Better Seat",
    "Trail Block", "Turbine", "UpgPropellar", "Propellar", "UpgFuel",
    "DriverSeat", "Seat", "Best Wing", "Best Missile", "DoomDred",
    "Potion", "Suit", "BuildAssets", "GalacticAssets", "Cases",
    "Cases (OLD)", "Basic Crate", "Galactic Crate", "BaseBlocks",
    "Glass Block", "Zeus", "Rig", "Glass", "FloatingParts",
    "Starting", "StudioHats", "Status", "ToolAssets", "Paint",
    "BlockAssets", "Driver Seat", "Wing", "Block", "Fuel"
}

-- Hàm ẩn model
local function hideModel(model)
    for _, obj in pairs(model:GetDescendants()) do
        if obj:IsA("BasePart") then
            obj.Transparency = 1
            obj.CanCollide = false
        elseif obj:IsA("Decal") or obj:IsA("Texture") then
            obj.Transparency = 1
        end
    end
end

-- Quét toàn Workspace + ReplicatedStorage
local function hideAll()
    for _, name in ipairs(modelNames) do
        local m1 = game.Workspace:FindFirstChild(name)
        local m2 = game.ReplicatedStorage:FindFirstChild(name)
        if m1 then hideModel(m1) end
        if m2 then hideModel(m2) end
    end
end

hideAll()
print("✅ Đã ẩn toàn bộ model trong game 137925884276740")