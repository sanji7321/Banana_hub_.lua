local function AutoCursedDualKatana()
  local MasteryYama, MasteryTushita = 1, 1
  local GoodProgress, EvilProgress = 0, 0
  local YamaQuest_1, YamaQuest_2, YamaQuest_3
  local TushitaQuest_1, TushitaQuest_2, TushitaQuest_3
  local FinalQuest, FarmMastery
  
  local Enemies1 = workspace:WaitForChild("Enemies", 9e9)
  local Enemies2 = ReplicatedStorage
  local Remote = Enemies2:WaitForChild("Remotes", 9e9):WaitForChild("CommF_", 9e9)
  local Map = workspace:WaitForChild("Map", 9e9)
  local Turtle = Map:WaitForChild("Turtle", 9e9)
  local Cursed = Turtle:WaitForChild("Cursed", 9e9)
  
  local function GetYamaEnemies()
    local Distance = math.huge
    local NPC = nil
    local plrChar = Player and Player.Character and Player.Character.PrimaryPart
    
    for _,npc in pairs(Enemies1:GetChildren()) do
      if npc:FindFirstChild("HazeESP") then
        if plrChar and npc and npc:FindFirstChild("HumanoidRootPart") and (plrChar.Position - npc.HumanoidRootPart.Position).Magnitude <= Distance then
          Distance = (plrChar.Position - npc.HumanoidRootPart.Position).Magnitude
          NPC = npc
        end
      end
    end
    for _,npc in pairs(Enemies2:GetChildren()) do
      if npc:FindFirstChild("HazeESP") then
        if plrChar and npc and npc:FindFirstChild("HumanoidRootPart") and (plrChar.Position - npc.HumanoidRootPart.Position).Magnitude <= Distance then
          Distance = (plrChar.Position - npc.HumanoidRootPart.Position).Magnitude
          NPC = npc
        end
      end
    end
    return NPC
  end
  
  local function GetMasteryEnemies()
    local Distance = math.huge
    local NPC = nil
    local plrChar = Player and Player.Character and Player.Character.PrimaryPart
    
    for _,npc in pairs(Enemies1:GetChildren()) do
      if npc.Name == "Reborn Skeleton" or npc.Name == "Living Zombie" or npc.Name == "Demonic Soul" or npc.Name == "Posessed Mummy" then
        if plrChar and npc and npc:FindFirstChild("HumanoidRootPart") and (plrChar.Position - npc.HumanoidRootPart.Position).Magnitude <= Distance then
          Distance = (plrChar.Position - npc.HumanoidRootPart.Position).Magnitude
          NPC = npc
        end
      end
    end
    return NPC
  end
  
  -- Final Quest
  task.spawn(function()
    while getgenv().AutoCursedDualKatana do task.wait()
      if FinalQuest then
        
      end
    end
  end)
  
  -- Yama Quest 1
  task.spawn(function()
    while getgenv().AutoCursedDualKatana do task.wait()
      if YamaQuest_1 then
        if not VerifyTool("Yama") then
          FireRemote("LoadItem", "Yama")
        else
          local NPC = Enemies:FindFirstChild("Ghost")EquipToolName("Yama")
          
          if NPC and NPC:FindFirstChild("HumanoidRootPart") then
            PlayerTP(NPC.HumanoidRootPart.CFrame * CFrame.new(0, 0, 2))
          else
            PlayerTP(CFrame.new(5233, 7, 1105))
          end
        end
      end
    end
  end)
  
  -- Yama Quest 2
  task.spawn(function()
    while getgenv().AutoCursedDualKatana do task.wait()
      if YamaQuest_2 then
        local Enemie = GetYamaEnemies()
        
        if Enemie and Enemie:FindFirstChild("HumanoidRootPart") then
          PlayerTP(Enemie.HumanoidRootPart.CFrame + getgenv().FarmPos)
          pcall(function()PlayerClick()ActiveHaki()EquipTool()BringNPC(Enemie)end)
        end
      end
    end
  end)
  
  -- Yama Quest 3
  task.spawn(function()
    while getgenv().AutoCursedDualKatana do task.wait()
      if YamaQuest_3 then
        
      end
    end
  end)
  
  -- Tushita Quest 1
  task.spawn(function()
    local NPCs = workspace:WaitForChild("NPCs", 9e9)
    
    local Boat1, Boat2, Boat3 = false, false, false
    
    while getgenv().AutoCursedDualKatana do task.wait()
      if TushitaQuest_1 then
        local plrPP = Player and Player.Character and Player.Character.PrimaryPart
        local NPC = NPCs:FindFirstChild("Luxury Boat Dealer")
        
        if not Boat1 and plrPP and NPC then
          if (plrPP.Position - Vector3.new()).Magnitude < 5 then
            FireRemote("CDKQuest", "BoatQuest", NPC)Boat1 = true
          else
            PlayerTP(CFrame.new(-9546, 21, 4686))
          end
        elseif not Boat2 and plrPP and NPC then
          if (plrPP.Position - Vector3.new()).Magnitude < 5 then
            FireRemote("CDKQuest", "BoatQuest", NPC)Boat2 = true
          else
            PlayerTP(CFrame.new(-6120, 16, -2250))
          end
        elseif not Boat3 and plrPP and NPC then
          if (plrPP.Position - Vector3.new()).Magnitude < 5 then
            FireRemote("CDKQuest", "BoatQuest", NPC)Boat3 = true
          else
            PlayerTP(CFrame.new(-9533, 7, -8372))
          end
        end
      end
    end
  end)
  
  -- Tushita Quest 2
  task.spawn(function()
    while getgenv().AutoCursedDualKatana do task.wait()
      if TushitaQuest_2 then
        
      end
    end
  end)
  
  -- Tushita Quest 3
  task.spawn(function()
    while getgenv().AutoCursedDualKatana do task.wait()
      if TushitaQuest_3 then
        
      end
    end
  end)
  
  task.spawn(function()
    while getgenv().AutoCursedDualKatana do task.wait()
      if VerifyTool("Yama") then
        local NewMastery = GetToolLevel("Yama")
        if tonumber(NewMastery) then
          MasteryYama = NewMastery
        end
      elseif VerifyTool("Tushita") then
        local NewMastery = GetToolLevel("Tushita")
        if tonumber(NewMastery) then
          MasteryTushita = NewMastery
        end
      end
    end
  end)
  
  task.spawn(function()
    while getgenv().AutoCursedDualKatana do task.wait()
      if FarmMastery then
        if MasteryYama >= 350 and MasteryTushita >= 350 then
          break
        end
        if not VerifyTool("Yama") and MasteryYama < 350 then
          Remote:InvokeServer("LoadItem", "Yama")
        elseif not VerifyTool("Tushita") and MasteryTushita < 350 then
          Remote:InvokeServer("LoadItem", "Tushita")
        end
        
        local Enemie = GetMasteryEnemies()EquipToolName("Yama")EquipToolName("Tushita")
        
        if Enemie then
          PlayerTP(Enemie.HumanoidRootPart.CFrame + getgenv().FarmPos)
          pcall(function()PlayerClick()ActiveHaki()EquipTool()BringNPC(Enemie, true)end)
        else
          PlayerTP(CFrame.new(-9513, 164, 5786))
        end
      end
    end
  end)
    
  task.spawn(function()
    local function ConvertNumber(Number)
      local NumberStr = tostring(Number)
      NumberStr = string.gsub(NumberStr, "2", "3")
      NumberStr = string.gsub(NumberStr, "1", "2")
      NumberStr = string.gsub(NumberStr, "0", "1")
      NumberStr = string.gsub(NumberStr, "-2", "1")
      NumberStr = string.gsub(NumberStr, "-4", "2")
      NumberStr = string.gsub(NumberStr, "-6", "2")
      return tonumber(NumberStr)
    end
    
    while getgenv().AutoCursedDualKatana do task.wait(0.5)
      local Progress = Remote:InvokeServer("CDKQuest", "Progress")
      
      GoodProgress = ConvertNumber(Progress.Good)
      EvilProgress = ConvertNumber(Progress.Evil)
    end
  end)
    
  while getgenv().AutoCursedDualKatana do task.wait()
    local Door = Cursed:FindFirstChild("Breakable")
    
    if MasteryTushita < 350 and MasteryYama < 350 then
      FinalQuest, FarmMastery = false, true
      YamaQuest_1, YamaQuest_2, YamaQuest_3 = false, false, false
      TushitaQuest_1, TushitaQuest_2, TushitaQuest_3 = false, false, false
    elseif Door then
      Remote:InvokeServer("CDKQuest", "OpenDoor")
      Remote:InvokeServer("CDKQuest", "OpenDoor", true)
    elseif EvilProgress == 1 then
      FinalQuest, FarmMastery = false, false
      YamaQuest_1, YamaQuest_2, YamaQuest_3 = true, false, false
      TushitaQuest_1, TushitaQuest_2, TushitaQuest_3 = false, false, false
      Remote:InvokeServer("CDKQuest", "Progress", "Evil")Remote:InvokeServer("CDKQuest", "StartTrial", "Evil")
    elseif EvilProgress == 2 then
      FinalQuest, FarmMastery = false, false
      YamaQuest_1, YamaQuest_2, YamaQuest_3 = false, true, false
      TushitaQuest_1, TushitaQuest_2, TushitaQuest_3 = false, false, false
      Remote:InvokeServer("CDKQuest", "Progress", "Evil")Remote:InvokeServer("CDKQuest", "StartTrial", "Evil")
    elseif EvilProgress == 3 then
      FinalQuest, FarmMastery = false, false
      YamaQuest_1, YamaQuest_2, YamaQuest_3 = false, false, true
      TushitaQuest_1, TushitaQuest_2, TushitaQuest_3 = false, false, false
      Remote:InvokeServer("CDKQuest", "Progress", "Evil")Remote:InvokeServer("CDKQuest", "StartTrial", "Evil")
    elseif GoodProgress == 1 then
      FinalQuest, FarmMastery = false, false
      YamaQuest_1, YamaQuest_2, YamaQuest_3 = false, false, false
      TushitaQuest_1, TushitaQuest_2, TushitaQuest_3 = true, false, false
      Remote:InvokeServer("CDKQuest", "Progress", "Good")Remote:InvokeServer("CDKQuest", "StartTrial", "Good")
    elseif GoodProgress == 2 then
      FinalQuest, FarmMastery = false, false
      YamaQuest_1, YamaQuest_2, YamaQuest_3 = false, false, false
      TushitaQuest_1, TushitaQuest_2, TushitaQuest_3 = false, true, false
      Remote:InvokeServer("CDKQuest", "Progress", "Good")Remote:InvokeServer("CDKQuest", "StartTrial", "Good")
    elseif GoodProgress == 3 then
      FinalQuest, FarmMastery = false, false
      YamaQuest_1, YamaQuest_2, YamaQuest_3 = false, false, false
      TushitaQuest_1, TushitaQuest_2, TushitaQuest_3 = false, false, false
      Remote:InvokeServer("CDKQuest", "Progress", "Good")Remote:InvokeServer("CDKQuest", "StartTrial", "Good")
    else
      FinalQuest, FarmMastery = true, false
      YamaQuest_1, YamaQuest_2, YamaQuest_3 = false, false, false
      TushitaQuest_1, TushitaQuest_2, TushitaQuest_3 = false, false, false
    end
  end
end
