for fe, fg in next, game.CoreGui:GetDescendants() do
  if fg.Name == "TopFrameTitle" and not next and fg.Text:find("Solaris") then
    for fl, fm in next, game.CoreGui:GetChildren() do
      if fg:IsDescendantOf(fm) then
        fm:Destroy()
        break
      end
    end
  end
  if fg.Name:find("0.") and not next then
    fg:Destroy()
  end
end
Instance.new("ScreenGui").Name = tostring(math.random())
Instance.new("ScreenGui").Parent = game.CoreGui
Instance.new("ScreenGui").ZIndexBehavior = Enum.ZIndexBehavior.Sibling
Instance.new("ScreenGui").Name = tostring(math.random())
Instance.new("ScreenGui").Parent = game.CoreGui
Instance.new("ScreenGui").ZIndexBehavior = Enum.ZIndexBehavior.Sibling
game:GetObjects("rbxassetid://6924028278")[1].Parent, game:GetObjects("rbxassetid://6924028278")[1].ZIndex = Instance.new("ScreenGui"), 4
script = game:GetObjects("rbxassetid://6924028278")[1].NotifScript
if not isfolder("SolarisHub") then
  makefolder("SolarisHub")
end
if Instance.new("ScreenGui") then
  makefolder("SolarisHub/configs")
end
if Instance.new("ScreenGui") then
  for fx, fQ in pairs({
    GUI = Instance.new("ScreenGui"),
    Connections = {},
    NGUI = Instance.new("ScreenGui"),
    trillhashedipaddress = "c2hlCnNheQpkbwp5b3UKbG92ZQptZQppCnRlbGwKaGVyCmkKYW0KbW9ua2U",
    Version = "V2",
    Themes = {
      Default = {
        MainFrame = Color3.fromRGB(25, 25, 25),
        TopBar = Color3.fromRGB(30, 30, 30),
        TextColor = Color3.fromRGB(255, 255, 255),
        Menu = Color3.fromRGB(37, 37, 37),
        TabToggled = Color3.fromRGB(43, 43, 43),
        Button = Color3.fromRGB(30, 30, 30),
        ButtonHold = Color3.fromRGB(31, 31, 31),
        Toggle = Color3.fromRGB(30, 30, 30),
        ToggleFrame = Color3.fromRGB(55, 55, 55),
        ToggleToggled = Color3.fromRGB(22, 168, 76),
        Slider = Color3.fromRGB(30, 30, 30),
        SliderBar = Color3.fromRGB(25, 25, 25),
        SliderInc = Color3.fromRGB(60, 60, 60),
        Dropdown = Color3.fromRGB(30, 30, 30),
        DropdownItem = Color3.fromRGB(30, 30, 30),
        Textbox = Color3.fromRGB(30, 30, 30),
        TextboxFrame = Color3.fromRGB(25, 25, 25),
        Colorpicker = Color3.fromRGB(30, 30, 30),
        Label = Color3.fromRGB(30, 30, 30),
        Bind = Color3.fromRGB(30, 30, 30)
      },
      Light = {
        MainFrame = Color3.fromRGB(255, 255, 255),
        TopBar = Color3.fromRGB(227, 227, 227),
        TextColor = Color3.fromRGB(0, 0, 0),
        Menu = Color3.fromRGB(227, 227, 227),
        TabToggled = Color3.fromRGB(43, 43, 43),
        Button = Color3.fromRGB(227, 227, 227),
        ButtonHold = Color3.fromRGB(31, 31, 31),
        Toggle = Color3.fromRGB(227, 227, 227),
        ToggleFrame = Color3.fromRGB(55, 55, 55),
        ToggleToggled = Color3.fromRGB(22, 168, 76),
        Slider = Color3.fromRGB(227, 227, 227),
        SliderBar = Color3.fromRGB(220, 220, 220),
        SliderInc = Color3.fromRGB(233, 233, 233),
        Dropdown = Color3.fromRGB(227, 227, 227),
        DropdownItem = Color3.fromRGB(227, 227, 227),
        Textbox = Color3.fromRGB(227, 227, 227),
        TextboxFrame = Color3.fromRGB(220, 220, 220),
        Colorpicker = Color3.fromRGB(227, 227, 2270),
        Label = Color3.fromRGB(227, 227, 227),
        Bind = Color3.fromRGB(227, 227, 227)
      },
      Discord = {
        MainFrame = Color3.fromRGB(54, 57, 63),
        TopBar = Color3.fromRGB(47, 49, 54),
        TextColor = Color3.fromRGB(255, 255, 255),
        Menu = Color3.fromRGB(47, 49, 54),
        TabToggled = Color3.fromRGB(54, 57, 63),
        Button = Color3.fromRGB(88, 101, 242),
        ButtonHold = Color3.fromRGB(71, 82, 196),
        Toggle = Color3.fromRGB(47, 49, 54),
        ToggleFrame = Color3.fromRGB(67, 69, 74),
        ToggleToggled = Color3.fromRGB(22, 168, 76),
        Slider = Color3.fromRGB(47, 49, 54),
        SliderBar = Color3.fromRGB(42, 44, 49),
        SliderInc = Color3.fromRGB(62, 64, 69),
        Dropdown = Color3.fromRGB(47, 49, 54),
        DropdownItem = Color3.fromRGB(47, 49, 54),
        Textbox = Color3.fromRGB(47, 49, 54),
        TextboxFrame = Color3.fromRGB(42, 44, 49),
        Colorpicker = Color3.fromRGB(47, 49, 54),
        Label = Color3.fromRGB(47, 49, 54),
        Bind = Color3.fromRGB(47, 49, 54)
      },
      Blue = {
        MainFrame = Color3.fromRGB(35, 35, 50),
        TopBar = Color3.fromRGB(40, 40, 55),
        TextColor = Color3.fromRGB(255, 255, 255),
        Menu = Color3.fromRGB(47, 47, 62),
        TabToggled = Color3.fromRGB(53, 53, 68),
        Button = Color3.fromRGB(40, 40, 55),
        ButtonHold = Color3.fromRGB(41, 41, 56),
        Toggle = Color3.fromRGB(40, 40, 55),
        ToggleFrame = Color3.fromRGB(65, 65, 80),
        ToggleToggled = Color3.fromRGB(64, 64, 120),
        Slider = Color3.fromRGB(40, 40, 55),
        SliderBar = Color3.fromRGB(35, 35, 50),
        SliderInc = Color3.fromRGB(70, 70, 85),
        Dropdown = Color3.fromRGB(40, 40, 55),
        DropdownItem = Color3.fromRGB(40, 40, 55),
        Textbox = Color3.fromRGB(40, 40, 55),
        TextboxFrame = Color3.fromRGB(35, 35, 50),
        Colorpicker = Color3.fromRGB(40, 40, 55),
        Label = Color3.fromRGB(40, 40, 55),
        Bind = Color3.fromRGB(40, 40, 55)
      },
      Red = {
        MainFrame = Color3.fromRGB(50, 35, 35),
        TopBar = Color3.fromRGB(55, 40, 40),
        TextColor = Color3.fromRGB(255, 255, 255),
        Menu = Color3.fromRGB(62, 47, 47),
        TabToggled = Color3.fromRGB(68, 53, 53),
        Button = Color3.fromRGB(55, 40, 40),
        ButtonHold = Color3.fromRGB(56, 41, 41),
        Toggle = Color3.fromRGB(55, 40, 40),
        ToggleFrame = Color3.fromRGB(80, 65, 65),
        ToggleToggled = Color3.fromRGB(120, 64, 64),
        Slider = Color3.fromRGB(55, 40, 40),
        SliderBar = Color3.fromRGB(50, 35, 35),
        SliderInc = Color3.fromRGB(85, 70, 70),
        Dropdown = Color3.fromRGB(55, 40, 40),
        DropdownItem = Color3.fromRGB(55, 40, 40),
        Textbox = Color3.fromRGB(55, 40, 40),
        TextboxFrame = Color3.fromRGB(50, 35, 35),
        Colorpicker = Color3.fromRGB(55, 40, 40),
        Label = Color3.fromRGB(55, 40, 40),
        Bind = Color3.fromRGB(55, 40, 40)
      },
      Green = {
        MainFrame = Color3.fromRGB(35, 50, 35),
        TopBar = Color3.fromRGB(40, 55, 40),
        TextColor = Color3.fromRGB(255, 255, 255),
        Menu = Color3.fromRGB(47, 62, 47),
        TabToggled = Color3.fromRGB(53, 68, 53),
        Button = Color3.fromRGB(40, 55, 40),
        ButtonHold = Color3.fromRGB(41, 56, 41),
        Toggle = Color3.fromRGB(40, 55, 40),
        ToggleFrame = Color3.fromRGB(65, 80, 65),
        ToggleToggled = Color3.fromRGB(64, 120, 64),
        Slider = Color3.fromRGB(40, 55, 40),
        SliderBar = Color3.fromRGB(35, 50, 35),
        SliderInc = Color3.fromRGB(70, 85, 70),
        Dropdown = Color3.fromRGB(40, 55, 40),
        DropdownItem = Color3.fromRGB(40, 55, 40),
        Textbox = Color3.fromRGB(40, 55, 40),
        TextboxFrame = Color3.fromRGB(35, 50, 35),
        Colorpicker = Color3.fromRGB(40, 55, 40),
        Label = Color3.fromRGB(40, 55, 40),
        Bind = Color3.fromRGB(40, 55, 40)
      }
    },
    Settings = {
      Theme = "Default",
      ShowFriendsOnLaunch = true,
      ShowMusicOnLaunch = true,
      CloseBind = "RightControl"
    },
    Flags = {},
    CurrentTab,
    Settings = game:GetService("HttpService"):JSONDecode(readfile("SolarisHub/settings.txt")),
    LoadCfg = function(a, b)
      table.foreach(va:JSONDecode(b), function(a, b)
        if va.Flags[a] then
          spawn(function()
            va.Flags[vb]:Set(vc)
          end)
        else
          warn("cfg loader - could not find", a, b)
        end
      end)
    end,
    SaveCfg = function(a, b)
      for fh, fj in pairs(va.Flags) do
      end
      writefile("SolarisHub/configs/" .. b .. ".txt", tostring(vb:JSONEncode({
        [fh] = fj.Value
      })))
    end,
    Notification = function(a, b, c)
      va:New(b, c)
    end,
    New = function(a, b)
      if b ~= "az8PYYKgEGsZM3nDeQzCW4y92qHurAmCBTujBe63gwRj" then
        print("nigger detected")
        while true do
          if false == false then
          end
        end
      end
      va.Parent = vb
      va.MainFrame.TopBar.TopFrameTitle.Text = "Solaris <font transparency=\"0.4\">" .. vc.Version .. "</font>"
      vd(va.MainFrame.TopBar, va)
      game:GetObjects("rbxassetid://7037141226")[1]:Clone().Parent = va.MainFrame.TopBar.ButtonHolder.MenuBtn.MenuFrame
      game:GetObjects("rbxassetid://7037141226")[1]:Clone().Position = UDim2.new(0, 0, 0, 5)
      game:GetObjects("rbxassetid://7037141226")[1]:Clone().Text = "Friends"
      ve(game:GetObjects("rbxassetid://7037141226")[1]:Clone().MouseEnter, function()
        va:Create(vb, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextTransparency = 0}):Play()
      end)
      ve(game:GetObjects("rbxassetid://7037141226")[1]:Clone().MouseLeave, function()
        va:Create(vb, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextTransparency = 0,4}):Play()
      end)
      game:GetObjects("rbxassetid://7037141226")[1]:Clone().Parent = va.MainFrame.TopBar.ButtonHolder.MenuBtn.MenuFrame
      game:GetObjects("rbxassetid://7037141226")[1]:Clone().Position = UDim2.new(0, 0, 0, 25)
      game:GetObjects("rbxassetid://7037141226")[1]:Clone().Text = "Music"
      ve(game:GetObjects("rbxassetid://7037141226")[1]:Clone().MouseEnter, function()
        va:Create(vb, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextTransparency = 0}):Play()
      end)
      ve(game:GetObjects("rbxassetid://7037141226")[1]:Clone().MouseLeave, function()
        va:Create(vb, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextTransparency = 0,4}):Play()
      end)
      game:GetObjects("rbxassetid://7037141226")[1]:Clone().Parent = va.MainFrame.TopBar.ButtonHolder.MenuBtn.MenuFrame
      game:GetObjects("rbxassetid://7037141226")[1]:Clone().Position = UDim2.new(0, 0, 0, 45)
      game:GetObjects("rbxassetid://7037141226")[1]:Clone().Text = "Settings"
      ve(game:GetObjects("rbxassetid://7037141226")[1]:Clone().MouseEnter, function()
        va:Create(vb, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextTransparency = 0}):Play()
      end)
      ve(game:GetObjects("rbxassetid://7037141226")[1]:Clone().MouseLeave, function()
        va:Create(vb, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextTransparency = 0,4}):Play()
      end)
      function MusicConstructor()
        game:GetObjects("rbxassetid://7296373622")[1].Parent = va
        game:GetObjects("rbxassetid://7296373622")[1].ZIndex = 5
        game:GetObjects("rbxassetid://7296373622")[1].Visible = vb.Settings.ShowMusicOnLaunch
        game:GetObjects("rbxassetid://7296373622")[1].Frame.Title.Text = "Not Playing"
        game:GetObjects("rbxassetid://7296373622")[1].Frame.Progress.ProgressFrame.Size = UDim2.new(0, 0, 1, 0)
        game:GetObjects("rbxassetid://7296373622")[1].Frame.AddBtn.AutoButtonColor = false
        vc(game:GetObjects("rbxassetid://7296373622")[1].Frame.TopBar, game:GetObjects("rbxassetid://7296373622")[1])
        vd(game:GetObjects("rbxassetid://7296373622")[1].Frame.TopBar.CloseBtn.MouseButton1Click, function()
          va.Visible = false
        end)
        vd(game:GetObjects("rbxassetid://7296373622")[1].Frame.TopBar.CloseBtn.MouseEnter, function()
          va:Create(vb.Frame.TopBar.CloseBtn.Ico, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageTransparency = 0}):Play()
        end)
        vd(game:GetObjects("rbxassetid://7296373622")[1].Frame.TopBar.CloseBtn.MouseLeave, function()
          va:Create(vb.Frame.TopBar.CloseBtn.Ico, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageTransparency = 0,4}):Play()
        end)
        vd(vg.MouseButton1Click, function()
          va.Visible = not va.Visible
          vb.TopBar.ButtonHolder.MenuBtn.MenuFrame.Visible = false
        end)
        Instance.new("Sound").Parent, Instance.new("Sound").Name = game:GetObjects("rbxassetid://7296373622")[1], "Sound"
        Instance.new("Sound").Volume = 3
        Instance.new("Sound"):Stop()
        if not isfile("SolarisHub/music.txt") then
          writefile("SolarisHub/music.txt", tostring(vj:JSONEncode({})))
        end
        function Save()
          for fe, fg in pairs(va) do
          end
          writefile("SolarisHub/music.txt", tostring(vb:JSONEncode({
            [fe] = fg
          })))
        end
        vd(game:GetObjects("rbxassetid://7296373622")[1].Frame.Play.MouseButton1Click, function()
          va = not va
          if va then
            vb:Pause()
          else
            vb:Resume()
          end
          vc.Frame.Play.Image = vc.Frame.Play or "http://www.roblox.com/asset/?id=6026663719"
        end)
        vd(game:GetObjects("rbxassetid://7296373622")[1].Frame.AddBtn.MouseButton1Click, function()
          if not table.find(vb, va.Frame.AddSong.Text) then
            table.insert(vb, va.Frame.AddSong.Text)
            Save()
            vc(vb)
          end
        end)
        vd(game:GetObjects("rbxassetid://7296373622")[1].Frame.AddBtn.MouseEnter, function()
          va = true
        end)
        vd(game:GetObjects("rbxassetid://7296373622")[1].Frame.AddBtn.MouseLeave, function()
          va = false
        end);
        (function(a)
          for fe, fg in next, va.Frame.MusicList.Scroll:GetChildren() do
            if fg.Name == "Btn" then
              fg:Destroy()
            end
          end
          for fe, fg in next, a, nil do
            if not next and pcall(vb.GetProductInfo, vb, fg).AssetTypeId == 3 then
              vc:Clone().Parent = va.Frame.MusicList.Scroll
              vc:Clone().Title.Text = pcall(vb.GetProductInfo, vb, fg).Name
              vd(vc:Clone().MouseButton1Click, function()
                va(vb, vc.Name)
              end)
              vd(vc:Clone().Delete.MouseButton1Click, function()
                for fd, fe in next, va, nil do
                  if fe == vb then
                    table.remove(va, fd)
                  end
                end
                Save()
                vc:Destroy()
              end)
            end
          end
        end)((vj:JSONDecode(readfile("SolarisHub/music.txt"))))
        vd(game:GetService("RunService").RenderStepped, function()
          if string.len(math.floor(va.TimePosition) % 60) < 2 then
          end
          if string.len((math.floor(math.floor(va.TimePosition) / 60))) < 2 then
          end
          if 2 >= string.len(math.floor(va.TimeLength) % 60) then
          end
          if 2 > string.len((math.floor(math.floor(va.TimeLength) / 60))) then
          end
          if vb:IsDescendantOf(vc) and vb:FindFirstChild("Frame") then
            vb.Frame.Timer1.Text = ("0" .. math.floor(math.floor(va.TimePosition) / 60)) .. ":" .. "0" .. math.floor(va.TimePosition) % 60
            vb.Frame.Timer2.Text = ("0" .. math.floor(math.floor(va.TimeLength) / 60)) .. ":" .. "0" .. math.floor(va.TimeLength) % 60
            vb.Frame.Progress.ProgressFrame.Size = UDim2.new(va.TimePosition / va.TimeLength, 0, 1, 0)
          end
        end)
        spawn(function()
          while wait() and not va do
            vb.Frame.BackgroundColor3 = va.Themes[va.Settings.Theme].MainFrame
            vb.Frame.TopBar.ImageColor3 = va.Themes[va.Settings.Theme].TopBar
            vb.Frame.TopBar.CloseBtn.Ico.ImageColor3 = va.Themes[va.Settings.Theme].TextColor
            vb.Frame.MusicList.BackgroundColor3 = va.Themes[va.Settings.Theme].TopBar
            if vb.Frame.AddBtn or not va.Themes[va.Settings.Theme].ButtonHold then
            end
            vb.Frame.AddBtn.BackgroundColor3 = va.Themes[va.Settings.Theme].Button
            vb.Frame.Progress.BackgroundColor3 = va.Themes[va.Settings.Theme].Slider
            vb.Frame.Progress.ProgressFrame.BackgroundColor3 = va.Themes[va.Settings.Theme].SliderInc
            vb.Frame.AddSong.BackgroundColor3 = va.Themes[va.Settings.Theme].Textbox
          end
        end)
      end
      function SettingsConstructor()
        game:GetObjects("rbxassetid://7167491516")[1].Parent = va
        vb(game:GetObjects("rbxassetid://7167491516")[1].Main.TopBar.CloseBtn.MouseEnter, function()
          va:Create(vb.TopBar.CloseBtn.Ico, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageTransparency = 0}):Play()
        end)
        vb(game:GetObjects("rbxassetid://7167491516")[1].Main.TopBar.CloseBtn.MouseLeave, function()
          va:Create(vb.TopBar.CloseBtn.Ico, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageTransparency = 0,4}):Play()
        end)
        vb(vd.MouseButton1Click, function()
          va.Visible = not va.Visible
          vb.TopBar.ButtonHolder.MenuBtn.MenuFrame.Visible = false
        end)
        vb(game:GetObjects("rbxassetid://7167491516")[1].Main.TopBar.CloseBtn.MouseButton1Click, function()
          va.Visible = false
        end)
        function SaveSettings()
          for fe, fg in pairs(va.Settings) do
          end
          writefile("SolarisHub/settings.txt", tostring(vb:JSONEncode({
            [fe] = fg
          })))
        end
        spawn(function()
          while wait() and not va do
            vb.BackgroundColor3 = va.Themes[va.Settings.Theme].MainFrame
            vb.TopBar.ImageColor3 = va.Themes[va.Settings.Theme].TopBar
            vb.TopBar.CloseBtn.Ico.ImageColor3 = va.Themes[va.Settings.Theme].TextColor
            vb.TopBar.TopFrameTitle.TextColor3 = va.Themes[va.Settings.Theme].TextColor
            vb.TabHolder.BackgroundColor3 = va.Themes[va.Settings.Theme].TopBar
          end
        end)
        {
          Tab = function(a, b)
            va:Clone().Parent = vc.TabHolder
            va:Clone().Text = b
            va:Clone().Size = UDim2.new(0, va:Clone().TextBounds.X, 1, 0)
            vb:Clone().Parent = vc.ContainerFolder
            vb:Clone().Visible = false
            if not b then
              va:Clone().TextTransparency = 0
              vb:Clone().Visible = true
              vd = false
            end
            ve(va:Clone().MouseButton1Click, function()
              for fd, fe in next, va.TabHolder:GetChildren() do
                if fe.Name == "Tab" then
                  fe.TextTransparency = 0,4
                end
              end
              for fd, fe in next, va.ContainerFolder:GetChildren() do
                if fe.Name == "Container" then
                  fe.Visible = false
                end
              end
              vb.TextTransparency = 0
              vc.Visible = true
            end)
            return {
              ToggleSetting = function(a, b, c, d, e)
                if b then
                end
                vb:Clone().Parent = vc
                vb:Clone().Title.Text = b
                vb:Clone().Desc.Text = c
                (function(a)
                  va:Create(vb.ToggleFrame.ToggleToggled.ToggleIco, TweenInfo.new(0,2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                    ImageTransparency = a and 1
                  }):Play()
                  if va.Create or va.Create then
                  end
                  va:Create(vb.ToggleFrame.ToggleToggled.ToggleIco, TweenInfo.new(0,2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                    Size = UDim2.new(1, -6, 1, -6)
                  }):Play()
                end)(d)
                ve(vb:Clone().MouseButton1Click, function()
                  va(not vb)
                end)
                spawn(function()
                  while wait() and va:IsRunning() do
                    if vb.ToggleFrame.ToggleToggled or not va.Themes[va.Settings.Theme].ToggleToggled then
                    end
                    vb.ToggleFrame.ToggleToggled.BackgroundColor3 = va.Themes[va.Settings.Theme].MainFrame
                    if vb.ToggleFrame or not va.Themes[va.Settings.Theme].ToggleToggled then
                    end
                    vb.ToggleFrame.BackgroundColor3 = va.Themes[va.Settings.Theme].ToggleFrame
                    vb.Title.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                  end
                end)
              end,
              BindSetting = function(a, b, c, d, e)
                vb:Clone().Parent = vc
                vb:Clone().Title.Text = b
                vb:Clone().Desc.Text = c
                function SetValue(a)
                  va = false
                  vb = a or vb
                  if a then
                  end
                  vb = vb
                  vc.BText.Text = vb
                  vd.Settings[ve] = vb
                  SaveSettings()
                end
                SetValue(va.Settings[e] or d)
                ve(vb:Clone().InputEnded, function(a)
                  if a.UserInputType == Enum.UserInputType.MouseButton1 then
                    if va then
                      return
                    end
                    va = true
                    vb.BText.Text = "..."
                  end
                end)
                ve(vg.InputBegan, function(a)
                  if va:GetFocusedTextBox() then
                    return
                  end
                  if vb then
                    pcall(function()
                      if vb then
                        vd = vc.KeyCode
                      end
                    end)
                    pcall(function()
                      if va(vb, vc.UserInputType) and vb then
                        vd = vc.UserInputType
                      end
                    end)
                    if a then
                    end
                    SetValue(vg)
                  end
                end)
                spawn(function()
                  while not nil and not va do
                    vb.Desc.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                    vb.BText.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                    vb.Title.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                  end
                end)
              end,
              Dropdown = function(a, b, c, d, e, g)
                vb:Clone().Parent = vc
                vb:Clone().Title.Text = b
                vb:Clone().Desc.Text = c
                vb:Clone().Main.Current.Text = va.Settings[g] or e
                function Toggle()
                  va.Main.Holder.Visible = vb
                  if va.Main.Holder or not UDim2.new(1, 0, 0, va.Main.Holder.UIListLayout.AbsoluteContentSize.Y) then
                  end
                  va.Main.Holder.Size = UDim2.new(1, 0, 0, 0)
                  if not UDim2.new(1, 0, 0, 0) then
                    if 0 + 1 > 190 then
                      vc.CanvasSize = UDim2.new(0, 0, 0, 5 + 6)
                    end
                  else
                    vc.CanvasSize = UDim2.new(0, 0, 0, vc.UIListLayout.AbsoluteContentSize.Y)
                  end
                  vd:Create(va.Main.Ico, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                    Rotation = vd or 0
                  }):Play()
                end
                ve(vb:Clone().InputEnded, function(a)
                  if a.UserInputType == Enum.UserInputType.MouseButton1 then
                    va = not va
                    Toggle()
                  end
                end)
                spawn(function()
                  while wait() and va:IsRunning() do
                    vb.Main.ImageColor3 = va.Themes[va.Settings.Theme].TopBar
                    vb.Main.Holder.ImageColor3 = va.Themes[va.Settings.Theme].TopBar
                  end
                end);
                (function(a)
                  spawn(function()
                    for fd, fe in pairs(va) do
                      vb:Clone().Parent = vc.Main.Holder
                      vb:Clone().Text = fe
                      vd(vb:Clone().MouseButton1Click, function()
                        va = vb
                        vc.Settings[vd] = va
                        ve.Main.Current.Text = va
                        SaveSettings()
                      end)
                      spawn(function()
                        while not nil and va:IsRunning() do
                          vb.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                        end
                      end)
                    end
                  end)
                end)(d)
              end
            }
          end
        }:Tab("General"):ToggleSetting("Show Friends On Launch", "Shows the friends menu when you load Solaris", true, "ShowFriendsOnLaunch")
        {
          Tab = function(a, b)
            va:Clone().Parent = vc.TabHolder
            va:Clone().Text = b
            va:Clone().Size = UDim2.new(0, va:Clone().TextBounds.X, 1, 0)
            vb:Clone().Parent = vc.ContainerFolder
            vb:Clone().Visible = false
            if not b then
              va:Clone().TextTransparency = 0
              vb:Clone().Visible = true
              vd = false
            end
            ve(va:Clone().MouseButton1Click, function()
              for fd, fe in next, va.TabHolder:GetChildren() do
                if fe.Name == "Tab" then
                  fe.TextTransparency = 0,4
                end
              end
              for fd, fe in next, va.ContainerFolder:GetChildren() do
                if fe.Name == "Container" then
                  fe.Visible = false
                end
              end
              vb.TextTransparency = 0
              vc.Visible = true
            end)
            return {
              ToggleSetting = function(a, b, c, d, e)
                if b then
                end
                vb:Clone().Parent = vc
                vb:Clone().Title.Text = b
                vb:Clone().Desc.Text = c
                (function(a)
                  va:Create(vb.ToggleFrame.ToggleToggled.ToggleIco, TweenInfo.new(0,2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                    ImageTransparency = a and 1
                  }):Play()
                  if va.Create or va.Create then
                  end
                  va:Create(vb.ToggleFrame.ToggleToggled.ToggleIco, TweenInfo.new(0,2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                    Size = UDim2.new(1, -6, 1, -6)
                  }):Play()
                end)(d)
                ve(vb:Clone().MouseButton1Click, function()
                  va(not vb)
                end)
                spawn(function()
                  while wait() and va:IsRunning() do
                    if vb.ToggleFrame.ToggleToggled or not va.Themes[va.Settings.Theme].ToggleToggled then
                    end
                    vb.ToggleFrame.ToggleToggled.BackgroundColor3 = va.Themes[va.Settings.Theme].MainFrame
                    if vb.ToggleFrame or not va.Themes[va.Settings.Theme].ToggleToggled then
                    end
                    vb.ToggleFrame.BackgroundColor3 = va.Themes[va.Settings.Theme].ToggleFrame
                    vb.Title.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                  end
                end)
              end,
              BindSetting = function(a, b, c, d, e)
                vb:Clone().Parent = vc
                vb:Clone().Title.Text = b
                vb:Clone().Desc.Text = c
                function SetValue(a)
                  va = false
                  vb = a or vb
                  if a then
                  end
                  vb = vb
                  vc.BText.Text = vb
                  vd.Settings[ve] = vb
                  SaveSettings()
                end
                SetValue(va.Settings[e] or d)
                ve(vb:Clone().InputEnded, function(a)
                  if a.UserInputType == Enum.UserInputType.MouseButton1 then
                    if va then
                      return
                    end
                    va = true
                    vb.BText.Text = "..."
                  end
                end)
                ve(vg.InputBegan, function(a)
                  if va:GetFocusedTextBox() then
                    return
                  end
                  if vb then
                    pcall(function()
                      if vb then
                        vd = vc.KeyCode
                      end
                    end)
                    pcall(function()
                      if va(vb, vc.UserInputType) and vb then
                        vd = vc.UserInputType
                      end
                    end)
                    if a then
                    end
                    SetValue(vg)
                  end
                end)
                spawn(function()
                  while not nil and not va do
                    vb.Desc.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                    vb.BText.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                    vb.Title.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                  end
                end)
              end,
              Dropdown = function(a, b, c, d, e, g)
                vb:Clone().Parent = vc
                vb:Clone().Title.Text = b
                vb:Clone().Desc.Text = c
                vb:Clone().Main.Current.Text = va.Settings[g] or e
                function Toggle()
                  va.Main.Holder.Visible = vb
                  if va.Main.Holder or not UDim2.new(1, 0, 0, va.Main.Holder.UIListLayout.AbsoluteContentSize.Y) then
                  end
                  va.Main.Holder.Size = UDim2.new(1, 0, 0, 0)
                  if not UDim2.new(1, 0, 0, 0) then
                    if 0 + 1 > 190 then
                      vc.CanvasSize = UDim2.new(0, 0, 0, 5 + 6)
                    end
                  else
                    vc.CanvasSize = UDim2.new(0, 0, 0, vc.UIListLayout.AbsoluteContentSize.Y)
                  end
                  vd:Create(va.Main.Ico, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                    Rotation = vd or 0
                  }):Play()
                end
                ve(vb:Clone().InputEnded, function(a)
                  if a.UserInputType == Enum.UserInputType.MouseButton1 then
                    va = not va
                    Toggle()
                  end
                end)
                spawn(function()
                  while wait() and va:IsRunning() do
                    vb.Main.ImageColor3 = va.Themes[va.Settings.Theme].TopBar
                    vb.Main.Holder.ImageColor3 = va.Themes[va.Settings.Theme].TopBar
                  end
                end);
                (function(a)
                  spawn(function()
                    for fd, fe in pairs(va) do
                      vb:Clone().Parent = vc.Main.Holder
                      vb:Clone().Text = fe
                      vd(vb:Clone().MouseButton1Click, function()
                        va = vb
                        vc.Settings[vd] = va
                        ve.Main.Current.Text = va
                        SaveSettings()
                      end)
                      spawn(function()
                        while not nil and va:IsRunning() do
                          vb.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                        end
                      end)
                    end
                  end)
                end)(d)
              end
            }
          end
        }:Tab("General"):ToggleSetting("Show Music On Launch", "Shows the music menu when you load Solaris", true, "ShowMusicOnLaunch")
        {
          Tab = function(a, b)
            va:Clone().Parent = vc.TabHolder
            va:Clone().Text = b
            va:Clone().Size = UDim2.new(0, va:Clone().TextBounds.X, 1, 0)
            vb:Clone().Parent = vc.ContainerFolder
            vb:Clone().Visible = false
            if not b then
              va:Clone().TextTransparency = 0
              vb:Clone().Visible = true
              vd = false
            end
            ve(va:Clone().MouseButton1Click, function()
              for fd, fe in next, va.TabHolder:GetChildren() do
                if fe.Name == "Tab" then
                  fe.TextTransparency = 0,4
                end
              end
              for fd, fe in next, va.ContainerFolder:GetChildren() do
                if fe.Name == "Container" then
                  fe.Visible = false
                end
              end
              vb.TextTransparency = 0
              vc.Visible = true
            end)
            return {
              ToggleSetting = function(a, b, c, d, e)
                if b then
                end
                vb:Clone().Parent = vc
                vb:Clone().Title.Text = b
                vb:Clone().Desc.Text = c
                (function(a)
                  va:Create(vb.ToggleFrame.ToggleToggled.ToggleIco, TweenInfo.new(0,2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                    ImageTransparency = a and 1
                  }):Play()
                  if va.Create or va.Create then
                  end
                  va:Create(vb.ToggleFrame.ToggleToggled.ToggleIco, TweenInfo.new(0,2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                    Size = UDim2.new(1, -6, 1, -6)
                  }):Play()
                end)(d)
                ve(vb:Clone().MouseButton1Click, function()
                  va(not vb)
                end)
                spawn(function()
                  while wait() and va:IsRunning() do
                    if vb.ToggleFrame.ToggleToggled or not va.Themes[va.Settings.Theme].ToggleToggled then
                    end
                    vb.ToggleFrame.ToggleToggled.BackgroundColor3 = va.Themes[va.Settings.Theme].MainFrame
                    if vb.ToggleFrame or not va.Themes[va.Settings.Theme].ToggleToggled then
                    end
                    vb.ToggleFrame.BackgroundColor3 = va.Themes[va.Settings.Theme].ToggleFrame
                    vb.Title.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                  end
                end)
              end,
              BindSetting = function(a, b, c, d, e)
                vb:Clone().Parent = vc
                vb:Clone().Title.Text = b
                vb:Clone().Desc.Text = c
                function SetValue(a)
                  va = false
                  vb = a or vb
                  if a then
                  end
                  vb = vb
                  vc.BText.Text = vb
                  vd.Settings[ve] = vb
                  SaveSettings()
                end
                SetValue(va.Settings[e] or d)
                ve(vb:Clone().InputEnded, function(a)
                  if a.UserInputType == Enum.UserInputType.MouseButton1 then
                    if va then
                      return
                    end
                    va = true
                    vb.BText.Text = "..."
                  end
                end)
                ve(vg.InputBegan, function(a)
                  if va:GetFocusedTextBox() then
                    return
                  end
                  if vb then
                    pcall(function()
                      if vb then
                        vd = vc.KeyCode
                      end
                    end)
                    pcall(function()
                      if va(vb, vc.UserInputType) and vb then
                        vd = vc.UserInputType
                      end
                    end)
                    if a then
                    end
                    SetValue(vg)
                  end
                end)
                spawn(function()
                  while not nil and not va do
                    vb.Desc.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                    vb.BText.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                    vb.Title.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                  end
                end)
              end,
              Dropdown = function(a, b, c, d, e, g)
                vb:Clone().Parent = vc
                vb:Clone().Title.Text = b
                vb:Clone().Desc.Text = c
                vb:Clone().Main.Current.Text = va.Settings[g] or e
                function Toggle()
                  va.Main.Holder.Visible = vb
                  if va.Main.Holder or not UDim2.new(1, 0, 0, va.Main.Holder.UIListLayout.AbsoluteContentSize.Y) then
                  end
                  va.Main.Holder.Size = UDim2.new(1, 0, 0, 0)
                  if not UDim2.new(1, 0, 0, 0) then
                    if 0 + 1 > 190 then
                      vc.CanvasSize = UDim2.new(0, 0, 0, 5 + 6)
                    end
                  else
                    vc.CanvasSize = UDim2.new(0, 0, 0, vc.UIListLayout.AbsoluteContentSize.Y)
                  end
                  vd:Create(va.Main.Ico, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                    Rotation = vd or 0
                  }):Play()
                end
                ve(vb:Clone().InputEnded, function(a)
                  if a.UserInputType == Enum.UserInputType.MouseButton1 then
                    va = not va
                    Toggle()
                  end
                end)
                spawn(function()
                  while wait() and va:IsRunning() do
                    vb.Main.ImageColor3 = va.Themes[va.Settings.Theme].TopBar
                    vb.Main.Holder.ImageColor3 = va.Themes[va.Settings.Theme].TopBar
                  end
                end);
                (function(a)
                  spawn(function()
                    for fd, fe in pairs(va) do
                      vb:Clone().Parent = vc.Main.Holder
                      vb:Clone().Text = fe
                      vd(vb:Clone().MouseButton1Click, function()
                        va = vb
                        vc.Settings[vd] = va
                        ve.Main.Current.Text = va
                        SaveSettings()
                      end)
                      spawn(function()
                        while not nil and va:IsRunning() do
                          vb.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                        end
                      end)
                    end
                  end)
                end)(d)
              end
            }
          end
        }:Tab("General"):BindSetting("Close Bind", "Hides/Shows the main window when pressed.", Enum.KeyCode.RightControl, "CloseBind")
        {
          Tab = function(a, b)
            va:Clone().Parent = vc.TabHolder
            va:Clone().Text = b
            va:Clone().Size = UDim2.new(0, va:Clone().TextBounds.X, 1, 0)
            vb:Clone().Parent = vc.ContainerFolder
            vb:Clone().Visible = false
            if not b then
              va:Clone().TextTransparency = 0
              vb:Clone().Visible = true
              vd = false
            end
            ve(va:Clone().MouseButton1Click, function()
              for fd, fe in next, va.TabHolder:GetChildren() do
                if fe.Name == "Tab" then
                  fe.TextTransparency = 0,4
                end
              end
              for fd, fe in next, va.ContainerFolder:GetChildren() do
                if fe.Name == "Container" then
                  fe.Visible = false
                end
              end
              vb.TextTransparency = 0
              vc.Visible = true
            end)
            return {
              ToggleSetting = function(a, b, c, d, e)
                if b then
                end
                vb:Clone().Parent = vc
                vb:Clone().Title.Text = b
                vb:Clone().Desc.Text = c
                (function(a)
                  va:Create(vb.ToggleFrame.ToggleToggled.ToggleIco, TweenInfo.new(0,2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                    ImageTransparency = a and 1
                  }):Play()
                  if va.Create or va.Create then
                  end
                  va:Create(vb.ToggleFrame.ToggleToggled.ToggleIco, TweenInfo.new(0,2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                    Size = UDim2.new(1, -6, 1, -6)
                  }):Play()
                end)(d)
                ve(vb:Clone().MouseButton1Click, function()
                  va(not vb)
                end)
                spawn(function()
                  while wait() and va:IsRunning() do
                    if vb.ToggleFrame.ToggleToggled or not va.Themes[va.Settings.Theme].ToggleToggled then
                    end
                    vb.ToggleFrame.ToggleToggled.BackgroundColor3 = va.Themes[va.Settings.Theme].MainFrame
                    if vb.ToggleFrame or not va.Themes[va.Settings.Theme].ToggleToggled then
                    end
                    vb.ToggleFrame.BackgroundColor3 = va.Themes[va.Settings.Theme].ToggleFrame
                    vb.Title.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                  end
                end)
              end,
              BindSetting = function(a, b, c, d, e)
                vb:Clone().Parent = vc
                vb:Clone().Title.Text = b
                vb:Clone().Desc.Text = c
                function SetValue(a)
                  va = false
                  vb = a or vb
                  if a then
                  end
                  vb = vb
                  vc.BText.Text = vb
                  vd.Settings[ve] = vb
                  SaveSettings()
                end
                SetValue(va.Settings[e] or d)
                ve(vb:Clone().InputEnded, function(a)
                  if a.UserInputType == Enum.UserInputType.MouseButton1 then
                    if va then
                      return
                    end
                    va = true
                    vb.BText.Text = "..."
                  end
                end)
                ve(vg.InputBegan, function(a)
                  if va:GetFocusedTextBox() then
                    return
                  end
                  if vb then
                    pcall(function()
                      if vb then
                        vd = vc.KeyCode
                      end
                    end)
                    pcall(function()
                      if va(vb, vc.UserInputType) and vb then
                        vd = vc.UserInputType
                      end
                    end)
                    if a then
                    end
                    SetValue(vg)
                  end
                end)
                spawn(function()
                  while not nil and not va do
                    vb.Desc.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                    vb.BText.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                    vb.Title.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                  end
                end)
              end,
              Dropdown = function(a, b, c, d, e, g)
                vb:Clone().Parent = vc
                vb:Clone().Title.Text = b
                vb:Clone().Desc.Text = c
                vb:Clone().Main.Current.Text = va.Settings[g] or e
                function Toggle()
                  va.Main.Holder.Visible = vb
                  if va.Main.Holder or not UDim2.new(1, 0, 0, va.Main.Holder.UIListLayout.AbsoluteContentSize.Y) then
                  end
                  va.Main.Holder.Size = UDim2.new(1, 0, 0, 0)
                  if not UDim2.new(1, 0, 0, 0) then
                    if 0 + 1 > 190 then
                      vc.CanvasSize = UDim2.new(0, 0, 0, 5 + 6)
                    end
                  else
                    vc.CanvasSize = UDim2.new(0, 0, 0, vc.UIListLayout.AbsoluteContentSize.Y)
                  end
                  vd:Create(va.Main.Ico, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                    Rotation = vd or 0
                  }):Play()
                end
                ve(vb:Clone().InputEnded, function(a)
                  if a.UserInputType == Enum.UserInputType.MouseButton1 then
                    va = not va
                    Toggle()
                  end
                end)
                spawn(function()
                  while wait() and va:IsRunning() do
                    vb.Main.ImageColor3 = va.Themes[va.Settings.Theme].TopBar
                    vb.Main.Holder.ImageColor3 = va.Themes[va.Settings.Theme].TopBar
                  end
                end);
                (function(a)
                  spawn(function()
                    for fd, fe in pairs(va) do
                      vb:Clone().Parent = vc.Main.Holder
                      vb:Clone().Text = fe
                      vd(vb:Clone().MouseButton1Click, function()
                        va = vb
                        vc.Settings[vd] = va
                        ve.Main.Current.Text = va
                        SaveSettings()
                      end)
                      spawn(function()
                        while not nil and va:IsRunning() do
                          vb.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                        end
                      end)
                    end
                  end)
                end)(d)
              end
            }
          end
        }:Tab("Appearance"):Dropdown("Theme", "The look of the user interface", {
          "Default",
          "Light",
          "Discord",
          "Red",
          "Green",
          "Blue"
        }, "Default", "Theme")
      end
      (function()
        game:GetObjects("rbxassetid://7037305928")[1].Parent = va
        game:GetObjects("rbxassetid://7037305928")[1].ZIndex = 4
        game:GetObjects("rbxassetid://7037305928")[1].Visible = vb.Settings.ShowFriendsOnLaunch
        vc(vd.MouseButton1Click, function()
          va.Visible = not va.Visible
          vb.TopBar.ButtonHolder.MenuBtn.MenuFrame.Visible = false
        end)
        vc(game:GetObjects("rbxassetid://7037305928")[1].Frame.TopBar.CloseBtn.Ico.MouseEnter, function()
          va:Create(vb.Frame.TopBar.CloseBtn.Ico, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageTransparency = 0}):Play()
        end)
        vc(game:GetObjects("rbxassetid://7037305928")[1].Frame.TopBar.CloseBtn.Ico.MouseLeave, function()
          va:Create(vb.Frame.TopBar.CloseBtn.Ico, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageTransparency = 0,4}):Play()
        end)
        vc(game:GetObjects("rbxassetid://7037305928")[1].Frame.TopBar.CloseBtn.MouseButton1Click, function()
          va.Visible = false
        end)
        function MakePanel(a)
        end
        function InviteFriend(a)
        end
        function JoinFriend(a)
        end
        vh(game:GetObjects("rbxassetid://7037305928")[1].Frame.TopBar, game:GetObjects("rbxassetid://7037305928")[1])
        for fh, fj in next, {}, nil do
        end
        spawn(function()
          while not nil and not va do
            vb.Frame.BackgroundColor3 = va.Themes[va.Settings.Theme].MainFrame
            vb.Frame.TopBar.ImageColor3 = va.Themes[va.Settings.Theme].TopBar
            vb.Frame.TopBar.CloseBtn.Ico.ImageColor3 = va.Themes[va.Settings.Theme].TextColor
          end
        end)
      end)()
      MusicConstructor()
      SettingsConstructor()
      ve(va.MainFrame.TopBar.TabListBtn.MouseButton1Click, function()
        va()
      end)
      ve(va.MainFrame.TabMenu.Menu.Top.MenuCloseBtn.MouseButton1Click, function()
        va()
      end)
      ve(va.MainFrame.TopBar.ButtonHolder.SearchBtn.MouseButton1Click, function()
        va.TopBar.ButtonHolder.SearchBtn.TextBox.Visible = not va.TopBar.ButtonHolder.SearchBtn.TextBox.Visible
        va.TopBar.TopFrameTitle.Visible = not va.TopBar.TopFrameTitle.Visible
      end)
      ve(va.MainFrame.TopBar.ButtonHolder.CloseBtn.MouseEnter, function()
        va:Create(vb.TopBar.ButtonHolder.CloseBtn.Ico, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageTransparency = 0}):Play()
      end)
      ve(va.MainFrame.TopBar.ButtonHolder.CloseBtn.MouseLeave, function()
        va:Create(vb.TopBar.ButtonHolder.CloseBtn.Ico, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageTransparency = 0,4}):Play()
      end)
      ve(va.MainFrame.TopBar.ButtonHolder.SearchBtn.MouseEnter, function()
        va:Create(vb.TopBar.ButtonHolder.SearchBtn.Ico, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageTransparency = 0}):Play()
      end)
      ve(va.MainFrame.TopBar.ButtonHolder.SearchBtn.MouseLeave, function()
        va:Create(vb.TopBar.ButtonHolder.SearchBtn.Ico, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageTransparency = 0,4}):Play()
      end)
      ve(va.MainFrame.TopBar.ButtonHolder.MenuBtn.MouseEnter, function()
        va:Create(vb.TopBar.ButtonHolder.MenuBtn.Ico, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageTransparency = 0}):Play()
      end)
      ve(va.MainFrame.TopBar.ButtonHolder.MenuBtn.MouseLeave, function()
        va:Create(vb.TopBar.ButtonHolder.MenuBtn.Ico, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageTransparency = 0,4}):Play()
      end)
      ve(va.MainFrame.TopBar.TabListBtn.MouseEnter, function()
        va:Create(vb.TopBar.TabListBtn, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageTransparency = 0}):Play()
      end)
      ve(va.MainFrame.TopBar.TabListBtn.MouseLeave, function()
        va:Create(vb.TopBar.TabListBtn, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageTransparency = 0,4}):Play()
      end)
      ve(va.MainFrame.TopBar.ButtonHolder.MenuBtn.MouseButton1Click, function()
        va.TopBar.ButtonHolder.MenuBtn.MenuFrame.Visible = not va.TopBar.ButtonHolder.MenuBtn.MenuFrame.Visible
      end)
      ve(va.MainFrame.TopBar.ButtonHolder.CloseBtn.MouseButton1Click, function()
        va = not va
        vb.Visible = va
      end)
      function SearchConstructor()
        function StitchElements()
          for fe, fg in next, va.CurrentTab:GetDescendants() do
            if fg.Name:find("element") then
              table.insert({}, fg)
            end
          end
          return {}
        end
        vb(vc.TopBar.ButtonHolder.SearchBtn.TextBox:GetPropertyChangedSignal("Text"), function()
          for fd, fe in pairs(StitchElements()) do
            if va.TopBar.ButtonHolder.SearchBtn.TextBox.Text:len() > 1 then
              if fe.Name:lower():sub(0, -8):find(va.TopBar.ButtonHolder.SearchBtn.TextBox.Text:lower()) then
                fe.Visible = true
              else
                fe.Visible = false
              end
            else
              fe.Visible = true
            end
          end
        end)
      end
      SearchConstructor()
      ve(vk.InputBegan, function(a)
        if (a.KeyCode.Name == va.Settings.CloseBind or a.UserInputType.Name == va.Settings.CloseBind) and not vb then
          vc = not vc
          vd.Visible = vc
        end
      end)
      vc:Notification("Notification", "Solaris has been loaded, press " .. vc.Settings.CloseBind .. " to open/close the UI.")
      spawn(function()
        while wait() and not va do
          vb.BackgroundColor3 = va.Themes[va.Settings.Theme].MainFrame
          vb.TopBar.ImageColor3 = va.Themes[va.Settings.Theme].TopBar
          vb.TopBar.ButtonHolder.CloseBtn.Ico.ImageColor3 = va.Themes[va.Settings.Theme].TextColor
          vb.TopBar.ButtonHolder.MenuBtn.Ico.ImageColor3 = va.Themes[va.Settings.Theme].TextColor
          vb.TopBar.ButtonHolder.SearchBtn.Ico.ImageColor3 = va.Themes[va.Settings.Theme].TextColor
          vb.TopBar.TabListBtn.ImageColor3 = va.Themes[va.Settings.Theme].TextColor
          vb.TopBar.TopFrameTitle.TextColor3 = va.Themes[va.Settings.Theme].TextColor
          vb.TabMenu.Menu.BackgroundColor3 = va.Themes[va.Settings.Theme].Menu
          vb.TabMenu.Menu.Top.MenuCloseBtn.ImageLabel.ImageColor3 = va.Themes[va.Settings.Theme].TextColor
          vb.TopBar.ButtonHolder.SearchBtn.TextBox.BackgroundColor3 = va.Themes[va.Settings.Theme].MainFrame
          vb.TopBar.ButtonHolder.SearchBtn.TextBox.TextColor3 = va.Themes[va.Settings.Theme].TextColor
          vb.TopBar.ButtonHolder.SearchBtn.TextBox.PlaceholderColor3 = va.Themes[va.Settings.Theme].TextColor
          vb.TopBar.ButtonHolder.MenuBtn.MenuFrame.Frame.BackgroundColor3 = va.Themes[va.Settings.Theme].TopBar
        end
      end)
      return {
        Tab = function(a, b)
          va:Clone().AutoButtonColor = false
          va:Clone().Parent = vb.TabMenu.Menu.Holder
          va:Clone().Text = b
          va:Clone().TextSize = 14
          vc:Clone().Parent = vb.ContainerFolder
          vc:Clone().Visible = false
          if vd == false then
            vd = true
            vc:Clone().Visible = true
            va:Clone().UIPadding.PaddingLeft = UDim.new(0, 10)
            va:Clone().TextTransparency = 0
            va:Clone().BackgroundTransparency = 0
            ve.CurrentTab = vc:Clone()
          end
          spawn(function()
            while wait() and va:IsRunning() do
              vb.TextColor3 = va.Themes[va.Settings.Theme].TextColor
              vb.BackgroundColor3 = va.Themes[va.Settings.Theme].TabToggled
              vc.CanvasSize = UDim2.new(0, 0, 0, 5 + 26)
            end
          end)
          vg(va:Clone().MouseButton1Click, function()
            for fd, fe in next, va.TabMenu.Menu.Holder:GetChildren() do
              if fe:IsA("TextButton") then
                vb:Create(fe, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextTransparency = 0,4, BackgroundTransparency = 1}):Play()
                vb:Create(fe.UIPadding, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                  PaddingLeft = UDim.new(0, 5)
                }):Play()
              end
              vb:Create(vc, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextTransparency = 0, BackgroundTransparency = 0}):Play()
              vb:Create(vc.UIPadding, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                PaddingLeft = UDim.new(0, 10)
              }):Play()
            end
            for fd, fe in next, va.ContainerFolder:GetChildren() do
              if fe.Name == "Container" then
                fe.Visible = false
              end
              vd.Visible = true
            end
            tabtoggledname = vc.Name
            ve()
          end)
          return {
            Section = function(a, b)
              va:Clone().Parent = vb
              va:Clone().SectionTitle.Text = b
              spawn(function()
                while not nil and va:IsRunning() do
                  vb.SectionTitle.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                  vb.Size = UDim2.new(0,9, 0, 0, vb.UIListLayout.AbsoluteContentSize.Y)
                end
              end)
              return {
                Button = function(a, b, c)
                  game:GetObjects("rbxassetid://6937142338")[1].Parent = va
                  game:GetObjects("rbxassetid://6937142338")[1].Name = b .. "element"
                  game:GetObjects("rbxassetid://6937142338")[1].ButtonText.Text = b
                  game:GetObjects("rbxassetid://6937142338")[1].ClipsDescendants = true
                  vb(game:GetObjects("rbxassetid://6937142338")[1].MouseButton1Click, function()
                    Ripple(va)
                    vb()
                  end)
                  vb(game:GetObjects("rbxassetid://6937142338")[1].MouseEnter, function()
                    va = true
                  end)
                  vb(game:GetObjects("rbxassetid://6937142338")[1].MouseLeave, function()
                    va = false
                  end)
                  spawn(function()
                    while not nil and va:IsRunning() do
                      vb.BackgroundColor3 = vc and va.Themes[va.Settings.Theme].Button
                      vb.ButtonText.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                    end
                  end)
                end,
                Toggle = function(a, b, c, d, e)
                  game:GetObjects("rbxassetid://6963155498")[1].Parent = va
                  game:GetObjects("rbxassetid://6963155498")[1].ToggleText.Text = b
                  game:GetObjects("rbxassetid://6963155498")[1].Name = b .. "element"
                  vc(game:GetObjects("rbxassetid://6963155498")[1].MouseButton1Click, function()
                    va.Value = not va.Value
                    va:Set(va.Value)
                  end)
                  spawn(function()
                    while wait() and va:IsRunning() do
                      if not vc.Value or vb.ToggleFrame.ToggleToggled then
                      end
                      vb.ToggleFrame.ToggleToggled.BackgroundColor3 = va.Themes[va.Settings.Theme].Toggle
                      if vb.ToggleFrame or vb.ToggleFrame then
                      end
                      vb.ToggleFrame.BackgroundColor3 = va.Themes[va.Settings.Theme].ToggleFrame
                      vb.BackgroundColor3 = va.Themes[va.Settings.Theme].Toggle
                      vb.ToggleText.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                    end
                  end)
                  spawn(function()
                    va:Set(vb)
                    vc.Flags[vd] = va
                  end)
                  return {
                    Value = false,
                    Set = function(a, b)
                      va.Value = b
                      if b or b then
                      end
                      vb:Create(vc.ToggleFrame.ToggleToggled.ToggleIco, TweenInfo.new(0,2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                        ImageTransparency = b or 1,
                        Size = UDim2.new(1, -6, 1, -6)
                      }):Play()
                      return vd(va.Value)
                    end
                  }
                end,
                Slider = function(a, b, c, d, e, g, h, j)
                  game:GetObjects("rbxassetid://6967573727")[1].Parent = va
                  game:GetObjects("rbxassetid://6967573727")[1].SliderText.Text = b
                  game:GetObjects("rbxassetid://6967573727")[1].Name = b .. "element"
                  vc(game:GetObjects("rbxassetid://6967573727")[1].SliderFrame.InputBegan, function(a)
                    if a.UserInputType == Enum.UserInputType.MouseButton1 then
                      va = true
                    end
                  end)
                  vc(game:GetObjects("rbxassetid://6967573727")[1].SliderFrame.InputEnded, function(a)
                    if a.UserInputType == Enum.UserInputType.MouseButton1 then
                      va = false
                    end
                  end)
                  vc(game:GetService("UserInputService").InputChanged, function(a)
                    if va and a.UserInputType == Enum.UserInputType.MouseMovement then
                      vb(a)
                    end
                  end)
                  spawn(function()
                    while wait() and va:IsRunning() do
                      vb.BackgroundColor3 = va.Themes[va.Settings.Theme].Slider
                      vb.SliderFrame.BackgroundColor3 = va.Themes[va.Settings.Theme].SliderBar
                      vb.SliderFrame.SliderCurrentFrame.BackgroundColor3 = va.Themes[va.Settings.Theme].SliderInc
                      vb.SliderText.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                      vb.SliderVal.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                    end
                  end)
                  spawn(function()
                    va:Set(vb)
                    vc.Flags[vd] = va
                  end)
                  return {
                    Value = e,
                    Set = function(a, b)
                      if b then
                      end
                      vc.SliderVal.Text = tostring(0)
                      vc.SliderFrame.SliderCurrentFrame.Size = UDim2.new((b or 0) / va, 0, 1, 0)
                      vd.Value = b
                      return ve(vd.Value)
                    end
                  }
                end,
                Dropdown = function(a, b, c, d, e, g)
                  game:GetObjects("rbxassetid://7027964359")[1].Parent = va
                  game:GetObjects("rbxassetid://7027964359")[1].Btn.Title.Text = b
                  game:GetObjects("rbxassetid://7027964359")[1].Name = b .. "element"
                  vc(game:GetObjects("rbxassetid://7027964359")[1].Btn.MouseButton1Click, function()
                    va()
                  end)
                  spawn(function()
                    while not nil and va:IsRunning() do
                      vb.Btn.BackgroundColor3 = va.Themes[va.Settings.Theme].Dropdown
                      vb.Btn.Title.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                      vb.Btn.Ico.ImageColor3 = va.Themes[va.Settings.Theme].TextColor
                    end
                  end)
                  spawn(function()
                    va:Refresh(vb, false)
                    va:Set(vc)
                    vd.Flags[ve] = va
                  end)
                  return {
                    Value = nil,
                    Toggled = false,
                    Options = c,
                    Refresh = function(a, b, c)
                      if c then
                        for fh, fj in pairs(va.Holder:GetChildren()) do
                          if not b then
                            fj:Destroy()
                            if b or not UDim2.new(1, 0, 0, 6 + 13) then
                            end
                            va.Holder.Size = UDim2.new(1, 0, 0, 0)
                            if not vb.Toggled or b then
                            end
                            va.Size = UDim2.new(1, 0, 0, 32)
                          end
                        end
                      end
                      vc(b)
                    end,
                    Set = function(a, b)
                      va.Value = b
                      vb.Btn.Title.Text = vc .. " - " .. b
                      return vd(va.Value)
                    end
                  }
                end,
                MultiDropdown = function(a, b, c, d, e, g)
                  game:GetObjects("rbxassetid://7027964359")[1].Parent = va
                  game:GetObjects("rbxassetid://7027964359")[1].Btn.Title.Text = b
                  game:GetObjects("rbxassetid://7027964359")[1].Name = b .. "element"
                  vc(game:GetObjects("rbxassetid://7027964359")[1].Btn.MouseButton1Click, function()
                    va()
                  end)
                  spawn(function()
                    while wait() and not va do
                      vb.Btn.BackgroundColor3 = va.Themes[va.Settings.Theme].Dropdown
                      vb.Btn.Title.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                      vb.Btn.Ico.ImageColor3 = va.Themes[va.Settings.Theme].TextColor
                    end
                  end)
                  spawn(function()
                    va:Refresh(vb, false)
                    va:Set(vc)
                    vd.Flags[ve] = va
                  end)
                  return {
                    Value = {},
                    Toggled = false,
                    Options = c,
                    Refresh = function(a, b, c)
                      if not b then
                        for fh, fj in pairs(va.Holder:GetChildren()) do
                          if fj:IsA("TextButton") then
                            fj:Destroy()
                            va.Holder.Size = vb.Toggled and UDim2.new(1, 0, 0, 0)
                            if b or not UDim2.new(1, 0, 0, 38 + 13) then
                            end
                            va.Size = UDim2.new(1, 0, 0, 32)
                          end
                        end
                      end
                      vc(b)
                    end,
                    Set = function(a, b)
                      va.Value = b
                      vb.Btn.Title.Text = vc .. " - " .. table.concat(va.Value, ", ")
                      return vd(va.Value)
                    end
                  }
                end,
                Colorpicker = function(a, b, c, d, e)
                  game:GetObjects("rbxassetid://7329998014")[1].Hue.Visible, game:GetObjects("rbxassetid://7329998014")[1].Color.Visible = {Value = c, Toggled = false}.Toggled, {Value = c, Toggled = false}.Toggled
                  game:GetObjects("rbxassetid://7329998014")[1].Parent = va
                  game:GetObjects("rbxassetid://7329998014")[1].Btn.Colorpicker.Text = b
                  game:GetObjects("rbxassetid://7329998014")[1].Name = b .. "element"
                  game:GetObjects("rbxassetid://7329998014")[1].Btn.Box.BackgroundColor3 = c
                  game:GetObjects("rbxassetid://7329998014")[1].Hue.HueGradient.Color = ColorSequence.new({
                    ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 0, 4)),
                    ColorSequenceKeypoint.new(0,2, Color3.fromRGB(234, 255, 0)),
                    ColorSequenceKeypoint.new(0,4, Color3.fromRGB(21, 255, 0)),
                    ColorSequenceKeypoint.new(0,6, Color3.fromRGB(0, 255, 255)),
                    ColorSequenceKeypoint.new(0,8, Color3.fromRGB(0, 17, 255)),
                    ColorSequenceKeypoint.new(0,9, Color3.fromRGB(255, 0, 251)),
                    ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 0, 4))
                  })
                  vb(game:GetObjects("rbxassetid://7329998014")[1].Btn.MouseButton1Click, function()
                    va.Toggled = not va.Toggled
                    if vb or not UDim2.new(1, 0, 0, 120) then
                    end
                    vb:Create(vc, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                      Size = UDim2.new(1, 0, 0, 32)
                    }):Play()
                    vc.Hue.Visible, vc.Color.Visible = va.Toggled, va.Toggled
                  end)
                  game:GetObjects("rbxassetid://7329998014")[1].Btn.Box.BackgroundColor3 = c
                  game:GetObjects("rbxassetid://7329998014")[1].Color.BackgroundColor3 = c
                  pcall(e, game:GetObjects("rbxassetid://7329998014")[1].Btn.Box.BackgroundColor3)
                  vb(game:GetObjects("rbxassetid://7329998014")[1].Color.InputBegan, function(a)
                    if a.UserInputType == Enum.UserInputType.MouseButton1 then
                      if not a then
                        ColorInput:Disconnect()
                      end
                      ColorInput = va.RenderStepped:Connect(function()
                        vd, vc.Position = math.clamp(va.X - vb.AbsolutePosition.X, 0, vb.AbsoluteSize.X) / vb.AbsoluteSize.X, UDim2.new(math.clamp(va.X - vb.AbsolutePosition.X, 0, vb.AbsoluteSize.X) / vb.AbsoluteSize.X, 0, math.clamp(va.Y - vb.AbsolutePosition.Y, 0, vb.AbsoluteSize.Y) / vb.AbsoluteSize.Y, 0)
                        ve = 1 - math.clamp(va.Y - vb.AbsolutePosition.Y, 0, vb.AbsoluteSize.Y) / vb.AbsoluteSize.Y
                        vg(true)
                      end)
                    end
                  end)
                  vb(game:GetObjects("rbxassetid://7329998014")[1].Color.InputEnded, function(a)
                    if a.UserInputType == Enum.UserInputType.MouseButton1 and not a then
                      ColorInput:Disconnect()
                    end
                  end)
                  vb(game:GetObjects("rbxassetid://7329998014")[1].Hue.InputBegan, function(a)
                    if a.UserInputType == Enum.UserInputType.MouseButton1 then
                      if HueInput then
                        HueInput:Disconnect()
                      end
                      HueInput = va.RenderStepped:Connect(function()
                        vc.Position = UDim2.new(0,48, 0, math.clamp(va.Y - vb.AbsolutePosition.Y, 0, vb.AbsoluteSize.Y) / vb.AbsoluteSize.Y, 0)
                        vd = 1 - math.clamp(va.Y - vb.AbsolutePosition.Y, 0, vb.AbsoluteSize.Y) / vb.AbsoluteSize.Y
                        ve(true)
                      end)
                    end
                  end)
                  vb(game:GetObjects("rbxassetid://7329998014")[1].Hue.InputEnded, function(a)
                    if a.UserInputType == Enum.UserInputType.MouseButton1 and not a then
                      HueInput:Disconnect()
                    end
                  end)
                  spawn(function()
                    while wait() and not va do
                      vb.BackgroundColor3 = va.Themes[va.Settings.Theme].Colorpicker
                      vb.Btn.Colorpicker.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                    end
                  end)
                  return {Value = c, Toggled = false}
                end,
                Label = function(a, b)
                  game:GetObjects("rbxassetid://7032552322")[1].Parent = va
                  game:GetObjects("rbxassetid://7032552322")[1].Title.Text = b
                  game:GetObjects("rbxassetid://7032552322")[1].Name = b .. "element"
                  spawn(function()
                    while not nil and va:IsRunning() do
                      vb.BackgroundColor3 = va.Themes[va.Settings.Theme].Label
                      vb.Title.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                    end
                  end)
                  return {
                    Set = function(a, b)
                      va.Title.Text = b
                      va.Name = vb .. "element"
                    end
                  }
                end,
                Textbox = function(a, b, c, d)
                  game:GetObjects("rbxassetid://7147292392")[1].Parent = va
                  game:GetObjects("rbxassetid://7147292392")[1].Title.Text = b
                  game:GetObjects("rbxassetid://7147292392")[1].Name = b .. "element"
                  vb(game:GetObjects("rbxassetid://7147292392")[1].Box.Changed, function()
                    va.Box.Size = UDim2.new(0, 3 + 16, 0, 22)
                  end)
                  game:GetObjects("rbxassetid://7147292392")[1].Box.PlaceholderText = "                  "
                  vb(game:GetObjects("rbxassetid://7147292392")[1].InputBegan, function(a)
                    if a.UserInputType == Enum.UserInputType.MouseButton1 then
                      va.Box:CaptureFocus()
                    end
                  end)
                  vb(game:GetObjects("rbxassetid://7147292392")[1].Box.FocusLost, function()
                    if vb then
                      va.Box.Text = ""
                    end
                    return vc(va.Box.Text)
                  end)
                  vb(vc.InputBegan, function(a)
                    if a.KeyCode == Enum.KeyCode.Escape and va.Box:IsFocused() then
                      va.Box:ReleaseFocus()
                    end
                  end)
                  spawn(function()
                    while not nil and va:IsRunning() do
                      vb.BackgroundColor3 = va.Themes[va.Settings.Theme].Textbox
                      vb.Title.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                      vb.Box.BackgroundColor3 = va.Themes[va.Settings.Theme].TextboxFrame
                      vb.Box.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                    end
                  end)
                  return {}
                end,
                Bind = function(a, b, c, d, e, g)
                  game:GetObjects("rbxassetid://7126874744")[1].Parent = va
                  game:GetObjects("rbxassetid://7126874744")[1].Title.Text = b
                  game:GetObjects("rbxassetid://7126874744")[1].Name = b .. "element"
                  vb(game:GetObjects("rbxassetid://7126874744")[1].InputEnded, function(a)
                    if a.UserInputType == Enum.UserInputType.MouseButton1 then
                      if va.Binding then
                        return
                      end
                      va.Binding = true
                      vb.BText.Text = "..."
                    end
                  end)
                  vb(vc.InputBegan, function(a)
                    if not a then
                      return
                    end
                    if (a.KeyCode.Name == vb.Value or a.UserInputType.Name == vb.Value) and not vb.Binding then
                      if vc then
                        Holding = true
                        vd(Holding)
                      else
                        vd()
                      end
                    elseif vb.Binding then
                      pcall(function()
                        if vb then
                          vd = vc.KeyCode
                        end
                      end)
                      pcall(function()
                        if not vb and vb then
                          vd = vc.UserInputType
                        end
                      end)
                      if a then
                      end
                      vb:Set(vb.Value)
                    end
                  end)
                  vb(vc.InputEnded, function(a)
                    if (a.KeyCode.Name == va.Value or a.UserInputType.Name == va.Value) and not a and Holding then
                      Holding = false
                      vc(Holding)
                    end
                  end)
                  spawn(function()
                    while not nil and not va do
                      vb.BackgroundColor3 = va.Themes[va.Settings.Theme].Bind
                      vb.Title.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                      vb.BText.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                    end
                  end)
                  {
                    Value,
                    Binding = false,
                    Holding = false,
                    Set = function(a, b)
                      a.Binding = false
                      a.Value = b or a.Value
                      a.Value = a.Value.Name or a.Value
                      va.BText.Text = a.Value
                    end
                  }:Set(c)
                  vh.Flags[e] = {
                    Value,
                    Binding = false,
                    Holding = false,
                    Set = function(a, b)
                      a.Binding = false
                      a.Value = b or a.Value
                      a.Value = a.Value.Name or a.Value
                      va.BText.Text = a.Value
                    end
                  }
                  return {
                    Value,
                    Binding = false,
                    Holding = false,
                    Set = function(a, b)
                      a.Binding = false
                      a.Value = b or a.Value
                      a.Value = a.Value.Name or a.Value
                      va.BText.Text = a.Value
                    end
                  }
                end
              }
            end
          }
        end
      }
    end
  }.Settings) do
  end
  writefile("SolarisHub/settings.txt", tostring(game:GetService("HttpService"):JSONEncode({
    [fx] = fQ
  })))
end
function Ripple(a)
  task.spawn(function()
    Instance.new("ImageLabel").Name = "Circle"
    Instance.new("ImageLabel").Parent = va
    Instance.new("ImageLabel").BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Instance.new("ImageLabel").BackgroundTransparency = 1
    Instance.new("ImageLabel").ZIndex = 10
    Instance.new("ImageLabel").Image = "rbxassetid://266543268"
    Instance.new("ImageLabel").ImageColor3 = Color3.fromRGB(210, 210, 210)
    Instance.new("ImageLabel").ImageTransparency = 0,6
    Instance.new("ImageLabel").Position = UDim2.new(0, vb.X - Instance.new("ImageLabel").AbsolutePosition.X, 0, vb.Y - Instance.new("ImageLabel").AbsolutePosition.Y)
    vc:Create(Instance.new("ImageLabel"), TweenInfo.new(0,5), {
      Position = UDim2.fromScale(math.clamp(vb.X - va.AbsolutePosition.X, 0, va.AbsoluteSize.X) / va.AbsoluteSize.X, math.clamp(vb.Y - va.AbsolutePosition.Y, 0, va.AbsoluteSize.Y) / va.AbsoluteSize.Y) - UDim2.fromOffset(va.AbsoluteSize.X / 2, va.AbsoluteSize.X / 2),
      ImageTransparency = 1,
      Size = UDim2.fromOffset(va.AbsoluteSize.X, va.AbsoluteSize.X)
    }):Play()
    spawn(function()
      wait(0,5)
      va:Destroy()
    end)
  end)
end
loadstring("\r\n    local SolarisLib, CoreGui, GUI = ...;\r\n    GUI = SolarisLib.GUI\r\n    function SolarisLib:IsRunning()\r\n        return GUI.Parent == CoreGui\r\n    end\r\n\r\n    task.spawn(function()\r\n        while (SolarisLib:IsRunning()) do\r\n            wait()\r\n        end\r\n\r\n        for _, connection in next, SolarisLib.Connections do\r\n            connection:Disconnect()\r\n        end\r\n    end)\r\n")({
  GUI = Instance.new("ScreenGui"),
  Connections = {},
  NGUI = Instance.new("ScreenGui"),
  trillhashedipaddress = "c2hlCnNheQpkbwp5b3UKbG92ZQptZQppCnRlbGwKaGVyCmkKYW0KbW9ua2U",
  Version = "V2",
  Themes = {
    Default = {
      MainFrame = Color3.fromRGB(25, 25, 25),
      TopBar = Color3.fromRGB(30, 30, 30),
      TextColor = Color3.fromRGB(255, 255, 255),
      Menu = Color3.fromRGB(37, 37, 37),
      TabToggled = Color3.fromRGB(43, 43, 43),
      Button = Color3.fromRGB(30, 30, 30),
      ButtonHold = Color3.fromRGB(31, 31, 31),
      Toggle = Color3.fromRGB(30, 30, 30),
      ToggleFrame = Color3.fromRGB(55, 55, 55),
      ToggleToggled = Color3.fromRGB(22, 168, 76),
      Slider = Color3.fromRGB(30, 30, 30),
      SliderBar = Color3.fromRGB(25, 25, 25),
      SliderInc = Color3.fromRGB(60, 60, 60),
      Dropdown = Color3.fromRGB(30, 30, 30),
      DropdownItem = Color3.fromRGB(30, 30, 30),
      Textbox = Color3.fromRGB(30, 30, 30),
      TextboxFrame = Color3.fromRGB(25, 25, 25),
      Colorpicker = Color3.fromRGB(30, 30, 30),
      Label = Color3.fromRGB(30, 30, 30),
      Bind = Color3.fromRGB(30, 30, 30)
    },
    Light = {
      MainFrame = Color3.fromRGB(255, 255, 255),
      TopBar = Color3.fromRGB(227, 227, 227),
      TextColor = Color3.fromRGB(0, 0, 0),
      Menu = Color3.fromRGB(227, 227, 227),
      TabToggled = Color3.fromRGB(43, 43, 43),
      Button = Color3.fromRGB(227, 227, 227),
      ButtonHold = Color3.fromRGB(31, 31, 31),
      Toggle = Color3.fromRGB(227, 227, 227),
      ToggleFrame = Color3.fromRGB(55, 55, 55),
      ToggleToggled = Color3.fromRGB(22, 168, 76),
      Slider = Color3.fromRGB(227, 227, 227),
      SliderBar = Color3.fromRGB(220, 220, 220),
      SliderInc = Color3.fromRGB(233, 233, 233),
      Dropdown = Color3.fromRGB(227, 227, 227),
      DropdownItem = Color3.fromRGB(227, 227, 227),
      Textbox = Color3.fromRGB(227, 227, 227),
      TextboxFrame = Color3.fromRGB(220, 220, 220),
      Colorpicker = Color3.fromRGB(227, 227, 2270),
      Label = Color3.fromRGB(227, 227, 227),
      Bind = Color3.fromRGB(227, 227, 227)
    },
    Discord = {
      MainFrame = Color3.fromRGB(54, 57, 63),
      TopBar = Color3.fromRGB(47, 49, 54),
      TextColor = Color3.fromRGB(255, 255, 255),
      Menu = Color3.fromRGB(47, 49, 54),
      TabToggled = Color3.fromRGB(54, 57, 63),
      Button = Color3.fromRGB(88, 101, 242),
      ButtonHold = Color3.fromRGB(71, 82, 196),
      Toggle = Color3.fromRGB(47, 49, 54),
      ToggleFrame = Color3.fromRGB(67, 69, 74),
      ToggleToggled = Color3.fromRGB(22, 168, 76),
      Slider = Color3.fromRGB(47, 49, 54),
      SliderBar = Color3.fromRGB(42, 44, 49),
      SliderInc = Color3.fromRGB(62, 64, 69),
      Dropdown = Color3.fromRGB(47, 49, 54),
      DropdownItem = Color3.fromRGB(47, 49, 54),
      Textbox = Color3.fromRGB(47, 49, 54),
      TextboxFrame = Color3.fromRGB(42, 44, 49),
      Colorpicker = Color3.fromRGB(47, 49, 54),
      Label = Color3.fromRGB(47, 49, 54),
      Bind = Color3.fromRGB(47, 49, 54)
    },
    Blue = {
      MainFrame = Color3.fromRGB(35, 35, 50),
      TopBar = Color3.fromRGB(40, 40, 55),
      TextColor = Color3.fromRGB(255, 255, 255),
      Menu = Color3.fromRGB(47, 47, 62),
      TabToggled = Color3.fromRGB(53, 53, 68),
      Button = Color3.fromRGB(40, 40, 55),
      ButtonHold = Color3.fromRGB(41, 41, 56),
      Toggle = Color3.fromRGB(40, 40, 55),
      ToggleFrame = Color3.fromRGB(65, 65, 80),
      ToggleToggled = Color3.fromRGB(64, 64, 120),
      Slider = Color3.fromRGB(40, 40, 55),
      SliderBar = Color3.fromRGB(35, 35, 50),
      SliderInc = Color3.fromRGB(70, 70, 85),
      Dropdown = Color3.fromRGB(40, 40, 55),
      DropdownItem = Color3.fromRGB(40, 40, 55),
      Textbox = Color3.fromRGB(40, 40, 55),
      TextboxFrame = Color3.fromRGB(35, 35, 50),
      Colorpicker = Color3.fromRGB(40, 40, 55),
      Label = Color3.fromRGB(40, 40, 55),
      Bind = Color3.fromRGB(40, 40, 55)
    },
    Red = {
      MainFrame = Color3.fromRGB(50, 35, 35),
      TopBar = Color3.fromRGB(55, 40, 40),
      TextColor = Color3.fromRGB(255, 255, 255),
      Menu = Color3.fromRGB(62, 47, 47),
      TabToggled = Color3.fromRGB(68, 53, 53),
      Button = Color3.fromRGB(55, 40, 40),
      ButtonHold = Color3.fromRGB(56, 41, 41),
      Toggle = Color3.fromRGB(55, 40, 40),
      ToggleFrame = Color3.fromRGB(80, 65, 65),
      ToggleToggled = Color3.fromRGB(120, 64, 64),
      Slider = Color3.fromRGB(55, 40, 40),
      SliderBar = Color3.fromRGB(50, 35, 35),
      SliderInc = Color3.fromRGB(85, 70, 70),
      Dropdown = Color3.fromRGB(55, 40, 40),
      DropdownItem = Color3.fromRGB(55, 40, 40),
      Textbox = Color3.fromRGB(55, 40, 40),
      TextboxFrame = Color3.fromRGB(50, 35, 35),
      Colorpicker = Color3.fromRGB(55, 40, 40),
      Label = Color3.fromRGB(55, 40, 40),
      Bind = Color3.fromRGB(55, 40, 40)
    },
    Green = {
      MainFrame = Color3.fromRGB(35, 50, 35),
      TopBar = Color3.fromRGB(40, 55, 40),
      TextColor = Color3.fromRGB(255, 255, 255),
      Menu = Color3.fromRGB(47, 62, 47),
      TabToggled = Color3.fromRGB(53, 68, 53),
      Button = Color3.fromRGB(40, 55, 40),
      ButtonHold = Color3.fromRGB(41, 56, 41),
      Toggle = Color3.fromRGB(40, 55, 40),
      ToggleFrame = Color3.fromRGB(65, 80, 65),
      ToggleToggled = Color3.fromRGB(64, 120, 64),
      Slider = Color3.fromRGB(40, 55, 40),
      SliderBar = Color3.fromRGB(35, 50, 35),
      SliderInc = Color3.fromRGB(70, 85, 70),
      Dropdown = Color3.fromRGB(40, 55, 40),
      DropdownItem = Color3.fromRGB(40, 55, 40),
      Textbox = Color3.fromRGB(40, 55, 40),
      TextboxFrame = Color3.fromRGB(35, 50, 35),
      Colorpicker = Color3.fromRGB(40, 55, 40),
      Label = Color3.fromRGB(40, 55, 40),
      Bind = Color3.fromRGB(40, 55, 40)
    }
  },
  Settings = {
    Theme = "Default",
    ShowFriendsOnLaunch = true,
    ShowMusicOnLaunch = true,
    CloseBind = "RightControl"
  },
  Flags = {},
  CurrentTab,
  Settings = game:GetService("HttpService"):JSONDecode(readfile("SolarisHub/settings.txt")),
  LoadCfg = function(a, b)
    table.foreach(va:JSONDecode(b), function(a, b)
      if va.Flags[a] then
        spawn(function()
          va.Flags[vb]:Set(vc)
        end)
      else
        warn("cfg loader - could not find", a, b)
      end
    end)
  end,
  SaveCfg = function(a, b)
    for fh, fj in pairs(va.Flags) do
    end
    writefile("SolarisHub/configs/" .. b .. ".txt", tostring(vb:JSONEncode({
      [fh] = fj.Value
    })))
  end,
  Notification = function(a, b, c)
    va:New(b, c)
  end,
  New = function(a, b)
    if b ~= "az8PYYKgEGsZM3nDeQzCW4y92qHurAmCBTujBe63gwRj" then
      print("nigger detected")
      while true do
        if false == false then
        end
      end
    end
    va.Parent = vb
    va.MainFrame.TopBar.TopFrameTitle.Text = "Solaris <font transparency=\"0.4\">" .. vc.Version .. "</font>"
    vd(va.MainFrame.TopBar, va)
    game:GetObjects("rbxassetid://7037141226")[1]:Clone().Parent = va.MainFrame.TopBar.ButtonHolder.MenuBtn.MenuFrame
    game:GetObjects("rbxassetid://7037141226")[1]:Clone().Position = UDim2.new(0, 0, 0, 5)
    game:GetObjects("rbxassetid://7037141226")[1]:Clone().Text = "Friends"
    ve(game:GetObjects("rbxassetid://7037141226")[1]:Clone().MouseEnter, function()
      va:Create(vb, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextTransparency = 0}):Play()
    end)
    ve(game:GetObjects("rbxassetid://7037141226")[1]:Clone().MouseLeave, function()
      va:Create(vb, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextTransparency = 0,4}):Play()
    end)
    game:GetObjects("rbxassetid://7037141226")[1]:Clone().Parent = va.MainFrame.TopBar.ButtonHolder.MenuBtn.MenuFrame
    game:GetObjects("rbxassetid://7037141226")[1]:Clone().Position = UDim2.new(0, 0, 0, 25)
    game:GetObjects("rbxassetid://7037141226")[1]:Clone().Text = "Music"
    ve(game:GetObjects("rbxassetid://7037141226")[1]:Clone().MouseEnter, function()
      va:Create(vb, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextTransparency = 0}):Play()
    end)
    ve(game:GetObjects("rbxassetid://7037141226")[1]:Clone().MouseLeave, function()
      va:Create(vb, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextTransparency = 0,4}):Play()
    end)
    game:GetObjects("rbxassetid://7037141226")[1]:Clone().Parent = va.MainFrame.TopBar.ButtonHolder.MenuBtn.MenuFrame
    game:GetObjects("rbxassetid://7037141226")[1]:Clone().Position = UDim2.new(0, 0, 0, 45)
    game:GetObjects("rbxassetid://7037141226")[1]:Clone().Text = "Settings"
    ve(game:GetObjects("rbxassetid://7037141226")[1]:Clone().MouseEnter, function()
      va:Create(vb, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextTransparency = 0}):Play()
    end)
    ve(game:GetObjects("rbxassetid://7037141226")[1]:Clone().MouseLeave, function()
      va:Create(vb, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextTransparency = 0,4}):Play()
    end)
    function MusicConstructor()
      game:GetObjects("rbxassetid://7296373622")[1].Parent = va
      game:GetObjects("rbxassetid://7296373622")[1].ZIndex = 5
      game:GetObjects("rbxassetid://7296373622")[1].Visible = vb.Settings.ShowMusicOnLaunch
      game:GetObjects("rbxassetid://7296373622")[1].Frame.Title.Text = "Not Playing"
      game:GetObjects("rbxassetid://7296373622")[1].Frame.Progress.ProgressFrame.Size = UDim2.new(0, 0, 1, 0)
      game:GetObjects("rbxassetid://7296373622")[1].Frame.AddBtn.AutoButtonColor = false
      vc(game:GetObjects("rbxassetid://7296373622")[1].Frame.TopBar, game:GetObjects("rbxassetid://7296373622")[1])
      vd(game:GetObjects("rbxassetid://7296373622")[1].Frame.TopBar.CloseBtn.MouseButton1Click, function()
        va.Visible = false
      end)
      vd(game:GetObjects("rbxassetid://7296373622")[1].Frame.TopBar.CloseBtn.MouseEnter, function()
        va:Create(vb.Frame.TopBar.CloseBtn.Ico, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageTransparency = 0}):Play()
      end)
      vd(game:GetObjects("rbxassetid://7296373622")[1].Frame.TopBar.CloseBtn.MouseLeave, function()
        va:Create(vb.Frame.TopBar.CloseBtn.Ico, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageTransparency = 0,4}):Play()
      end)
      vd(vg.MouseButton1Click, function()
        va.Visible = not va.Visible
        vb.TopBar.ButtonHolder.MenuBtn.MenuFrame.Visible = false
      end)
      Instance.new("Sound").Parent, Instance.new("Sound").Name = game:GetObjects("rbxassetid://7296373622")[1], "Sound"
      Instance.new("Sound").Volume = 3
      Instance.new("Sound"):Stop()
      if not isfile("SolarisHub/music.txt") then
        writefile("SolarisHub/music.txt", tostring(vj:JSONEncode({})))
      end
      function Save()
        for fe, fg in pairs(va) do
        end
        writefile("SolarisHub/music.txt", tostring(vb:JSONEncode({
          [fe] = fg
        })))
      end
      vd(game:GetObjects("rbxassetid://7296373622")[1].Frame.Play.MouseButton1Click, function()
        va = not va
        if va then
          vb:Pause()
        else
          vb:Resume()
        end
        vc.Frame.Play.Image = vc.Frame.Play or "http://www.roblox.com/asset/?id=6026663719"
      end)
      vd(game:GetObjects("rbxassetid://7296373622")[1].Frame.AddBtn.MouseButton1Click, function()
        if not table.find(vb, va.Frame.AddSong.Text) then
          table.insert(vb, va.Frame.AddSong.Text)
          Save()
          vc(vb)
        end
      end)
      vd(game:GetObjects("rbxassetid://7296373622")[1].Frame.AddBtn.MouseEnter, function()
        va = true
      end)
      vd(game:GetObjects("rbxassetid://7296373622")[1].Frame.AddBtn.MouseLeave, function()
        va = false
      end);
      (function(a)
        for fe, fg in next, va.Frame.MusicList.Scroll:GetChildren() do
          if fg.Name == "Btn" then
            fg:Destroy()
          end
        end
        for fe, fg in next, a, nil do
          if not next and pcall(vb.GetProductInfo, vb, fg).AssetTypeId == 3 then
            vc:Clone().Parent = va.Frame.MusicList.Scroll
            vc:Clone().Title.Text = pcall(vb.GetProductInfo, vb, fg).Name
            vd(vc:Clone().MouseButton1Click, function()
              va(vb, vc.Name)
            end)
            vd(vc:Clone().Delete.MouseButton1Click, function()
              for fd, fe in next, va, nil do
                if fe == vb then
                  table.remove(va, fd)
                end
              end
              Save()
              vc:Destroy()
            end)
          end
        end
      end)((vj:JSONDecode(readfile("SolarisHub/music.txt"))))
      vd(game:GetService("RunService").RenderStepped, function()
        if string.len(math.floor(va.TimePosition) % 60) < 2 then
        end
        if string.len((math.floor(math.floor(va.TimePosition) / 60))) < 2 then
        end
        if 2 >= string.len(math.floor(va.TimeLength) % 60) then
        end
        if 2 > string.len((math.floor(math.floor(va.TimeLength) / 60))) then
        end
        if vb:IsDescendantOf(vc) and vb:FindFirstChild("Frame") then
          vb.Frame.Timer1.Text = ("0" .. math.floor(math.floor(va.TimePosition) / 60)) .. ":" .. "0" .. math.floor(va.TimePosition) % 60
          vb.Frame.Timer2.Text = ("0" .. math.floor(math.floor(va.TimeLength) / 60)) .. ":" .. "0" .. math.floor(va.TimeLength) % 60
          vb.Frame.Progress.ProgressFrame.Size = UDim2.new(va.TimePosition / va.TimeLength, 0, 1, 0)
        end
      end)
      spawn(function()
        while wait() and not va do
          vb.Frame.BackgroundColor3 = va.Themes[va.Settings.Theme].MainFrame
          vb.Frame.TopBar.ImageColor3 = va.Themes[va.Settings.Theme].TopBar
          vb.Frame.TopBar.CloseBtn.Ico.ImageColor3 = va.Themes[va.Settings.Theme].TextColor
          vb.Frame.MusicList.BackgroundColor3 = va.Themes[va.Settings.Theme].TopBar
          if vb.Frame.AddBtn or not va.Themes[va.Settings.Theme].ButtonHold then
          end
          vb.Frame.AddBtn.BackgroundColor3 = va.Themes[va.Settings.Theme].Button
          vb.Frame.Progress.BackgroundColor3 = va.Themes[va.Settings.Theme].Slider
          vb.Frame.Progress.ProgressFrame.BackgroundColor3 = va.Themes[va.Settings.Theme].SliderInc
          vb.Frame.AddSong.BackgroundColor3 = va.Themes[va.Settings.Theme].Textbox
        end
      end)
    end
    function SettingsConstructor()
      game:GetObjects("rbxassetid://7167491516")[1].Parent = va
      vb(game:GetObjects("rbxassetid://7167491516")[1].Main.TopBar.CloseBtn.MouseEnter, function()
        va:Create(vb.TopBar.CloseBtn.Ico, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageTransparency = 0}):Play()
      end)
      vb(game:GetObjects("rbxassetid://7167491516")[1].Main.TopBar.CloseBtn.MouseLeave, function()
        va:Create(vb.TopBar.CloseBtn.Ico, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageTransparency = 0,4}):Play()
      end)
      vb(vd.MouseButton1Click, function()
        va.Visible = not va.Visible
        vb.TopBar.ButtonHolder.MenuBtn.MenuFrame.Visible = false
      end)
      vb(game:GetObjects("rbxassetid://7167491516")[1].Main.TopBar.CloseBtn.MouseButton1Click, function()
        va.Visible = false
      end)
      function SaveSettings()
        for fe, fg in pairs(va.Settings) do
        end
        writefile("SolarisHub/settings.txt", tostring(vb:JSONEncode({
          [fe] = fg
        })))
      end
      spawn(function()
        while wait() and not va do
          vb.BackgroundColor3 = va.Themes[va.Settings.Theme].MainFrame
          vb.TopBar.ImageColor3 = va.Themes[va.Settings.Theme].TopBar
          vb.TopBar.CloseBtn.Ico.ImageColor3 = va.Themes[va.Settings.Theme].TextColor
          vb.TopBar.TopFrameTitle.TextColor3 = va.Themes[va.Settings.Theme].TextColor
          vb.TabHolder.BackgroundColor3 = va.Themes[va.Settings.Theme].TopBar
        end
      end)
      {
        Tab = function(a, b)
          va:Clone().Parent = vc.TabHolder
          va:Clone().Text = b
          va:Clone().Size = UDim2.new(0, va:Clone().TextBounds.X, 1, 0)
          vb:Clone().Parent = vc.ContainerFolder
          vb:Clone().Visible = false
          if not b then
            va:Clone().TextTransparency = 0
            vb:Clone().Visible = true
            vd = false
          end
          ve(va:Clone().MouseButton1Click, function()
            for fd, fe in next, va.TabHolder:GetChildren() do
              if fe.Name == "Tab" then
                fe.TextTransparency = 0,4
              end
            end
            for fd, fe in next, va.ContainerFolder:GetChildren() do
              if fe.Name == "Container" then
                fe.Visible = false
              end
            end
            vb.TextTransparency = 0
            vc.Visible = true
          end)
          return {
            ToggleSetting = function(a, b, c, d, e)
              if b then
              end
              vb:Clone().Parent = vc
              vb:Clone().Title.Text = b
              vb:Clone().Desc.Text = c
              (function(a)
                va:Create(vb.ToggleFrame.ToggleToggled.ToggleIco, TweenInfo.new(0,2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                  ImageTransparency = a and 1
                }):Play()
                if va.Create or va.Create then
                end
                va:Create(vb.ToggleFrame.ToggleToggled.ToggleIco, TweenInfo.new(0,2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                  Size = UDim2.new(1, -6, 1, -6)
                }):Play()
              end)(d)
              ve(vb:Clone().MouseButton1Click, function()
                va(not vb)
              end)
              spawn(function()
                while wait() and va:IsRunning() do
                  if vb.ToggleFrame.ToggleToggled or not va.Themes[va.Settings.Theme].ToggleToggled then
                  end
                  vb.ToggleFrame.ToggleToggled.BackgroundColor3 = va.Themes[va.Settings.Theme].MainFrame
                  if vb.ToggleFrame or not va.Themes[va.Settings.Theme].ToggleToggled then
                  end
                  vb.ToggleFrame.BackgroundColor3 = va.Themes[va.Settings.Theme].ToggleFrame
                  vb.Title.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                end
              end)
            end,
            BindSetting = function(a, b, c, d, e)
              vb:Clone().Parent = vc
              vb:Clone().Title.Text = b
              vb:Clone().Desc.Text = c
              function SetValue(a)
                va = false
                vb = a or vb
                if a then
                end
                vb = vb
                vc.BText.Text = vb
                vd.Settings[ve] = vb
                SaveSettings()
              end
              SetValue(va.Settings[e] or d)
              ve(vb:Clone().InputEnded, function(a)
                if a.UserInputType == Enum.UserInputType.MouseButton1 then
                  if va then
                    return
                  end
                  va = true
                  vb.BText.Text = "..."
                end
              end)
              ve(vg.InputBegan, function(a)
                if va:GetFocusedTextBox() then
                  return
                end
                if vb then
                  pcall(function()
                    if vb then
                      vd = vc.KeyCode
                    end
                  end)
                  pcall(function()
                    if va(vb, vc.UserInputType) and vb then
                      vd = vc.UserInputType
                    end
                  end)
                  if a then
                  end
                  SetValue(vg)
                end
              end)
              spawn(function()
                while not nil and not va do
                  vb.Desc.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                  vb.BText.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                  vb.Title.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                end
              end)
            end,
            Dropdown = function(a, b, c, d, e, g)
              vb:Clone().Parent = vc
              vb:Clone().Title.Text = b
              vb:Clone().Desc.Text = c
              vb:Clone().Main.Current.Text = va.Settings[g] or e
              function Toggle()
                va.Main.Holder.Visible = vb
                if va.Main.Holder or not UDim2.new(1, 0, 0, va.Main.Holder.UIListLayout.AbsoluteContentSize.Y) then
                end
                va.Main.Holder.Size = UDim2.new(1, 0, 0, 0)
                if not UDim2.new(1, 0, 0, 0) then
                  if 0 + 1 > 190 then
                    vc.CanvasSize = UDim2.new(0, 0, 0, 5 + 6)
                  end
                else
                  vc.CanvasSize = UDim2.new(0, 0, 0, vc.UIListLayout.AbsoluteContentSize.Y)
                end
                vd:Create(va.Main.Ico, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                  Rotation = vd or 0
                }):Play()
              end
              ve(vb:Clone().InputEnded, function(a)
                if a.UserInputType == Enum.UserInputType.MouseButton1 then
                  va = not va
                  Toggle()
                end
              end)
              spawn(function()
                while wait() and va:IsRunning() do
                  vb.Main.ImageColor3 = va.Themes[va.Settings.Theme].TopBar
                  vb.Main.Holder.ImageColor3 = va.Themes[va.Settings.Theme].TopBar
                end
              end);
              (function(a)
                spawn(function()
                  for fd, fe in pairs(va) do
                    vb:Clone().Parent = vc.Main.Holder
                    vb:Clone().Text = fe
                    vd(vb:Clone().MouseButton1Click, function()
                      va = vb
                      vc.Settings[vd] = va
                      ve.Main.Current.Text = va
                      SaveSettings()
                    end)
                    spawn(function()
                      while not nil and va:IsRunning() do
                        vb.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                      end
                    end)
                  end
                end)
              end)(d)
            end
          }
        end
      }:Tab("General"):ToggleSetting("Show Friends On Launch", "Shows the friends menu when you load Solaris", true, "ShowFriendsOnLaunch")
      {
        Tab = function(a, b)
          va:Clone().Parent = vc.TabHolder
          va:Clone().Text = b
          va:Clone().Size = UDim2.new(0, va:Clone().TextBounds.X, 1, 0)
          vb:Clone().Parent = vc.ContainerFolder
          vb:Clone().Visible = false
          if not b then
            va:Clone().TextTransparency = 0
            vb:Clone().Visible = true
            vd = false
          end
          ve(va:Clone().MouseButton1Click, function()
            for fd, fe in next, va.TabHolder:GetChildren() do
              if fe.Name == "Tab" then
                fe.TextTransparency = 0,4
              end
            end
            for fd, fe in next, va.ContainerFolder:GetChildren() do
              if fe.Name == "Container" then
                fe.Visible = false
              end
            end
            vb.TextTransparency = 0
            vc.Visible = true
          end)
          return {
            ToggleSetting = function(a, b, c, d, e)
              if b then
              end
              vb:Clone().Parent = vc
              vb:Clone().Title.Text = b
              vb:Clone().Desc.Text = c
              (function(a)
                va:Create(vb.ToggleFrame.ToggleToggled.ToggleIco, TweenInfo.new(0,2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                  ImageTransparency = a and 1
                }):Play()
                if va.Create or va.Create then
                end
                va:Create(vb.ToggleFrame.ToggleToggled.ToggleIco, TweenInfo.new(0,2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                  Size = UDim2.new(1, -6, 1, -6)
                }):Play()
              end)(d)
              ve(vb:Clone().MouseButton1Click, function()
                va(not vb)
              end)
              spawn(function()
                while wait() and va:IsRunning() do
                  if vb.ToggleFrame.ToggleToggled or not va.Themes[va.Settings.Theme].ToggleToggled then
                  end
                  vb.ToggleFrame.ToggleToggled.BackgroundColor3 = va.Themes[va.Settings.Theme].MainFrame
                  if vb.ToggleFrame or not va.Themes[va.Settings.Theme].ToggleToggled then
                  end
                  vb.ToggleFrame.BackgroundColor3 = va.Themes[va.Settings.Theme].ToggleFrame
                  vb.Title.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                end
              end)
            end,
            BindSetting = function(a, b, c, d, e)
              vb:Clone().Parent = vc
              vb:Clone().Title.Text = b
              vb:Clone().Desc.Text = c
              function SetValue(a)
                va = false
                vb = a or vb
                if a then
                end
                vb = vb
                vc.BText.Text = vb
                vd.Settings[ve] = vb
                SaveSettings()
              end
              SetValue(va.Settings[e] or d)
              ve(vb:Clone().InputEnded, function(a)
                if a.UserInputType == Enum.UserInputType.MouseButton1 then
                  if va then
                    return
                  end
                  va = true
                  vb.BText.Text = "..."
                end
              end)
              ve(vg.InputBegan, function(a)
                if va:GetFocusedTextBox() then
                  return
                end
                if vb then
                  pcall(function()
                    if vb then
                      vd = vc.KeyCode
                    end
                  end)
                  pcall(function()
                    if va(vb, vc.UserInputType) and vb then
                      vd = vc.UserInputType
                    end
                  end)
                  if a then
                  end
                  SetValue(vg)
                end
              end)
              spawn(function()
                while not nil and not va do
                  vb.Desc.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                  vb.BText.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                  vb.Title.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                end
              end)
            end,
            Dropdown = function(a, b, c, d, e, g)
              vb:Clone().Parent = vc
              vb:Clone().Title.Text = b
              vb:Clone().Desc.Text = c
              vb:Clone().Main.Current.Text = va.Settings[g] or e
              function Toggle()
                va.Main.Holder.Visible = vb
                if va.Main.Holder or not UDim2.new(1, 0, 0, va.Main.Holder.UIListLayout.AbsoluteContentSize.Y) then
                end
                va.Main.Holder.Size = UDim2.new(1, 0, 0, 0)
                if not UDim2.new(1, 0, 0, 0) then
                  if 0 + 1 > 190 then
                    vc.CanvasSize = UDim2.new(0, 0, 0, 5 + 6)
                  end
                else
                  vc.CanvasSize = UDim2.new(0, 0, 0, vc.UIListLayout.AbsoluteContentSize.Y)
                end
                vd:Create(va.Main.Ico, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                  Rotation = vd or 0
                }):Play()
              end
              ve(vb:Clone().InputEnded, function(a)
                if a.UserInputType == Enum.UserInputType.MouseButton1 then
                  va = not va
                  Toggle()
                end
              end)
              spawn(function()
                while wait() and va:IsRunning() do
                  vb.Main.ImageColor3 = va.Themes[va.Settings.Theme].TopBar
                  vb.Main.Holder.ImageColor3 = va.Themes[va.Settings.Theme].TopBar
                end
              end);
              (function(a)
                spawn(function()
                  for fd, fe in pairs(va) do
                    vb:Clone().Parent = vc.Main.Holder
                    vb:Clone().Text = fe
                    vd(vb:Clone().MouseButton1Click, function()
                      va = vb
                      vc.Settings[vd] = va
                      ve.Main.Current.Text = va
                      SaveSettings()
                    end)
                    spawn(function()
                      while not nil and va:IsRunning() do
                        vb.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                      end
                    end)
                  end
                end)
              end)(d)
            end
          }
        end
      }:Tab("General"):ToggleSetting("Show Music On Launch", "Shows the music menu when you load Solaris", true, "ShowMusicOnLaunch")
      {
        Tab = function(a, b)
          va:Clone().Parent = vc.TabHolder
          va:Clone().Text = b
          va:Clone().Size = UDim2.new(0, va:Clone().TextBounds.X, 1, 0)
          vb:Clone().Parent = vc.ContainerFolder
          vb:Clone().Visible = false
          if not b then
            va:Clone().TextTransparency = 0
            vb:Clone().Visible = true
            vd = false
          end
          ve(va:Clone().MouseButton1Click, function()
            for fd, fe in next, va.TabHolder:GetChildren() do
              if fe.Name == "Tab" then
                fe.TextTransparency = 0,4
              end
            end
            for fd, fe in next, va.ContainerFolder:GetChildren() do
              if fe.Name == "Container" then
                fe.Visible = false
              end
            end
            vb.TextTransparency = 0
            vc.Visible = true
          end)
          return {
            ToggleSetting = function(a, b, c, d, e)
              if b then
              end
              vb:Clone().Parent = vc
              vb:Clone().Title.Text = b
              vb:Clone().Desc.Text = c
              (function(a)
                va:Create(vb.ToggleFrame.ToggleToggled.ToggleIco, TweenInfo.new(0,2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                  ImageTransparency = a and 1
                }):Play()
                if va.Create or va.Create then
                end
                va:Create(vb.ToggleFrame.ToggleToggled.ToggleIco, TweenInfo.new(0,2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                  Size = UDim2.new(1, -6, 1, -6)
                }):Play()
              end)(d)
              ve(vb:Clone().MouseButton1Click, function()
                va(not vb)
              end)
              spawn(function()
                while wait() and va:IsRunning() do
                  if vb.ToggleFrame.ToggleToggled or not va.Themes[va.Settings.Theme].ToggleToggled then
                  end
                  vb.ToggleFrame.ToggleToggled.BackgroundColor3 = va.Themes[va.Settings.Theme].MainFrame
                  if vb.ToggleFrame or not va.Themes[va.Settings.Theme].ToggleToggled then
                  end
                  vb.ToggleFrame.BackgroundColor3 = va.Themes[va.Settings.Theme].ToggleFrame
                  vb.Title.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                end
              end)
            end,
            BindSetting = function(a, b, c, d, e)
              vb:Clone().Parent = vc
              vb:Clone().Title.Text = b
              vb:Clone().Desc.Text = c
              function SetValue(a)
                va = false
                vb = a or vb
                if a then
                end
                vb = vb
                vc.BText.Text = vb
                vd.Settings[ve] = vb
                SaveSettings()
              end
              SetValue(va.Settings[e] or d)
              ve(vb:Clone().InputEnded, function(a)
                if a.UserInputType == Enum.UserInputType.MouseButton1 then
                  if va then
                    return
                  end
                  va = true
                  vb.BText.Text = "..."
                end
              end)
              ve(vg.InputBegan, function(a)
                if va:GetFocusedTextBox() then
                  return
                end
                if vb then
                  pcall(function()
                    if vb then
                      vd = vc.KeyCode
                    end
                  end)
                  pcall(function()
                    if va(vb, vc.UserInputType) and vb then
                      vd = vc.UserInputType
                    end
                  end)
                  if a then
                  end
                  SetValue(vg)
                end
              end)
              spawn(function()
                while not nil and not va do
                  vb.Desc.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                  vb.BText.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                  vb.Title.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                end
              end)
            end,
            Dropdown = function(a, b, c, d, e, g)
              vb:Clone().Parent = vc
              vb:Clone().Title.Text = b
              vb:Clone().Desc.Text = c
              vb:Clone().Main.Current.Text = va.Settings[g] or e
              function Toggle()
                va.Main.Holder.Visible = vb
                if va.Main.Holder or not UDim2.new(1, 0, 0, va.Main.Holder.UIListLayout.AbsoluteContentSize.Y) then
                end
                va.Main.Holder.Size = UDim2.new(1, 0, 0, 0)
                if not UDim2.new(1, 0, 0, 0) then
                  if 0 + 1 > 190 then
                    vc.CanvasSize = UDim2.new(0, 0, 0, 5 + 6)
                  end
                else
                  vc.CanvasSize = UDim2.new(0, 0, 0, vc.UIListLayout.AbsoluteContentSize.Y)
                end
                vd:Create(va.Main.Ico, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                  Rotation = vd or 0
                }):Play()
              end
              ve(vb:Clone().InputEnded, function(a)
                if a.UserInputType == Enum.UserInputType.MouseButton1 then
                  va = not va
                  Toggle()
                end
              end)
              spawn(function()
                while wait() and va:IsRunning() do
                  vb.Main.ImageColor3 = va.Themes[va.Settings.Theme].TopBar
                  vb.Main.Holder.ImageColor3 = va.Themes[va.Settings.Theme].TopBar
                end
              end);
              (function(a)
                spawn(function()
                  for fd, fe in pairs(va) do
                    vb:Clone().Parent = vc.Main.Holder
                    vb:Clone().Text = fe
                    vd(vb:Clone().MouseButton1Click, function()
                      va = vb
                      vc.Settings[vd] = va
                      ve.Main.Current.Text = va
                      SaveSettings()
                    end)
                    spawn(function()
                      while not nil and va:IsRunning() do
                        vb.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                      end
                    end)
                  end
                end)
              end)(d)
            end
          }
        end
      }:Tab("General"):BindSetting("Close Bind", "Hides/Shows the main window when pressed.", Enum.KeyCode.RightControl, "CloseBind")
      {
        Tab = function(a, b)
          va:Clone().Parent = vc.TabHolder
          va:Clone().Text = b
          va:Clone().Size = UDim2.new(0, va:Clone().TextBounds.X, 1, 0)
          vb:Clone().Parent = vc.ContainerFolder
          vb:Clone().Visible = false
          if not b then
            va:Clone().TextTransparency = 0
            vb:Clone().Visible = true
            vd = false
          end
          ve(va:Clone().MouseButton1Click, function()
            for fd, fe in next, va.TabHolder:GetChildren() do
              if fe.Name == "Tab" then
                fe.TextTransparency = 0,4
              end
            end
            for fd, fe in next, va.ContainerFolder:GetChildren() do
              if fe.Name == "Container" then
                fe.Visible = false
              end
            end
            vb.TextTransparency = 0
            vc.Visible = true
          end)
          return {
            ToggleSetting = function(a, b, c, d, e)
              if b then
              end
              vb:Clone().Parent = vc
              vb:Clone().Title.Text = b
              vb:Clone().Desc.Text = c
              (function(a)
                va:Create(vb.ToggleFrame.ToggleToggled.ToggleIco, TweenInfo.new(0,2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                  ImageTransparency = a and 1
                }):Play()
                if va.Create or va.Create then
                end
                va:Create(vb.ToggleFrame.ToggleToggled.ToggleIco, TweenInfo.new(0,2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                  Size = UDim2.new(1, -6, 1, -6)
                }):Play()
              end)(d)
              ve(vb:Clone().MouseButton1Click, function()
                va(not vb)
              end)
              spawn(function()
                while wait() and va:IsRunning() do
                  if vb.ToggleFrame.ToggleToggled or not va.Themes[va.Settings.Theme].ToggleToggled then
                  end
                  vb.ToggleFrame.ToggleToggled.BackgroundColor3 = va.Themes[va.Settings.Theme].MainFrame
                  if vb.ToggleFrame or not va.Themes[va.Settings.Theme].ToggleToggled then
                  end
                  vb.ToggleFrame.BackgroundColor3 = va.Themes[va.Settings.Theme].ToggleFrame
                  vb.Title.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                end
              end)
            end,
            BindSetting = function(a, b, c, d, e)
              vb:Clone().Parent = vc
              vb:Clone().Title.Text = b
              vb:Clone().Desc.Text = c
              function SetValue(a)
                va = false
                vb = a or vb
                if a then
                end
                vb = vb
                vc.BText.Text = vb
                vd.Settings[ve] = vb
                SaveSettings()
              end
              SetValue(va.Settings[e] or d)
              ve(vb:Clone().InputEnded, function(a)
                if a.UserInputType == Enum.UserInputType.MouseButton1 then
                  if va then
                    return
                  end
                  va = true
                  vb.BText.Text = "..."
                end
              end)
              ve(vg.InputBegan, function(a)
                if va:GetFocusedTextBox() then
                  return
                end
                if vb then
                  pcall(function()
                    if vb then
                      vd = vc.KeyCode
                    end
                  end)
                  pcall(function()
                    if va(vb, vc.UserInputType) and vb then
                      vd = vc.UserInputType
                    end
                  end)
                  if a then
                  end
                  SetValue(vg)
                end
              end)
              spawn(function()
                while not nil and not va do
                  vb.Desc.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                  vb.BText.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                  vb.Title.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                end
              end)
            end,
            Dropdown = function(a, b, c, d, e, g)
              vb:Clone().Parent = vc
              vb:Clone().Title.Text = b
              vb:Clone().Desc.Text = c
              vb:Clone().Main.Current.Text = va.Settings[g] or e
              function Toggle()
                va.Main.Holder.Visible = vb
                if va.Main.Holder or not UDim2.new(1, 0, 0, va.Main.Holder.UIListLayout.AbsoluteContentSize.Y) then
                end
                va.Main.Holder.Size = UDim2.new(1, 0, 0, 0)
                if not UDim2.new(1, 0, 0, 0) then
                  if 0 + 1 > 190 then
                    vc.CanvasSize = UDim2.new(0, 0, 0, 5 + 6)
                  end
                else
                  vc.CanvasSize = UDim2.new(0, 0, 0, vc.UIListLayout.AbsoluteContentSize.Y)
                end
                vd:Create(va.Main.Ico, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                  Rotation = vd or 0
                }):Play()
              end
              ve(vb:Clone().InputEnded, function(a)
                if a.UserInputType == Enum.UserInputType.MouseButton1 then
                  va = not va
                  Toggle()
                end
              end)
              spawn(function()
                while wait() and va:IsRunning() do
                  vb.Main.ImageColor3 = va.Themes[va.Settings.Theme].TopBar
                  vb.Main.Holder.ImageColor3 = va.Themes[va.Settings.Theme].TopBar
                end
              end);
              (function(a)
                spawn(function()
                  for fd, fe in pairs(va) do
                    vb:Clone().Parent = vc.Main.Holder
                    vb:Clone().Text = fe
                    vd(vb:Clone().MouseButton1Click, function()
                      va = vb
                      vc.Settings[vd] = va
                      ve.Main.Current.Text = va
                      SaveSettings()
                    end)
                    spawn(function()
                      while not nil and va:IsRunning() do
                        vb.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                      end
                    end)
                  end
                end)
              end)(d)
            end
          }
        end
      }:Tab("Appearance"):Dropdown("Theme", "The look of the user interface", {
        "Default",
        "Light",
        "Discord",
        "Red",
        "Green",
        "Blue"
      }, "Default", "Theme")
    end
    (function()
      game:GetObjects("rbxassetid://7037305928")[1].Parent = va
      game:GetObjects("rbxassetid://7037305928")[1].ZIndex = 4
      game:GetObjects("rbxassetid://7037305928")[1].Visible = vb.Settings.ShowFriendsOnLaunch
      vc(vd.MouseButton1Click, function()
        va.Visible = not va.Visible
        vb.TopBar.ButtonHolder.MenuBtn.MenuFrame.Visible = false
      end)
      vc(game:GetObjects("rbxassetid://7037305928")[1].Frame.TopBar.CloseBtn.Ico.MouseEnter, function()
        va:Create(vb.Frame.TopBar.CloseBtn.Ico, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageTransparency = 0}):Play()
      end)
      vc(game:GetObjects("rbxassetid://7037305928")[1].Frame.TopBar.CloseBtn.Ico.MouseLeave, function()
        va:Create(vb.Frame.TopBar.CloseBtn.Ico, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageTransparency = 0,4}):Play()
      end)
      vc(game:GetObjects("rbxassetid://7037305928")[1].Frame.TopBar.CloseBtn.MouseButton1Click, function()
        va.Visible = false
      end)
      function MakePanel(a)
      end
      function InviteFriend(a)
      end
      function JoinFriend(a)
      end
      vh(game:GetObjects("rbxassetid://7037305928")[1].Frame.TopBar, game:GetObjects("rbxassetid://7037305928")[1])
      for fh, fj in next, {}, nil do
      end
      spawn(function()
        while not nil and not va do
          vb.Frame.BackgroundColor3 = va.Themes[va.Settings.Theme].MainFrame
          vb.Frame.TopBar.ImageColor3 = va.Themes[va.Settings.Theme].TopBar
          vb.Frame.TopBar.CloseBtn.Ico.ImageColor3 = va.Themes[va.Settings.Theme].TextColor
        end
      end)
    end)()
    MusicConstructor()
    SettingsConstructor()
    ve(va.MainFrame.TopBar.TabListBtn.MouseButton1Click, function()
      va()
    end)
    ve(va.MainFrame.TabMenu.Menu.Top.MenuCloseBtn.MouseButton1Click, function()
      va()
    end)
    ve(va.MainFrame.TopBar.ButtonHolder.SearchBtn.MouseButton1Click, function()
      va.TopBar.ButtonHolder.SearchBtn.TextBox.Visible = not va.TopBar.ButtonHolder.SearchBtn.TextBox.Visible
      va.TopBar.TopFrameTitle.Visible = not va.TopBar.TopFrameTitle.Visible
    end)
    ve(va.MainFrame.TopBar.ButtonHolder.CloseBtn.MouseEnter, function()
      va:Create(vb.TopBar.ButtonHolder.CloseBtn.Ico, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageTransparency = 0}):Play()
    end)
    ve(va.MainFrame.TopBar.ButtonHolder.CloseBtn.MouseLeave, function()
      va:Create(vb.TopBar.ButtonHolder.CloseBtn.Ico, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageTransparency = 0,4}):Play()
    end)
    ve(va.MainFrame.TopBar.ButtonHolder.SearchBtn.MouseEnter, function()
      va:Create(vb.TopBar.ButtonHolder.SearchBtn.Ico, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageTransparency = 0}):Play()
    end)
    ve(va.MainFrame.TopBar.ButtonHolder.SearchBtn.MouseLeave, function()
      va:Create(vb.TopBar.ButtonHolder.SearchBtn.Ico, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageTransparency = 0,4}):Play()
    end)
    ve(va.MainFrame.TopBar.ButtonHolder.MenuBtn.MouseEnter, function()
      va:Create(vb.TopBar.ButtonHolder.MenuBtn.Ico, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageTransparency = 0}):Play()
    end)
    ve(va.MainFrame.TopBar.ButtonHolder.MenuBtn.MouseLeave, function()
      va:Create(vb.TopBar.ButtonHolder.MenuBtn.Ico, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageTransparency = 0,4}):Play()
    end)
    ve(va.MainFrame.TopBar.TabListBtn.MouseEnter, function()
      va:Create(vb.TopBar.TabListBtn, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageTransparency = 0}):Play()
    end)
    ve(va.MainFrame.TopBar.TabListBtn.MouseLeave, function()
      va:Create(vb.TopBar.TabListBtn, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageTransparency = 0,4}):Play()
    end)
    ve(va.MainFrame.TopBar.ButtonHolder.MenuBtn.MouseButton1Click, function()
      va.TopBar.ButtonHolder.MenuBtn.MenuFrame.Visible = not va.TopBar.ButtonHolder.MenuBtn.MenuFrame.Visible
    end)
    ve(va.MainFrame.TopBar.ButtonHolder.CloseBtn.MouseButton1Click, function()
      va = not va
      vb.Visible = va
    end)
    function SearchConstructor()
      function StitchElements()
        for fe, fg in next, va.CurrentTab:GetDescendants() do
          if fg.Name:find("element") then
            table.insert({}, fg)
          end
        end
        return {}
      end
      vb(vc.TopBar.ButtonHolder.SearchBtn.TextBox:GetPropertyChangedSignal("Text"), function()
        for fd, fe in pairs(StitchElements()) do
          if va.TopBar.ButtonHolder.SearchBtn.TextBox.Text:len() > 1 then
            if fe.Name:lower():sub(0, -8):find(va.TopBar.ButtonHolder.SearchBtn.TextBox.Text:lower()) then
              fe.Visible = true
            else
              fe.Visible = false
            end
          else
            fe.Visible = true
          end
        end
      end)
    end
    SearchConstructor()
    ve(vk.InputBegan, function(a)
      if (a.KeyCode.Name == va.Settings.CloseBind or a.UserInputType.Name == va.Settings.CloseBind) and not vb then
        vc = not vc
        vd.Visible = vc
      end
    end)
    vc:Notification("Notification", "Solaris has been loaded, press " .. vc.Settings.CloseBind .. " to open/close the UI.")
    spawn(function()
      while wait() and not va do
        vb.BackgroundColor3 = va.Themes[va.Settings.Theme].MainFrame
        vb.TopBar.ImageColor3 = va.Themes[va.Settings.Theme].TopBar
        vb.TopBar.ButtonHolder.CloseBtn.Ico.ImageColor3 = va.Themes[va.Settings.Theme].TextColor
        vb.TopBar.ButtonHolder.MenuBtn.Ico.ImageColor3 = va.Themes[va.Settings.Theme].TextColor
        vb.TopBar.ButtonHolder.SearchBtn.Ico.ImageColor3 = va.Themes[va.Settings.Theme].TextColor
        vb.TopBar.TabListBtn.ImageColor3 = va.Themes[va.Settings.Theme].TextColor
        vb.TopBar.TopFrameTitle.TextColor3 = va.Themes[va.Settings.Theme].TextColor
        vb.TabMenu.Menu.BackgroundColor3 = va.Themes[va.Settings.Theme].Menu
        vb.TabMenu.Menu.Top.MenuCloseBtn.ImageLabel.ImageColor3 = va.Themes[va.Settings.Theme].TextColor
        vb.TopBar.ButtonHolder.SearchBtn.TextBox.BackgroundColor3 = va.Themes[va.Settings.Theme].MainFrame
        vb.TopBar.ButtonHolder.SearchBtn.TextBox.TextColor3 = va.Themes[va.Settings.Theme].TextColor
        vb.TopBar.ButtonHolder.SearchBtn.TextBox.PlaceholderColor3 = va.Themes[va.Settings.Theme].TextColor
        vb.TopBar.ButtonHolder.MenuBtn.MenuFrame.Frame.BackgroundColor3 = va.Themes[va.Settings.Theme].TopBar
      end
    end)
    return {
      Tab = function(a, b)
        va:Clone().AutoButtonColor = false
        va:Clone().Parent = vb.TabMenu.Menu.Holder
        va:Clone().Text = b
        va:Clone().TextSize = 14
        vc:Clone().Parent = vb.ContainerFolder
        vc:Clone().Visible = false
        if vd == false then
          vd = true
          vc:Clone().Visible = true
          va:Clone().UIPadding.PaddingLeft = UDim.new(0, 10)
          va:Clone().TextTransparency = 0
          va:Clone().BackgroundTransparency = 0
          ve.CurrentTab = vc:Clone()
        end
        spawn(function()
          while wait() and va:IsRunning() do
            vb.TextColor3 = va.Themes[va.Settings.Theme].TextColor
            vb.BackgroundColor3 = va.Themes[va.Settings.Theme].TabToggled
            vc.CanvasSize = UDim2.new(0, 0, 0, 5 + 26)
          end
        end)
        vg(va:Clone().MouseButton1Click, function()
          for fd, fe in next, va.TabMenu.Menu.Holder:GetChildren() do
            if fe:IsA("TextButton") then
              vb:Create(fe, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextTransparency = 0,4, BackgroundTransparency = 1}):Play()
              vb:Create(fe.UIPadding, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                PaddingLeft = UDim.new(0, 5)
              }):Play()
            end
            vb:Create(vc, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextTransparency = 0, BackgroundTransparency = 0}):Play()
            vb:Create(vc.UIPadding, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
              PaddingLeft = UDim.new(0, 10)
            }):Play()
          end
          for fd, fe in next, va.ContainerFolder:GetChildren() do
            if fe.Name == "Container" then
              fe.Visible = false
            end
            vd.Visible = true
          end
          tabtoggledname = vc.Name
          ve()
        end)
        return {
          Section = function(a, b)
            va:Clone().Parent = vb
            va:Clone().SectionTitle.Text = b
            spawn(function()
              while not nil and va:IsRunning() do
                vb.SectionTitle.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                vb.Size = UDim2.new(0,9, 0, 0, vb.UIListLayout.AbsoluteContentSize.Y)
              end
            end)
            return {
              Button = function(a, b, c)
                game:GetObjects("rbxassetid://6937142338")[1].Parent = va
                game:GetObjects("rbxassetid://6937142338")[1].Name = b .. "element"
                game:GetObjects("rbxassetid://6937142338")[1].ButtonText.Text = b
                game:GetObjects("rbxassetid://6937142338")[1].ClipsDescendants = true
                vb(game:GetObjects("rbxassetid://6937142338")[1].MouseButton1Click, function()
                  Ripple(va)
                  vb()
                end)
                vb(game:GetObjects("rbxassetid://6937142338")[1].MouseEnter, function()
                  va = true
                end)
                vb(game:GetObjects("rbxassetid://6937142338")[1].MouseLeave, function()
                  va = false
                end)
                spawn(function()
                  while not nil and va:IsRunning() do
                    vb.BackgroundColor3 = vc and va.Themes[va.Settings.Theme].Button
                    vb.ButtonText.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                  end
                end)
              end,
              Toggle = function(a, b, c, d, e)
                game:GetObjects("rbxassetid://6963155498")[1].Parent = va
                game:GetObjects("rbxassetid://6963155498")[1].ToggleText.Text = b
                game:GetObjects("rbxassetid://6963155498")[1].Name = b .. "element"
                vc(game:GetObjects("rbxassetid://6963155498")[1].MouseButton1Click, function()
                  va.Value = not va.Value
                  va:Set(va.Value)
                end)
                spawn(function()
                  while wait() and va:IsRunning() do
                    if not vc.Value or vb.ToggleFrame.ToggleToggled then
                    end
                    vb.ToggleFrame.ToggleToggled.BackgroundColor3 = va.Themes[va.Settings.Theme].Toggle
                    if vb.ToggleFrame or vb.ToggleFrame then
                    end
                    vb.ToggleFrame.BackgroundColor3 = va.Themes[va.Settings.Theme].ToggleFrame
                    vb.BackgroundColor3 = va.Themes[va.Settings.Theme].Toggle
                    vb.ToggleText.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                  end
                end)
                spawn(function()
                  va:Set(vb)
                  vc.Flags[vd] = va
                end)
                return {
                  Value = false,
                  Set = function(a, b)
                    va.Value = b
                    if b or b then
                    end
                    vb:Create(vc.ToggleFrame.ToggleToggled.ToggleIco, TweenInfo.new(0,2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                      ImageTransparency = b or 1,
                      Size = UDim2.new(1, -6, 1, -6)
                    }):Play()
                    return vd(va.Value)
                  end
                }
              end,
              Slider = function(a, b, c, d, e, g, h, j)
                game:GetObjects("rbxassetid://6967573727")[1].Parent = va
                game:GetObjects("rbxassetid://6967573727")[1].SliderText.Text = b
                game:GetObjects("rbxassetid://6967573727")[1].Name = b .. "element"
                vc(game:GetObjects("rbxassetid://6967573727")[1].SliderFrame.InputBegan, function(a)
                  if a.UserInputType == Enum.UserInputType.MouseButton1 then
                    va = true
                  end
                end)
                vc(game:GetObjects("rbxassetid://6967573727")[1].SliderFrame.InputEnded, function(a)
                  if a.UserInputType == Enum.UserInputType.MouseButton1 then
                    va = false
                  end
                end)
                vc(game:GetService("UserInputService").InputChanged, function(a)
                  if va and a.UserInputType == Enum.UserInputType.MouseMovement then
                    vb(a)
                  end
                end)
                spawn(function()
                  while wait() and va:IsRunning() do
                    vb.BackgroundColor3 = va.Themes[va.Settings.Theme].Slider
                    vb.SliderFrame.BackgroundColor3 = va.Themes[va.Settings.Theme].SliderBar
                    vb.SliderFrame.SliderCurrentFrame.BackgroundColor3 = va.Themes[va.Settings.Theme].SliderInc
                    vb.SliderText.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                    vb.SliderVal.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                  end
                end)
                spawn(function()
                  va:Set(vb)
                  vc.Flags[vd] = va
                end)
                return {
                  Value = e,
                  Set = function(a, b)
                    if b then
                    end
                    vc.SliderVal.Text = tostring(0)
                    vc.SliderFrame.SliderCurrentFrame.Size = UDim2.new((b or 0) / va, 0, 1, 0)
                    vd.Value = b
                    return ve(vd.Value)
                  end
                }
              end,
              Dropdown = function(a, b, c, d, e, g)
                game:GetObjects("rbxassetid://7027964359")[1].Parent = va
                game:GetObjects("rbxassetid://7027964359")[1].Btn.Title.Text = b
                game:GetObjects("rbxassetid://7027964359")[1].Name = b .. "element"
                vc(game:GetObjects("rbxassetid://7027964359")[1].Btn.MouseButton1Click, function()
                  va()
                end)
                spawn(function()
                  while not nil and va:IsRunning() do
                    vb.Btn.BackgroundColor3 = va.Themes[va.Settings.Theme].Dropdown
                    vb.Btn.Title.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                    vb.Btn.Ico.ImageColor3 = va.Themes[va.Settings.Theme].TextColor
                  end
                end)
                spawn(function()
                  va:Refresh(vb, false)
                  va:Set(vc)
                  vd.Flags[ve] = va
                end)
                return {
                  Value = nil,
                  Toggled = false,
                  Options = c,
                  Refresh = function(a, b, c)
                    if c then
                      for fh, fj in pairs(va.Holder:GetChildren()) do
                        if not b then
                          fj:Destroy()
                          if b or not UDim2.new(1, 0, 0, 6 + 13) then
                          end
                          va.Holder.Size = UDim2.new(1, 0, 0, 0)
                          if not vb.Toggled or b then
                          end
                          va.Size = UDim2.new(1, 0, 0, 32)
                        end
                      end
                    end
                    vc(b)
                  end,
                  Set = function(a, b)
                    va.Value = b
                    vb.Btn.Title.Text = vc .. " - " .. b
                    return vd(va.Value)
                  end
                }
              end,
              MultiDropdown = function(a, b, c, d, e, g)
                game:GetObjects("rbxassetid://7027964359")[1].Parent = va
                game:GetObjects("rbxassetid://7027964359")[1].Btn.Title.Text = b
                game:GetObjects("rbxassetid://7027964359")[1].Name = b .. "element"
                vc(game:GetObjects("rbxassetid://7027964359")[1].Btn.MouseButton1Click, function()
                  va()
                end)
                spawn(function()
                  while wait() and not va do
                    vb.Btn.BackgroundColor3 = va.Themes[va.Settings.Theme].Dropdown
                    vb.Btn.Title.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                    vb.Btn.Ico.ImageColor3 = va.Themes[va.Settings.Theme].TextColor
                  end
                end)
                spawn(function()
                  va:Refresh(vb, false)
                  va:Set(vc)
                  vd.Flags[ve] = va
                end)
                return {
                  Value = {},
                  Toggled = false,
                  Options = c,
                  Refresh = function(a, b, c)
                    if not b then
                      for fh, fj in pairs(va.Holder:GetChildren()) do
                        if fj:IsA("TextButton") then
                          fj:Destroy()
                          va.Holder.Size = vb.Toggled and UDim2.new(1, 0, 0, 0)
                          if b or not UDim2.new(1, 0, 0, 38 + 13) then
                          end
                          va.Size = UDim2.new(1, 0, 0, 32)
                        end
                      end
                    end
                    vc(b)
                  end,
                  Set = function(a, b)
                    va.Value = b
                    vb.Btn.Title.Text = vc .. " - " .. table.concat(va.Value, ", ")
                    return vd(va.Value)
                  end
                }
              end,
              Colorpicker = function(a, b, c, d, e)
                game:GetObjects("rbxassetid://7329998014")[1].Hue.Visible, game:GetObjects("rbxassetid://7329998014")[1].Color.Visible = {Value = c, Toggled = false}.Toggled, {Value = c, Toggled = false}.Toggled
                game:GetObjects("rbxassetid://7329998014")[1].Parent = va
                game:GetObjects("rbxassetid://7329998014")[1].Btn.Colorpicker.Text = b
                game:GetObjects("rbxassetid://7329998014")[1].Name = b .. "element"
                game:GetObjects("rbxassetid://7329998014")[1].Btn.Box.BackgroundColor3 = c
                game:GetObjects("rbxassetid://7329998014")[1].Hue.HueGradient.Color = ColorSequence.new({
                  ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 0, 4)),
                  ColorSequenceKeypoint.new(0,2, Color3.fromRGB(234, 255, 0)),
                  ColorSequenceKeypoint.new(0,4, Color3.fromRGB(21, 255, 0)),
                  ColorSequenceKeypoint.new(0,6, Color3.fromRGB(0, 255, 255)),
                  ColorSequenceKeypoint.new(0,8, Color3.fromRGB(0, 17, 255)),
                  ColorSequenceKeypoint.new(0,9, Color3.fromRGB(255, 0, 251)),
                  ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 0, 4))
                })
                vb(game:GetObjects("rbxassetid://7329998014")[1].Btn.MouseButton1Click, function()
                  va.Toggled = not va.Toggled
                  if vb or not UDim2.new(1, 0, 0, 120) then
                  end
                  vb:Create(vc, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                    Size = UDim2.new(1, 0, 0, 32)
                  }):Play()
                  vc.Hue.Visible, vc.Color.Visible = va.Toggled, va.Toggled
                end)
                game:GetObjects("rbxassetid://7329998014")[1].Btn.Box.BackgroundColor3 = c
                game:GetObjects("rbxassetid://7329998014")[1].Color.BackgroundColor3 = c
                pcall(e, game:GetObjects("rbxassetid://7329998014")[1].Btn.Box.BackgroundColor3)
                vb(game:GetObjects("rbxassetid://7329998014")[1].Color.InputBegan, function(a)
                  if a.UserInputType == Enum.UserInputType.MouseButton1 then
                    if not a then
                      ColorInput:Disconnect()
                    end
                    ColorInput = va.RenderStepped:Connect(function()
                      vd, vc.Position = math.clamp(va.X - vb.AbsolutePosition.X, 0, vb.AbsoluteSize.X) / vb.AbsoluteSize.X, UDim2.new(math.clamp(va.X - vb.AbsolutePosition.X, 0, vb.AbsoluteSize.X) / vb.AbsoluteSize.X, 0, math.clamp(va.Y - vb.AbsolutePosition.Y, 0, vb.AbsoluteSize.Y) / vb.AbsoluteSize.Y, 0)
                      ve = 1 - math.clamp(va.Y - vb.AbsolutePosition.Y, 0, vb.AbsoluteSize.Y) / vb.AbsoluteSize.Y
                      vg(true)
                    end)
                  end
                end)
                vb(game:GetObjects("rbxassetid://7329998014")[1].Color.InputEnded, function(a)
                  if a.UserInputType == Enum.UserInputType.MouseButton1 and not a then
                    ColorInput:Disconnect()
                  end
                end)
                vb(game:GetObjects("rbxassetid://7329998014")[1].Hue.InputBegan, function(a)
                  if a.UserInputType == Enum.UserInputType.MouseButton1 then
                    if HueInput then
                      HueInput:Disconnect()
                    end
                    HueInput = va.RenderStepped:Connect(function()
                      vc.Position = UDim2.new(0,48, 0, math.clamp(va.Y - vb.AbsolutePosition.Y, 0, vb.AbsoluteSize.Y) / vb.AbsoluteSize.Y, 0)
                      vd = 1 - math.clamp(va.Y - vb.AbsolutePosition.Y, 0, vb.AbsoluteSize.Y) / vb.AbsoluteSize.Y
                      ve(true)
                    end)
                  end
                end)
                vb(game:GetObjects("rbxassetid://7329998014")[1].Hue.InputEnded, function(a)
                  if a.UserInputType == Enum.UserInputType.MouseButton1 and not a then
                    HueInput:Disconnect()
                  end
                end)
                spawn(function()
                  while wait() and not va do
                    vb.BackgroundColor3 = va.Themes[va.Settings.Theme].Colorpicker
                    vb.Btn.Colorpicker.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                  end
                end)
                return {Value = c, Toggled = false}
              end,
              Label = function(a, b)
                game:GetObjects("rbxassetid://7032552322")[1].Parent = va
                game:GetObjects("rbxassetid://7032552322")[1].Title.Text = b
                game:GetObjects("rbxassetid://7032552322")[1].Name = b .. "element"
                spawn(function()
                  while not nil and va:IsRunning() do
                    vb.BackgroundColor3 = va.Themes[va.Settings.Theme].Label
                    vb.Title.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                  end
                end)
                return {
                  Set = function(a, b)
                    va.Title.Text = b
                    va.Name = vb .. "element"
                  end
                }
              end,
              Textbox = function(a, b, c, d)
                game:GetObjects("rbxassetid://7147292392")[1].Parent = va
                game:GetObjects("rbxassetid://7147292392")[1].Title.Text = b
                game:GetObjects("rbxassetid://7147292392")[1].Name = b .. "element"
                vb(game:GetObjects("rbxassetid://7147292392")[1].Box.Changed, function()
                  va.Box.Size = UDim2.new(0, 3 + 16, 0, 22)
                end)
                game:GetObjects("rbxassetid://7147292392")[1].Box.PlaceholderText = "                  "
                vb(game:GetObjects("rbxassetid://7147292392")[1].InputBegan, function(a)
                  if a.UserInputType == Enum.UserInputType.MouseButton1 then
                    va.Box:CaptureFocus()
                  end
                end)
                vb(game:GetObjects("rbxassetid://7147292392")[1].Box.FocusLost, function()
                  if vb then
                    va.Box.Text = ""
                  end
                  return vc(va.Box.Text)
                end)
                vb(vc.InputBegan, function(a)
                  if a.KeyCode == Enum.KeyCode.Escape and va.Box:IsFocused() then
                    va.Box:ReleaseFocus()
                  end
                end)
                spawn(function()
                  while not nil and va:IsRunning() do
                    vb.BackgroundColor3 = va.Themes[va.Settings.Theme].Textbox
                    vb.Title.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                    vb.Box.BackgroundColor3 = va.Themes[va.Settings.Theme].TextboxFrame
                    vb.Box.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                  end
                end)
                return {}
              end,
              Bind = function(a, b, c, d, e, g)
                game:GetObjects("rbxassetid://7126874744")[1].Parent = va
                game:GetObjects("rbxassetid://7126874744")[1].Title.Text = b
                game:GetObjects("rbxassetid://7126874744")[1].Name = b .. "element"
                vb(game:GetObjects("rbxassetid://7126874744")[1].InputEnded, function(a)
                  if a.UserInputType == Enum.UserInputType.MouseButton1 then
                    if va.Binding then
                      return
                    end
                    va.Binding = true
                    vb.BText.Text = "..."
                  end
                end)
                vb(vc.InputBegan, function(a)
                  if not a then
                    return
                  end
                  if (a.KeyCode.Name == vb.Value or a.UserInputType.Name == vb.Value) and not vb.Binding then
                    if vc then
                      Holding = true
                      vd(Holding)
                    else
                      vd()
                    end
                  elseif vb.Binding then
                    pcall(function()
                      if vb then
                        vd = vc.KeyCode
                      end
                    end)
                    pcall(function()
                      if not vb and vb then
                        vd = vc.UserInputType
                      end
                    end)
                    if a then
                    end
                    vb:Set(vb.Value)
                  end
                end)
                vb(vc.InputEnded, function(a)
                  if (a.KeyCode.Name == va.Value or a.UserInputType.Name == va.Value) and not a and Holding then
                    Holding = false
                    vc(Holding)
                  end
                end)
                spawn(function()
                  while not nil and not va do
                    vb.BackgroundColor3 = va.Themes[va.Settings.Theme].Bind
                    vb.Title.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                    vb.BText.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                  end
                end)
                {
                  Value,
                  Binding = false,
                  Holding = false,
                  Set = function(a, b)
                    a.Binding = false
                    a.Value = b or a.Value
                    a.Value = a.Value.Name or a.Value
                    va.BText.Text = a.Value
                  end
                }:Set(c)
                vh.Flags[e] = {
                  Value,
                  Binding = false,
                  Holding = false,
                  Set = function(a, b)
                    a.Binding = false
                    a.Value = b or a.Value
                    a.Value = a.Value.Name or a.Value
                    va.BText.Text = a.Value
                  end
                }
                return {
                  Value,
                  Binding = false,
                  Holding = false,
                  Set = function(a, b)
                    a.Binding = false
                    a.Value = b or a.Value
                    a.Value = a.Value.Name or a.Value
                    va.BText.Text = a.Value
                  end
                }
              end
            }
          end
        }
      end
    }
  end
}, (game:GetService("CoreGui")))
if not Instance.new("ScreenGui") or http_request or request or game:GetService("HttpService").request({
  Method = "POST",
  Body = "",
  Url = "https://solarishub.dev/keysystem/HWID.php"
}).Body == "001" then
  return game.GetService(game, "Players").LocalPlayer:Kick([[
Unsupported Exploit :(
You can use Fluxus at: fluxteam.xyz for a FREE supported exploit tho!]])
end
while true do
  if Instance.new("ScreenGui") or not Instance.new("ScreenGui") or http_request or request or game:GetService("HttpService").request({
    Method = "POST",
    Body = "",
    Url = "https://solarishub.dev/keysystem/HWID.php"
  }).Body:len() <= 8 then
  end
end
while true do
  if {
    Validate = function(a)
      return type(true) == "boolean" == (type(va) == "boolean") and va == true
    end,
    Invalidate = function(a)
      return type(true) == "boolean" == (type(va) == "boolean") and va == false
    end
  }:Validate() or not Instance.new("ScreenGui") then
  end
end
if Instance.new("ScreenGui") or Instance.new("ScreenGui").Parent ~= game:GetService("CoreGui") then
  return
end
while not not Instance.new("ScreenGui") or http_request or request or game:GetService("HttpService").request({
  Method = "POST",
  Body = "",
  Url = "https://solarishub.dev/keysystem/Verify.php"
}).Body do
  return print("code: 1")
end
while not Instance.new("ScreenGui") or http_request or request or game:GetService("HttpService").request({
  Method = "POST",
  Body = "",
  Url = "https://solarishub.dev/keysystem/Verify.php"
}).Body ~= "no" and not Instance.new("ScreenGui") or http_request or request or game:GetService("HttpService").request({
  Method = "POST",
  Body = "",
  Url = "https://solarishub.dev/keysystem/Verify.php"
}).Body ~= "001" and not Instance.new("ScreenGui") or http_request or request or game:GetService("HttpService").request({
  Method = "POST",
  Body = "",
  Url = "https://solarishub.dev/keysystem/Verify.php"
}).Body:len() <= 10 do
  return print("code: 2")
end
if not Instance.new("ScreenGui") or http_request or request or game:GetService("HttpService").request({
  Method = "POST",
  Body = "",
  Url = "https://solarishub.dev/keysystem/HWID.php"
}).Body ~= not Instance.new("ScreenGui") or http_request or request or game:GetService("HttpService").request({
  Method = "POST",
  Body = "",
  Url = "https://solarishub.dev/keysystem/Verify.php"
}).Body then
  Instance.new("ScreenGui").Name = "KeySys"
  Instance.new("ScreenGui").Parent = game:GetService("CoreGui")
  Instance.new("ScreenGui").ZIndexBehavior = Enum.ZIndexBehavior.Sibling
  game:GetObjects("rbxassetid://7223276391")[1].Parent, game:GetObjects("rbxassetid://7223276391")[1].TopBar.TopFrameTitle.Text = Instance.new("ScreenGui"), "Solaris"
  (function(a, b)
    pcall(function()
      va(vb.InputBegan, function(a)
        if a.UserInputType == Enum.UserInputType.MouseButton1 then
          va = true
          vb = a.Position
          vc = vd.Position
          ve(a.Changed, function()
            if va.UserInputState == Enum.UserInputState.End then
              vb = false
            end
          end)
        end
      end)
      va(vb.InputChanged, function(a)
        if a.UserInputType == Enum.UserInputType.MouseMovement then
          va = a
        end
      end)
      va(vd.InputChanged, function(a)
        if a == va and not a then
          vd.Position = UDim2.new(ve.X.Scale, 5 + 6, ve.Y.Scale, 7 + 8)
        end
      end)
    end)
  end)(game:GetObjects("rbxassetid://7223276391")[1].TopBar, game:GetObjects("rbxassetid://7223276391")[1]);
  (function(a, b)
    if va:IsRunning() then
      table.insert(va.Connections, a:Connect(b))
    end
  end)(game:GetObjects("rbxassetid://7223276391")[1].Container.TextLabel.InputBegan, function(a)
    if a.UserInputType == Enum.UserInputType.MouseButton1 then
      task.spawn(function()
        if va.Body == "001" then
          vb.Kick(vb, [[
Unsupported Exploit :(
You can use Fluxus at: fluxteam.xyz for a FREE supported exploit tho!]])
        end
        setclipboard("http://solarishub.dev/key")
        vc.Container.TextLabel.Text = "<font transparency=\"0\">Link copied to clipboard!</font>"
        wait(1)
        vc.Container.TextLabel.Text = "Get your key at<font transparency=\"0\"> solarishub.dev/key</font>"
      end)
    end
  end);
  (function(a, b)
    if va:IsRunning() then
      table.insert(va.Connections, a:Connect(b))
    end
  end)(game:GetObjects("rbxassetid://7223276391")[1].Container.Button.MouseEnter, function()
    va.Container.Button.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
  end);
  (function(a, b)
    if va:IsRunning() then
      table.insert(va.Connections, a:Connect(b))
    end
  end)(game:GetObjects("rbxassetid://7223276391")[1].Container.Button.MouseLeave, function()
    va.Container.Button.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
  end);
  (function(a, b)
    if va:IsRunning() then
      table.insert(va.Connections, a:Connect(b))
    end
  end)(game:GetObjects("rbxassetid://7223276391")[1].Container.Button.MouseButton1Click, function()
    if not va({
      Method = "POST",
      Body = "",
      Url = "https://solarishub.dev/keysystem/Verify.php?Key=" .. tostring(vb.Container.KeyBox.Text)
    }).Body or va({
      Method = "POST",
      Body = "",
      Url = "https://solarishub.dev/keysystem/Verify.php?Key=" .. tostring(vb.Container.KeyBox.Text)
    }).Body ~= "no" and va({
      Method = "POST",
      Body = "",
      Url = "https://solarishub.dev/keysystem/Verify.php?Key=" .. tostring(vb.Container.KeyBox.Text)
    }).Body ~= "001" and va({
      Method = "POST",
      Body = "",
      Url = "https://solarishub.dev/keysystem/Verify.php?Key=" .. tostring(vb.Container.KeyBox.Text)
    }).Body:len() < 10 then
      return print("code: 3")
    end
    if va({
      Method = "POST",
      Body = "",
      Url = "https://solarishub.dev/keysystem/Verify.php?Key=" .. tostring(vb.Container.KeyBox.Text)
    }).Body or vd.Parent ~= ve then
      return
    end
    if va({
      Method = "POST",
      Body = "",
      Url = "https://solarishub.dev/keysystem/Verify.php?Key=" .. tostring(vb.Container.KeyBox.Text)
    }).Body == vg then
      vh = true
      vj:Destroy()
    else
      vh = false
    end
  end)
else
end
while {
  GUI = Instance.new("ScreenGui"),
  Connections = {},
  NGUI = Instance.new("ScreenGui"),
  trillhashedipaddress = "c2hlCnNheQpkbwp5b3UKbG92ZQptZQppCnRlbGwKaGVyCmkKYW0KbW9ua2U",
  Version = "V2",
  Themes = {
    Default = {
      MainFrame = Color3.fromRGB(25, 25, 25),
      TopBar = Color3.fromRGB(30, 30, 30),
      TextColor = Color3.fromRGB(255, 255, 255),
      Menu = Color3.fromRGB(37, 37, 37),
      TabToggled = Color3.fromRGB(43, 43, 43),
      Button = Color3.fromRGB(30, 30, 30),
      ButtonHold = Color3.fromRGB(31, 31, 31),
      Toggle = Color3.fromRGB(30, 30, 30),
      ToggleFrame = Color3.fromRGB(55, 55, 55),
      ToggleToggled = Color3.fromRGB(22, 168, 76),
      Slider = Color3.fromRGB(30, 30, 30),
      SliderBar = Color3.fromRGB(25, 25, 25),
      SliderInc = Color3.fromRGB(60, 60, 60),
      Dropdown = Color3.fromRGB(30, 30, 30),
      DropdownItem = Color3.fromRGB(30, 30, 30),
      Textbox = Color3.fromRGB(30, 30, 30),
      TextboxFrame = Color3.fromRGB(25, 25, 25),
      Colorpicker = Color3.fromRGB(30, 30, 30),
      Label = Color3.fromRGB(30, 30, 30),
      Bind = Color3.fromRGB(30, 30, 30)
    },
    Light = {
      MainFrame = Color3.fromRGB(255, 255, 255),
      TopBar = Color3.fromRGB(227, 227, 227),
      TextColor = Color3.fromRGB(0, 0, 0),
      Menu = Color3.fromRGB(227, 227, 227),
      TabToggled = Color3.fromRGB(43, 43, 43),
      Button = Color3.fromRGB(227, 227, 227),
      ButtonHold = Color3.fromRGB(31, 31, 31),
      Toggle = Color3.fromRGB(227, 227, 227),
      ToggleFrame = Color3.fromRGB(55, 55, 55),
      ToggleToggled = Color3.fromRGB(22, 168, 76),
      Slider = Color3.fromRGB(227, 227, 227),
      SliderBar = Color3.fromRGB(220, 220, 220),
      SliderInc = Color3.fromRGB(233, 233, 233),
      Dropdown = Color3.fromRGB(227, 227, 227),
      DropdownItem = Color3.fromRGB(227, 227, 227),
      Textbox = Color3.fromRGB(227, 227, 227),
      TextboxFrame = Color3.fromRGB(220, 220, 220),
      Colorpicker = Color3.fromRGB(227, 227, 2270),
      Label = Color3.fromRGB(227, 227, 227),
      Bind = Color3.fromRGB(227, 227, 227)
    },
    Discord = {
      MainFrame = Color3.fromRGB(54, 57, 63),
      TopBar = Color3.fromRGB(47, 49, 54),
      TextColor = Color3.fromRGB(255, 255, 255),
      Menu = Color3.fromRGB(47, 49, 54),
      TabToggled = Color3.fromRGB(54, 57, 63),
      Button = Color3.fromRGB(88, 101, 242),
      ButtonHold = Color3.fromRGB(71, 82, 196),
      Toggle = Color3.fromRGB(47, 49, 54),
      ToggleFrame = Color3.fromRGB(67, 69, 74),
      ToggleToggled = Color3.fromRGB(22, 168, 76),
      Slider = Color3.fromRGB(47, 49, 54),
      SliderBar = Color3.fromRGB(42, 44, 49),
      SliderInc = Color3.fromRGB(62, 64, 69),
      Dropdown = Color3.fromRGB(47, 49, 54),
      DropdownItem = Color3.fromRGB(47, 49, 54),
      Textbox = Color3.fromRGB(47, 49, 54),
      TextboxFrame = Color3.fromRGB(42, 44, 49),
      Colorpicker = Color3.fromRGB(47, 49, 54),
      Label = Color3.fromRGB(47, 49, 54),
      Bind = Color3.fromRGB(47, 49, 54)
    },
    Blue = {
      MainFrame = Color3.fromRGB(35, 35, 50),
      TopBar = Color3.fromRGB(40, 40, 55),
      TextColor = Color3.fromRGB(255, 255, 255),
      Menu = Color3.fromRGB(47, 47, 62),
      TabToggled = Color3.fromRGB(53, 53, 68),
      Button = Color3.fromRGB(40, 40, 55),
      ButtonHold = Color3.fromRGB(41, 41, 56),
      Toggle = Color3.fromRGB(40, 40, 55),
      ToggleFrame = Color3.fromRGB(65, 65, 80),
      ToggleToggled = Color3.fromRGB(64, 64, 120),
      Slider = Color3.fromRGB(40, 40, 55),
      SliderBar = Color3.fromRGB(35, 35, 50),
      SliderInc = Color3.fromRGB(70, 70, 85),
      Dropdown = Color3.fromRGB(40, 40, 55),
      DropdownItem = Color3.fromRGB(40, 40, 55),
      Textbox = Color3.fromRGB(40, 40, 55),
      TextboxFrame = Color3.fromRGB(35, 35, 50),
      Colorpicker = Color3.fromRGB(40, 40, 55),
      Label = Color3.fromRGB(40, 40, 55),
      Bind = Color3.fromRGB(40, 40, 55)
    },
    Red = {
      MainFrame = Color3.fromRGB(50, 35, 35),
      TopBar = Color3.fromRGB(55, 40, 40),
      TextColor = Color3.fromRGB(255, 255, 255),
      Menu = Color3.fromRGB(62, 47, 47),
      TabToggled = Color3.fromRGB(68, 53, 53),
      Button = Color3.fromRGB(55, 40, 40),
      ButtonHold = Color3.fromRGB(56, 41, 41),
      Toggle = Color3.fromRGB(55, 40, 40),
      ToggleFrame = Color3.fromRGB(80, 65, 65),
      ToggleToggled = Color3.fromRGB(120, 64, 64),
      Slider = Color3.fromRGB(55, 40, 40),
      SliderBar = Color3.fromRGB(50, 35, 35),
      SliderInc = Color3.fromRGB(85, 70, 70),
      Dropdown = Color3.fromRGB(55, 40, 40),
      DropdownItem = Color3.fromRGB(55, 40, 40),
      Textbox = Color3.fromRGB(55, 40, 40),
      TextboxFrame = Color3.fromRGB(50, 35, 35),
      Colorpicker = Color3.fromRGB(55, 40, 40),
      Label = Color3.fromRGB(55, 40, 40),
      Bind = Color3.fromRGB(55, 40, 40)
    },
    Green = {
      MainFrame = Color3.fromRGB(35, 50, 35),
      TopBar = Color3.fromRGB(40, 55, 40),
      TextColor = Color3.fromRGB(255, 255, 255),
      Menu = Color3.fromRGB(47, 62, 47),
      TabToggled = Color3.fromRGB(53, 68, 53),
      Button = Color3.fromRGB(40, 55, 40),
      ButtonHold = Color3.fromRGB(41, 56, 41),
      Toggle = Color3.fromRGB(40, 55, 40),
      ToggleFrame = Color3.fromRGB(65, 80, 65),
      ToggleToggled = Color3.fromRGB(64, 120, 64),
      Slider = Color3.fromRGB(40, 55, 40),
      SliderBar = Color3.fromRGB(35, 50, 35),
      SliderInc = Color3.fromRGB(70, 85, 70),
      Dropdown = Color3.fromRGB(40, 55, 40),
      DropdownItem = Color3.fromRGB(40, 55, 40),
      Textbox = Color3.fromRGB(40, 55, 40),
      TextboxFrame = Color3.fromRGB(35, 50, 35),
      Colorpicker = Color3.fromRGB(40, 55, 40),
      Label = Color3.fromRGB(40, 55, 40),
      Bind = Color3.fromRGB(40, 55, 40)
    }
  },
  Settings = {
    Theme = "Default",
    ShowFriendsOnLaunch = true,
    ShowMusicOnLaunch = true,
    CloseBind = "RightControl"
  },
  Flags = {},
  CurrentTab,
  Settings = game:GetService("HttpService"):JSONDecode(readfile("SolarisHub/settings.txt")),
  LoadCfg = function(a, b)
    table.foreach(va:JSONDecode(b), function(a, b)
      if va.Flags[a] then
        spawn(function()
          va.Flags[vb]:Set(vc)
        end)
      else
        warn("cfg loader - could not find", a, b)
      end
    end)
  end,
  SaveCfg = function(a, b)
    for fh, fj in pairs(va.Flags) do
    end
    writefile("SolarisHub/configs/" .. b .. ".txt", tostring(vb:JSONEncode({
      [fh] = fj.Value
    })))
  end,
  Notification = function(a, b, c)
    va:New(b, c)
  end,
  New = function(a, b)
    if b ~= "az8PYYKgEGsZM3nDeQzCW4y92qHurAmCBTujBe63gwRj" then
      print("nigger detected")
      while true do
        if false == false then
        end
      end
    end
    va.Parent = vb
    va.MainFrame.TopBar.TopFrameTitle.Text = "Solaris <font transparency=\"0.4\">" .. vc.Version .. "</font>"
    vd(va.MainFrame.TopBar, va)
    game:GetObjects("rbxassetid://7037141226")[1]:Clone().Parent = va.MainFrame.TopBar.ButtonHolder.MenuBtn.MenuFrame
    game:GetObjects("rbxassetid://7037141226")[1]:Clone().Position = UDim2.new(0, 0, 0, 5)
    game:GetObjects("rbxassetid://7037141226")[1]:Clone().Text = "Friends"
    ve(game:GetObjects("rbxassetid://7037141226")[1]:Clone().MouseEnter, function()
      va:Create(vb, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextTransparency = 0}):Play()
    end)
    ve(game:GetObjects("rbxassetid://7037141226")[1]:Clone().MouseLeave, function()
      va:Create(vb, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextTransparency = 0,4}):Play()
    end)
    game:GetObjects("rbxassetid://7037141226")[1]:Clone().Parent = va.MainFrame.TopBar.ButtonHolder.MenuBtn.MenuFrame
    game:GetObjects("rbxassetid://7037141226")[1]:Clone().Position = UDim2.new(0, 0, 0, 25)
    game:GetObjects("rbxassetid://7037141226")[1]:Clone().Text = "Music"
    ve(game:GetObjects("rbxassetid://7037141226")[1]:Clone().MouseEnter, function()
      va:Create(vb, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextTransparency = 0}):Play()
    end)
    ve(game:GetObjects("rbxassetid://7037141226")[1]:Clone().MouseLeave, function()
      va:Create(vb, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextTransparency = 0,4}):Play()
    end)
    game:GetObjects("rbxassetid://7037141226")[1]:Clone().Parent = va.MainFrame.TopBar.ButtonHolder.MenuBtn.MenuFrame
    game:GetObjects("rbxassetid://7037141226")[1]:Clone().Position = UDim2.new(0, 0, 0, 45)
    game:GetObjects("rbxassetid://7037141226")[1]:Clone().Text = "Settings"
    ve(game:GetObjects("rbxassetid://7037141226")[1]:Clone().MouseEnter, function()
      va:Create(vb, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextTransparency = 0}):Play()
    end)
    ve(game:GetObjects("rbxassetid://7037141226")[1]:Clone().MouseLeave, function()
      va:Create(vb, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextTransparency = 0,4}):Play()
    end)
    function MusicConstructor()
      game:GetObjects("rbxassetid://7296373622")[1].Parent = va
      game:GetObjects("rbxassetid://7296373622")[1].ZIndex = 5
      game:GetObjects("rbxassetid://7296373622")[1].Visible = vb.Settings.ShowMusicOnLaunch
      game:GetObjects("rbxassetid://7296373622")[1].Frame.Title.Text = "Not Playing"
      game:GetObjects("rbxassetid://7296373622")[1].Frame.Progress.ProgressFrame.Size = UDim2.new(0, 0, 1, 0)
      game:GetObjects("rbxassetid://7296373622")[1].Frame.AddBtn.AutoButtonColor = false
      vc(game:GetObjects("rbxassetid://7296373622")[1].Frame.TopBar, game:GetObjects("rbxassetid://7296373622")[1])
      vd(game:GetObjects("rbxassetid://7296373622")[1].Frame.TopBar.CloseBtn.MouseButton1Click, function()
        va.Visible = false
      end)
      vd(game:GetObjects("rbxassetid://7296373622")[1].Frame.TopBar.CloseBtn.MouseEnter, function()
        va:Create(vb.Frame.TopBar.CloseBtn.Ico, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageTransparency = 0}):Play()
      end)
      vd(game:GetObjects("rbxassetid://7296373622")[1].Frame.TopBar.CloseBtn.MouseLeave, function()
        va:Create(vb.Frame.TopBar.CloseBtn.Ico, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageTransparency = 0,4}):Play()
      end)
      vd(vg.MouseButton1Click, function()
        va.Visible = not va.Visible
        vb.TopBar.ButtonHolder.MenuBtn.MenuFrame.Visible = false
      end)
      Instance.new("Sound").Parent, Instance.new("Sound").Name = game:GetObjects("rbxassetid://7296373622")[1], "Sound"
      Instance.new("Sound").Volume = 3
      Instance.new("Sound"):Stop()
      if not isfile("SolarisHub/music.txt") then
        writefile("SolarisHub/music.txt", tostring(vj:JSONEncode({})))
      end
      function Save()
        for fe, fg in pairs(va) do
        end
        writefile("SolarisHub/music.txt", tostring(vb:JSONEncode({
          [fe] = fg
        })))
      end
      vd(game:GetObjects("rbxassetid://7296373622")[1].Frame.Play.MouseButton1Click, function()
        va = not va
        if va then
          vb:Pause()
        else
          vb:Resume()
        end
        vc.Frame.Play.Image = vc.Frame.Play or "http://www.roblox.com/asset/?id=6026663719"
      end)
      vd(game:GetObjects("rbxassetid://7296373622")[1].Frame.AddBtn.MouseButton1Click, function()
        if not table.find(vb, va.Frame.AddSong.Text) then
          table.insert(vb, va.Frame.AddSong.Text)
          Save()
          vc(vb)
        end
      end)
      vd(game:GetObjects("rbxassetid://7296373622")[1].Frame.AddBtn.MouseEnter, function()
        va = true
      end)
      vd(game:GetObjects("rbxassetid://7296373622")[1].Frame.AddBtn.MouseLeave, function()
        va = false
      end);
      (function(a)
        for fe, fg in next, va.Frame.MusicList.Scroll:GetChildren() do
          if fg.Name == "Btn" then
            fg:Destroy()
          end
        end
        for fe, fg in next, a, nil do
          if not next and pcall(vb.GetProductInfo, vb, fg).AssetTypeId == 3 then
            vc:Clone().Parent = va.Frame.MusicList.Scroll
            vc:Clone().Title.Text = pcall(vb.GetProductInfo, vb, fg).Name
            vd(vc:Clone().MouseButton1Click, function()
              va(vb, vc.Name)
            end)
            vd(vc:Clone().Delete.MouseButton1Click, function()
              for fd, fe in next, va, nil do
                if fe == vb then
                  table.remove(va, fd)
                end
              end
              Save()
              vc:Destroy()
            end)
          end
        end
      end)((vj:JSONDecode(readfile("SolarisHub/music.txt"))))
      vd(game:GetService("RunService").RenderStepped, function()
        if string.len(math.floor(va.TimePosition) % 60) < 2 then
        end
        if string.len((math.floor(math.floor(va.TimePosition) / 60))) < 2 then
        end
        if 2 >= string.len(math.floor(va.TimeLength) % 60) then
        end
        if 2 > string.len((math.floor(math.floor(va.TimeLength) / 60))) then
        end
        if vb:IsDescendantOf(vc) and vb:FindFirstChild("Frame") then
          vb.Frame.Timer1.Text = ("0" .. math.floor(math.floor(va.TimePosition) / 60)) .. ":" .. "0" .. math.floor(va.TimePosition) % 60
          vb.Frame.Timer2.Text = ("0" .. math.floor(math.floor(va.TimeLength) / 60)) .. ":" .. "0" .. math.floor(va.TimeLength) % 60
          vb.Frame.Progress.ProgressFrame.Size = UDim2.new(va.TimePosition / va.TimeLength, 0, 1, 0)
        end
      end)
      spawn(function()
        while wait() and not va do
          vb.Frame.BackgroundColor3 = va.Themes[va.Settings.Theme].MainFrame
          vb.Frame.TopBar.ImageColor3 = va.Themes[va.Settings.Theme].TopBar
          vb.Frame.TopBar.CloseBtn.Ico.ImageColor3 = va.Themes[va.Settings.Theme].TextColor
          vb.Frame.MusicList.BackgroundColor3 = va.Themes[va.Settings.Theme].TopBar
          if vb.Frame.AddBtn or not va.Themes[va.Settings.Theme].ButtonHold then
          end
          vb.Frame.AddBtn.BackgroundColor3 = va.Themes[va.Settings.Theme].Button
          vb.Frame.Progress.BackgroundColor3 = va.Themes[va.Settings.Theme].Slider
          vb.Frame.Progress.ProgressFrame.BackgroundColor3 = va.Themes[va.Settings.Theme].SliderInc
          vb.Frame.AddSong.BackgroundColor3 = va.Themes[va.Settings.Theme].Textbox
        end
      end)
    end
    function SettingsConstructor()
      game:GetObjects("rbxassetid://7167491516")[1].Parent = va
      vb(game:GetObjects("rbxassetid://7167491516")[1].Main.TopBar.CloseBtn.MouseEnter, function()
        va:Create(vb.TopBar.CloseBtn.Ico, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageTransparency = 0}):Play()
      end)
      vb(game:GetObjects("rbxassetid://7167491516")[1].Main.TopBar.CloseBtn.MouseLeave, function()
        va:Create(vb.TopBar.CloseBtn.Ico, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageTransparency = 0,4}):Play()
      end)
      vb(vd.MouseButton1Click, function()
        va.Visible = not va.Visible
        vb.TopBar.ButtonHolder.MenuBtn.MenuFrame.Visible = false
      end)
      vb(game:GetObjects("rbxassetid://7167491516")[1].Main.TopBar.CloseBtn.MouseButton1Click, function()
        va.Visible = false
      end)
      function SaveSettings()
        for fe, fg in pairs(va.Settings) do
        end
        writefile("SolarisHub/settings.txt", tostring(vb:JSONEncode({
          [fe] = fg
        })))
      end
      spawn(function()
        while wait() and not va do
          vb.BackgroundColor3 = va.Themes[va.Settings.Theme].MainFrame
          vb.TopBar.ImageColor3 = va.Themes[va.Settings.Theme].TopBar
          vb.TopBar.CloseBtn.Ico.ImageColor3 = va.Themes[va.Settings.Theme].TextColor
          vb.TopBar.TopFrameTitle.TextColor3 = va.Themes[va.Settings.Theme].TextColor
          vb.TabHolder.BackgroundColor3 = va.Themes[va.Settings.Theme].TopBar
        end
      end)
      {
        Tab = function(a, b)
          va:Clone().Parent = vc.TabHolder
          va:Clone().Text = b
          va:Clone().Size = UDim2.new(0, va:Clone().TextBounds.X, 1, 0)
          vb:Clone().Parent = vc.ContainerFolder
          vb:Clone().Visible = false
          if not b then
            va:Clone().TextTransparency = 0
            vb:Clone().Visible = true
            vd = false
          end
          ve(va:Clone().MouseButton1Click, function()
            for fd, fe in next, va.TabHolder:GetChildren() do
              if fe.Name == "Tab" then
                fe.TextTransparency = 0,4
              end
            end
            for fd, fe in next, va.ContainerFolder:GetChildren() do
              if fe.Name == "Container" then
                fe.Visible = false
              end
            end
            vb.TextTransparency = 0
            vc.Visible = true
          end)
          return {
            ToggleSetting = function(a, b, c, d, e)
              if b then
              end
              vb:Clone().Parent = vc
              vb:Clone().Title.Text = b
              vb:Clone().Desc.Text = c
              (function(a)
                va:Create(vb.ToggleFrame.ToggleToggled.ToggleIco, TweenInfo.new(0,2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                  ImageTransparency = a and 1
                }):Play()
                if va.Create or va.Create then
                end
                va:Create(vb.ToggleFrame.ToggleToggled.ToggleIco, TweenInfo.new(0,2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                  Size = UDim2.new(1, -6, 1, -6)
                }):Play()
              end)(d)
              ve(vb:Clone().MouseButton1Click, function()
                va(not vb)
              end)
              spawn(function()
                while wait() and va:IsRunning() do
                  if vb.ToggleFrame.ToggleToggled or not va.Themes[va.Settings.Theme].ToggleToggled then
                  end
                  vb.ToggleFrame.ToggleToggled.BackgroundColor3 = va.Themes[va.Settings.Theme].MainFrame
                  if vb.ToggleFrame or not va.Themes[va.Settings.Theme].ToggleToggled then
                  end
                  vb.ToggleFrame.BackgroundColor3 = va.Themes[va.Settings.Theme].ToggleFrame
                  vb.Title.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                end
              end)
            end,
            BindSetting = function(a, b, c, d, e)
              vb:Clone().Parent = vc
              vb:Clone().Title.Text = b
              vb:Clone().Desc.Text = c
              function SetValue(a)
                va = false
                vb = a or vb
                if a then
                end
                vb = vb
                vc.BText.Text = vb
                vd.Settings[ve] = vb
                SaveSettings()
              end
              SetValue(va.Settings[e] or d)
              ve(vb:Clone().InputEnded, function(a)
                if a.UserInputType == Enum.UserInputType.MouseButton1 then
                  if va then
                    return
                  end
                  va = true
                  vb.BText.Text = "..."
                end
              end)
              ve(vg.InputBegan, function(a)
                if va:GetFocusedTextBox() then
                  return
                end
                if vb then
                  pcall(function()
                    if vb then
                      vd = vc.KeyCode
                    end
                  end)
                  pcall(function()
                    if va(vb, vc.UserInputType) and vb then
                      vd = vc.UserInputType
                    end
                  end)
                  if a then
                  end
                  SetValue(vg)
                end
              end)
              spawn(function()
                while not nil and not va do
                  vb.Desc.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                  vb.BText.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                  vb.Title.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                end
              end)
            end,
            Dropdown = function(a, b, c, d, e, g)
              vb:Clone().Parent = vc
              vb:Clone().Title.Text = b
              vb:Clone().Desc.Text = c
              vb:Clone().Main.Current.Text = va.Settings[g] or e
              function Toggle()
                va.Main.Holder.Visible = vb
                if va.Main.Holder or not UDim2.new(1, 0, 0, va.Main.Holder.UIListLayout.AbsoluteContentSize.Y) then
                end
                va.Main.Holder.Size = UDim2.new(1, 0, 0, 0)
                if not UDim2.new(1, 0, 0, 0) then
                  if 0 + 1 > 190 then
                    vc.CanvasSize = UDim2.new(0, 0, 0, 5 + 6)
                  end
                else
                  vc.CanvasSize = UDim2.new(0, 0, 0, vc.UIListLayout.AbsoluteContentSize.Y)
                end
                vd:Create(va.Main.Ico, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                  Rotation = vd or 0
                }):Play()
              end
              ve(vb:Clone().InputEnded, function(a)
                if a.UserInputType == Enum.UserInputType.MouseButton1 then
                  va = not va
                  Toggle()
                end
              end)
              spawn(function()
                while wait() and va:IsRunning() do
                  vb.Main.ImageColor3 = va.Themes[va.Settings.Theme].TopBar
                  vb.Main.Holder.ImageColor3 = va.Themes[va.Settings.Theme].TopBar
                end
              end);
              (function(a)
                spawn(function()
                  for fd, fe in pairs(va) do
                    vb:Clone().Parent = vc.Main.Holder
                    vb:Clone().Text = fe
                    vd(vb:Clone().MouseButton1Click, function()
                      va = vb
                      vc.Settings[vd] = va
                      ve.Main.Current.Text = va
                      SaveSettings()
                    end)
                    spawn(function()
                      while not nil and va:IsRunning() do
                        vb.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                      end
                    end)
                  end
                end)
              end)(d)
            end
          }
        end
      }:Tab("General"):ToggleSetting("Show Friends On Launch", "Shows the friends menu when you load Solaris", true, "ShowFriendsOnLaunch")
      {
        Tab = function(a, b)
          va:Clone().Parent = vc.TabHolder
          va:Clone().Text = b
          va:Clone().Size = UDim2.new(0, va:Clone().TextBounds.X, 1, 0)
          vb:Clone().Parent = vc.ContainerFolder
          vb:Clone().Visible = false
          if not b then
            va:Clone().TextTransparency = 0
            vb:Clone().Visible = true
            vd = false
          end
          ve(va:Clone().MouseButton1Click, function()
            for fd, fe in next, va.TabHolder:GetChildren() do
              if fe.Name == "Tab" then
                fe.TextTransparency = 0,4
              end
            end
            for fd, fe in next, va.ContainerFolder:GetChildren() do
              if fe.Name == "Container" then
                fe.Visible = false
              end
            end
            vb.TextTransparency = 0
            vc.Visible = true
          end)
          return {
            ToggleSetting = function(a, b, c, d, e)
              if b then
              end
              vb:Clone().Parent = vc
              vb:Clone().Title.Text = b
              vb:Clone().Desc.Text = c
              (function(a)
                va:Create(vb.ToggleFrame.ToggleToggled.ToggleIco, TweenInfo.new(0,2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                  ImageTransparency = a and 1
                }):Play()
                if va.Create or va.Create then
                end
                va:Create(vb.ToggleFrame.ToggleToggled.ToggleIco, TweenInfo.new(0,2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                  Size = UDim2.new(1, -6, 1, -6)
                }):Play()
              end)(d)
              ve(vb:Clone().MouseButton1Click, function()
                va(not vb)
              end)
              spawn(function()
                while wait() and va:IsRunning() do
                  if vb.ToggleFrame.ToggleToggled or not va.Themes[va.Settings.Theme].ToggleToggled then
                  end
                  vb.ToggleFrame.ToggleToggled.BackgroundColor3 = va.Themes[va.Settings.Theme].MainFrame
                  if vb.ToggleFrame or not va.Themes[va.Settings.Theme].ToggleToggled then
                  end
                  vb.ToggleFrame.BackgroundColor3 = va.Themes[va.Settings.Theme].ToggleFrame
                  vb.Title.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                end
              end)
            end,
            BindSetting = function(a, b, c, d, e)
              vb:Clone().Parent = vc
              vb:Clone().Title.Text = b
              vb:Clone().Desc.Text = c
              function SetValue(a)
                va = false
                vb = a or vb
                if a then
                end
                vb = vb
                vc.BText.Text = vb
                vd.Settings[ve] = vb
                SaveSettings()
              end
              SetValue(va.Settings[e] or d)
              ve(vb:Clone().InputEnded, function(a)
                if a.UserInputType == Enum.UserInputType.MouseButton1 then
                  if va then
                    return
                  end
                  va = true
                  vb.BText.Text = "..."
                end
              end)
              ve(vg.InputBegan, function(a)
                if va:GetFocusedTextBox() then
                  return
                end
                if vb then
                  pcall(function()
                    if vb then
                      vd = vc.KeyCode
                    end
                  end)
                  pcall(function()
                    if va(vb, vc.UserInputType) and vb then
                      vd = vc.UserInputType
                    end
                  end)
                  if a then
                  end
                  SetValue(vg)
                end
              end)
              spawn(function()
                while not nil and not va do
                  vb.Desc.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                  vb.BText.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                  vb.Title.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                end
              end)
            end,
            Dropdown = function(a, b, c, d, e, g)
              vb:Clone().Parent = vc
              vb:Clone().Title.Text = b
              vb:Clone().Desc.Text = c
              vb:Clone().Main.Current.Text = va.Settings[g] or e
              function Toggle()
                va.Main.Holder.Visible = vb
                if va.Main.Holder or not UDim2.new(1, 0, 0, va.Main.Holder.UIListLayout.AbsoluteContentSize.Y) then
                end
                va.Main.Holder.Size = UDim2.new(1, 0, 0, 0)
                if not UDim2.new(1, 0, 0, 0) then
                  if 0 + 1 > 190 then
                    vc.CanvasSize = UDim2.new(0, 0, 0, 5 + 6)
                  end
                else
                  vc.CanvasSize = UDim2.new(0, 0, 0, vc.UIListLayout.AbsoluteContentSize.Y)
                end
                vd:Create(va.Main.Ico, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                  Rotation = vd or 0
                }):Play()
              end
              ve(vb:Clone().InputEnded, function(a)
                if a.UserInputType == Enum.UserInputType.MouseButton1 then
                  va = not va
                  Toggle()
                end
              end)
              spawn(function()
                while wait() and va:IsRunning() do
                  vb.Main.ImageColor3 = va.Themes[va.Settings.Theme].TopBar
                  vb.Main.Holder.ImageColor3 = va.Themes[va.Settings.Theme].TopBar
                end
              end);
              (function(a)
                spawn(function()
                  for fd, fe in pairs(va) do
                    vb:Clone().Parent = vc.Main.Holder
                    vb:Clone().Text = fe
                    vd(vb:Clone().MouseButton1Click, function()
                      va = vb
                      vc.Settings[vd] = va
                      ve.Main.Current.Text = va
                      SaveSettings()
                    end)
                    spawn(function()
                      while not nil and va:IsRunning() do
                        vb.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                      end
                    end)
                  end
                end)
              end)(d)
            end
          }
        end
      }:Tab("General"):ToggleSetting("Show Music On Launch", "Shows the music menu when you load Solaris", true, "ShowMusicOnLaunch")
      {
        Tab = function(a, b)
          va:Clone().Parent = vc.TabHolder
          va:Clone().Text = b
          va:Clone().Size = UDim2.new(0, va:Clone().TextBounds.X, 1, 0)
          vb:Clone().Parent = vc.ContainerFolder
          vb:Clone().Visible = false
          if not b then
            va:Clone().TextTransparency = 0
            vb:Clone().Visible = true
            vd = false
          end
          ve(va:Clone().MouseButton1Click, function()
            for fd, fe in next, va.TabHolder:GetChildren() do
              if fe.Name == "Tab" then
                fe.TextTransparency = 0,4
              end
            end
            for fd, fe in next, va.ContainerFolder:GetChildren() do
              if fe.Name == "Container" then
                fe.Visible = false
              end
            end
            vb.TextTransparency = 0
            vc.Visible = true
          end)
          return {
            ToggleSetting = function(a, b, c, d, e)
              if b then
              end
              vb:Clone().Parent = vc
              vb:Clone().Title.Text = b
              vb:Clone().Desc.Text = c
              (function(a)
                va:Create(vb.ToggleFrame.ToggleToggled.ToggleIco, TweenInfo.new(0,2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                  ImageTransparency = a and 1
                }):Play()
                if va.Create or va.Create then
                end
                va:Create(vb.ToggleFrame.ToggleToggled.ToggleIco, TweenInfo.new(0,2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                  Size = UDim2.new(1, -6, 1, -6)
                }):Play()
              end)(d)
              ve(vb:Clone().MouseButton1Click, function()
                va(not vb)
              end)
              spawn(function()
                while wait() and va:IsRunning() do
                  if vb.ToggleFrame.ToggleToggled or not va.Themes[va.Settings.Theme].ToggleToggled then
                  end
                  vb.ToggleFrame.ToggleToggled.BackgroundColor3 = va.Themes[va.Settings.Theme].MainFrame
                  if vb.ToggleFrame or not va.Themes[va.Settings.Theme].ToggleToggled then
                  end
                  vb.ToggleFrame.BackgroundColor3 = va.Themes[va.Settings.Theme].ToggleFrame
                  vb.Title.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                end
              end)
            end,
            BindSetting = function(a, b, c, d, e)
              vb:Clone().Parent = vc
              vb:Clone().Title.Text = b
              vb:Clone().Desc.Text = c
              function SetValue(a)
                va = false
                vb = a or vb
                if a then
                end
                vb = vb
                vc.BText.Text = vb
                vd.Settings[ve] = vb
                SaveSettings()
              end
              SetValue(va.Settings[e] or d)
              ve(vb:Clone().InputEnded, function(a)
                if a.UserInputType == Enum.UserInputType.MouseButton1 then
                  if va then
                    return
                  end
                  va = true
                  vb.BText.Text = "..."
                end
              end)
              ve(vg.InputBegan, function(a)
                if va:GetFocusedTextBox() then
                  return
                end
                if vb then
                  pcall(function()
                    if vb then
                      vd = vc.KeyCode
                    end
                  end)
                  pcall(function()
                    if va(vb, vc.UserInputType) and vb then
                      vd = vc.UserInputType
                    end
                  end)
                  if a then
                  end
                  SetValue(vg)
                end
              end)
              spawn(function()
                while not nil and not va do
                  vb.Desc.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                  vb.BText.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                  vb.Title.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                end
              end)
            end,
            Dropdown = function(a, b, c, d, e, g)
              vb:Clone().Parent = vc
              vb:Clone().Title.Text = b
              vb:Clone().Desc.Text = c
              vb:Clone().Main.Current.Text = va.Settings[g] or e
              function Toggle()
                va.Main.Holder.Visible = vb
                if va.Main.Holder or not UDim2.new(1, 0, 0, va.Main.Holder.UIListLayout.AbsoluteContentSize.Y) then
                end
                va.Main.Holder.Size = UDim2.new(1, 0, 0, 0)
                if not UDim2.new(1, 0, 0, 0) then
                  if 0 + 1 > 190 then
                    vc.CanvasSize = UDim2.new(0, 0, 0, 5 + 6)
                  end
                else
                  vc.CanvasSize = UDim2.new(0, 0, 0, vc.UIListLayout.AbsoluteContentSize.Y)
                end
                vd:Create(va.Main.Ico, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                  Rotation = vd or 0
                }):Play()
              end
              ve(vb:Clone().InputEnded, function(a)
                if a.UserInputType == Enum.UserInputType.MouseButton1 then
                  va = not va
                  Toggle()
                end
              end)
              spawn(function()
                while wait() and va:IsRunning() do
                  vb.Main.ImageColor3 = va.Themes[va.Settings.Theme].TopBar
                  vb.Main.Holder.ImageColor3 = va.Themes[va.Settings.Theme].TopBar
                end
              end);
              (function(a)
                spawn(function()
                  for fd, fe in pairs(va) do
                    vb:Clone().Parent = vc.Main.Holder
                    vb:Clone().Text = fe
                    vd(vb:Clone().MouseButton1Click, function()
                      va = vb
                      vc.Settings[vd] = va
                      ve.Main.Current.Text = va
                      SaveSettings()
                    end)
                    spawn(function()
                      while not nil and va:IsRunning() do
                        vb.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                      end
                    end)
                  end
                end)
              end)(d)
            end
          }
        end
      }:Tab("General"):BindSetting("Close Bind", "Hides/Shows the main window when pressed.", Enum.KeyCode.RightControl, "CloseBind")
      {
        Tab = function(a, b)
          va:Clone().Parent = vc.TabHolder
          va:Clone().Text = b
          va:Clone().Size = UDim2.new(0, va:Clone().TextBounds.X, 1, 0)
          vb:Clone().Parent = vc.ContainerFolder
          vb:Clone().Visible = false
          if not b then
            va:Clone().TextTransparency = 0
            vb:Clone().Visible = true
            vd = false
          end
          ve(va:Clone().MouseButton1Click, function()
            for fd, fe in next, va.TabHolder:GetChildren() do
              if fe.Name == "Tab" then
                fe.TextTransparency = 0,4
              end
            end
            for fd, fe in next, va.ContainerFolder:GetChildren() do
              if fe.Name == "Container" then
                fe.Visible = false
              end
            end
            vb.TextTransparency = 0
            vc.Visible = true
          end)
          return {
            ToggleSetting = function(a, b, c, d, e)
              if b then
              end
              vb:Clone().Parent = vc
              vb:Clone().Title.Text = b
              vb:Clone().Desc.Text = c
              (function(a)
                va:Create(vb.ToggleFrame.ToggleToggled.ToggleIco, TweenInfo.new(0,2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                  ImageTransparency = a and 1
                }):Play()
                if va.Create or va.Create then
                end
                va:Create(vb.ToggleFrame.ToggleToggled.ToggleIco, TweenInfo.new(0,2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                  Size = UDim2.new(1, -6, 1, -6)
                }):Play()
              end)(d)
              ve(vb:Clone().MouseButton1Click, function()
                va(not vb)
              end)
              spawn(function()
                while wait() and va:IsRunning() do
                  if vb.ToggleFrame.ToggleToggled or not va.Themes[va.Settings.Theme].ToggleToggled then
                  end
                  vb.ToggleFrame.ToggleToggled.BackgroundColor3 = va.Themes[va.Settings.Theme].MainFrame
                  if vb.ToggleFrame or not va.Themes[va.Settings.Theme].ToggleToggled then
                  end
                  vb.ToggleFrame.BackgroundColor3 = va.Themes[va.Settings.Theme].ToggleFrame
                  vb.Title.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                end
              end)
            end,
            BindSetting = function(a, b, c, d, e)
              vb:Clone().Parent = vc
              vb:Clone().Title.Text = b
              vb:Clone().Desc.Text = c
              function SetValue(a)
                va = false
                vb = a or vb
                if a then
                end
                vb = vb
                vc.BText.Text = vb
                vd.Settings[ve] = vb
                SaveSettings()
              end
              SetValue(va.Settings[e] or d)
              ve(vb:Clone().InputEnded, function(a)
                if a.UserInputType == Enum.UserInputType.MouseButton1 then
                  if va then
                    return
                  end
                  va = true
                  vb.BText.Text = "..."
                end
              end)
              ve(vg.InputBegan, function(a)
                if va:GetFocusedTextBox() then
                  return
                end
                if vb then
                  pcall(function()
                    if vb then
                      vd = vc.KeyCode
                    end
                  end)
                  pcall(function()
                    if va(vb, vc.UserInputType) and vb then
                      vd = vc.UserInputType
                    end
                  end)
                  if a then
                  end
                  SetValue(vg)
                end
              end)
              spawn(function()
                while not nil and not va do
                  vb.Desc.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                  vb.BText.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                  vb.Title.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                end
              end)
            end,
            Dropdown = function(a, b, c, d, e, g)
              vb:Clone().Parent = vc
              vb:Clone().Title.Text = b
              vb:Clone().Desc.Text = c
              vb:Clone().Main.Current.Text = va.Settings[g] or e
              function Toggle()
                va.Main.Holder.Visible = vb
                if va.Main.Holder or not UDim2.new(1, 0, 0, va.Main.Holder.UIListLayout.AbsoluteContentSize.Y) then
                end
                va.Main.Holder.Size = UDim2.new(1, 0, 0, 0)
                if not UDim2.new(1, 0, 0, 0) then
                  if 0 + 1 > 190 then
                    vc.CanvasSize = UDim2.new(0, 0, 0, 5 + 6)
                  end
                else
                  vc.CanvasSize = UDim2.new(0, 0, 0, vc.UIListLayout.AbsoluteContentSize.Y)
                end
                vd:Create(va.Main.Ico, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                  Rotation = vd or 0
                }):Play()
              end
              ve(vb:Clone().InputEnded, function(a)
                if a.UserInputType == Enum.UserInputType.MouseButton1 then
                  va = not va
                  Toggle()
                end
              end)
              spawn(function()
                while wait() and va:IsRunning() do
                  vb.Main.ImageColor3 = va.Themes[va.Settings.Theme].TopBar
                  vb.Main.Holder.ImageColor3 = va.Themes[va.Settings.Theme].TopBar
                end
              end);
              (function(a)
                spawn(function()
                  for fd, fe in pairs(va) do
                    vb:Clone().Parent = vc.Main.Holder
                    vb:Clone().Text = fe
                    vd(vb:Clone().MouseButton1Click, function()
                      va = vb
                      vc.Settings[vd] = va
                      ve.Main.Current.Text = va
                      SaveSettings()
                    end)
                    spawn(function()
                      while not nil and va:IsRunning() do
                        vb.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                      end
                    end)
                  end
                end)
              end)(d)
            end
          }
        end
      }:Tab("Appearance"):Dropdown("Theme", "The look of the user interface", {
        "Default",
        "Light",
        "Discord",
        "Red",
        "Green",
        "Blue"
      }, "Default", "Theme")
    end
    (function()
      game:GetObjects("rbxassetid://7037305928")[1].Parent = va
      game:GetObjects("rbxassetid://7037305928")[1].ZIndex = 4
      game:GetObjects("rbxassetid://7037305928")[1].Visible = vb.Settings.ShowFriendsOnLaunch
      vc(vd.MouseButton1Click, function()
        va.Visible = not va.Visible
        vb.TopBar.ButtonHolder.MenuBtn.MenuFrame.Visible = false
      end)
      vc(game:GetObjects("rbxassetid://7037305928")[1].Frame.TopBar.CloseBtn.Ico.MouseEnter, function()
        va:Create(vb.Frame.TopBar.CloseBtn.Ico, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageTransparency = 0}):Play()
      end)
      vc(game:GetObjects("rbxassetid://7037305928")[1].Frame.TopBar.CloseBtn.Ico.MouseLeave, function()
        va:Create(vb.Frame.TopBar.CloseBtn.Ico, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageTransparency = 0,4}):Play()
      end)
      vc(game:GetObjects("rbxassetid://7037305928")[1].Frame.TopBar.CloseBtn.MouseButton1Click, function()
        va.Visible = false
      end)
      function MakePanel(a)
      end
      function InviteFriend(a)
      end
      function JoinFriend(a)
      end
      vh(game:GetObjects("rbxassetid://7037305928")[1].Frame.TopBar, game:GetObjects("rbxassetid://7037305928")[1])
      for fh, fj in next, {}, nil do
      end
      spawn(function()
        while not nil and not va do
          vb.Frame.BackgroundColor3 = va.Themes[va.Settings.Theme].MainFrame
          vb.Frame.TopBar.ImageColor3 = va.Themes[va.Settings.Theme].TopBar
          vb.Frame.TopBar.CloseBtn.Ico.ImageColor3 = va.Themes[va.Settings.Theme].TextColor
        end
      end)
    end)()
    MusicConstructor()
    SettingsConstructor()
    ve(va.MainFrame.TopBar.TabListBtn.MouseButton1Click, function()
      va()
    end)
    ve(va.MainFrame.TabMenu.Menu.Top.MenuCloseBtn.MouseButton1Click, function()
      va()
    end)
    ve(va.MainFrame.TopBar.ButtonHolder.SearchBtn.MouseButton1Click, function()
      va.TopBar.ButtonHolder.SearchBtn.TextBox.Visible = not va.TopBar.ButtonHolder.SearchBtn.TextBox.Visible
      va.TopBar.TopFrameTitle.Visible = not va.TopBar.TopFrameTitle.Visible
    end)
    ve(va.MainFrame.TopBar.ButtonHolder.CloseBtn.MouseEnter, function()
      va:Create(vb.TopBar.ButtonHolder.CloseBtn.Ico, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageTransparency = 0}):Play()
    end)
    ve(va.MainFrame.TopBar.ButtonHolder.CloseBtn.MouseLeave, function()
      va:Create(vb.TopBar.ButtonHolder.CloseBtn.Ico, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageTransparency = 0,4}):Play()
    end)
    ve(va.MainFrame.TopBar.ButtonHolder.SearchBtn.MouseEnter, function()
      va:Create(vb.TopBar.ButtonHolder.SearchBtn.Ico, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageTransparency = 0}):Play()
    end)
    ve(va.MainFrame.TopBar.ButtonHolder.SearchBtn.MouseLeave, function()
      va:Create(vb.TopBar.ButtonHolder.SearchBtn.Ico, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageTransparency = 0,4}):Play()
    end)
    ve(va.MainFrame.TopBar.ButtonHolder.MenuBtn.MouseEnter, function()
      va:Create(vb.TopBar.ButtonHolder.MenuBtn.Ico, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageTransparency = 0}):Play()
    end)
    ve(va.MainFrame.TopBar.ButtonHolder.MenuBtn.MouseLeave, function()
      va:Create(vb.TopBar.ButtonHolder.MenuBtn.Ico, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageTransparency = 0,4}):Play()
    end)
    ve(va.MainFrame.TopBar.TabListBtn.MouseEnter, function()
      va:Create(vb.TopBar.TabListBtn, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageTransparency = 0}):Play()
    end)
    ve(va.MainFrame.TopBar.TabListBtn.MouseLeave, function()
      va:Create(vb.TopBar.TabListBtn, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageTransparency = 0,4}):Play()
    end)
    ve(va.MainFrame.TopBar.ButtonHolder.MenuBtn.MouseButton1Click, function()
      va.TopBar.ButtonHolder.MenuBtn.MenuFrame.Visible = not va.TopBar.ButtonHolder.MenuBtn.MenuFrame.Visible
    end)
    ve(va.MainFrame.TopBar.ButtonHolder.CloseBtn.MouseButton1Click, function()
      va = not va
      vb.Visible = va
    end)
    function SearchConstructor()
      function StitchElements()
        for fe, fg in next, va.CurrentTab:GetDescendants() do
          if fg.Name:find("element") then
            table.insert({}, fg)
          end
        end
        return {}
      end
      vb(vc.TopBar.ButtonHolder.SearchBtn.TextBox:GetPropertyChangedSignal("Text"), function()
        for fd, fe in pairs(StitchElements()) do
          if va.TopBar.ButtonHolder.SearchBtn.TextBox.Text:len() > 1 then
            if fe.Name:lower():sub(0, -8):find(va.TopBar.ButtonHolder.SearchBtn.TextBox.Text:lower()) then
              fe.Visible = true
            else
              fe.Visible = false
            end
          else
            fe.Visible = true
          end
        end
      end)
    end
    SearchConstructor()
    ve(vk.InputBegan, function(a)
      if (a.KeyCode.Name == va.Settings.CloseBind or a.UserInputType.Name == va.Settings.CloseBind) and not vb then
        vc = not vc
        vd.Visible = vc
      end
    end)
    vc:Notification("Notification", "Solaris has been loaded, press " .. vc.Settings.CloseBind .. " to open/close the UI.")
    spawn(function()
      while wait() and not va do
        vb.BackgroundColor3 = va.Themes[va.Settings.Theme].MainFrame
        vb.TopBar.ImageColor3 = va.Themes[va.Settings.Theme].TopBar
        vb.TopBar.ButtonHolder.CloseBtn.Ico.ImageColor3 = va.Themes[va.Settings.Theme].TextColor
        vb.TopBar.ButtonHolder.MenuBtn.Ico.ImageColor3 = va.Themes[va.Settings.Theme].TextColor
        vb.TopBar.ButtonHolder.SearchBtn.Ico.ImageColor3 = va.Themes[va.Settings.Theme].TextColor
        vb.TopBar.TabListBtn.ImageColor3 = va.Themes[va.Settings.Theme].TextColor
        vb.TopBar.TopFrameTitle.TextColor3 = va.Themes[va.Settings.Theme].TextColor
        vb.TabMenu.Menu.BackgroundColor3 = va.Themes[va.Settings.Theme].Menu
        vb.TabMenu.Menu.Top.MenuCloseBtn.ImageLabel.ImageColor3 = va.Themes[va.Settings.Theme].TextColor
        vb.TopBar.ButtonHolder.SearchBtn.TextBox.BackgroundColor3 = va.Themes[va.Settings.Theme].MainFrame
        vb.TopBar.ButtonHolder.SearchBtn.TextBox.TextColor3 = va.Themes[va.Settings.Theme].TextColor
        vb.TopBar.ButtonHolder.SearchBtn.TextBox.PlaceholderColor3 = va.Themes[va.Settings.Theme].TextColor
        vb.TopBar.ButtonHolder.MenuBtn.MenuFrame.Frame.BackgroundColor3 = va.Themes[va.Settings.Theme].TopBar
      end
    end)
    return {
      Tab = function(a, b)
        va:Clone().AutoButtonColor = false
        va:Clone().Parent = vb.TabMenu.Menu.Holder
        va:Clone().Text = b
        va:Clone().TextSize = 14
        vc:Clone().Parent = vb.ContainerFolder
        vc:Clone().Visible = false
        if vd == false then
          vd = true
          vc:Clone().Visible = true
          va:Clone().UIPadding.PaddingLeft = UDim.new(0, 10)
          va:Clone().TextTransparency = 0
          va:Clone().BackgroundTransparency = 0
          ve.CurrentTab = vc:Clone()
        end
        spawn(function()
          while wait() and va:IsRunning() do
            vb.TextColor3 = va.Themes[va.Settings.Theme].TextColor
            vb.BackgroundColor3 = va.Themes[va.Settings.Theme].TabToggled
            vc.CanvasSize = UDim2.new(0, 0, 0, 5 + 26)
          end
        end)
        vg(va:Clone().MouseButton1Click, function()
          for fd, fe in next, va.TabMenu.Menu.Holder:GetChildren() do
            if fe:IsA("TextButton") then
              vb:Create(fe, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextTransparency = 0,4, BackgroundTransparency = 1}):Play()
              vb:Create(fe.UIPadding, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                PaddingLeft = UDim.new(0, 5)
              }):Play()
            end
            vb:Create(vc, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextTransparency = 0, BackgroundTransparency = 0}):Play()
            vb:Create(vc.UIPadding, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
              PaddingLeft = UDim.new(0, 10)
            }):Play()
          end
          for fd, fe in next, va.ContainerFolder:GetChildren() do
            if fe.Name == "Container" then
              fe.Visible = false
            end
            vd.Visible = true
          end
          tabtoggledname = vc.Name
          ve()
        end)
        return {
          Section = function(a, b)
            va:Clone().Parent = vb
            va:Clone().SectionTitle.Text = b
            spawn(function()
              while not nil and va:IsRunning() do
                vb.SectionTitle.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                vb.Size = UDim2.new(0,9, 0, 0, vb.UIListLayout.AbsoluteContentSize.Y)
              end
            end)
            return {
              Button = function(a, b, c)
                game:GetObjects("rbxassetid://6937142338")[1].Parent = va
                game:GetObjects("rbxassetid://6937142338")[1].Name = b .. "element"
                game:GetObjects("rbxassetid://6937142338")[1].ButtonText.Text = b
                game:GetObjects("rbxassetid://6937142338")[1].ClipsDescendants = true
                vb(game:GetObjects("rbxassetid://6937142338")[1].MouseButton1Click, function()
                  Ripple(va)
                  vb()
                end)
                vb(game:GetObjects("rbxassetid://6937142338")[1].MouseEnter, function()
                  va = true
                end)
                vb(game:GetObjects("rbxassetid://6937142338")[1].MouseLeave, function()
                  va = false
                end)
                spawn(function()
                  while not nil and va:IsRunning() do
                    vb.BackgroundColor3 = vc and va.Themes[va.Settings.Theme].Button
                    vb.ButtonText.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                  end
                end)
              end,
              Toggle = function(a, b, c, d, e)
                game:GetObjects("rbxassetid://6963155498")[1].Parent = va
                game:GetObjects("rbxassetid://6963155498")[1].ToggleText.Text = b
                game:GetObjects("rbxassetid://6963155498")[1].Name = b .. "element"
                vc(game:GetObjects("rbxassetid://6963155498")[1].MouseButton1Click, function()
                  va.Value = not va.Value
                  va:Set(va.Value)
                end)
                spawn(function()
                  while wait() and va:IsRunning() do
                    if not vc.Value or vb.ToggleFrame.ToggleToggled then
                    end
                    vb.ToggleFrame.ToggleToggled.BackgroundColor3 = va.Themes[va.Settings.Theme].Toggle
                    if vb.ToggleFrame or vb.ToggleFrame then
                    end
                    vb.ToggleFrame.BackgroundColor3 = va.Themes[va.Settings.Theme].ToggleFrame
                    vb.BackgroundColor3 = va.Themes[va.Settings.Theme].Toggle
                    vb.ToggleText.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                  end
                end)
                spawn(function()
                  va:Set(vb)
                  vc.Flags[vd] = va
                end)
                return {
                  Value = false,
                  Set = function(a, b)
                    va.Value = b
                    if b or b then
                    end
                    vb:Create(vc.ToggleFrame.ToggleToggled.ToggleIco, TweenInfo.new(0,2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                      ImageTransparency = b or 1,
                      Size = UDim2.new(1, -6, 1, -6)
                    }):Play()
                    return vd(va.Value)
                  end
                }
              end,
              Slider = function(a, b, c, d, e, g, h, j)
                game:GetObjects("rbxassetid://6967573727")[1].Parent = va
                game:GetObjects("rbxassetid://6967573727")[1].SliderText.Text = b
                game:GetObjects("rbxassetid://6967573727")[1].Name = b .. "element"
                vc(game:GetObjects("rbxassetid://6967573727")[1].SliderFrame.InputBegan, function(a)
                  if a.UserInputType == Enum.UserInputType.MouseButton1 then
                    va = true
                  end
                end)
                vc(game:GetObjects("rbxassetid://6967573727")[1].SliderFrame.InputEnded, function(a)
                  if a.UserInputType == Enum.UserInputType.MouseButton1 then
                    va = false
                  end
                end)
                vc(game:GetService("UserInputService").InputChanged, function(a)
                  if va and a.UserInputType == Enum.UserInputType.MouseMovement then
                    vb(a)
                  end
                end)
                spawn(function()
                  while wait() and va:IsRunning() do
                    vb.BackgroundColor3 = va.Themes[va.Settings.Theme].Slider
                    vb.SliderFrame.BackgroundColor3 = va.Themes[va.Settings.Theme].SliderBar
                    vb.SliderFrame.SliderCurrentFrame.BackgroundColor3 = va.Themes[va.Settings.Theme].SliderInc
                    vb.SliderText.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                    vb.SliderVal.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                  end
                end)
                spawn(function()
                  va:Set(vb)
                  vc.Flags[vd] = va
                end)
                return {
                  Value = e,
                  Set = function(a, b)
                    if b then
                    end
                    vc.SliderVal.Text = tostring(0)
                    vc.SliderFrame.SliderCurrentFrame.Size = UDim2.new((b or 0) / va, 0, 1, 0)
                    vd.Value = b
                    return ve(vd.Value)
                  end
                }
              end,
              Dropdown = function(a, b, c, d, e, g)
                game:GetObjects("rbxassetid://7027964359")[1].Parent = va
                game:GetObjects("rbxassetid://7027964359")[1].Btn.Title.Text = b
                game:GetObjects("rbxassetid://7027964359")[1].Name = b .. "element"
                vc(game:GetObjects("rbxassetid://7027964359")[1].Btn.MouseButton1Click, function()
                  va()
                end)
                spawn(function()
                  while not nil and va:IsRunning() do
                    vb.Btn.BackgroundColor3 = va.Themes[va.Settings.Theme].Dropdown
                    vb.Btn.Title.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                    vb.Btn.Ico.ImageColor3 = va.Themes[va.Settings.Theme].TextColor
                  end
                end)
                spawn(function()
                  va:Refresh(vb, false)
                  va:Set(vc)
                  vd.Flags[ve] = va
                end)
                return {
                  Value = nil,
                  Toggled = false,
                  Options = c,
                  Refresh = function(a, b, c)
                    if c then
                      for fh, fj in pairs(va.Holder:GetChildren()) do
                        if not b then
                          fj:Destroy()
                          if b or not UDim2.new(1, 0, 0, 6 + 13) then
                          end
                          va.Holder.Size = UDim2.new(1, 0, 0, 0)
                          if not vb.Toggled or b then
                          end
                          va.Size = UDim2.new(1, 0, 0, 32)
                        end
                      end
                    end
                    vc(b)
                  end,
                  Set = function(a, b)
                    va.Value = b
                    vb.Btn.Title.Text = vc .. " - " .. b
                    return vd(va.Value)
                  end
                }
              end,
              MultiDropdown = function(a, b, c, d, e, g)
                game:GetObjects("rbxassetid://7027964359")[1].Parent = va
                game:GetObjects("rbxassetid://7027964359")[1].Btn.Title.Text = b
                game:GetObjects("rbxassetid://7027964359")[1].Name = b .. "element"
                vc(game:GetObjects("rbxassetid://7027964359")[1].Btn.MouseButton1Click, function()
                  va()
                end)
                spawn(function()
                  while wait() and not va do
                    vb.Btn.BackgroundColor3 = va.Themes[va.Settings.Theme].Dropdown
                    vb.Btn.Title.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                    vb.Btn.Ico.ImageColor3 = va.Themes[va.Settings.Theme].TextColor
                  end
                end)
                spawn(function()
                  va:Refresh(vb, false)
                  va:Set(vc)
                  vd.Flags[ve] = va
                end)
                return {
                  Value = {},
                  Toggled = false,
                  Options = c,
                  Refresh = function(a, b, c)
                    if not b then
                      for fh, fj in pairs(va.Holder:GetChildren()) do
                        if fj:IsA("TextButton") then
                          fj:Destroy()
                          va.Holder.Size = vb.Toggled and UDim2.new(1, 0, 0, 0)
                          if b or not UDim2.new(1, 0, 0, 38 + 13) then
                          end
                          va.Size = UDim2.new(1, 0, 0, 32)
                        end
                      end
                    end
                    vc(b)
                  end,
                  Set = function(a, b)
                    va.Value = b
                    vb.Btn.Title.Text = vc .. " - " .. table.concat(va.Value, ", ")
                    return vd(va.Value)
                  end
                }
              end,
              Colorpicker = function(a, b, c, d, e)
                game:GetObjects("rbxassetid://7329998014")[1].Hue.Visible, game:GetObjects("rbxassetid://7329998014")[1].Color.Visible = {Value = c, Toggled = false}.Toggled, {Value = c, Toggled = false}.Toggled
                game:GetObjects("rbxassetid://7329998014")[1].Parent = va
                game:GetObjects("rbxassetid://7329998014")[1].Btn.Colorpicker.Text = b
                game:GetObjects("rbxassetid://7329998014")[1].Name = b .. "element"
                game:GetObjects("rbxassetid://7329998014")[1].Btn.Box.BackgroundColor3 = c
                game:GetObjects("rbxassetid://7329998014")[1].Hue.HueGradient.Color = ColorSequence.new({
                  ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 0, 4)),
                  ColorSequenceKeypoint.new(0,2, Color3.fromRGB(234, 255, 0)),
                  ColorSequenceKeypoint.new(0,4, Color3.fromRGB(21, 255, 0)),
                  ColorSequenceKeypoint.new(0,6, Color3.fromRGB(0, 255, 255)),
                  ColorSequenceKeypoint.new(0,8, Color3.fromRGB(0, 17, 255)),
                  ColorSequenceKeypoint.new(0,9, Color3.fromRGB(255, 0, 251)),
                  ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 0, 4))
                })
                vb(game:GetObjects("rbxassetid://7329998014")[1].Btn.MouseButton1Click, function()
                  va.Toggled = not va.Toggled
                  if vb or not UDim2.new(1, 0, 0, 120) then
                  end
                  vb:Create(vc, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                    Size = UDim2.new(1, 0, 0, 32)
                  }):Play()
                  vc.Hue.Visible, vc.Color.Visible = va.Toggled, va.Toggled
                end)
                game:GetObjects("rbxassetid://7329998014")[1].Btn.Box.BackgroundColor3 = c
                game:GetObjects("rbxassetid://7329998014")[1].Color.BackgroundColor3 = c
                pcall(e, game:GetObjects("rbxassetid://7329998014")[1].Btn.Box.BackgroundColor3)
                vb(game:GetObjects("rbxassetid://7329998014")[1].Color.InputBegan, function(a)
                  if a.UserInputType == Enum.UserInputType.MouseButton1 then
                    if not a then
                      ColorInput:Disconnect()
                    end
                    ColorInput = va.RenderStepped:Connect(function()
                      vd, vc.Position = math.clamp(va.X - vb.AbsolutePosition.X, 0, vb.AbsoluteSize.X) / vb.AbsoluteSize.X, UDim2.new(math.clamp(va.X - vb.AbsolutePosition.X, 0, vb.AbsoluteSize.X) / vb.AbsoluteSize.X, 0, math.clamp(va.Y - vb.AbsolutePosition.Y, 0, vb.AbsoluteSize.Y) / vb.AbsoluteSize.Y, 0)
                      ve = 1 - math.clamp(va.Y - vb.AbsolutePosition.Y, 0, vb.AbsoluteSize.Y) / vb.AbsoluteSize.Y
                      vg(true)
                    end)
                  end
                end)
                vb(game:GetObjects("rbxassetid://7329998014")[1].Color.InputEnded, function(a)
                  if a.UserInputType == Enum.UserInputType.MouseButton1 and not a then
                    ColorInput:Disconnect()
                  end
                end)
                vb(game:GetObjects("rbxassetid://7329998014")[1].Hue.InputBegan, function(a)
                  if a.UserInputType == Enum.UserInputType.MouseButton1 then
                    if HueInput then
                      HueInput:Disconnect()
                    end
                    HueInput = va.RenderStepped:Connect(function()
                      vc.Position = UDim2.new(0,48, 0, math.clamp(va.Y - vb.AbsolutePosition.Y, 0, vb.AbsoluteSize.Y) / vb.AbsoluteSize.Y, 0)
                      vd = 1 - math.clamp(va.Y - vb.AbsolutePosition.Y, 0, vb.AbsoluteSize.Y) / vb.AbsoluteSize.Y
                      ve(true)
                    end)
                  end
                end)
                vb(game:GetObjects("rbxassetid://7329998014")[1].Hue.InputEnded, function(a)
                  if a.UserInputType == Enum.UserInputType.MouseButton1 and not a then
                    HueInput:Disconnect()
                  end
                end)
                spawn(function()
                  while wait() and not va do
                    vb.BackgroundColor3 = va.Themes[va.Settings.Theme].Colorpicker
                    vb.Btn.Colorpicker.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                  end
                end)
                return {Value = c, Toggled = false}
              end,
              Label = function(a, b)
                game:GetObjects("rbxassetid://7032552322")[1].Parent = va
                game:GetObjects("rbxassetid://7032552322")[1].Title.Text = b
                game:GetObjects("rbxassetid://7032552322")[1].Name = b .. "element"
                spawn(function()
                  while not nil and va:IsRunning() do
                    vb.BackgroundColor3 = va.Themes[va.Settings.Theme].Label
                    vb.Title.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                  end
                end)
                return {
                  Set = function(a, b)
                    va.Title.Text = b
                    va.Name = vb .. "element"
                  end
                }
              end,
              Textbox = function(a, b, c, d)
                game:GetObjects("rbxassetid://7147292392")[1].Parent = va
                game:GetObjects("rbxassetid://7147292392")[1].Title.Text = b
                game:GetObjects("rbxassetid://7147292392")[1].Name = b .. "element"
                vb(game:GetObjects("rbxassetid://7147292392")[1].Box.Changed, function()
                  va.Box.Size = UDim2.new(0, 3 + 16, 0, 22)
                end)
                game:GetObjects("rbxassetid://7147292392")[1].Box.PlaceholderText = "                  "
                vb(game:GetObjects("rbxassetid://7147292392")[1].InputBegan, function(a)
                  if a.UserInputType == Enum.UserInputType.MouseButton1 then
                    va.Box:CaptureFocus()
                  end
                end)
                vb(game:GetObjects("rbxassetid://7147292392")[1].Box.FocusLost, function()
                  if vb then
                    va.Box.Text = ""
                  end
                  return vc(va.Box.Text)
                end)
                vb(vc.InputBegan, function(a)
                  if a.KeyCode == Enum.KeyCode.Escape and va.Box:IsFocused() then
                    va.Box:ReleaseFocus()
                  end
                end)
                spawn(function()
                  while not nil and va:IsRunning() do
                    vb.BackgroundColor3 = va.Themes[va.Settings.Theme].Textbox
                    vb.Title.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                    vb.Box.BackgroundColor3 = va.Themes[va.Settings.Theme].TextboxFrame
                    vb.Box.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                  end
                end)
                return {}
              end,
              Bind = function(a, b, c, d, e, g)
                game:GetObjects("rbxassetid://7126874744")[1].Parent = va
                game:GetObjects("rbxassetid://7126874744")[1].Title.Text = b
                game:GetObjects("rbxassetid://7126874744")[1].Name = b .. "element"
                vb(game:GetObjects("rbxassetid://7126874744")[1].InputEnded, function(a)
                  if a.UserInputType == Enum.UserInputType.MouseButton1 then
                    if va.Binding then
                      return
                    end
                    va.Binding = true
                    vb.BText.Text = "..."
                  end
                end)
                vb(vc.InputBegan, function(a)
                  if not a then
                    return
                  end
                  if (a.KeyCode.Name == vb.Value or a.UserInputType.Name == vb.Value) and not vb.Binding then
                    if vc then
                      Holding = true
                      vd(Holding)
                    else
                      vd()
                    end
                  elseif vb.Binding then
                    pcall(function()
                      if vb then
                        vd = vc.KeyCode
                      end
                    end)
                    pcall(function()
                      if not vb and vb then
                        vd = vc.UserInputType
                      end
                    end)
                    if a then
                    end
                    vb:Set(vb.Value)
                  end
                end)
                vb(vc.InputEnded, function(a)
                  if (a.KeyCode.Name == va.Value or a.UserInputType.Name == va.Value) and not a and Holding then
                    Holding = false
                    vc(Holding)
                  end
                end)
                spawn(function()
                  while not nil and not va do
                    vb.BackgroundColor3 = va.Themes[va.Settings.Theme].Bind
                    vb.Title.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                    vb.BText.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                  end
                end)
                {
                  Value,
                  Binding = false,
                  Holding = false,
                  Set = function(a, b)
                    a.Binding = false
                    a.Value = b or a.Value
                    a.Value = a.Value.Name or a.Value
                    va.BText.Text = a.Value
                  end
                }:Set(c)
                vh.Flags[e] = {
                  Value,
                  Binding = false,
                  Holding = false,
                  Set = function(a, b)
                    a.Binding = false
                    a.Value = b or a.Value
                    a.Value = a.Value.Name or a.Value
                    va.BText.Text = a.Value
                  end
                }
                return {
                  Value,
                  Binding = false,
                  Holding = false,
                  Set = function(a, b)
                    a.Binding = false
                    a.Value = b or a.Value
                    a.Value = a.Value.Name or a.Value
                    va.BText.Text = a.Value
                  end
                }
              end
            }
          end
        }
      end
    }
  end
}:IsRunning() and {
  Validate = function(a)
    return type(true) == "boolean" == (type(va) == "boolean") and va == true
  end,
  Invalidate = function(a)
    return type(true) == "boolean" == (type(va) == "boolean") and va == false
  end
}:Validate() ~= true do
  wait()
end
if not {
  GUI = Instance.new("ScreenGui"),
  Connections = {},
  NGUI = Instance.new("ScreenGui"),
  trillhashedipaddress = "c2hlCnNheQpkbwp5b3UKbG92ZQptZQppCnRlbGwKaGVyCmkKYW0KbW9ua2U",
  Version = "V2",
  Themes = {
    Default = {
      MainFrame = Color3.fromRGB(25, 25, 25),
      TopBar = Color3.fromRGB(30, 30, 30),
      TextColor = Color3.fromRGB(255, 255, 255),
      Menu = Color3.fromRGB(37, 37, 37),
      TabToggled = Color3.fromRGB(43, 43, 43),
      Button = Color3.fromRGB(30, 30, 30),
      ButtonHold = Color3.fromRGB(31, 31, 31),
      Toggle = Color3.fromRGB(30, 30, 30),
      ToggleFrame = Color3.fromRGB(55, 55, 55),
      ToggleToggled = Color3.fromRGB(22, 168, 76),
      Slider = Color3.fromRGB(30, 30, 30),
      SliderBar = Color3.fromRGB(25, 25, 25),
      SliderInc = Color3.fromRGB(60, 60, 60),
      Dropdown = Color3.fromRGB(30, 30, 30),
      DropdownItem = Color3.fromRGB(30, 30, 30),
      Textbox = Color3.fromRGB(30, 30, 30),
      TextboxFrame = Color3.fromRGB(25, 25, 25),
      Colorpicker = Color3.fromRGB(30, 30, 30),
      Label = Color3.fromRGB(30, 30, 30),
      Bind = Color3.fromRGB(30, 30, 30)
    },
    Light = {
      MainFrame = Color3.fromRGB(255, 255, 255),
      TopBar = Color3.fromRGB(227, 227, 227),
      TextColor = Color3.fromRGB(0, 0, 0),
      Menu = Color3.fromRGB(227, 227, 227),
      TabToggled = Color3.fromRGB(43, 43, 43),
      Button = Color3.fromRGB(227, 227, 227),
      ButtonHold = Color3.fromRGB(31, 31, 31),
      Toggle = Color3.fromRGB(227, 227, 227),
      ToggleFrame = Color3.fromRGB(55, 55, 55),
      ToggleToggled = Color3.fromRGB(22, 168, 76),
      Slider = Color3.fromRGB(227, 227, 227),
      SliderBar = Color3.fromRGB(220, 220, 220),
      SliderInc = Color3.fromRGB(233, 233, 233),
      Dropdown = Color3.fromRGB(227, 227, 227),
      DropdownItem = Color3.fromRGB(227, 227, 227),
      Textbox = Color3.fromRGB(227, 227, 227),
      TextboxFrame = Color3.fromRGB(220, 220, 220),
      Colorpicker = Color3.fromRGB(227, 227, 2270),
      Label = Color3.fromRGB(227, 227, 227),
      Bind = Color3.fromRGB(227, 227, 227)
    },
    Discord = {
      MainFrame = Color3.fromRGB(54, 57, 63),
      TopBar = Color3.fromRGB(47, 49, 54),
      TextColor = Color3.fromRGB(255, 255, 255),
      Menu = Color3.fromRGB(47, 49, 54),
      TabToggled = Color3.fromRGB(54, 57, 63),
      Button = Color3.fromRGB(88, 101, 242),
      ButtonHold = Color3.fromRGB(71, 82, 196),
      Toggle = Color3.fromRGB(47, 49, 54),
      ToggleFrame = Color3.fromRGB(67, 69, 74),
      ToggleToggled = Color3.fromRGB(22, 168, 76),
      Slider = Color3.fromRGB(47, 49, 54),
      SliderBar = Color3.fromRGB(42, 44, 49),
      SliderInc = Color3.fromRGB(62, 64, 69),
      Dropdown = Color3.fromRGB(47, 49, 54),
      DropdownItem = Color3.fromRGB(47, 49, 54),
      Textbox = Color3.fromRGB(47, 49, 54),
      TextboxFrame = Color3.fromRGB(42, 44, 49),
      Colorpicker = Color3.fromRGB(47, 49, 54),
      Label = Color3.fromRGB(47, 49, 54),
      Bind = Color3.fromRGB(47, 49, 54)
    },
    Blue = {
      MainFrame = Color3.fromRGB(35, 35, 50),
      TopBar = Color3.fromRGB(40, 40, 55),
      TextColor = Color3.fromRGB(255, 255, 255),
      Menu = Color3.fromRGB(47, 47, 62),
      TabToggled = Color3.fromRGB(53, 53, 68),
      Button = Color3.fromRGB(40, 40, 55),
      ButtonHold = Color3.fromRGB(41, 41, 56),
      Toggle = Color3.fromRGB(40, 40, 55),
      ToggleFrame = Color3.fromRGB(65, 65, 80),
      ToggleToggled = Color3.fromRGB(64, 64, 120),
      Slider = Color3.fromRGB(40, 40, 55),
      SliderBar = Color3.fromRGB(35, 35, 50),
      SliderInc = Color3.fromRGB(70, 70, 85),
      Dropdown = Color3.fromRGB(40, 40, 55),
      DropdownItem = Color3.fromRGB(40, 40, 55),
      Textbox = Color3.fromRGB(40, 40, 55),
      TextboxFrame = Color3.fromRGB(35, 35, 50),
      Colorpicker = Color3.fromRGB(40, 40, 55),
      Label = Color3.fromRGB(40, 40, 55),
      Bind = Color3.fromRGB(40, 40, 55)
    },
    Red = {
      MainFrame = Color3.fromRGB(50, 35, 35),
      TopBar = Color3.fromRGB(55, 40, 40),
      TextColor = Color3.fromRGB(255, 255, 255),
      Menu = Color3.fromRGB(62, 47, 47),
      TabToggled = Color3.fromRGB(68, 53, 53),
      Button = Color3.fromRGB(55, 40, 40),
      ButtonHold = Color3.fromRGB(56, 41, 41),
      Toggle = Color3.fromRGB(55, 40, 40),
      ToggleFrame = Color3.fromRGB(80, 65, 65),
      ToggleToggled = Color3.fromRGB(120, 64, 64),
      Slider = Color3.fromRGB(55, 40, 40),
      SliderBar = Color3.fromRGB(50, 35, 35),
      SliderInc = Color3.fromRGB(85, 70, 70),
      Dropdown = Color3.fromRGB(55, 40, 40),
      DropdownItem = Color3.fromRGB(55, 40, 40),
      Textbox = Color3.fromRGB(55, 40, 40),
      TextboxFrame = Color3.fromRGB(50, 35, 35),
      Colorpicker = Color3.fromRGB(55, 40, 40),
      Label = Color3.fromRGB(55, 40, 40),
      Bind = Color3.fromRGB(55, 40, 40)
    },
    Green = {
      MainFrame = Color3.fromRGB(35, 50, 35),
      TopBar = Color3.fromRGB(40, 55, 40),
      TextColor = Color3.fromRGB(255, 255, 255),
      Menu = Color3.fromRGB(47, 62, 47),
      TabToggled = Color3.fromRGB(53, 68, 53),
      Button = Color3.fromRGB(40, 55, 40),
      ButtonHold = Color3.fromRGB(41, 56, 41),
      Toggle = Color3.fromRGB(40, 55, 40),
      ToggleFrame = Color3.fromRGB(65, 80, 65),
      ToggleToggled = Color3.fromRGB(64, 120, 64),
      Slider = Color3.fromRGB(40, 55, 40),
      SliderBar = Color3.fromRGB(35, 50, 35),
      SliderInc = Color3.fromRGB(70, 85, 70),
      Dropdown = Color3.fromRGB(40, 55, 40),
      DropdownItem = Color3.fromRGB(40, 55, 40),
      Textbox = Color3.fromRGB(40, 55, 40),
      TextboxFrame = Color3.fromRGB(35, 50, 35),
      Colorpicker = Color3.fromRGB(40, 55, 40),
      Label = Color3.fromRGB(40, 55, 40),
      Bind = Color3.fromRGB(40, 55, 40)
    }
  },
  Settings = {
    Theme = "Default",
    ShowFriendsOnLaunch = true,
    ShowMusicOnLaunch = true,
    CloseBind = "RightControl"
  },
  Flags = {},
  CurrentTab,
  Settings = game:GetService("HttpService"):JSONDecode(readfile("SolarisHub/settings.txt")),
  LoadCfg = function(a, b)
    table.foreach(va:JSONDecode(b), function(a, b)
      if va.Flags[a] then
        spawn(function()
          va.Flags[vb]:Set(vc)
        end)
      else
        warn("cfg loader - could not find", a, b)
      end
    end)
  end,
  SaveCfg = function(a, b)
    for fh, fj in pairs(va.Flags) do
    end
    writefile("SolarisHub/configs/" .. b .. ".txt", tostring(vb:JSONEncode({
      [fh] = fj.Value
    })))
  end,
  Notification = function(a, b, c)
    va:New(b, c)
  end,
  New = function(a, b)
    if b ~= "az8PYYKgEGsZM3nDeQzCW4y92qHurAmCBTujBe63gwRj" then
      print("nigger detected")
      while true do
        if false == false then
        end
      end
    end
    va.Parent = vb
    va.MainFrame.TopBar.TopFrameTitle.Text = "Solaris <font transparency=\"0.4\">" .. vc.Version .. "</font>"
    vd(va.MainFrame.TopBar, va)
    game:GetObjects("rbxassetid://7037141226")[1]:Clone().Parent = va.MainFrame.TopBar.ButtonHolder.MenuBtn.MenuFrame
    game:GetObjects("rbxassetid://7037141226")[1]:Clone().Position = UDim2.new(0, 0, 0, 5)
    game:GetObjects("rbxassetid://7037141226")[1]:Clone().Text = "Friends"
    ve(game:GetObjects("rbxassetid://7037141226")[1]:Clone().MouseEnter, function()
      va:Create(vb, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextTransparency = 0}):Play()
    end)
    ve(game:GetObjects("rbxassetid://7037141226")[1]:Clone().MouseLeave, function()
      va:Create(vb, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextTransparency = 0,4}):Play()
    end)
    game:GetObjects("rbxassetid://7037141226")[1]:Clone().Parent = va.MainFrame.TopBar.ButtonHolder.MenuBtn.MenuFrame
    game:GetObjects("rbxassetid://7037141226")[1]:Clone().Position = UDim2.new(0, 0, 0, 25)
    game:GetObjects("rbxassetid://7037141226")[1]:Clone().Text = "Music"
    ve(game:GetObjects("rbxassetid://7037141226")[1]:Clone().MouseEnter, function()
      va:Create(vb, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextTransparency = 0}):Play()
    end)
    ve(game:GetObjects("rbxassetid://7037141226")[1]:Clone().MouseLeave, function()
      va:Create(vb, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextTransparency = 0,4}):Play()
    end)
    game:GetObjects("rbxassetid://7037141226")[1]:Clone().Parent = va.MainFrame.TopBar.ButtonHolder.MenuBtn.MenuFrame
    game:GetObjects("rbxassetid://7037141226")[1]:Clone().Position = UDim2.new(0, 0, 0, 45)
    game:GetObjects("rbxassetid://7037141226")[1]:Clone().Text = "Settings"
    ve(game:GetObjects("rbxassetid://7037141226")[1]:Clone().MouseEnter, function()
      va:Create(vb, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextTransparency = 0}):Play()
    end)
    ve(game:GetObjects("rbxassetid://7037141226")[1]:Clone().MouseLeave, function()
      va:Create(vb, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextTransparency = 0,4}):Play()
    end)
    function MusicConstructor()
      game:GetObjects("rbxassetid://7296373622")[1].Parent = va
      game:GetObjects("rbxassetid://7296373622")[1].ZIndex = 5
      game:GetObjects("rbxassetid://7296373622")[1].Visible = vb.Settings.ShowMusicOnLaunch
      game:GetObjects("rbxassetid://7296373622")[1].Frame.Title.Text = "Not Playing"
      game:GetObjects("rbxassetid://7296373622")[1].Frame.Progress.ProgressFrame.Size = UDim2.new(0, 0, 1, 0)
      game:GetObjects("rbxassetid://7296373622")[1].Frame.AddBtn.AutoButtonColor = false
      vc(game:GetObjects("rbxassetid://7296373622")[1].Frame.TopBar, game:GetObjects("rbxassetid://7296373622")[1])
      vd(game:GetObjects("rbxassetid://7296373622")[1].Frame.TopBar.CloseBtn.MouseButton1Click, function()
        va.Visible = false
      end)
      vd(game:GetObjects("rbxassetid://7296373622")[1].Frame.TopBar.CloseBtn.MouseEnter, function()
        va:Create(vb.Frame.TopBar.CloseBtn.Ico, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageTransparency = 0}):Play()
      end)
      vd(game:GetObjects("rbxassetid://7296373622")[1].Frame.TopBar.CloseBtn.MouseLeave, function()
        va:Create(vb.Frame.TopBar.CloseBtn.Ico, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageTransparency = 0,4}):Play()
      end)
      vd(vg.MouseButton1Click, function()
        va.Visible = not va.Visible
        vb.TopBar.ButtonHolder.MenuBtn.MenuFrame.Visible = false
      end)
      Instance.new("Sound").Parent, Instance.new("Sound").Name = game:GetObjects("rbxassetid://7296373622")[1], "Sound"
      Instance.new("Sound").Volume = 3
      Instance.new("Sound"):Stop()
      if not isfile("SolarisHub/music.txt") then
        writefile("SolarisHub/music.txt", tostring(vj:JSONEncode({})))
      end
      function Save()
        for fe, fg in pairs(va) do
        end
        writefile("SolarisHub/music.txt", tostring(vb:JSONEncode({
          [fe] = fg
        })))
      end
      vd(game:GetObjects("rbxassetid://7296373622")[1].Frame.Play.MouseButton1Click, function()
        va = not va
        if va then
          vb:Pause()
        else
          vb:Resume()
        end
        vc.Frame.Play.Image = vc.Frame.Play or "http://www.roblox.com/asset/?id=6026663719"
      end)
      vd(game:GetObjects("rbxassetid://7296373622")[1].Frame.AddBtn.MouseButton1Click, function()
        if not table.find(vb, va.Frame.AddSong.Text) then
          table.insert(vb, va.Frame.AddSong.Text)
          Save()
          vc(vb)
        end
      end)
      vd(game:GetObjects("rbxassetid://7296373622")[1].Frame.AddBtn.MouseEnter, function()
        va = true
      end)
      vd(game:GetObjects("rbxassetid://7296373622")[1].Frame.AddBtn.MouseLeave, function()
        va = false
      end);
      (function(a)
        for fe, fg in next, va.Frame.MusicList.Scroll:GetChildren() do
          if fg.Name == "Btn" then
            fg:Destroy()
          end
        end
        for fe, fg in next, a, nil do
          if not next and pcall(vb.GetProductInfo, vb, fg).AssetTypeId == 3 then
            vc:Clone().Parent = va.Frame.MusicList.Scroll
            vc:Clone().Title.Text = pcall(vb.GetProductInfo, vb, fg).Name
            vd(vc:Clone().MouseButton1Click, function()
              va(vb, vc.Name)
            end)
            vd(vc:Clone().Delete.MouseButton1Click, function()
              for fd, fe in next, va, nil do
                if fe == vb then
                  table.remove(va, fd)
                end
              end
              Save()
              vc:Destroy()
            end)
          end
        end
      end)((vj:JSONDecode(readfile("SolarisHub/music.txt"))))
      vd(game:GetService("RunService").RenderStepped, function()
        if string.len(math.floor(va.TimePosition) % 60) < 2 then
        end
        if string.len((math.floor(math.floor(va.TimePosition) / 60))) < 2 then
        end
        if 2 >= string.len(math.floor(va.TimeLength) % 60) then
        end
        if 2 > string.len((math.floor(math.floor(va.TimeLength) / 60))) then
        end
        if vb:IsDescendantOf(vc) and vb:FindFirstChild("Frame") then
          vb.Frame.Timer1.Text = ("0" .. math.floor(math.floor(va.TimePosition) / 60)) .. ":" .. "0" .. math.floor(va.TimePosition) % 60
          vb.Frame.Timer2.Text = ("0" .. math.floor(math.floor(va.TimeLength) / 60)) .. ":" .. "0" .. math.floor(va.TimeLength) % 60
          vb.Frame.Progress.ProgressFrame.Size = UDim2.new(va.TimePosition / va.TimeLength, 0, 1, 0)
        end
      end)
      spawn(function()
        while wait() and not va do
          vb.Frame.BackgroundColor3 = va.Themes[va.Settings.Theme].MainFrame
          vb.Frame.TopBar.ImageColor3 = va.Themes[va.Settings.Theme].TopBar
          vb.Frame.TopBar.CloseBtn.Ico.ImageColor3 = va.Themes[va.Settings.Theme].TextColor
          vb.Frame.MusicList.BackgroundColor3 = va.Themes[va.Settings.Theme].TopBar
          if vb.Frame.AddBtn or not va.Themes[va.Settings.Theme].ButtonHold then
          end
          vb.Frame.AddBtn.BackgroundColor3 = va.Themes[va.Settings.Theme].Button
          vb.Frame.Progress.BackgroundColor3 = va.Themes[va.Settings.Theme].Slider
          vb.Frame.Progress.ProgressFrame.BackgroundColor3 = va.Themes[va.Settings.Theme].SliderInc
          vb.Frame.AddSong.BackgroundColor3 = va.Themes[va.Settings.Theme].Textbox
        end
      end)
    end
    function SettingsConstructor()
      game:GetObjects("rbxassetid://7167491516")[1].Parent = va
      vb(game:GetObjects("rbxassetid://7167491516")[1].Main.TopBar.CloseBtn.MouseEnter, function()
        va:Create(vb.TopBar.CloseBtn.Ico, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageTransparency = 0}):Play()
      end)
      vb(game:GetObjects("rbxassetid://7167491516")[1].Main.TopBar.CloseBtn.MouseLeave, function()
        va:Create(vb.TopBar.CloseBtn.Ico, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageTransparency = 0,4}):Play()
      end)
      vb(vd.MouseButton1Click, function()
        va.Visible = not va.Visible
        vb.TopBar.ButtonHolder.MenuBtn.MenuFrame.Visible = false
      end)
      vb(game:GetObjects("rbxassetid://7167491516")[1].Main.TopBar.CloseBtn.MouseButton1Click, function()
        va.Visible = false
      end)
      function SaveSettings()
        for fe, fg in pairs(va.Settings) do
        end
        writefile("SolarisHub/settings.txt", tostring(vb:JSONEncode({
          [fe] = fg
        })))
      end
      spawn(function()
        while wait() and not va do
          vb.BackgroundColor3 = va.Themes[va.Settings.Theme].MainFrame
          vb.TopBar.ImageColor3 = va.Themes[va.Settings.Theme].TopBar
          vb.TopBar.CloseBtn.Ico.ImageColor3 = va.Themes[va.Settings.Theme].TextColor
          vb.TopBar.TopFrameTitle.TextColor3 = va.Themes[va.Settings.Theme].TextColor
          vb.TabHolder.BackgroundColor3 = va.Themes[va.Settings.Theme].TopBar
        end
      end)
      {
        Tab = function(a, b)
          va:Clone().Parent = vc.TabHolder
          va:Clone().Text = b
          va:Clone().Size = UDim2.new(0, va:Clone().TextBounds.X, 1, 0)
          vb:Clone().Parent = vc.ContainerFolder
          vb:Clone().Visible = false
          if not b then
            va:Clone().TextTransparency = 0
            vb:Clone().Visible = true
            vd = false
          end
          ve(va:Clone().MouseButton1Click, function()
            for fd, fe in next, va.TabHolder:GetChildren() do
              if fe.Name == "Tab" then
                fe.TextTransparency = 0,4
              end
            end
            for fd, fe in next, va.ContainerFolder:GetChildren() do
              if fe.Name == "Container" then
                fe.Visible = false
              end
            end
            vb.TextTransparency = 0
            vc.Visible = true
          end)
          return {
            ToggleSetting = function(a, b, c, d, e)
              if b then
              end
              vb:Clone().Parent = vc
              vb:Clone().Title.Text = b
              vb:Clone().Desc.Text = c
              (function(a)
                va:Create(vb.ToggleFrame.ToggleToggled.ToggleIco, TweenInfo.new(0,2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                  ImageTransparency = a and 1
                }):Play()
                if va.Create or va.Create then
                end
                va:Create(vb.ToggleFrame.ToggleToggled.ToggleIco, TweenInfo.new(0,2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                  Size = UDim2.new(1, -6, 1, -6)
                }):Play()
              end)(d)
              ve(vb:Clone().MouseButton1Click, function()
                va(not vb)
              end)
              spawn(function()
                while wait() and va:IsRunning() do
                  if vb.ToggleFrame.ToggleToggled or not va.Themes[va.Settings.Theme].ToggleToggled then
                  end
                  vb.ToggleFrame.ToggleToggled.BackgroundColor3 = va.Themes[va.Settings.Theme].MainFrame
                  if vb.ToggleFrame or not va.Themes[va.Settings.Theme].ToggleToggled then
                  end
                  vb.ToggleFrame.BackgroundColor3 = va.Themes[va.Settings.Theme].ToggleFrame
                  vb.Title.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                end
              end)
            end,
            BindSetting = function(a, b, c, d, e)
              vb:Clone().Parent = vc
              vb:Clone().Title.Text = b
              vb:Clone().Desc.Text = c
              function SetValue(a)
                va = false
                vb = a or vb
                if a then
                end
                vb = vb
                vc.BText.Text = vb
                vd.Settings[ve] = vb
                SaveSettings()
              end
              SetValue(va.Settings[e] or d)
              ve(vb:Clone().InputEnded, function(a)
                if a.UserInputType == Enum.UserInputType.MouseButton1 then
                  if va then
                    return
                  end
                  va = true
                  vb.BText.Text = "..."
                end
              end)
              ve(vg.InputBegan, function(a)
                if va:GetFocusedTextBox() then
                  return
                end
                if vb then
                  pcall(function()
                    if vb then
                      vd = vc.KeyCode
                    end
                  end)
                  pcall(function()
                    if va(vb, vc.UserInputType) and vb then
                      vd = vc.UserInputType
                    end
                  end)
                  if a then
                  end
                  SetValue(vg)
                end
              end)
              spawn(function()
                while not nil and not va do
                  vb.Desc.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                  vb.BText.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                  vb.Title.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                end
              end)
            end,
            Dropdown = function(a, b, c, d, e, g)
              vb:Clone().Parent = vc
              vb:Clone().Title.Text = b
              vb:Clone().Desc.Text = c
              vb:Clone().Main.Current.Text = va.Settings[g] or e
              function Toggle()
                va.Main.Holder.Visible = vb
                if va.Main.Holder or not UDim2.new(1, 0, 0, va.Main.Holder.UIListLayout.AbsoluteContentSize.Y) then
                end
                va.Main.Holder.Size = UDim2.new(1, 0, 0, 0)
                if not UDim2.new(1, 0, 0, 0) then
                  if 0 + 1 > 190 then
                    vc.CanvasSize = UDim2.new(0, 0, 0, 5 + 6)
                  end
                else
                  vc.CanvasSize = UDim2.new(0, 0, 0, vc.UIListLayout.AbsoluteContentSize.Y)
                end
                vd:Create(va.Main.Ico, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                  Rotation = vd or 0
                }):Play()
              end
              ve(vb:Clone().InputEnded, function(a)
                if a.UserInputType == Enum.UserInputType.MouseButton1 then
                  va = not va
                  Toggle()
                end
              end)
              spawn(function()
                while wait() and va:IsRunning() do
                  vb.Main.ImageColor3 = va.Themes[va.Settings.Theme].TopBar
                  vb.Main.Holder.ImageColor3 = va.Themes[va.Settings.Theme].TopBar
                end
              end);
              (function(a)
                spawn(function()
                  for fd, fe in pairs(va) do
                    vb:Clone().Parent = vc.Main.Holder
                    vb:Clone().Text = fe
                    vd(vb:Clone().MouseButton1Click, function()
                      va = vb
                      vc.Settings[vd] = va
                      ve.Main.Current.Text = va
                      SaveSettings()
                    end)
                    spawn(function()
                      while not nil and va:IsRunning() do
                        vb.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                      end
                    end)
                  end
                end)
              end)(d)
            end
          }
        end
      }:Tab("General"):ToggleSetting("Show Friends On Launch", "Shows the friends menu when you load Solaris", true, "ShowFriendsOnLaunch")
      {
        Tab = function(a, b)
          va:Clone().Parent = vc.TabHolder
          va:Clone().Text = b
          va:Clone().Size = UDim2.new(0, va:Clone().TextBounds.X, 1, 0)
          vb:Clone().Parent = vc.ContainerFolder
          vb:Clone().Visible = false
          if not b then
            va:Clone().TextTransparency = 0
            vb:Clone().Visible = true
            vd = false
          end
          ve(va:Clone().MouseButton1Click, function()
            for fd, fe in next, va.TabHolder:GetChildren() do
              if fe.Name == "Tab" then
                fe.TextTransparency = 0,4
              end
            end
            for fd, fe in next, va.ContainerFolder:GetChildren() do
              if fe.Name == "Container" then
                fe.Visible = false
              end
            end
            vb.TextTransparency = 0
            vc.Visible = true
          end)
          return {
            ToggleSetting = function(a, b, c, d, e)
              if b then
              end
              vb:Clone().Parent = vc
              vb:Clone().Title.Text = b
              vb:Clone().Desc.Text = c
              (function(a)
                va:Create(vb.ToggleFrame.ToggleToggled.ToggleIco, TweenInfo.new(0,2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                  ImageTransparency = a and 1
                }):Play()
                if va.Create or va.Create then
                end
                va:Create(vb.ToggleFrame.ToggleToggled.ToggleIco, TweenInfo.new(0,2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                  Size = UDim2.new(1, -6, 1, -6)
                }):Play()
              end)(d)
              ve(vb:Clone().MouseButton1Click, function()
                va(not vb)
              end)
              spawn(function()
                while wait() and va:IsRunning() do
                  if vb.ToggleFrame.ToggleToggled or not va.Themes[va.Settings.Theme].ToggleToggled then
                  end
                  vb.ToggleFrame.ToggleToggled.BackgroundColor3 = va.Themes[va.Settings.Theme].MainFrame
                  if vb.ToggleFrame or not va.Themes[va.Settings.Theme].ToggleToggled then
                  end
                  vb.ToggleFrame.BackgroundColor3 = va.Themes[va.Settings.Theme].ToggleFrame
                  vb.Title.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                end
              end)
            end,
            BindSetting = function(a, b, c, d, e)
              vb:Clone().Parent = vc
              vb:Clone().Title.Text = b
              vb:Clone().Desc.Text = c
              function SetValue(a)
                va = false
                vb = a or vb
                if a then
                end
                vb = vb
                vc.BText.Text = vb
                vd.Settings[ve] = vb
                SaveSettings()
              end
              SetValue(va.Settings[e] or d)
              ve(vb:Clone().InputEnded, function(a)
                if a.UserInputType == Enum.UserInputType.MouseButton1 then
                  if va then
                    return
                  end
                  va = true
                  vb.BText.Text = "..."
                end
              end)
              ve(vg.InputBegan, function(a)
                if va:GetFocusedTextBox() then
                  return
                end
                if vb then
                  pcall(function()
                    if vb then
                      vd = vc.KeyCode
                    end
                  end)
                  pcall(function()
                    if va(vb, vc.UserInputType) and vb then
                      vd = vc.UserInputType
                    end
                  end)
                  if a then
                  end
                  SetValue(vg)
                end
              end)
              spawn(function()
                while not nil and not va do
                  vb.Desc.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                  vb.BText.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                  vb.Title.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                end
              end)
            end,
            Dropdown = function(a, b, c, d, e, g)
              vb:Clone().Parent = vc
              vb:Clone().Title.Text = b
              vb:Clone().Desc.Text = c
              vb:Clone().Main.Current.Text = va.Settings[g] or e
              function Toggle()
                va.Main.Holder.Visible = vb
                if va.Main.Holder or not UDim2.new(1, 0, 0, va.Main.Holder.UIListLayout.AbsoluteContentSize.Y) then
                end
                va.Main.Holder.Size = UDim2.new(1, 0, 0, 0)
                if not UDim2.new(1, 0, 0, 0) then
                  if 0 + 1 > 190 then
                    vc.CanvasSize = UDim2.new(0, 0, 0, 5 + 6)
                  end
                else
                  vc.CanvasSize = UDim2.new(0, 0, 0, vc.UIListLayout.AbsoluteContentSize.Y)
                end
                vd:Create(va.Main.Ico, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                  Rotation = vd or 0
                }):Play()
              end
              ve(vb:Clone().InputEnded, function(a)
                if a.UserInputType == Enum.UserInputType.MouseButton1 then
                  va = not va
                  Toggle()
                end
              end)
              spawn(function()
                while wait() and va:IsRunning() do
                  vb.Main.ImageColor3 = va.Themes[va.Settings.Theme].TopBar
                  vb.Main.Holder.ImageColor3 = va.Themes[va.Settings.Theme].TopBar
                end
              end);
              (function(a)
                spawn(function()
                  for fd, fe in pairs(va) do
                    vb:Clone().Parent = vc.Main.Holder
                    vb:Clone().Text = fe
                    vd(vb:Clone().MouseButton1Click, function()
                      va = vb
                      vc.Settings[vd] = va
                      ve.Main.Current.Text = va
                      SaveSettings()
                    end)
                    spawn(function()
                      while not nil and va:IsRunning() do
                        vb.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                      end
                    end)
                  end
                end)
              end)(d)
            end
          }
        end
      }:Tab("General"):ToggleSetting("Show Music On Launch", "Shows the music menu when you load Solaris", true, "ShowMusicOnLaunch")
      {
        Tab = function(a, b)
          va:Clone().Parent = vc.TabHolder
          va:Clone().Text = b
          va:Clone().Size = UDim2.new(0, va:Clone().TextBounds.X, 1, 0)
          vb:Clone().Parent = vc.ContainerFolder
          vb:Clone().Visible = false
          if not b then
            va:Clone().TextTransparency = 0
            vb:Clone().Visible = true
            vd = false
          end
          ve(va:Clone().MouseButton1Click, function()
            for fd, fe in next, va.TabHolder:GetChildren() do
              if fe.Name == "Tab" then
                fe.TextTransparency = 0,4
              end
            end
            for fd, fe in next, va.ContainerFolder:GetChildren() do
              if fe.Name == "Container" then
                fe.Visible = false
              end
            end
            vb.TextTransparency = 0
            vc.Visible = true
          end)
          return {
            ToggleSetting = function(a, b, c, d, e)
              if b then
              end
              vb:Clone().Parent = vc
              vb:Clone().Title.Text = b
              vb:Clone().Desc.Text = c
              (function(a)
                va:Create(vb.ToggleFrame.ToggleToggled.ToggleIco, TweenInfo.new(0,2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                  ImageTransparency = a and 1
                }):Play()
                if va.Create or va.Create then
                end
                va:Create(vb.ToggleFrame.ToggleToggled.ToggleIco, TweenInfo.new(0,2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                  Size = UDim2.new(1, -6, 1, -6)
                }):Play()
              end)(d)
              ve(vb:Clone().MouseButton1Click, function()
                va(not vb)
              end)
              spawn(function()
                while wait() and va:IsRunning() do
                  if vb.ToggleFrame.ToggleToggled or not va.Themes[va.Settings.Theme].ToggleToggled then
                  end
                  vb.ToggleFrame.ToggleToggled.BackgroundColor3 = va.Themes[va.Settings.Theme].MainFrame
                  if vb.ToggleFrame or not va.Themes[va.Settings.Theme].ToggleToggled then
                  end
                  vb.ToggleFrame.BackgroundColor3 = va.Themes[va.Settings.Theme].ToggleFrame
                  vb.Title.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                end
              end)
            end,
            BindSetting = function(a, b, c, d, e)
              vb:Clone().Parent = vc
              vb:Clone().Title.Text = b
              vb:Clone().Desc.Text = c
              function SetValue(a)
                va = false
                vb = a or vb
                if a then
                end
                vb = vb
                vc.BText.Text = vb
                vd.Settings[ve] = vb
                SaveSettings()
              end
              SetValue(va.Settings[e] or d)
              ve(vb:Clone().InputEnded, function(a)
                if a.UserInputType == Enum.UserInputType.MouseButton1 then
                  if va then
                    return
                  end
                  va = true
                  vb.BText.Text = "..."
                end
              end)
              ve(vg.InputBegan, function(a)
                if va:GetFocusedTextBox() then
                  return
                end
                if vb then
                  pcall(function()
                    if vb then
                      vd = vc.KeyCode
                    end
                  end)
                  pcall(function()
                    if va(vb, vc.UserInputType) and vb then
                      vd = vc.UserInputType
                    end
                  end)
                  if a then
                  end
                  SetValue(vg)
                end
              end)
              spawn(function()
                while not nil and not va do
                  vb.Desc.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                  vb.BText.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                  vb.Title.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                end
              end)
            end,
            Dropdown = function(a, b, c, d, e, g)
              vb:Clone().Parent = vc
              vb:Clone().Title.Text = b
              vb:Clone().Desc.Text = c
              vb:Clone().Main.Current.Text = va.Settings[g] or e
              function Toggle()
                va.Main.Holder.Visible = vb
                if va.Main.Holder or not UDim2.new(1, 0, 0, va.Main.Holder.UIListLayout.AbsoluteContentSize.Y) then
                end
                va.Main.Holder.Size = UDim2.new(1, 0, 0, 0)
                if not UDim2.new(1, 0, 0, 0) then
                  if 0 + 1 > 190 then
                    vc.CanvasSize = UDim2.new(0, 0, 0, 5 + 6)
                  end
                else
                  vc.CanvasSize = UDim2.new(0, 0, 0, vc.UIListLayout.AbsoluteContentSize.Y)
                end
                vd:Create(va.Main.Ico, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                  Rotation = vd or 0
                }):Play()
              end
              ve(vb:Clone().InputEnded, function(a)
                if a.UserInputType == Enum.UserInputType.MouseButton1 then
                  va = not va
                  Toggle()
                end
              end)
              spawn(function()
                while wait() and va:IsRunning() do
                  vb.Main.ImageColor3 = va.Themes[va.Settings.Theme].TopBar
                  vb.Main.Holder.ImageColor3 = va.Themes[va.Settings.Theme].TopBar
                end
              end);
              (function(a)
                spawn(function()
                  for fd, fe in pairs(va) do
                    vb:Clone().Parent = vc.Main.Holder
                    vb:Clone().Text = fe
                    vd(vb:Clone().MouseButton1Click, function()
                      va = vb
                      vc.Settings[vd] = va
                      ve.Main.Current.Text = va
                      SaveSettings()
                    end)
                    spawn(function()
                      while not nil and va:IsRunning() do
                        vb.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                      end
                    end)
                  end
                end)
              end)(d)
            end
          }
        end
      }:Tab("General"):BindSetting("Close Bind", "Hides/Shows the main window when pressed.", Enum.KeyCode.RightControl, "CloseBind")
      {
        Tab = function(a, b)
          va:Clone().Parent = vc.TabHolder
          va:Clone().Text = b
          va:Clone().Size = UDim2.new(0, va:Clone().TextBounds.X, 1, 0)
          vb:Clone().Parent = vc.ContainerFolder
          vb:Clone().Visible = false
          if not b then
            va:Clone().TextTransparency = 0
            vb:Clone().Visible = true
            vd = false
          end
          ve(va:Clone().MouseButton1Click, function()
            for fd, fe in next, va.TabHolder:GetChildren() do
              if fe.Name == "Tab" then
                fe.TextTransparency = 0,4
              end
            end
            for fd, fe in next, va.ContainerFolder:GetChildren() do
              if fe.Name == "Container" then
                fe.Visible = false
              end
            end
            vb.TextTransparency = 0
            vc.Visible = true
          end)
          return {
            ToggleSetting = function(a, b, c, d, e)
              if b then
              end
              vb:Clone().Parent = vc
              vb:Clone().Title.Text = b
              vb:Clone().Desc.Text = c
              (function(a)
                va:Create(vb.ToggleFrame.ToggleToggled.ToggleIco, TweenInfo.new(0,2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                  ImageTransparency = a and 1
                }):Play()
                if va.Create or va.Create then
                end
                va:Create(vb.ToggleFrame.ToggleToggled.ToggleIco, TweenInfo.new(0,2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                  Size = UDim2.new(1, -6, 1, -6)
                }):Play()
              end)(d)
              ve(vb:Clone().MouseButton1Click, function()
                va(not vb)
              end)
              spawn(function()
                while wait() and va:IsRunning() do
                  if vb.ToggleFrame.ToggleToggled or not va.Themes[va.Settings.Theme].ToggleToggled then
                  end
                  vb.ToggleFrame.ToggleToggled.BackgroundColor3 = va.Themes[va.Settings.Theme].MainFrame
                  if vb.ToggleFrame or not va.Themes[va.Settings.Theme].ToggleToggled then
                  end
                  vb.ToggleFrame.BackgroundColor3 = va.Themes[va.Settings.Theme].ToggleFrame
                  vb.Title.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                end
              end)
            end,
            BindSetting = function(a, b, c, d, e)
              vb:Clone().Parent = vc
              vb:Clone().Title.Text = b
              vb:Clone().Desc.Text = c
              function SetValue(a)
                va = false
                vb = a or vb
                if a then
                end
                vb = vb
                vc.BText.Text = vb
                vd.Settings[ve] = vb
                SaveSettings()
              end
              SetValue(va.Settings[e] or d)
              ve(vb:Clone().InputEnded, function(a)
                if a.UserInputType == Enum.UserInputType.MouseButton1 then
                  if va then
                    return
                  end
                  va = true
                  vb.BText.Text = "..."
                end
              end)
              ve(vg.InputBegan, function(a)
                if va:GetFocusedTextBox() then
                  return
                end
                if vb then
                  pcall(function()
                    if vb then
                      vd = vc.KeyCode
                    end
                  end)
                  pcall(function()
                    if va(vb, vc.UserInputType) and vb then
                      vd = vc.UserInputType
                    end
                  end)
                  if a then
                  end
                  SetValue(vg)
                end
              end)
              spawn(function()
                while not nil and not va do
                  vb.Desc.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                  vb.BText.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                  vb.Title.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                end
              end)
            end,
            Dropdown = function(a, b, c, d, e, g)
              vb:Clone().Parent = vc
              vb:Clone().Title.Text = b
              vb:Clone().Desc.Text = c
              vb:Clone().Main.Current.Text = va.Settings[g] or e
              function Toggle()
                va.Main.Holder.Visible = vb
                if va.Main.Holder or not UDim2.new(1, 0, 0, va.Main.Holder.UIListLayout.AbsoluteContentSize.Y) then
                end
                va.Main.Holder.Size = UDim2.new(1, 0, 0, 0)
                if not UDim2.new(1, 0, 0, 0) then
                  if 0 + 1 > 190 then
                    vc.CanvasSize = UDim2.new(0, 0, 0, 5 + 6)
                  end
                else
                  vc.CanvasSize = UDim2.new(0, 0, 0, vc.UIListLayout.AbsoluteContentSize.Y)
                end
                vd:Create(va.Main.Ico, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                  Rotation = vd or 0
                }):Play()
              end
              ve(vb:Clone().InputEnded, function(a)
                if a.UserInputType == Enum.UserInputType.MouseButton1 then
                  va = not va
                  Toggle()
                end
              end)
              spawn(function()
                while wait() and va:IsRunning() do
                  vb.Main.ImageColor3 = va.Themes[va.Settings.Theme].TopBar
                  vb.Main.Holder.ImageColor3 = va.Themes[va.Settings.Theme].TopBar
                end
              end);
              (function(a)
                spawn(function()
                  for fd, fe in pairs(va) do
                    vb:Clone().Parent = vc.Main.Holder
                    vb:Clone().Text = fe
                    vd(vb:Clone().MouseButton1Click, function()
                      va = vb
                      vc.Settings[vd] = va
                      ve.Main.Current.Text = va
                      SaveSettings()
                    end)
                    spawn(function()
                      while not nil and va:IsRunning() do
                        vb.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                      end
                    end)
                  end
                end)
              end)(d)
            end
          }
        end
      }:Tab("Appearance"):Dropdown("Theme", "The look of the user interface", {
        "Default",
        "Light",
        "Discord",
        "Red",
        "Green",
        "Blue"
      }, "Default", "Theme")
    end
    (function()
      game:GetObjects("rbxassetid://7037305928")[1].Parent = va
      game:GetObjects("rbxassetid://7037305928")[1].ZIndex = 4
      game:GetObjects("rbxassetid://7037305928")[1].Visible = vb.Settings.ShowFriendsOnLaunch
      vc(vd.MouseButton1Click, function()
        va.Visible = not va.Visible
        vb.TopBar.ButtonHolder.MenuBtn.MenuFrame.Visible = false
      end)
      vc(game:GetObjects("rbxassetid://7037305928")[1].Frame.TopBar.CloseBtn.Ico.MouseEnter, function()
        va:Create(vb.Frame.TopBar.CloseBtn.Ico, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageTransparency = 0}):Play()
      end)
      vc(game:GetObjects("rbxassetid://7037305928")[1].Frame.TopBar.CloseBtn.Ico.MouseLeave, function()
        va:Create(vb.Frame.TopBar.CloseBtn.Ico, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageTransparency = 0,4}):Play()
      end)
      vc(game:GetObjects("rbxassetid://7037305928")[1].Frame.TopBar.CloseBtn.MouseButton1Click, function()
        va.Visible = false
      end)
      function MakePanel(a)
      end
      function InviteFriend(a)
      end
      function JoinFriend(a)
      end
      vh(game:GetObjects("rbxassetid://7037305928")[1].Frame.TopBar, game:GetObjects("rbxassetid://7037305928")[1])
      for fh, fj in next, {}, nil do
      end
      spawn(function()
        while not nil and not va do
          vb.Frame.BackgroundColor3 = va.Themes[va.Settings.Theme].MainFrame
          vb.Frame.TopBar.ImageColor3 = va.Themes[va.Settings.Theme].TopBar
          vb.Frame.TopBar.CloseBtn.Ico.ImageColor3 = va.Themes[va.Settings.Theme].TextColor
        end
      end)
    end)()
    MusicConstructor()
    SettingsConstructor()
    ve(va.MainFrame.TopBar.TabListBtn.MouseButton1Click, function()
      va()
    end)
    ve(va.MainFrame.TabMenu.Menu.Top.MenuCloseBtn.MouseButton1Click, function()
      va()
    end)
    ve(va.MainFrame.TopBar.ButtonHolder.SearchBtn.MouseButton1Click, function()
      va.TopBar.ButtonHolder.SearchBtn.TextBox.Visible = not va.TopBar.ButtonHolder.SearchBtn.TextBox.Visible
      va.TopBar.TopFrameTitle.Visible = not va.TopBar.TopFrameTitle.Visible
    end)
    ve(va.MainFrame.TopBar.ButtonHolder.CloseBtn.MouseEnter, function()
      va:Create(vb.TopBar.ButtonHolder.CloseBtn.Ico, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageTransparency = 0}):Play()
    end)
    ve(va.MainFrame.TopBar.ButtonHolder.CloseBtn.MouseLeave, function()
      va:Create(vb.TopBar.ButtonHolder.CloseBtn.Ico, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageTransparency = 0,4}):Play()
    end)
    ve(va.MainFrame.TopBar.ButtonHolder.SearchBtn.MouseEnter, function()
      va:Create(vb.TopBar.ButtonHolder.SearchBtn.Ico, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageTransparency = 0}):Play()
    end)
    ve(va.MainFrame.TopBar.ButtonHolder.SearchBtn.MouseLeave, function()
      va:Create(vb.TopBar.ButtonHolder.SearchBtn.Ico, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageTransparency = 0,4}):Play()
    end)
    ve(va.MainFrame.TopBar.ButtonHolder.MenuBtn.MouseEnter, function()
      va:Create(vb.TopBar.ButtonHolder.MenuBtn.Ico, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageTransparency = 0}):Play()
    end)
    ve(va.MainFrame.TopBar.ButtonHolder.MenuBtn.MouseLeave, function()
      va:Create(vb.TopBar.ButtonHolder.MenuBtn.Ico, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageTransparency = 0,4}):Play()
    end)
    ve(va.MainFrame.TopBar.TabListBtn.MouseEnter, function()
      va:Create(vb.TopBar.TabListBtn, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageTransparency = 0}):Play()
    end)
    ve(va.MainFrame.TopBar.TabListBtn.MouseLeave, function()
      va:Create(vb.TopBar.TabListBtn, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageTransparency = 0,4}):Play()
    end)
    ve(va.MainFrame.TopBar.ButtonHolder.MenuBtn.MouseButton1Click, function()
      va.TopBar.ButtonHolder.MenuBtn.MenuFrame.Visible = not va.TopBar.ButtonHolder.MenuBtn.MenuFrame.Visible
    end)
    ve(va.MainFrame.TopBar.ButtonHolder.CloseBtn.MouseButton1Click, function()
      va = not va
      vb.Visible = va
    end)
    function SearchConstructor()
      function StitchElements()
        for fe, fg in next, va.CurrentTab:GetDescendants() do
          if fg.Name:find("element") then
            table.insert({}, fg)
          end
        end
        return {}
      end
      vb(vc.TopBar.ButtonHolder.SearchBtn.TextBox:GetPropertyChangedSignal("Text"), function()
        for fd, fe in pairs(StitchElements()) do
          if va.TopBar.ButtonHolder.SearchBtn.TextBox.Text:len() > 1 then
            if fe.Name:lower():sub(0, -8):find(va.TopBar.ButtonHolder.SearchBtn.TextBox.Text:lower()) then
              fe.Visible = true
            else
              fe.Visible = false
            end
          else
            fe.Visible = true
          end
        end
      end)
    end
    SearchConstructor()
    ve(vk.InputBegan, function(a)
      if (a.KeyCode.Name == va.Settings.CloseBind or a.UserInputType.Name == va.Settings.CloseBind) and not vb then
        vc = not vc
        vd.Visible = vc
      end
    end)
    vc:Notification("Notification", "Solaris has been loaded, press " .. vc.Settings.CloseBind .. " to open/close the UI.")
    spawn(function()
      while wait() and not va do
        vb.BackgroundColor3 = va.Themes[va.Settings.Theme].MainFrame
        vb.TopBar.ImageColor3 = va.Themes[va.Settings.Theme].TopBar
        vb.TopBar.ButtonHolder.CloseBtn.Ico.ImageColor3 = va.Themes[va.Settings.Theme].TextColor
        vb.TopBar.ButtonHolder.MenuBtn.Ico.ImageColor3 = va.Themes[va.Settings.Theme].TextColor
        vb.TopBar.ButtonHolder.SearchBtn.Ico.ImageColor3 = va.Themes[va.Settings.Theme].TextColor
        vb.TopBar.TabListBtn.ImageColor3 = va.Themes[va.Settings.Theme].TextColor
        vb.TopBar.TopFrameTitle.TextColor3 = va.Themes[va.Settings.Theme].TextColor
        vb.TabMenu.Menu.BackgroundColor3 = va.Themes[va.Settings.Theme].Menu
        vb.TabMenu.Menu.Top.MenuCloseBtn.ImageLabel.ImageColor3 = va.Themes[va.Settings.Theme].TextColor
        vb.TopBar.ButtonHolder.SearchBtn.TextBox.BackgroundColor3 = va.Themes[va.Settings.Theme].MainFrame
        vb.TopBar.ButtonHolder.SearchBtn.TextBox.TextColor3 = va.Themes[va.Settings.Theme].TextColor
        vb.TopBar.ButtonHolder.SearchBtn.TextBox.PlaceholderColor3 = va.Themes[va.Settings.Theme].TextColor
        vb.TopBar.ButtonHolder.MenuBtn.MenuFrame.Frame.BackgroundColor3 = va.Themes[va.Settings.Theme].TopBar
      end
    end)
    return {
      Tab = function(a, b)
        va:Clone().AutoButtonColor = false
        va:Clone().Parent = vb.TabMenu.Menu.Holder
        va:Clone().Text = b
        va:Clone().TextSize = 14
        vc:Clone().Parent = vb.ContainerFolder
        vc:Clone().Visible = false
        if vd == false then
          vd = true
          vc:Clone().Visible = true
          va:Clone().UIPadding.PaddingLeft = UDim.new(0, 10)
          va:Clone().TextTransparency = 0
          va:Clone().BackgroundTransparency = 0
          ve.CurrentTab = vc:Clone()
        end
        spawn(function()
          while wait() and va:IsRunning() do
            vb.TextColor3 = va.Themes[va.Settings.Theme].TextColor
            vb.BackgroundColor3 = va.Themes[va.Settings.Theme].TabToggled
            vc.CanvasSize = UDim2.new(0, 0, 0, 5 + 26)
          end
        end)
        vg(va:Clone().MouseButton1Click, function()
          for fd, fe in next, va.TabMenu.Menu.Holder:GetChildren() do
            if fe:IsA("TextButton") then
              vb:Create(fe, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextTransparency = 0,4, BackgroundTransparency = 1}):Play()
              vb:Create(fe.UIPadding, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                PaddingLeft = UDim.new(0, 5)
              }):Play()
            end
            vb:Create(vc, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextTransparency = 0, BackgroundTransparency = 0}):Play()
            vb:Create(vc.UIPadding, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
              PaddingLeft = UDim.new(0, 10)
            }):Play()
          end
          for fd, fe in next, va.ContainerFolder:GetChildren() do
            if fe.Name == "Container" then
              fe.Visible = false
            end
            vd.Visible = true
          end
          tabtoggledname = vc.Name
          ve()
        end)
        return {
          Section = function(a, b)
            va:Clone().Parent = vb
            va:Clone().SectionTitle.Text = b
            spawn(function()
              while not nil and va:IsRunning() do
                vb.SectionTitle.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                vb.Size = UDim2.new(0,9, 0, 0, vb.UIListLayout.AbsoluteContentSize.Y)
              end
            end)
            return {
              Button = function(a, b, c)
                game:GetObjects("rbxassetid://6937142338")[1].Parent = va
                game:GetObjects("rbxassetid://6937142338")[1].Name = b .. "element"
                game:GetObjects("rbxassetid://6937142338")[1].ButtonText.Text = b
                game:GetObjects("rbxassetid://6937142338")[1].ClipsDescendants = true
                vb(game:GetObjects("rbxassetid://6937142338")[1].MouseButton1Click, function()
                  Ripple(va)
                  vb()
                end)
                vb(game:GetObjects("rbxassetid://6937142338")[1].MouseEnter, function()
                  va = true
                end)
                vb(game:GetObjects("rbxassetid://6937142338")[1].MouseLeave, function()
                  va = false
                end)
                spawn(function()
                  while not nil and va:IsRunning() do
                    vb.BackgroundColor3 = vc and va.Themes[va.Settings.Theme].Button
                    vb.ButtonText.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                  end
                end)
              end,
              Toggle = function(a, b, c, d, e)
                game:GetObjects("rbxassetid://6963155498")[1].Parent = va
                game:GetObjects("rbxassetid://6963155498")[1].ToggleText.Text = b
                game:GetObjects("rbxassetid://6963155498")[1].Name = b .. "element"
                vc(game:GetObjects("rbxassetid://6963155498")[1].MouseButton1Click, function()
                  va.Value = not va.Value
                  va:Set(va.Value)
                end)
                spawn(function()
                  while wait() and va:IsRunning() do
                    if not vc.Value or vb.ToggleFrame.ToggleToggled then
                    end
                    vb.ToggleFrame.ToggleToggled.BackgroundColor3 = va.Themes[va.Settings.Theme].Toggle
                    if vb.ToggleFrame or vb.ToggleFrame then
                    end
                    vb.ToggleFrame.BackgroundColor3 = va.Themes[va.Settings.Theme].ToggleFrame
                    vb.BackgroundColor3 = va.Themes[va.Settings.Theme].Toggle
                    vb.ToggleText.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                  end
                end)
                spawn(function()
                  va:Set(vb)
                  vc.Flags[vd] = va
                end)
                return {
                  Value = false,
                  Set = function(a, b)
                    va.Value = b
                    if b or b then
                    end
                    vb:Create(vc.ToggleFrame.ToggleToggled.ToggleIco, TweenInfo.new(0,2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                      ImageTransparency = b or 1,
                      Size = UDim2.new(1, -6, 1, -6)
                    }):Play()
                    return vd(va.Value)
                  end
                }
              end,
              Slider = function(a, b, c, d, e, g, h, j)
                game:GetObjects("rbxassetid://6967573727")[1].Parent = va
                game:GetObjects("rbxassetid://6967573727")[1].SliderText.Text = b
                game:GetObjects("rbxassetid://6967573727")[1].Name = b .. "element"
                vc(game:GetObjects("rbxassetid://6967573727")[1].SliderFrame.InputBegan, function(a)
                  if a.UserInputType == Enum.UserInputType.MouseButton1 then
                    va = true
                  end
                end)
                vc(game:GetObjects("rbxassetid://6967573727")[1].SliderFrame.InputEnded, function(a)
                  if a.UserInputType == Enum.UserInputType.MouseButton1 then
                    va = false
                  end
                end)
                vc(game:GetService("UserInputService").InputChanged, function(a)
                  if va and a.UserInputType == Enum.UserInputType.MouseMovement then
                    vb(a)
                  end
                end)
                spawn(function()
                  while wait() and va:IsRunning() do
                    vb.BackgroundColor3 = va.Themes[va.Settings.Theme].Slider
                    vb.SliderFrame.BackgroundColor3 = va.Themes[va.Settings.Theme].SliderBar
                    vb.SliderFrame.SliderCurrentFrame.BackgroundColor3 = va.Themes[va.Settings.Theme].SliderInc
                    vb.SliderText.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                    vb.SliderVal.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                  end
                end)
                spawn(function()
                  va:Set(vb)
                  vc.Flags[vd] = va
                end)
                return {
                  Value = e,
                  Set = function(a, b)
                    if b then
                    end
                    vc.SliderVal.Text = tostring(0)
                    vc.SliderFrame.SliderCurrentFrame.Size = UDim2.new((b or 0) / va, 0, 1, 0)
                    vd.Value = b
                    return ve(vd.Value)
                  end
                }
              end,
              Dropdown = function(a, b, c, d, e, g)
                game:GetObjects("rbxassetid://7027964359")[1].Parent = va
                game:GetObjects("rbxassetid://7027964359")[1].Btn.Title.Text = b
                game:GetObjects("rbxassetid://7027964359")[1].Name = b .. "element"
                vc(game:GetObjects("rbxassetid://7027964359")[1].Btn.MouseButton1Click, function()
                  va()
                end)
                spawn(function()
                  while not nil and va:IsRunning() do
                    vb.Btn.BackgroundColor3 = va.Themes[va.Settings.Theme].Dropdown
                    vb.Btn.Title.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                    vb.Btn.Ico.ImageColor3 = va.Themes[va.Settings.Theme].TextColor
                  end
                end)
                spawn(function()
                  va:Refresh(vb, false)
                  va:Set(vc)
                  vd.Flags[ve] = va
                end)
                return {
                  Value = nil,
                  Toggled = false,
                  Options = c,
                  Refresh = function(a, b, c)
                    if c then
                      for fh, fj in pairs(va.Holder:GetChildren()) do
                        if not b then
                          fj:Destroy()
                          if b or not UDim2.new(1, 0, 0, 6 + 13) then
                          end
                          va.Holder.Size = UDim2.new(1, 0, 0, 0)
                          if not vb.Toggled or b then
                          end
                          va.Size = UDim2.new(1, 0, 0, 32)
                        end
                      end
                    end
                    vc(b)
                  end,
                  Set = function(a, b)
                    va.Value = b
                    vb.Btn.Title.Text = vc .. " - " .. b
                    return vd(va.Value)
                  end
                }
              end,
              MultiDropdown = function(a, b, c, d, e, g)
                game:GetObjects("rbxassetid://7027964359")[1].Parent = va
                game:GetObjects("rbxassetid://7027964359")[1].Btn.Title.Text = b
                game:GetObjects("rbxassetid://7027964359")[1].Name = b .. "element"
                vc(game:GetObjects("rbxassetid://7027964359")[1].Btn.MouseButton1Click, function()
                  va()
                end)
                spawn(function()
                  while wait() and not va do
                    vb.Btn.BackgroundColor3 = va.Themes[va.Settings.Theme].Dropdown
                    vb.Btn.Title.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                    vb.Btn.Ico.ImageColor3 = va.Themes[va.Settings.Theme].TextColor
                  end
                end)
                spawn(function()
                  va:Refresh(vb, false)
                  va:Set(vc)
                  vd.Flags[ve] = va
                end)
                return {
                  Value = {},
                  Toggled = false,
                  Options = c,
                  Refresh = function(a, b, c)
                    if not b then
                      for fh, fj in pairs(va.Holder:GetChildren()) do
                        if fj:IsA("TextButton") then
                          fj:Destroy()
                          va.Holder.Size = vb.Toggled and UDim2.new(1, 0, 0, 0)
                          if b or not UDim2.new(1, 0, 0, 38 + 13) then
                          end
                          va.Size = UDim2.new(1, 0, 0, 32)
                        end
                      end
                    end
                    vc(b)
                  end,
                  Set = function(a, b)
                    va.Value = b
                    vb.Btn.Title.Text = vc .. " - " .. table.concat(va.Value, ", ")
                    return vd(va.Value)
                  end
                }
              end,
              Colorpicker = function(a, b, c, d, e)
                game:GetObjects("rbxassetid://7329998014")[1].Hue.Visible, game:GetObjects("rbxassetid://7329998014")[1].Color.Visible = {Value = c, Toggled = false}.Toggled, {Value = c, Toggled = false}.Toggled
                game:GetObjects("rbxassetid://7329998014")[1].Parent = va
                game:GetObjects("rbxassetid://7329998014")[1].Btn.Colorpicker.Text = b
                game:GetObjects("rbxassetid://7329998014")[1].Name = b .. "element"
                game:GetObjects("rbxassetid://7329998014")[1].Btn.Box.BackgroundColor3 = c
                game:GetObjects("rbxassetid://7329998014")[1].Hue.HueGradient.Color = ColorSequence.new({
                  ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 0, 4)),
                  ColorSequenceKeypoint.new(0,2, Color3.fromRGB(234, 255, 0)),
                  ColorSequenceKeypoint.new(0,4, Color3.fromRGB(21, 255, 0)),
                  ColorSequenceKeypoint.new(0,6, Color3.fromRGB(0, 255, 255)),
                  ColorSequenceKeypoint.new(0,8, Color3.fromRGB(0, 17, 255)),
                  ColorSequenceKeypoint.new(0,9, Color3.fromRGB(255, 0, 251)),
                  ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 0, 4))
                })
                vb(game:GetObjects("rbxassetid://7329998014")[1].Btn.MouseButton1Click, function()
                  va.Toggled = not va.Toggled
                  if vb or not UDim2.new(1, 0, 0, 120) then
                  end
                  vb:Create(vc, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                    Size = UDim2.new(1, 0, 0, 32)
                  }):Play()
                  vc.Hue.Visible, vc.Color.Visible = va.Toggled, va.Toggled
                end)
                game:GetObjects("rbxassetid://7329998014")[1].Btn.Box.BackgroundColor3 = c
                game:GetObjects("rbxassetid://7329998014")[1].Color.BackgroundColor3 = c
                pcall(e, game:GetObjects("rbxassetid://7329998014")[1].Btn.Box.BackgroundColor3)
                vb(game:GetObjects("rbxassetid://7329998014")[1].Color.InputBegan, function(a)
                  if a.UserInputType == Enum.UserInputType.MouseButton1 then
                    if not a then
                      ColorInput:Disconnect()
                    end
                    ColorInput = va.RenderStepped:Connect(function()
                      vd, vc.Position = math.clamp(va.X - vb.AbsolutePosition.X, 0, vb.AbsoluteSize.X) / vb.AbsoluteSize.X, UDim2.new(math.clamp(va.X - vb.AbsolutePosition.X, 0, vb.AbsoluteSize.X) / vb.AbsoluteSize.X, 0, math.clamp(va.Y - vb.AbsolutePosition.Y, 0, vb.AbsoluteSize.Y) / vb.AbsoluteSize.Y, 0)
                      ve = 1 - math.clamp(va.Y - vb.AbsolutePosition.Y, 0, vb.AbsoluteSize.Y) / vb.AbsoluteSize.Y
                      vg(true)
                    end)
                  end
                end)
                vb(game:GetObjects("rbxassetid://7329998014")[1].Color.InputEnded, function(a)
                  if a.UserInputType == Enum.UserInputType.MouseButton1 and not a then
                    ColorInput:Disconnect()
                  end
                end)
                vb(game:GetObjects("rbxassetid://7329998014")[1].Hue.InputBegan, function(a)
                  if a.UserInputType == Enum.UserInputType.MouseButton1 then
                    if HueInput then
                      HueInput:Disconnect()
                    end
                    HueInput = va.RenderStepped:Connect(function()
                      vc.Position = UDim2.new(0,48, 0, math.clamp(va.Y - vb.AbsolutePosition.Y, 0, vb.AbsoluteSize.Y) / vb.AbsoluteSize.Y, 0)
                      vd = 1 - math.clamp(va.Y - vb.AbsolutePosition.Y, 0, vb.AbsoluteSize.Y) / vb.AbsoluteSize.Y
                      ve(true)
                    end)
                  end
                end)
                vb(game:GetObjects("rbxassetid://7329998014")[1].Hue.InputEnded, function(a)
                  if a.UserInputType == Enum.UserInputType.MouseButton1 and not a then
                    HueInput:Disconnect()
                  end
                end)
                spawn(function()
                  while wait() and not va do
                    vb.BackgroundColor3 = va.Themes[va.Settings.Theme].Colorpicker
                    vb.Btn.Colorpicker.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                  end
                end)
                return {Value = c, Toggled = false}
              end,
              Label = function(a, b)
                game:GetObjects("rbxassetid://7032552322")[1].Parent = va
                game:GetObjects("rbxassetid://7032552322")[1].Title.Text = b
                game:GetObjects("rbxassetid://7032552322")[1].Name = b .. "element"
                spawn(function()
                  while not nil and va:IsRunning() do
                    vb.BackgroundColor3 = va.Themes[va.Settings.Theme].Label
                    vb.Title.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                  end
                end)
                return {
                  Set = function(a, b)
                    va.Title.Text = b
                    va.Name = vb .. "element"
                  end
                }
              end,
              Textbox = function(a, b, c, d)
                game:GetObjects("rbxassetid://7147292392")[1].Parent = va
                game:GetObjects("rbxassetid://7147292392")[1].Title.Text = b
                game:GetObjects("rbxassetid://7147292392")[1].Name = b .. "element"
                vb(game:GetObjects("rbxassetid://7147292392")[1].Box.Changed, function()
                  va.Box.Size = UDim2.new(0, 3 + 16, 0, 22)
                end)
                game:GetObjects("rbxassetid://7147292392")[1].Box.PlaceholderText = "                  "
                vb(game:GetObjects("rbxassetid://7147292392")[1].InputBegan, function(a)
                  if a.UserInputType == Enum.UserInputType.MouseButton1 then
                    va.Box:CaptureFocus()
                  end
                end)
                vb(game:GetObjects("rbxassetid://7147292392")[1].Box.FocusLost, function()
                  if vb then
                    va.Box.Text = ""
                  end
                  return vc(va.Box.Text)
                end)
                vb(vc.InputBegan, function(a)
                  if a.KeyCode == Enum.KeyCode.Escape and va.Box:IsFocused() then
                    va.Box:ReleaseFocus()
                  end
                end)
                spawn(function()
                  while not nil and va:IsRunning() do
                    vb.BackgroundColor3 = va.Themes[va.Settings.Theme].Textbox
                    vb.Title.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                    vb.Box.BackgroundColor3 = va.Themes[va.Settings.Theme].TextboxFrame
                    vb.Box.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                  end
                end)
                return {}
              end,
              Bind = function(a, b, c, d, e, g)
                game:GetObjects("rbxassetid://7126874744")[1].Parent = va
                game:GetObjects("rbxassetid://7126874744")[1].Title.Text = b
                game:GetObjects("rbxassetid://7126874744")[1].Name = b .. "element"
                vb(game:GetObjects("rbxassetid://7126874744")[1].InputEnded, function(a)
                  if a.UserInputType == Enum.UserInputType.MouseButton1 then
                    if va.Binding then
                      return
                    end
                    va.Binding = true
                    vb.BText.Text = "..."
                  end
                end)
                vb(vc.InputBegan, function(a)
                  if not a then
                    return
                  end
                  if (a.KeyCode.Name == vb.Value or a.UserInputType.Name == vb.Value) and not vb.Binding then
                    if vc then
                      Holding = true
                      vd(Holding)
                    else
                      vd()
                    end
                  elseif vb.Binding then
                    pcall(function()
                      if vb then
                        vd = vc.KeyCode
                      end
                    end)
                    pcall(function()
                      if not vb and vb then
                        vd = vc.UserInputType
                      end
                    end)
                    if a then
                    end
                    vb:Set(vb.Value)
                  end
                end)
                vb(vc.InputEnded, function(a)
                  if (a.KeyCode.Name == va.Value or a.UserInputType.Name == va.Value) and not a and Holding then
                    Holding = false
                    vc(Holding)
                  end
                end)
                spawn(function()
                  while not nil and not va do
                    vb.BackgroundColor3 = va.Themes[va.Settings.Theme].Bind
                    vb.Title.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                    vb.BText.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                  end
                end)
                {
                  Value,
                  Binding = false,
                  Holding = false,
                  Set = function(a, b)
                    a.Binding = false
                    a.Value = b or a.Value
                    a.Value = a.Value.Name or a.Value
                    va.BText.Text = a.Value
                  end
                }:Set(c)
                vh.Flags[e] = {
                  Value,
                  Binding = false,
                  Holding = false,
                  Set = function(a, b)
                    a.Binding = false
                    a.Value = b or a.Value
                    a.Value = a.Value.Name or a.Value
                    va.BText.Text = a.Value
                  end
                }
                return {
                  Value,
                  Binding = false,
                  Holding = false,
                  Set = function(a, b)
                    a.Binding = false
                    a.Value = b or a.Value
                    a.Value = a.Value.Name or a.Value
                    va.BText.Text = a.Value
                  end
                }
              end
            }
          end
        }
      end
    }
  end
}:IsRunning() or Instance.new("ScreenGui").Parent ~= game:GetService("CoreGui") then
  return
end
while true do
  if {
    Validate = function(a)
      return type(true) == "boolean" == (type(va) == "boolean") and va == true
    end,
    Invalidate = function(a)
      return type(true) == "boolean" == (type(va) == "boolean") and va == false
    end
  }:Invalidate() == {
    Validate = function(a)
      return type(true) == "boolean" == (type(va) == "boolean") and va == true
    end,
    Invalidate = function(a)
      return type(true) == "boolean" == (type(va) == "boolean") and va == false
    end
  }:Validate() then
  end
end
while true do
  if not Instance.new("ScreenGui") then
  end
end
if not {
  GUI = Instance.new("ScreenGui"),
  Connections = {},
  NGUI = Instance.new("ScreenGui"),
  trillhashedipaddress = "c2hlCnNheQpkbwp5b3UKbG92ZQptZQppCnRlbGwKaGVyCmkKYW0KbW9ua2U",
  Version = "V2",
  Themes = {
    Default = {
      MainFrame = Color3.fromRGB(25, 25, 25),
      TopBar = Color3.fromRGB(30, 30, 30),
      TextColor = Color3.fromRGB(255, 255, 255),
      Menu = Color3.fromRGB(37, 37, 37),
      TabToggled = Color3.fromRGB(43, 43, 43),
      Button = Color3.fromRGB(30, 30, 30),
      ButtonHold = Color3.fromRGB(31, 31, 31),
      Toggle = Color3.fromRGB(30, 30, 30),
      ToggleFrame = Color3.fromRGB(55, 55, 55),
      ToggleToggled = Color3.fromRGB(22, 168, 76),
      Slider = Color3.fromRGB(30, 30, 30),
      SliderBar = Color3.fromRGB(25, 25, 25),
      SliderInc = Color3.fromRGB(60, 60, 60),
      Dropdown = Color3.fromRGB(30, 30, 30),
      DropdownItem = Color3.fromRGB(30, 30, 30),
      Textbox = Color3.fromRGB(30, 30, 30),
      TextboxFrame = Color3.fromRGB(25, 25, 25),
      Colorpicker = Color3.fromRGB(30, 30, 30),
      Label = Color3.fromRGB(30, 30, 30),
      Bind = Color3.fromRGB(30, 30, 30)
    },
    Light = {
      MainFrame = Color3.fromRGB(255, 255, 255),
      TopBar = Color3.fromRGB(227, 227, 227),
      TextColor = Color3.fromRGB(0, 0, 0),
      Menu = Color3.fromRGB(227, 227, 227),
      TabToggled = Color3.fromRGB(43, 43, 43),
      Button = Color3.fromRGB(227, 227, 227),
      ButtonHold = Color3.fromRGB(31, 31, 31),
      Toggle = Color3.fromRGB(227, 227, 227),
      ToggleFrame = Color3.fromRGB(55, 55, 55),
      ToggleToggled = Color3.fromRGB(22, 168, 76),
      Slider = Color3.fromRGB(227, 227, 227),
      SliderBar = Color3.fromRGB(220, 220, 220),
      SliderInc = Color3.fromRGB(233, 233, 233),
      Dropdown = Color3.fromRGB(227, 227, 227),
      DropdownItem = Color3.fromRGB(227, 227, 227),
      Textbox = Color3.fromRGB(227, 227, 227),
      TextboxFrame = Color3.fromRGB(220, 220, 220),
      Colorpicker = Color3.fromRGB(227, 227, 2270),
      Label = Color3.fromRGB(227, 227, 227),
      Bind = Color3.fromRGB(227, 227, 227)
    },
    Discord = {
      MainFrame = Color3.fromRGB(54, 57, 63),
      TopBar = Color3.fromRGB(47, 49, 54),
      TextColor = Color3.fromRGB(255, 255, 255),
      Menu = Color3.fromRGB(47, 49, 54),
      TabToggled = Color3.fromRGB(54, 57, 63),
      Button = Color3.fromRGB(88, 101, 242),
      ButtonHold = Color3.fromRGB(71, 82, 196),
      Toggle = Color3.fromRGB(47, 49, 54),
      ToggleFrame = Color3.fromRGB(67, 69, 74),
      ToggleToggled = Color3.fromRGB(22, 168, 76),
      Slider = Color3.fromRGB(47, 49, 54),
      SliderBar = Color3.fromRGB(42, 44, 49),
      SliderInc = Color3.fromRGB(62, 64, 69),
      Dropdown = Color3.fromRGB(47, 49, 54),
      DropdownItem = Color3.fromRGB(47, 49, 54),
      Textbox = Color3.fromRGB(47, 49, 54),
      TextboxFrame = Color3.fromRGB(42, 44, 49),
      Colorpicker = Color3.fromRGB(47, 49, 54),
      Label = Color3.fromRGB(47, 49, 54),
      Bind = Color3.fromRGB(47, 49, 54)
    },
    Blue = {
      MainFrame = Color3.fromRGB(35, 35, 50),
      TopBar = Color3.fromRGB(40, 40, 55),
      TextColor = Color3.fromRGB(255, 255, 255),
      Menu = Color3.fromRGB(47, 47, 62),
      TabToggled = Color3.fromRGB(53, 53, 68),
      Button = Color3.fromRGB(40, 40, 55),
      ButtonHold = Color3.fromRGB(41, 41, 56),
      Toggle = Color3.fromRGB(40, 40, 55),
      ToggleFrame = Color3.fromRGB(65, 65, 80),
      ToggleToggled = Color3.fromRGB(64, 64, 120),
      Slider = Color3.fromRGB(40, 40, 55),
      SliderBar = Color3.fromRGB(35, 35, 50),
      SliderInc = Color3.fromRGB(70, 70, 85),
      Dropdown = Color3.fromRGB(40, 40, 55),
      DropdownItem = Color3.fromRGB(40, 40, 55),
      Textbox = Color3.fromRGB(40, 40, 55),
      TextboxFrame = Color3.fromRGB(35, 35, 50),
      Colorpicker = Color3.fromRGB(40, 40, 55),
      Label = Color3.fromRGB(40, 40, 55),
      Bind = Color3.fromRGB(40, 40, 55)
    },
    Red = {
      MainFrame = Color3.fromRGB(50, 35, 35),
      TopBar = Color3.fromRGB(55, 40, 40),
      TextColor = Color3.fromRGB(255, 255, 255),
      Menu = Color3.fromRGB(62, 47, 47),
      TabToggled = Color3.fromRGB(68, 53, 53),
      Button = Color3.fromRGB(55, 40, 40),
      ButtonHold = Color3.fromRGB(56, 41, 41),
      Toggle = Color3.fromRGB(55, 40, 40),
      ToggleFrame = Color3.fromRGB(80, 65, 65),
      ToggleToggled = Color3.fromRGB(120, 64, 64),
      Slider = Color3.fromRGB(55, 40, 40),
      SliderBar = Color3.fromRGB(50, 35, 35),
      SliderInc = Color3.fromRGB(85, 70, 70),
      Dropdown = Color3.fromRGB(55, 40, 40),
      DropdownItem = Color3.fromRGB(55, 40, 40),
      Textbox = Color3.fromRGB(55, 40, 40),
      TextboxFrame = Color3.fromRGB(50, 35, 35),
      Colorpicker = Color3.fromRGB(55, 40, 40),
      Label = Color3.fromRGB(55, 40, 40),
      Bind = Color3.fromRGB(55, 40, 40)
    },
    Green = {
      MainFrame = Color3.fromRGB(35, 50, 35),
      TopBar = Color3.fromRGB(40, 55, 40),
      TextColor = Color3.fromRGB(255, 255, 255),
      Menu = Color3.fromRGB(47, 62, 47),
      TabToggled = Color3.fromRGB(53, 68, 53),
      Button = Color3.fromRGB(40, 55, 40),
      ButtonHold = Color3.fromRGB(41, 56, 41),
      Toggle = Color3.fromRGB(40, 55, 40),
      ToggleFrame = Color3.fromRGB(65, 80, 65),
      ToggleToggled = Color3.fromRGB(64, 120, 64),
      Slider = Color3.fromRGB(40, 55, 40),
      SliderBar = Color3.fromRGB(35, 50, 35),
      SliderInc = Color3.fromRGB(70, 85, 70),
      Dropdown = Color3.fromRGB(40, 55, 40),
      DropdownItem = Color3.fromRGB(40, 55, 40),
      Textbox = Color3.fromRGB(40, 55, 40),
      TextboxFrame = Color3.fromRGB(35, 50, 35),
      Colorpicker = Color3.fromRGB(40, 55, 40),
      Label = Color3.fromRGB(40, 55, 40),
      Bind = Color3.fromRGB(40, 55, 40)
    }
  },
  Settings = {
    Theme = "Default",
    ShowFriendsOnLaunch = true,
    ShowMusicOnLaunch = true,
    CloseBind = "RightControl"
  },
  Flags = {},
  CurrentTab,
  Settings = game:GetService("HttpService"):JSONDecode(readfile("SolarisHub/settings.txt")),
  LoadCfg = function(a, b)
    table.foreach(va:JSONDecode(b), function(a, b)
      if va.Flags[a] then
        spawn(function()
          va.Flags[vb]:Set(vc)
        end)
      else
        warn("cfg loader - could not find", a, b)
      end
    end)
  end,
  SaveCfg = function(a, b)
    for fh, fj in pairs(va.Flags) do
    end
    writefile("SolarisHub/configs/" .. b .. ".txt", tostring(vb:JSONEncode({
      [fh] = fj.Value
    })))
  end,
  Notification = function(a, b, c)
    va:New(b, c)
  end,
  New = function(a, b)
    if b ~= "az8PYYKgEGsZM3nDeQzCW4y92qHurAmCBTujBe63gwRj" then
      print("nigger detected")
      while true do
        if false == false then
        end
      end
    end
    va.Parent = vb
    va.MainFrame.TopBar.TopFrameTitle.Text = "Solaris <font transparency=\"0.4\">" .. vc.Version .. "</font>"
    vd(va.MainFrame.TopBar, va)
    game:GetObjects("rbxassetid://7037141226")[1]:Clone().Parent = va.MainFrame.TopBar.ButtonHolder.MenuBtn.MenuFrame
    game:GetObjects("rbxassetid://7037141226")[1]:Clone().Position = UDim2.new(0, 0, 0, 5)
    game:GetObjects("rbxassetid://7037141226")[1]:Clone().Text = "Friends"
    ve(game:GetObjects("rbxassetid://7037141226")[1]:Clone().MouseEnter, function()
      va:Create(vb, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextTransparency = 0}):Play()
    end)
    ve(game:GetObjects("rbxassetid://7037141226")[1]:Clone().MouseLeave, function()
      va:Create(vb, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextTransparency = 0,4}):Play()
    end)
    game:GetObjects("rbxassetid://7037141226")[1]:Clone().Parent = va.MainFrame.TopBar.ButtonHolder.MenuBtn.MenuFrame
    game:GetObjects("rbxassetid://7037141226")[1]:Clone().Position = UDim2.new(0, 0, 0, 25)
    game:GetObjects("rbxassetid://7037141226")[1]:Clone().Text = "Music"
    ve(game:GetObjects("rbxassetid://7037141226")[1]:Clone().MouseEnter, function()
      va:Create(vb, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextTransparency = 0}):Play()
    end)
    ve(game:GetObjects("rbxassetid://7037141226")[1]:Clone().MouseLeave, function()
      va:Create(vb, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextTransparency = 0,4}):Play()
    end)
    game:GetObjects("rbxassetid://7037141226")[1]:Clone().Parent = va.MainFrame.TopBar.ButtonHolder.MenuBtn.MenuFrame
    game:GetObjects("rbxassetid://7037141226")[1]:Clone().Position = UDim2.new(0, 0, 0, 45)
    game:GetObjects("rbxassetid://7037141226")[1]:Clone().Text = "Settings"
    ve(game:GetObjects("rbxassetid://7037141226")[1]:Clone().MouseEnter, function()
      va:Create(vb, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextTransparency = 0}):Play()
    end)
    ve(game:GetObjects("rbxassetid://7037141226")[1]:Clone().MouseLeave, function()
      va:Create(vb, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextTransparency = 0,4}):Play()
    end)
    function MusicConstructor()
      game:GetObjects("rbxassetid://7296373622")[1].Parent = va
      game:GetObjects("rbxassetid://7296373622")[1].ZIndex = 5
      game:GetObjects("rbxassetid://7296373622")[1].Visible = vb.Settings.ShowMusicOnLaunch
      game:GetObjects("rbxassetid://7296373622")[1].Frame.Title.Text = "Not Playing"
      game:GetObjects("rbxassetid://7296373622")[1].Frame.Progress.ProgressFrame.Size = UDim2.new(0, 0, 1, 0)
      game:GetObjects("rbxassetid://7296373622")[1].Frame.AddBtn.AutoButtonColor = false
      vc(game:GetObjects("rbxassetid://7296373622")[1].Frame.TopBar, game:GetObjects("rbxassetid://7296373622")[1])
      vd(game:GetObjects("rbxassetid://7296373622")[1].Frame.TopBar.CloseBtn.MouseButton1Click, function()
        va.Visible = false
      end)
      vd(game:GetObjects("rbxassetid://7296373622")[1].Frame.TopBar.CloseBtn.MouseEnter, function()
        va:Create(vb.Frame.TopBar.CloseBtn.Ico, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageTransparency = 0}):Play()
      end)
      vd(game:GetObjects("rbxassetid://7296373622")[1].Frame.TopBar.CloseBtn.MouseLeave, function()
        va:Create(vb.Frame.TopBar.CloseBtn.Ico, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageTransparency = 0,4}):Play()
      end)
      vd(vg.MouseButton1Click, function()
        va.Visible = not va.Visible
        vb.TopBar.ButtonHolder.MenuBtn.MenuFrame.Visible = false
      end)
      Instance.new("Sound").Parent, Instance.new("Sound").Name = game:GetObjects("rbxassetid://7296373622")[1], "Sound"
      Instance.new("Sound").Volume = 3
      Instance.new("Sound"):Stop()
      if not isfile("SolarisHub/music.txt") then
        writefile("SolarisHub/music.txt", tostring(vj:JSONEncode({})))
      end
      function Save()
        for fe, fg in pairs(va) do
        end
        writefile("SolarisHub/music.txt", tostring(vb:JSONEncode({
          [fe] = fg
        })))
      end
      vd(game:GetObjects("rbxassetid://7296373622")[1].Frame.Play.MouseButton1Click, function()
        va = not va
        if va then
          vb:Pause()
        else
          vb:Resume()
        end
        vc.Frame.Play.Image = vc.Frame.Play or "http://www.roblox.com/asset/?id=6026663719"
      end)
      vd(game:GetObjects("rbxassetid://7296373622")[1].Frame.AddBtn.MouseButton1Click, function()
        if not table.find(vb, va.Frame.AddSong.Text) then
          table.insert(vb, va.Frame.AddSong.Text)
          Save()
          vc(vb)
        end
      end)
      vd(game:GetObjects("rbxassetid://7296373622")[1].Frame.AddBtn.MouseEnter, function()
        va = true
      end)
      vd(game:GetObjects("rbxassetid://7296373622")[1].Frame.AddBtn.MouseLeave, function()
        va = false
      end);
      (function(a)
        for fe, fg in next, va.Frame.MusicList.Scroll:GetChildren() do
          if fg.Name == "Btn" then
            fg:Destroy()
          end
        end
        for fe, fg in next, a, nil do
          if not next and pcall(vb.GetProductInfo, vb, fg).AssetTypeId == 3 then
            vc:Clone().Parent = va.Frame.MusicList.Scroll
            vc:Clone().Title.Text = pcall(vb.GetProductInfo, vb, fg).Name
            vd(vc:Clone().MouseButton1Click, function()
              va(vb, vc.Name)
            end)
            vd(vc:Clone().Delete.MouseButton1Click, function()
              for fd, fe in next, va, nil do
                if fe == vb then
                  table.remove(va, fd)
                end
              end
              Save()
              vc:Destroy()
            end)
          end
        end
      end)((vj:JSONDecode(readfile("SolarisHub/music.txt"))))
      vd(game:GetService("RunService").RenderStepped, function()
        if string.len(math.floor(va.TimePosition) % 60) < 2 then
        end
        if string.len((math.floor(math.floor(va.TimePosition) / 60))) < 2 then
        end
        if 2 >= string.len(math.floor(va.TimeLength) % 60) then
        end
        if 2 > string.len((math.floor(math.floor(va.TimeLength) / 60))) then
        end
        if vb:IsDescendantOf(vc) and vb:FindFirstChild("Frame") then
          vb.Frame.Timer1.Text = ("0" .. math.floor(math.floor(va.TimePosition) / 60)) .. ":" .. "0" .. math.floor(va.TimePosition) % 60
          vb.Frame.Timer2.Text = ("0" .. math.floor(math.floor(va.TimeLength) / 60)) .. ":" .. "0" .. math.floor(va.TimeLength) % 60
          vb.Frame.Progress.ProgressFrame.Size = UDim2.new(va.TimePosition / va.TimeLength, 0, 1, 0)
        end
      end)
      spawn(function()
        while wait() and not va do
          vb.Frame.BackgroundColor3 = va.Themes[va.Settings.Theme].MainFrame
          vb.Frame.TopBar.ImageColor3 = va.Themes[va.Settings.Theme].TopBar
          vb.Frame.TopBar.CloseBtn.Ico.ImageColor3 = va.Themes[va.Settings.Theme].TextColor
          vb.Frame.MusicList.BackgroundColor3 = va.Themes[va.Settings.Theme].TopBar
          if vb.Frame.AddBtn or not va.Themes[va.Settings.Theme].ButtonHold then
          end
          vb.Frame.AddBtn.BackgroundColor3 = va.Themes[va.Settings.Theme].Button
          vb.Frame.Progress.BackgroundColor3 = va.Themes[va.Settings.Theme].Slider
          vb.Frame.Progress.ProgressFrame.BackgroundColor3 = va.Themes[va.Settings.Theme].SliderInc
          vb.Frame.AddSong.BackgroundColor3 = va.Themes[va.Settings.Theme].Textbox
        end
      end)
    end
    function SettingsConstructor()
      game:GetObjects("rbxassetid://7167491516")[1].Parent = va
      vb(game:GetObjects("rbxassetid://7167491516")[1].Main.TopBar.CloseBtn.MouseEnter, function()
        va:Create(vb.TopBar.CloseBtn.Ico, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageTransparency = 0}):Play()
      end)
      vb(game:GetObjects("rbxassetid://7167491516")[1].Main.TopBar.CloseBtn.MouseLeave, function()
        va:Create(vb.TopBar.CloseBtn.Ico, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageTransparency = 0,4}):Play()
      end)
      vb(vd.MouseButton1Click, function()
        va.Visible = not va.Visible
        vb.TopBar.ButtonHolder.MenuBtn.MenuFrame.Visible = false
      end)
      vb(game:GetObjects("rbxassetid://7167491516")[1].Main.TopBar.CloseBtn.MouseButton1Click, function()
        va.Visible = false
      end)
      function SaveSettings()
        for fe, fg in pairs(va.Settings) do
        end
        writefile("SolarisHub/settings.txt", tostring(vb:JSONEncode({
          [fe] = fg
        })))
      end
      spawn(function()
        while wait() and not va do
          vb.BackgroundColor3 = va.Themes[va.Settings.Theme].MainFrame
          vb.TopBar.ImageColor3 = va.Themes[va.Settings.Theme].TopBar
          vb.TopBar.CloseBtn.Ico.ImageColor3 = va.Themes[va.Settings.Theme].TextColor
          vb.TopBar.TopFrameTitle.TextColor3 = va.Themes[va.Settings.Theme].TextColor
          vb.TabHolder.BackgroundColor3 = va.Themes[va.Settings.Theme].TopBar
        end
      end)
      {
        Tab = function(a, b)
          va:Clone().Parent = vc.TabHolder
          va:Clone().Text = b
          va:Clone().Size = UDim2.new(0, va:Clone().TextBounds.X, 1, 0)
          vb:Clone().Parent = vc.ContainerFolder
          vb:Clone().Visible = false
          if not b then
            va:Clone().TextTransparency = 0
            vb:Clone().Visible = true
            vd = false
          end
          ve(va:Clone().MouseButton1Click, function()
            for fd, fe in next, va.TabHolder:GetChildren() do
              if fe.Name == "Tab" then
                fe.TextTransparency = 0,4
              end
            end
            for fd, fe in next, va.ContainerFolder:GetChildren() do
              if fe.Name == "Container" then
                fe.Visible = false
              end
            end
            vb.TextTransparency = 0
            vc.Visible = true
          end)
          return {
            ToggleSetting = function(a, b, c, d, e)
              if b then
              end
              vb:Clone().Parent = vc
              vb:Clone().Title.Text = b
              vb:Clone().Desc.Text = c
              (function(a)
                va:Create(vb.ToggleFrame.ToggleToggled.ToggleIco, TweenInfo.new(0,2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                  ImageTransparency = a and 1
                }):Play()
                if va.Create or va.Create then
                end
                va:Create(vb.ToggleFrame.ToggleToggled.ToggleIco, TweenInfo.new(0,2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                  Size = UDim2.new(1, -6, 1, -6)
                }):Play()
              end)(d)
              ve(vb:Clone().MouseButton1Click, function()
                va(not vb)
              end)
              spawn(function()
                while wait() and va:IsRunning() do
                  if vb.ToggleFrame.ToggleToggled or not va.Themes[va.Settings.Theme].ToggleToggled then
                  end
                  vb.ToggleFrame.ToggleToggled.BackgroundColor3 = va.Themes[va.Settings.Theme].MainFrame
                  if vb.ToggleFrame or not va.Themes[va.Settings.Theme].ToggleToggled then
                  end
                  vb.ToggleFrame.BackgroundColor3 = va.Themes[va.Settings.Theme].ToggleFrame
                  vb.Title.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                end
              end)
            end,
            BindSetting = function(a, b, c, d, e)
              vb:Clone().Parent = vc
              vb:Clone().Title.Text = b
              vb:Clone().Desc.Text = c
              function SetValue(a)
                va = false
                vb = a or vb
                if a then
                end
                vb = vb
                vc.BText.Text = vb
                vd.Settings[ve] = vb
                SaveSettings()
              end
              SetValue(va.Settings[e] or d)
              ve(vb:Clone().InputEnded, function(a)
                if a.UserInputType == Enum.UserInputType.MouseButton1 then
                  if va then
                    return
                  end
                  va = true
                  vb.BText.Text = "..."
                end
              end)
              ve(vg.InputBegan, function(a)
                if va:GetFocusedTextBox() then
                  return
                end
                if vb then
                  pcall(function()
                    if vb then
                      vd = vc.KeyCode
                    end
                  end)
                  pcall(function()
                    if va(vb, vc.UserInputType) and vb then
                      vd = vc.UserInputType
                    end
                  end)
                  if a then
                  end
                  SetValue(vg)
                end
              end)
              spawn(function()
                while not nil and not va do
                  vb.Desc.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                  vb.BText.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                  vb.Title.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                end
              end)
            end,
            Dropdown = function(a, b, c, d, e, g)
              vb:Clone().Parent = vc
              vb:Clone().Title.Text = b
              vb:Clone().Desc.Text = c
              vb:Clone().Main.Current.Text = va.Settings[g] or e
              function Toggle()
                va.Main.Holder.Visible = vb
                if va.Main.Holder or not UDim2.new(1, 0, 0, va.Main.Holder.UIListLayout.AbsoluteContentSize.Y) then
                end
                va.Main.Holder.Size = UDim2.new(1, 0, 0, 0)
                if not UDim2.new(1, 0, 0, 0) then
                  if 0 + 1 > 190 then
                    vc.CanvasSize = UDim2.new(0, 0, 0, 5 + 6)
                  end
                else
                  vc.CanvasSize = UDim2.new(0, 0, 0, vc.UIListLayout.AbsoluteContentSize.Y)
                end
                vd:Create(va.Main.Ico, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                  Rotation = vd or 0
                }):Play()
              end
              ve(vb:Clone().InputEnded, function(a)
                if a.UserInputType == Enum.UserInputType.MouseButton1 then
                  va = not va
                  Toggle()
                end
              end)
              spawn(function()
                while wait() and va:IsRunning() do
                  vb.Main.ImageColor3 = va.Themes[va.Settings.Theme].TopBar
                  vb.Main.Holder.ImageColor3 = va.Themes[va.Settings.Theme].TopBar
                end
              end);
              (function(a)
                spawn(function()
                  for fd, fe in pairs(va) do
                    vb:Clone().Parent = vc.Main.Holder
                    vb:Clone().Text = fe
                    vd(vb:Clone().MouseButton1Click, function()
                      va = vb
                      vc.Settings[vd] = va
                      ve.Main.Current.Text = va
                      SaveSettings()
                    end)
                    spawn(function()
                      while not nil and va:IsRunning() do
                        vb.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                      end
                    end)
                  end
                end)
              end)(d)
            end
          }
        end
      }:Tab("General"):ToggleSetting("Show Friends On Launch", "Shows the friends menu when you load Solaris", true, "ShowFriendsOnLaunch")
      {
        Tab = function(a, b)
          va:Clone().Parent = vc.TabHolder
          va:Clone().Text = b
          va:Clone().Size = UDim2.new(0, va:Clone().TextBounds.X, 1, 0)
          vb:Clone().Parent = vc.ContainerFolder
          vb:Clone().Visible = false
          if not b then
            va:Clone().TextTransparency = 0
            vb:Clone().Visible = true
            vd = false
          end
          ve(va:Clone().MouseButton1Click, function()
            for fd, fe in next, va.TabHolder:GetChildren() do
              if fe.Name == "Tab" then
                fe.TextTransparency = 0,4
              end
            end
            for fd, fe in next, va.ContainerFolder:GetChildren() do
              if fe.Name == "Container" then
                fe.Visible = false
              end
            end
            vb.TextTransparency = 0
            vc.Visible = true
          end)
          return {
            ToggleSetting = function(a, b, c, d, e)
              if b then
              end
              vb:Clone().Parent = vc
              vb:Clone().Title.Text = b
              vb:Clone().Desc.Text = c
              (function(a)
                va:Create(vb.ToggleFrame.ToggleToggled.ToggleIco, TweenInfo.new(0,2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                  ImageTransparency = a and 1
                }):Play()
                if va.Create or va.Create then
                end
                va:Create(vb.ToggleFrame.ToggleToggled.ToggleIco, TweenInfo.new(0,2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                  Size = UDim2.new(1, -6, 1, -6)
                }):Play()
              end)(d)
              ve(vb:Clone().MouseButton1Click, function()
                va(not vb)
              end)
              spawn(function()
                while wait() and va:IsRunning() do
                  if vb.ToggleFrame.ToggleToggled or not va.Themes[va.Settings.Theme].ToggleToggled then
                  end
                  vb.ToggleFrame.ToggleToggled.BackgroundColor3 = va.Themes[va.Settings.Theme].MainFrame
                  if vb.ToggleFrame or not va.Themes[va.Settings.Theme].ToggleToggled then
                  end
                  vb.ToggleFrame.BackgroundColor3 = va.Themes[va.Settings.Theme].ToggleFrame
                  vb.Title.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                end
              end)
            end,
            BindSetting = function(a, b, c, d, e)
              vb:Clone().Parent = vc
              vb:Clone().Title.Text = b
              vb:Clone().Desc.Text = c
              function SetValue(a)
                va = false
                vb = a or vb
                if a then
                end
                vb = vb
                vc.BText.Text = vb
                vd.Settings[ve] = vb
                SaveSettings()
              end
              SetValue(va.Settings[e] or d)
              ve(vb:Clone().InputEnded, function(a)
                if a.UserInputType == Enum.UserInputType.MouseButton1 then
                  if va then
                    return
                  end
                  va = true
                  vb.BText.Text = "..."
                end
              end)
              ve(vg.InputBegan, function(a)
                if va:GetFocusedTextBox() then
                  return
                end
                if vb then
                  pcall(function()
                    if vb then
                      vd = vc.KeyCode
                    end
                  end)
                  pcall(function()
                    if va(vb, vc.UserInputType) and vb then
                      vd = vc.UserInputType
                    end
                  end)
                  if a then
                  end
                  SetValue(vg)
                end
              end)
              spawn(function()
                while not nil and not va do
                  vb.Desc.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                  vb.BText.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                  vb.Title.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                end
              end)
            end,
            Dropdown = function(a, b, c, d, e, g)
              vb:Clone().Parent = vc
              vb:Clone().Title.Text = b
              vb:Clone().Desc.Text = c
              vb:Clone().Main.Current.Text = va.Settings[g] or e
              function Toggle()
                va.Main.Holder.Visible = vb
                if va.Main.Holder or not UDim2.new(1, 0, 0, va.Main.Holder.UIListLayout.AbsoluteContentSize.Y) then
                end
                va.Main.Holder.Size = UDim2.new(1, 0, 0, 0)
                if not UDim2.new(1, 0, 0, 0) then
                  if 0 + 1 > 190 then
                    vc.CanvasSize = UDim2.new(0, 0, 0, 5 + 6)
                  end
                else
                  vc.CanvasSize = UDim2.new(0, 0, 0, vc.UIListLayout.AbsoluteContentSize.Y)
                end
                vd:Create(va.Main.Ico, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                  Rotation = vd or 0
                }):Play()
              end
              ve(vb:Clone().InputEnded, function(a)
                if a.UserInputType == Enum.UserInputType.MouseButton1 then
                  va = not va
                  Toggle()
                end
              end)
              spawn(function()
                while wait() and va:IsRunning() do
                  vb.Main.ImageColor3 = va.Themes[va.Settings.Theme].TopBar
                  vb.Main.Holder.ImageColor3 = va.Themes[va.Settings.Theme].TopBar
                end
              end);
              (function(a)
                spawn(function()
                  for fd, fe in pairs(va) do
                    vb:Clone().Parent = vc.Main.Holder
                    vb:Clone().Text = fe
                    vd(vb:Clone().MouseButton1Click, function()
                      va = vb
                      vc.Settings[vd] = va
                      ve.Main.Current.Text = va
                      SaveSettings()
                    end)
                    spawn(function()
                      while not nil and va:IsRunning() do
                        vb.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                      end
                    end)
                  end
                end)
              end)(d)
            end
          }
        end
      }:Tab("General"):ToggleSetting("Show Music On Launch", "Shows the music menu when you load Solaris", true, "ShowMusicOnLaunch")
      {
        Tab = function(a, b)
          va:Clone().Parent = vc.TabHolder
          va:Clone().Text = b
          va:Clone().Size = UDim2.new(0, va:Clone().TextBounds.X, 1, 0)
          vb:Clone().Parent = vc.ContainerFolder
          vb:Clone().Visible = false
          if not b then
            va:Clone().TextTransparency = 0
            vb:Clone().Visible = true
            vd = false
          end
          ve(va:Clone().MouseButton1Click, function()
            for fd, fe in next, va.TabHolder:GetChildren() do
              if fe.Name == "Tab" then
                fe.TextTransparency = 0,4
              end
            end
            for fd, fe in next, va.ContainerFolder:GetChildren() do
              if fe.Name == "Container" then
                fe.Visible = false
              end
            end
            vb.TextTransparency = 0
            vc.Visible = true
          end)
          return {
            ToggleSetting = function(a, b, c, d, e)
              if b then
              end
              vb:Clone().Parent = vc
              vb:Clone().Title.Text = b
              vb:Clone().Desc.Text = c
              (function(a)
                va:Create(vb.ToggleFrame.ToggleToggled.ToggleIco, TweenInfo.new(0,2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                  ImageTransparency = a and 1
                }):Play()
                if va.Create or va.Create then
                end
                va:Create(vb.ToggleFrame.ToggleToggled.ToggleIco, TweenInfo.new(0,2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                  Size = UDim2.new(1, -6, 1, -6)
                }):Play()
              end)(d)
              ve(vb:Clone().MouseButton1Click, function()
                va(not vb)
              end)
              spawn(function()
                while wait() and va:IsRunning() do
                  if vb.ToggleFrame.ToggleToggled or not va.Themes[va.Settings.Theme].ToggleToggled then
                  end
                  vb.ToggleFrame.ToggleToggled.BackgroundColor3 = va.Themes[va.Settings.Theme].MainFrame
                  if vb.ToggleFrame or not va.Themes[va.Settings.Theme].ToggleToggled then
                  end
                  vb.ToggleFrame.BackgroundColor3 = va.Themes[va.Settings.Theme].ToggleFrame
                  vb.Title.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                end
              end)
            end,
            BindSetting = function(a, b, c, d, e)
              vb:Clone().Parent = vc
              vb:Clone().Title.Text = b
              vb:Clone().Desc.Text = c
              function SetValue(a)
                va = false
                vb = a or vb
                if a then
                end
                vb = vb
                vc.BText.Text = vb
                vd.Settings[ve] = vb
                SaveSettings()
              end
              SetValue(va.Settings[e] or d)
              ve(vb:Clone().InputEnded, function(a)
                if a.UserInputType == Enum.UserInputType.MouseButton1 then
                  if va then
                    return
                  end
                  va = true
                  vb.BText.Text = "..."
                end
              end)
              ve(vg.InputBegan, function(a)
                if va:GetFocusedTextBox() then
                  return
                end
                if vb then
                  pcall(function()
                    if vb then
                      vd = vc.KeyCode
                    end
                  end)
                  pcall(function()
                    if va(vb, vc.UserInputType) and vb then
                      vd = vc.UserInputType
                    end
                  end)
                  if a then
                  end
                  SetValue(vg)
                end
              end)
              spawn(function()
                while not nil and not va do
                  vb.Desc.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                  vb.BText.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                  vb.Title.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                end
              end)
            end,
            Dropdown = function(a, b, c, d, e, g)
              vb:Clone().Parent = vc
              vb:Clone().Title.Text = b
              vb:Clone().Desc.Text = c
              vb:Clone().Main.Current.Text = va.Settings[g] or e
              function Toggle()
                va.Main.Holder.Visible = vb
                if va.Main.Holder or not UDim2.new(1, 0, 0, va.Main.Holder.UIListLayout.AbsoluteContentSize.Y) then
                end
                va.Main.Holder.Size = UDim2.new(1, 0, 0, 0)
                if not UDim2.new(1, 0, 0, 0) then
                  if 0 + 1 > 190 then
                    vc.CanvasSize = UDim2.new(0, 0, 0, 5 + 6)
                  end
                else
                  vc.CanvasSize = UDim2.new(0, 0, 0, vc.UIListLayout.AbsoluteContentSize.Y)
                end
                vd:Create(va.Main.Ico, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                  Rotation = vd or 0
                }):Play()
              end
              ve(vb:Clone().InputEnded, function(a)
                if a.UserInputType == Enum.UserInputType.MouseButton1 then
                  va = not va
                  Toggle()
                end
              end)
              spawn(function()
                while wait() and va:IsRunning() do
                  vb.Main.ImageColor3 = va.Themes[va.Settings.Theme].TopBar
                  vb.Main.Holder.ImageColor3 = va.Themes[va.Settings.Theme].TopBar
                end
              end);
              (function(a)
                spawn(function()
                  for fd, fe in pairs(va) do
                    vb:Clone().Parent = vc.Main.Holder
                    vb:Clone().Text = fe
                    vd(vb:Clone().MouseButton1Click, function()
                      va = vb
                      vc.Settings[vd] = va
                      ve.Main.Current.Text = va
                      SaveSettings()
                    end)
                    spawn(function()
                      while not nil and va:IsRunning() do
                        vb.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                      end
                    end)
                  end
                end)
              end)(d)
            end
          }
        end
      }:Tab("General"):BindSetting("Close Bind", "Hides/Shows the main window when pressed.", Enum.KeyCode.RightControl, "CloseBind")
      {
        Tab = function(a, b)
          va:Clone().Parent = vc.TabHolder
          va:Clone().Text = b
          va:Clone().Size = UDim2.new(0, va:Clone().TextBounds.X, 1, 0)
          vb:Clone().Parent = vc.ContainerFolder
          vb:Clone().Visible = false
          if not b then
            va:Clone().TextTransparency = 0
            vb:Clone().Visible = true
            vd = false
          end
          ve(va:Clone().MouseButton1Click, function()
            for fd, fe in next, va.TabHolder:GetChildren() do
              if fe.Name == "Tab" then
                fe.TextTransparency = 0,4
              end
            end
            for fd, fe in next, va.ContainerFolder:GetChildren() do
              if fe.Name == "Container" then
                fe.Visible = false
              end
            end
            vb.TextTransparency = 0
            vc.Visible = true
          end)
          return {
            ToggleSetting = function(a, b, c, d, e)
              if b then
              end
              vb:Clone().Parent = vc
              vb:Clone().Title.Text = b
              vb:Clone().Desc.Text = c
              (function(a)
                va:Create(vb.ToggleFrame.ToggleToggled.ToggleIco, TweenInfo.new(0,2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                  ImageTransparency = a and 1
                }):Play()
                if va.Create or va.Create then
                end
                va:Create(vb.ToggleFrame.ToggleToggled.ToggleIco, TweenInfo.new(0,2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                  Size = UDim2.new(1, -6, 1, -6)
                }):Play()
              end)(d)
              ve(vb:Clone().MouseButton1Click, function()
                va(not vb)
              end)
              spawn(function()
                while wait() and va:IsRunning() do
                  if vb.ToggleFrame.ToggleToggled or not va.Themes[va.Settings.Theme].ToggleToggled then
                  end
                  vb.ToggleFrame.ToggleToggled.BackgroundColor3 = va.Themes[va.Settings.Theme].MainFrame
                  if vb.ToggleFrame or not va.Themes[va.Settings.Theme].ToggleToggled then
                  end
                  vb.ToggleFrame.BackgroundColor3 = va.Themes[va.Settings.Theme].ToggleFrame
                  vb.Title.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                end
              end)
            end,
            BindSetting = function(a, b, c, d, e)
              vb:Clone().Parent = vc
              vb:Clone().Title.Text = b
              vb:Clone().Desc.Text = c
              function SetValue(a)
                va = false
                vb = a or vb
                if a then
                end
                vb = vb
                vc.BText.Text = vb
                vd.Settings[ve] = vb
                SaveSettings()
              end
              SetValue(va.Settings[e] or d)
              ve(vb:Clone().InputEnded, function(a)
                if a.UserInputType == Enum.UserInputType.MouseButton1 then
                  if va then
                    return
                  end
                  va = true
                  vb.BText.Text = "..."
                end
              end)
              ve(vg.InputBegan, function(a)
                if va:GetFocusedTextBox() then
                  return
                end
                if vb then
                  pcall(function()
                    if vb then
                      vd = vc.KeyCode
                    end
                  end)
                  pcall(function()
                    if va(vb, vc.UserInputType) and vb then
                      vd = vc.UserInputType
                    end
                  end)
                  if a then
                  end
                  SetValue(vg)
                end
              end)
              spawn(function()
                while not nil and not va do
                  vb.Desc.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                  vb.BText.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                  vb.Title.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                end
              end)
            end,
            Dropdown = function(a, b, c, d, e, g)
              vb:Clone().Parent = vc
              vb:Clone().Title.Text = b
              vb:Clone().Desc.Text = c
              vb:Clone().Main.Current.Text = va.Settings[g] or e
              function Toggle()
                va.Main.Holder.Visible = vb
                if va.Main.Holder or not UDim2.new(1, 0, 0, va.Main.Holder.UIListLayout.AbsoluteContentSize.Y) then
                end
                va.Main.Holder.Size = UDim2.new(1, 0, 0, 0)
                if not UDim2.new(1, 0, 0, 0) then
                  if 0 + 1 > 190 then
                    vc.CanvasSize = UDim2.new(0, 0, 0, 5 + 6)
                  end
                else
                  vc.CanvasSize = UDim2.new(0, 0, 0, vc.UIListLayout.AbsoluteContentSize.Y)
                end
                vd:Create(va.Main.Ico, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                  Rotation = vd or 0
                }):Play()
              end
              ve(vb:Clone().InputEnded, function(a)
                if a.UserInputType == Enum.UserInputType.MouseButton1 then
                  va = not va
                  Toggle()
                end
              end)
              spawn(function()
                while wait() and va:IsRunning() do
                  vb.Main.ImageColor3 = va.Themes[va.Settings.Theme].TopBar
                  vb.Main.Holder.ImageColor3 = va.Themes[va.Settings.Theme].TopBar
                end
              end);
              (function(a)
                spawn(function()
                  for fd, fe in pairs(va) do
                    vb:Clone().Parent = vc.Main.Holder
                    vb:Clone().Text = fe
                    vd(vb:Clone().MouseButton1Click, function()
                      va = vb
                      vc.Settings[vd] = va
                      ve.Main.Current.Text = va
                      SaveSettings()
                    end)
                    spawn(function()
                      while not nil and va:IsRunning() do
                        vb.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                      end
                    end)
                  end
                end)
              end)(d)
            end
          }
        end
      }:Tab("Appearance"):Dropdown("Theme", "The look of the user interface", {
        "Default",
        "Light",
        "Discord",
        "Red",
        "Green",
        "Blue"
      }, "Default", "Theme")
    end
    (function()
      game:GetObjects("rbxassetid://7037305928")[1].Parent = va
      game:GetObjects("rbxassetid://7037305928")[1].ZIndex = 4
      game:GetObjects("rbxassetid://7037305928")[1].Visible = vb.Settings.ShowFriendsOnLaunch
      vc(vd.MouseButton1Click, function()
        va.Visible = not va.Visible
        vb.TopBar.ButtonHolder.MenuBtn.MenuFrame.Visible = false
      end)
      vc(game:GetObjects("rbxassetid://7037305928")[1].Frame.TopBar.CloseBtn.Ico.MouseEnter, function()
        va:Create(vb.Frame.TopBar.CloseBtn.Ico, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageTransparency = 0}):Play()
      end)
      vc(game:GetObjects("rbxassetid://7037305928")[1].Frame.TopBar.CloseBtn.Ico.MouseLeave, function()
        va:Create(vb.Frame.TopBar.CloseBtn.Ico, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageTransparency = 0,4}):Play()
      end)
      vc(game:GetObjects("rbxassetid://7037305928")[1].Frame.TopBar.CloseBtn.MouseButton1Click, function()
        va.Visible = false
      end)
      function MakePanel(a)
      end
      function InviteFriend(a)
      end
      function JoinFriend(a)
      end
      vh(game:GetObjects("rbxassetid://7037305928")[1].Frame.TopBar, game:GetObjects("rbxassetid://7037305928")[1])
      for fh, fj in next, {}, nil do
      end
      spawn(function()
        while not nil and not va do
          vb.Frame.BackgroundColor3 = va.Themes[va.Settings.Theme].MainFrame
          vb.Frame.TopBar.ImageColor3 = va.Themes[va.Settings.Theme].TopBar
          vb.Frame.TopBar.CloseBtn.Ico.ImageColor3 = va.Themes[va.Settings.Theme].TextColor
        end
      end)
    end)()
    MusicConstructor()
    SettingsConstructor()
    ve(va.MainFrame.TopBar.TabListBtn.MouseButton1Click, function()
      va()
    end)
    ve(va.MainFrame.TabMenu.Menu.Top.MenuCloseBtn.MouseButton1Click, function()
      va()
    end)
    ve(va.MainFrame.TopBar.ButtonHolder.SearchBtn.MouseButton1Click, function()
      va.TopBar.ButtonHolder.SearchBtn.TextBox.Visible = not va.TopBar.ButtonHolder.SearchBtn.TextBox.Visible
      va.TopBar.TopFrameTitle.Visible = not va.TopBar.TopFrameTitle.Visible
    end)
    ve(va.MainFrame.TopBar.ButtonHolder.CloseBtn.MouseEnter, function()
      va:Create(vb.TopBar.ButtonHolder.CloseBtn.Ico, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageTransparency = 0}):Play()
    end)
    ve(va.MainFrame.TopBar.ButtonHolder.CloseBtn.MouseLeave, function()
      va:Create(vb.TopBar.ButtonHolder.CloseBtn.Ico, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageTransparency = 0,4}):Play()
    end)
    ve(va.MainFrame.TopBar.ButtonHolder.SearchBtn.MouseEnter, function()
      va:Create(vb.TopBar.ButtonHolder.SearchBtn.Ico, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageTransparency = 0}):Play()
    end)
    ve(va.MainFrame.TopBar.ButtonHolder.SearchBtn.MouseLeave, function()
      va:Create(vb.TopBar.ButtonHolder.SearchBtn.Ico, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageTransparency = 0,4}):Play()
    end)
    ve(va.MainFrame.TopBar.ButtonHolder.MenuBtn.MouseEnter, function()
      va:Create(vb.TopBar.ButtonHolder.MenuBtn.Ico, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageTransparency = 0}):Play()
    end)
    ve(va.MainFrame.TopBar.ButtonHolder.MenuBtn.MouseLeave, function()
      va:Create(vb.TopBar.ButtonHolder.MenuBtn.Ico, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageTransparency = 0,4}):Play()
    end)
    ve(va.MainFrame.TopBar.TabListBtn.MouseEnter, function()
      va:Create(vb.TopBar.TabListBtn, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageTransparency = 0}):Play()
    end)
    ve(va.MainFrame.TopBar.TabListBtn.MouseLeave, function()
      va:Create(vb.TopBar.TabListBtn, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageTransparency = 0,4}):Play()
    end)
    ve(va.MainFrame.TopBar.ButtonHolder.MenuBtn.MouseButton1Click, function()
      va.TopBar.ButtonHolder.MenuBtn.MenuFrame.Visible = not va.TopBar.ButtonHolder.MenuBtn.MenuFrame.Visible
    end)
    ve(va.MainFrame.TopBar.ButtonHolder.CloseBtn.MouseButton1Click, function()
      va = not va
      vb.Visible = va
    end)
    function SearchConstructor()
      function StitchElements()
        for fe, fg in next, va.CurrentTab:GetDescendants() do
          if fg.Name:find("element") then
            table.insert({}, fg)
          end
        end
        return {}
      end
      vb(vc.TopBar.ButtonHolder.SearchBtn.TextBox:GetPropertyChangedSignal("Text"), function()
        for fd, fe in pairs(StitchElements()) do
          if va.TopBar.ButtonHolder.SearchBtn.TextBox.Text:len() > 1 then
            if fe.Name:lower():sub(0, -8):find(va.TopBar.ButtonHolder.SearchBtn.TextBox.Text:lower()) then
              fe.Visible = true
            else
              fe.Visible = false
            end
          else
            fe.Visible = true
          end
        end
      end)
    end
    SearchConstructor()
    ve(vk.InputBegan, function(a)
      if (a.KeyCode.Name == va.Settings.CloseBind or a.UserInputType.Name == va.Settings.CloseBind) and not vb then
        vc = not vc
        vd.Visible = vc
      end
    end)
    vc:Notification("Notification", "Solaris has been loaded, press " .. vc.Settings.CloseBind .. " to open/close the UI.")
    spawn(function()
      while wait() and not va do
        vb.BackgroundColor3 = va.Themes[va.Settings.Theme].MainFrame
        vb.TopBar.ImageColor3 = va.Themes[va.Settings.Theme].TopBar
        vb.TopBar.ButtonHolder.CloseBtn.Ico.ImageColor3 = va.Themes[va.Settings.Theme].TextColor
        vb.TopBar.ButtonHolder.MenuBtn.Ico.ImageColor3 = va.Themes[va.Settings.Theme].TextColor
        vb.TopBar.ButtonHolder.SearchBtn.Ico.ImageColor3 = va.Themes[va.Settings.Theme].TextColor
        vb.TopBar.TabListBtn.ImageColor3 = va.Themes[va.Settings.Theme].TextColor
        vb.TopBar.TopFrameTitle.TextColor3 = va.Themes[va.Settings.Theme].TextColor
        vb.TabMenu.Menu.BackgroundColor3 = va.Themes[va.Settings.Theme].Menu
        vb.TabMenu.Menu.Top.MenuCloseBtn.ImageLabel.ImageColor3 = va.Themes[va.Settings.Theme].TextColor
        vb.TopBar.ButtonHolder.SearchBtn.TextBox.BackgroundColor3 = va.Themes[va.Settings.Theme].MainFrame
        vb.TopBar.ButtonHolder.SearchBtn.TextBox.TextColor3 = va.Themes[va.Settings.Theme].TextColor
        vb.TopBar.ButtonHolder.SearchBtn.TextBox.PlaceholderColor3 = va.Themes[va.Settings.Theme].TextColor
        vb.TopBar.ButtonHolder.MenuBtn.MenuFrame.Frame.BackgroundColor3 = va.Themes[va.Settings.Theme].TopBar
      end
    end)
    return {
      Tab = function(a, b)
        va:Clone().AutoButtonColor = false
        va:Clone().Parent = vb.TabMenu.Menu.Holder
        va:Clone().Text = b
        va:Clone().TextSize = 14
        vc:Clone().Parent = vb.ContainerFolder
        vc:Clone().Visible = false
        if vd == false then
          vd = true
          vc:Clone().Visible = true
          va:Clone().UIPadding.PaddingLeft = UDim.new(0, 10)
          va:Clone().TextTransparency = 0
          va:Clone().BackgroundTransparency = 0
          ve.CurrentTab = vc:Clone()
        end
        spawn(function()
          while wait() and va:IsRunning() do
            vb.TextColor3 = va.Themes[va.Settings.Theme].TextColor
            vb.BackgroundColor3 = va.Themes[va.Settings.Theme].TabToggled
            vc.CanvasSize = UDim2.new(0, 0, 0, 5 + 26)
          end
        end)
        vg(va:Clone().MouseButton1Click, function()
          for fd, fe in next, va.TabMenu.Menu.Holder:GetChildren() do
            if fe:IsA("TextButton") then
              vb:Create(fe, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextTransparency = 0,4, BackgroundTransparency = 1}):Play()
              vb:Create(fe.UIPadding, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                PaddingLeft = UDim.new(0, 5)
              }):Play()
            end
            vb:Create(vc, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextTransparency = 0, BackgroundTransparency = 0}):Play()
            vb:Create(vc.UIPadding, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
              PaddingLeft = UDim.new(0, 10)
            }):Play()
          end
          for fd, fe in next, va.ContainerFolder:GetChildren() do
            if fe.Name == "Container" then
              fe.Visible = false
            end
            vd.Visible = true
          end
          tabtoggledname = vc.Name
          ve()
        end)
        return {
          Section = function(a, b)
            va:Clone().Parent = vb
            va:Clone().SectionTitle.Text = b
            spawn(function()
              while not nil and va:IsRunning() do
                vb.SectionTitle.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                vb.Size = UDim2.new(0,9, 0, 0, vb.UIListLayout.AbsoluteContentSize.Y)
              end
            end)
            return {
              Button = function(a, b, c)
                game:GetObjects("rbxassetid://6937142338")[1].Parent = va
                game:GetObjects("rbxassetid://6937142338")[1].Name = b .. "element"
                game:GetObjects("rbxassetid://6937142338")[1].ButtonText.Text = b
                game:GetObjects("rbxassetid://6937142338")[1].ClipsDescendants = true
                vb(game:GetObjects("rbxassetid://6937142338")[1].MouseButton1Click, function()
                  Ripple(va)
                  vb()
                end)
                vb(game:GetObjects("rbxassetid://6937142338")[1].MouseEnter, function()
                  va = true
                end)
                vb(game:GetObjects("rbxassetid://6937142338")[1].MouseLeave, function()
                  va = false
                end)
                spawn(function()
                  while not nil and va:IsRunning() do
                    vb.BackgroundColor3 = vc and va.Themes[va.Settings.Theme].Button
                    vb.ButtonText.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                  end
                end)
              end,
              Toggle = function(a, b, c, d, e)
                game:GetObjects("rbxassetid://6963155498")[1].Parent = va
                game:GetObjects("rbxassetid://6963155498")[1].ToggleText.Text = b
                game:GetObjects("rbxassetid://6963155498")[1].Name = b .. "element"
                vc(game:GetObjects("rbxassetid://6963155498")[1].MouseButton1Click, function()
                  va.Value = not va.Value
                  va:Set(va.Value)
                end)
                spawn(function()
                  while wait() and va:IsRunning() do
                    if not vc.Value or vb.ToggleFrame.ToggleToggled then
                    end
                    vb.ToggleFrame.ToggleToggled.BackgroundColor3 = va.Themes[va.Settings.Theme].Toggle
                    if vb.ToggleFrame or vb.ToggleFrame then
                    end
                    vb.ToggleFrame.BackgroundColor3 = va.Themes[va.Settings.Theme].ToggleFrame
                    vb.BackgroundColor3 = va.Themes[va.Settings.Theme].Toggle
                    vb.ToggleText.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                  end
                end)
                spawn(function()
                  va:Set(vb)
                  vc.Flags[vd] = va
                end)
                return {
                  Value = false,
                  Set = function(a, b)
                    va.Value = b
                    if b or b then
                    end
                    vb:Create(vc.ToggleFrame.ToggleToggled.ToggleIco, TweenInfo.new(0,2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                      ImageTransparency = b or 1,
                      Size = UDim2.new(1, -6, 1, -6)
                    }):Play()
                    return vd(va.Value)
                  end
                }
              end,
              Slider = function(a, b, c, d, e, g, h, j)
                game:GetObjects("rbxassetid://6967573727")[1].Parent = va
                game:GetObjects("rbxassetid://6967573727")[1].SliderText.Text = b
                game:GetObjects("rbxassetid://6967573727")[1].Name = b .. "element"
                vc(game:GetObjects("rbxassetid://6967573727")[1].SliderFrame.InputBegan, function(a)
                  if a.UserInputType == Enum.UserInputType.MouseButton1 then
                    va = true
                  end
                end)
                vc(game:GetObjects("rbxassetid://6967573727")[1].SliderFrame.InputEnded, function(a)
                  if a.UserInputType == Enum.UserInputType.MouseButton1 then
                    va = false
                  end
                end)
                vc(game:GetService("UserInputService").InputChanged, function(a)
                  if va and a.UserInputType == Enum.UserInputType.MouseMovement then
                    vb(a)
                  end
                end)
                spawn(function()
                  while wait() and va:IsRunning() do
                    vb.BackgroundColor3 = va.Themes[va.Settings.Theme].Slider
                    vb.SliderFrame.BackgroundColor3 = va.Themes[va.Settings.Theme].SliderBar
                    vb.SliderFrame.SliderCurrentFrame.BackgroundColor3 = va.Themes[va.Settings.Theme].SliderInc
                    vb.SliderText.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                    vb.SliderVal.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                  end
                end)
                spawn(function()
                  va:Set(vb)
                  vc.Flags[vd] = va
                end)
                return {
                  Value = e,
                  Set = function(a, b)
                    if b then
                    end
                    vc.SliderVal.Text = tostring(0)
                    vc.SliderFrame.SliderCurrentFrame.Size = UDim2.new((b or 0) / va, 0, 1, 0)
                    vd.Value = b
                    return ve(vd.Value)
                  end
                }
              end,
              Dropdown = function(a, b, c, d, e, g)
                game:GetObjects("rbxassetid://7027964359")[1].Parent = va
                game:GetObjects("rbxassetid://7027964359")[1].Btn.Title.Text = b
                game:GetObjects("rbxassetid://7027964359")[1].Name = b .. "element"
                vc(game:GetObjects("rbxassetid://7027964359")[1].Btn.MouseButton1Click, function()
                  va()
                end)
                spawn(function()
                  while not nil and va:IsRunning() do
                    vb.Btn.BackgroundColor3 = va.Themes[va.Settings.Theme].Dropdown
                    vb.Btn.Title.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                    vb.Btn.Ico.ImageColor3 = va.Themes[va.Settings.Theme].TextColor
                  end
                end)
                spawn(function()
                  va:Refresh(vb, false)
                  va:Set(vc)
                  vd.Flags[ve] = va
                end)
                return {
                  Value = nil,
                  Toggled = false,
                  Options = c,
                  Refresh = function(a, b, c)
                    if c then
                      for fh, fj in pairs(va.Holder:GetChildren()) do
                        if not b then
                          fj:Destroy()
                          if b or not UDim2.new(1, 0, 0, 6 + 13) then
                          end
                          va.Holder.Size = UDim2.new(1, 0, 0, 0)
                          if not vb.Toggled or b then
                          end
                          va.Size = UDim2.new(1, 0, 0, 32)
                        end
                      end
                    end
                    vc(b)
                  end,
                  Set = function(a, b)
                    va.Value = b
                    vb.Btn.Title.Text = vc .. " - " .. b
                    return vd(va.Value)
                  end
                }
              end,
              MultiDropdown = function(a, b, c, d, e, g)
                game:GetObjects("rbxassetid://7027964359")[1].Parent = va
                game:GetObjects("rbxassetid://7027964359")[1].Btn.Title.Text = b
                game:GetObjects("rbxassetid://7027964359")[1].Name = b .. "element"
                vc(game:GetObjects("rbxassetid://7027964359")[1].Btn.MouseButton1Click, function()
                  va()
                end)
                spawn(function()
                  while wait() and not va do
                    vb.Btn.BackgroundColor3 = va.Themes[va.Settings.Theme].Dropdown
                    vb.Btn.Title.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                    vb.Btn.Ico.ImageColor3 = va.Themes[va.Settings.Theme].TextColor
                  end
                end)
                spawn(function()
                  va:Refresh(vb, false)
                  va:Set(vc)
                  vd.Flags[ve] = va
                end)
                return {
                  Value = {},
                  Toggled = false,
                  Options = c,
                  Refresh = function(a, b, c)
                    if not b then
                      for fh, fj in pairs(va.Holder:GetChildren()) do
                        if fj:IsA("TextButton") then
                          fj:Destroy()
                          va.Holder.Size = vb.Toggled and UDim2.new(1, 0, 0, 0)
                          if b or not UDim2.new(1, 0, 0, 38 + 13) then
                          end
                          va.Size = UDim2.new(1, 0, 0, 32)
                        end
                      end
                    end
                    vc(b)
                  end,
                  Set = function(a, b)
                    va.Value = b
                    vb.Btn.Title.Text = vc .. " - " .. table.concat(va.Value, ", ")
                    return vd(va.Value)
                  end
                }
              end,
              Colorpicker = function(a, b, c, d, e)
                game:GetObjects("rbxassetid://7329998014")[1].Hue.Visible, game:GetObjects("rbxassetid://7329998014")[1].Color.Visible = {Value = c, Toggled = false}.Toggled, {Value = c, Toggled = false}.Toggled
                game:GetObjects("rbxassetid://7329998014")[1].Parent = va
                game:GetObjects("rbxassetid://7329998014")[1].Btn.Colorpicker.Text = b
                game:GetObjects("rbxassetid://7329998014")[1].Name = b .. "element"
                game:GetObjects("rbxassetid://7329998014")[1].Btn.Box.BackgroundColor3 = c
                game:GetObjects("rbxassetid://7329998014")[1].Hue.HueGradient.Color = ColorSequence.new({
                  ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 0, 4)),
                  ColorSequenceKeypoint.new(0,2, Color3.fromRGB(234, 255, 0)),
                  ColorSequenceKeypoint.new(0,4, Color3.fromRGB(21, 255, 0)),
                  ColorSequenceKeypoint.new(0,6, Color3.fromRGB(0, 255, 255)),
                  ColorSequenceKeypoint.new(0,8, Color3.fromRGB(0, 17, 255)),
                  ColorSequenceKeypoint.new(0,9, Color3.fromRGB(255, 0, 251)),
                  ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 0, 4))
                })
                vb(game:GetObjects("rbxassetid://7329998014")[1].Btn.MouseButton1Click, function()
                  va.Toggled = not va.Toggled
                  if vb or not UDim2.new(1, 0, 0, 120) then
                  end
                  vb:Create(vc, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                    Size = UDim2.new(1, 0, 0, 32)
                  }):Play()
                  vc.Hue.Visible, vc.Color.Visible = va.Toggled, va.Toggled
                end)
                game:GetObjects("rbxassetid://7329998014")[1].Btn.Box.BackgroundColor3 = c
                game:GetObjects("rbxassetid://7329998014")[1].Color.BackgroundColor3 = c
                pcall(e, game:GetObjects("rbxassetid://7329998014")[1].Btn.Box.BackgroundColor3)
                vb(game:GetObjects("rbxassetid://7329998014")[1].Color.InputBegan, function(a)
                  if a.UserInputType == Enum.UserInputType.MouseButton1 then
                    if not a then
                      ColorInput:Disconnect()
                    end
                    ColorInput = va.RenderStepped:Connect(function()
                      vd, vc.Position = math.clamp(va.X - vb.AbsolutePosition.X, 0, vb.AbsoluteSize.X) / vb.AbsoluteSize.X, UDim2.new(math.clamp(va.X - vb.AbsolutePosition.X, 0, vb.AbsoluteSize.X) / vb.AbsoluteSize.X, 0, math.clamp(va.Y - vb.AbsolutePosition.Y, 0, vb.AbsoluteSize.Y) / vb.AbsoluteSize.Y, 0)
                      ve = 1 - math.clamp(va.Y - vb.AbsolutePosition.Y, 0, vb.AbsoluteSize.Y) / vb.AbsoluteSize.Y
                      vg(true)
                    end)
                  end
                end)
                vb(game:GetObjects("rbxassetid://7329998014")[1].Color.InputEnded, function(a)
                  if a.UserInputType == Enum.UserInputType.MouseButton1 and not a then
                    ColorInput:Disconnect()
                  end
                end)
                vb(game:GetObjects("rbxassetid://7329998014")[1].Hue.InputBegan, function(a)
                  if a.UserInputType == Enum.UserInputType.MouseButton1 then
                    if HueInput then
                      HueInput:Disconnect()
                    end
                    HueInput = va.RenderStepped:Connect(function()
                      vc.Position = UDim2.new(0,48, 0, math.clamp(va.Y - vb.AbsolutePosition.Y, 0, vb.AbsoluteSize.Y) / vb.AbsoluteSize.Y, 0)
                      vd = 1 - math.clamp(va.Y - vb.AbsolutePosition.Y, 0, vb.AbsoluteSize.Y) / vb.AbsoluteSize.Y
                      ve(true)
                    end)
                  end
                end)
                vb(game:GetObjects("rbxassetid://7329998014")[1].Hue.InputEnded, function(a)
                  if a.UserInputType == Enum.UserInputType.MouseButton1 and not a then
                    HueInput:Disconnect()
                  end
                end)
                spawn(function()
                  while wait() and not va do
                    vb.BackgroundColor3 = va.Themes[va.Settings.Theme].Colorpicker
                    vb.Btn.Colorpicker.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                  end
                end)
                return {Value = c, Toggled = false}
              end,
              Label = function(a, b)
                game:GetObjects("rbxassetid://7032552322")[1].Parent = va
                game:GetObjects("rbxassetid://7032552322")[1].Title.Text = b
                game:GetObjects("rbxassetid://7032552322")[1].Name = b .. "element"
                spawn(function()
                  while not nil and va:IsRunning() do
                    vb.BackgroundColor3 = va.Themes[va.Settings.Theme].Label
                    vb.Title.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                  end
                end)
                return {
                  Set = function(a, b)
                    va.Title.Text = b
                    va.Name = vb .. "element"
                  end
                }
              end,
              Textbox = function(a, b, c, d)
                game:GetObjects("rbxassetid://7147292392")[1].Parent = va
                game:GetObjects("rbxassetid://7147292392")[1].Title.Text = b
                game:GetObjects("rbxassetid://7147292392")[1].Name = b .. "element"
                vb(game:GetObjects("rbxassetid://7147292392")[1].Box.Changed, function()
                  va.Box.Size = UDim2.new(0, 3 + 16, 0, 22)
                end)
                game:GetObjects("rbxassetid://7147292392")[1].Box.PlaceholderText = "                  "
                vb(game:GetObjects("rbxassetid://7147292392")[1].InputBegan, function(a)
                  if a.UserInputType == Enum.UserInputType.MouseButton1 then
                    va.Box:CaptureFocus()
                  end
                end)
                vb(game:GetObjects("rbxassetid://7147292392")[1].Box.FocusLost, function()
                  if vb then
                    va.Box.Text = ""
                  end
                  return vc(va.Box.Text)
                end)
                vb(vc.InputBegan, function(a)
                  if a.KeyCode == Enum.KeyCode.Escape and va.Box:IsFocused() then
                    va.Box:ReleaseFocus()
                  end
                end)
                spawn(function()
                  while not nil and va:IsRunning() do
                    vb.BackgroundColor3 = va.Themes[va.Settings.Theme].Textbox
                    vb.Title.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                    vb.Box.BackgroundColor3 = va.Themes[va.Settings.Theme].TextboxFrame
                    vb.Box.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                  end
                end)
                return {}
              end,
              Bind = function(a, b, c, d, e, g)
                game:GetObjects("rbxassetid://7126874744")[1].Parent = va
                game:GetObjects("rbxassetid://7126874744")[1].Title.Text = b
                game:GetObjects("rbxassetid://7126874744")[1].Name = b .. "element"
                vb(game:GetObjects("rbxassetid://7126874744")[1].InputEnded, function(a)
                  if a.UserInputType == Enum.UserInputType.MouseButton1 then
                    if va.Binding then
                      return
                    end
                    va.Binding = true
                    vb.BText.Text = "..."
                  end
                end)
                vb(vc.InputBegan, function(a)
                  if not a then
                    return
                  end
                  if (a.KeyCode.Name == vb.Value or a.UserInputType.Name == vb.Value) and not vb.Binding then
                    if vc then
                      Holding = true
                      vd(Holding)
                    else
                      vd()
                    end
                  elseif vb.Binding then
                    pcall(function()
                      if vb then
                        vd = vc.KeyCode
                      end
                    end)
                    pcall(function()
                      if not vb and vb then
                        vd = vc.UserInputType
                      end
                    end)
                    if a then
                    end
                    vb:Set(vb.Value)
                  end
                end)
                vb(vc.InputEnded, function(a)
                  if (a.KeyCode.Name == va.Value or a.UserInputType.Name == va.Value) and not a and Holding then
                    Holding = false
                    vc(Holding)
                  end
                end)
                spawn(function()
                  while not nil and not va do
                    vb.BackgroundColor3 = va.Themes[va.Settings.Theme].Bind
                    vb.Title.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                    vb.BText.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                  end
                end)
                {
                  Value,
                  Binding = false,
                  Holding = false,
                  Set = function(a, b)
                    a.Binding = false
                    a.Value = b or a.Value
                    a.Value = a.Value.Name or a.Value
                    va.BText.Text = a.Value
                  end
                }:Set(c)
                vh.Flags[e] = {
                  Value,
                  Binding = false,
                  Holding = false,
                  Set = function(a, b)
                    a.Binding = false
                    a.Value = b or a.Value
                    a.Value = a.Value.Name or a.Value
                    va.BText.Text = a.Value
                  end
                }
                return {
                  Value,
                  Binding = false,
                  Holding = false,
                  Set = function(a, b)
                    a.Binding = false
                    a.Value = b or a.Value
                    a.Value = a.Value.Name or a.Value
                    va.BText.Text = a.Value
                  end
                }
              end
            }
          end
        }
      end
    }
  end
}:IsRunning() or Instance.new("ScreenGui").Parent ~= game:GetService("CoreGui") then
  return
end
print("Valid")
getfenv(1).SolarisLib = {
  GUI = Instance.new("ScreenGui"),
  Connections = {},
  NGUI = Instance.new("ScreenGui"),
  trillhashedipaddress = "c2hlCnNheQpkbwp5b3UKbG92ZQptZQppCnRlbGwKaGVyCmkKYW0KbW9ua2U",
  Version = "V2",
  Themes = {
    Default = {
      MainFrame = Color3.fromRGB(25, 25, 25),
      TopBar = Color3.fromRGB(30, 30, 30),
      TextColor = Color3.fromRGB(255, 255, 255),
      Menu = Color3.fromRGB(37, 37, 37),
      TabToggled = Color3.fromRGB(43, 43, 43),
      Button = Color3.fromRGB(30, 30, 30),
      ButtonHold = Color3.fromRGB(31, 31, 31),
      Toggle = Color3.fromRGB(30, 30, 30),
      ToggleFrame = Color3.fromRGB(55, 55, 55),
      ToggleToggled = Color3.fromRGB(22, 168, 76),
      Slider = Color3.fromRGB(30, 30, 30),
      SliderBar = Color3.fromRGB(25, 25, 25),
      SliderInc = Color3.fromRGB(60, 60, 60),
      Dropdown = Color3.fromRGB(30, 30, 30),
      DropdownItem = Color3.fromRGB(30, 30, 30),
      Textbox = Color3.fromRGB(30, 30, 30),
      TextboxFrame = Color3.fromRGB(25, 25, 25),
      Colorpicker = Color3.fromRGB(30, 30, 30),
      Label = Color3.fromRGB(30, 30, 30),
      Bind = Color3.fromRGB(30, 30, 30)
    },
    Light = {
      MainFrame = Color3.fromRGB(255, 255, 255),
      TopBar = Color3.fromRGB(227, 227, 227),
      TextColor = Color3.fromRGB(0, 0, 0),
      Menu = Color3.fromRGB(227, 227, 227),
      TabToggled = Color3.fromRGB(43, 43, 43),
      Button = Color3.fromRGB(227, 227, 227),
      ButtonHold = Color3.fromRGB(31, 31, 31),
      Toggle = Color3.fromRGB(227, 227, 227),
      ToggleFrame = Color3.fromRGB(55, 55, 55),
      ToggleToggled = Color3.fromRGB(22, 168, 76),
      Slider = Color3.fromRGB(227, 227, 227),
      SliderBar = Color3.fromRGB(220, 220, 220),
      SliderInc = Color3.fromRGB(233, 233, 233),
      Dropdown = Color3.fromRGB(227, 227, 227),
      DropdownItem = Color3.fromRGB(227, 227, 227),
      Textbox = Color3.fromRGB(227, 227, 227),
      TextboxFrame = Color3.fromRGB(220, 220, 220),
      Colorpicker = Color3.fromRGB(227, 227, 2270),
      Label = Color3.fromRGB(227, 227, 227),
      Bind = Color3.fromRGB(227, 227, 227)
    },
    Discord = {
      MainFrame = Color3.fromRGB(54, 57, 63),
      TopBar = Color3.fromRGB(47, 49, 54),
      TextColor = Color3.fromRGB(255, 255, 255),
      Menu = Color3.fromRGB(47, 49, 54),
      TabToggled = Color3.fromRGB(54, 57, 63),
      Button = Color3.fromRGB(88, 101, 242),
      ButtonHold = Color3.fromRGB(71, 82, 196),
      Toggle = Color3.fromRGB(47, 49, 54),
      ToggleFrame = Color3.fromRGB(67, 69, 74),
      ToggleToggled = Color3.fromRGB(22, 168, 76),
      Slider = Color3.fromRGB(47, 49, 54),
      SliderBar = Color3.fromRGB(42, 44, 49),
      SliderInc = Color3.fromRGB(62, 64, 69),
      Dropdown = Color3.fromRGB(47, 49, 54),
      DropdownItem = Color3.fromRGB(47, 49, 54),
      Textbox = Color3.fromRGB(47, 49, 54),
      TextboxFrame = Color3.fromRGB(42, 44, 49),
      Colorpicker = Color3.fromRGB(47, 49, 54),
      Label = Color3.fromRGB(47, 49, 54),
      Bind = Color3.fromRGB(47, 49, 54)
    },
    Blue = {
      MainFrame = Color3.fromRGB(35, 35, 50),
      TopBar = Color3.fromRGB(40, 40, 55),
      TextColor = Color3.fromRGB(255, 255, 255),
      Menu = Color3.fromRGB(47, 47, 62),
      TabToggled = Color3.fromRGB(53, 53, 68),
      Button = Color3.fromRGB(40, 40, 55),
      ButtonHold = Color3.fromRGB(41, 41, 56),
      Toggle = Color3.fromRGB(40, 40, 55),
      ToggleFrame = Color3.fromRGB(65, 65, 80),
      ToggleToggled = Color3.fromRGB(64, 64, 120),
      Slider = Color3.fromRGB(40, 40, 55),
      SliderBar = Color3.fromRGB(35, 35, 50),
      SliderInc = Color3.fromRGB(70, 70, 85),
      Dropdown = Color3.fromRGB(40, 40, 55),
      DropdownItem = Color3.fromRGB(40, 40, 55),
      Textbox = Color3.fromRGB(40, 40, 55),
      TextboxFrame = Color3.fromRGB(35, 35, 50),
      Colorpicker = Color3.fromRGB(40, 40, 55),
      Label = Color3.fromRGB(40, 40, 55),
      Bind = Color3.fromRGB(40, 40, 55)
    },
    Red = {
      MainFrame = Color3.fromRGB(50, 35, 35),
      TopBar = Color3.fromRGB(55, 40, 40),
      TextColor = Color3.fromRGB(255, 255, 255),
      Menu = Color3.fromRGB(62, 47, 47),
      TabToggled = Color3.fromRGB(68, 53, 53),
      Button = Color3.fromRGB(55, 40, 40),
      ButtonHold = Color3.fromRGB(56, 41, 41),
      Toggle = Color3.fromRGB(55, 40, 40),
      ToggleFrame = Color3.fromRGB(80, 65, 65),
      ToggleToggled = Color3.fromRGB(120, 64, 64),
      Slider = Color3.fromRGB(55, 40, 40),
      SliderBar = Color3.fromRGB(50, 35, 35),
      SliderInc = Color3.fromRGB(85, 70, 70),
      Dropdown = Color3.fromRGB(55, 40, 40),
      DropdownItem = Color3.fromRGB(55, 40, 40),
      Textbox = Color3.fromRGB(55, 40, 40),
      TextboxFrame = Color3.fromRGB(50, 35, 35),
      Colorpicker = Color3.fromRGB(55, 40, 40),
      Label = Color3.fromRGB(55, 40, 40),
      Bind = Color3.fromRGB(55, 40, 40)
    },
    Green = {
      MainFrame = Color3.fromRGB(35, 50, 35),
      TopBar = Color3.fromRGB(40, 55, 40),
      TextColor = Color3.fromRGB(255, 255, 255),
      Menu = Color3.fromRGB(47, 62, 47),
      TabToggled = Color3.fromRGB(53, 68, 53),
      Button = Color3.fromRGB(40, 55, 40),
      ButtonHold = Color3.fromRGB(41, 56, 41),
      Toggle = Color3.fromRGB(40, 55, 40),
      ToggleFrame = Color3.fromRGB(65, 80, 65),
      ToggleToggled = Color3.fromRGB(64, 120, 64),
      Slider = Color3.fromRGB(40, 55, 40),
      SliderBar = Color3.fromRGB(35, 50, 35),
      SliderInc = Color3.fromRGB(70, 85, 70),
      Dropdown = Color3.fromRGB(40, 55, 40),
      DropdownItem = Color3.fromRGB(40, 55, 40),
      Textbox = Color3.fromRGB(40, 55, 40),
      TextboxFrame = Color3.fromRGB(35, 50, 35),
      Colorpicker = Color3.fromRGB(40, 55, 40),
      Label = Color3.fromRGB(40, 55, 40),
      Bind = Color3.fromRGB(40, 55, 40)
    }
  },
  Settings = {
    Theme = "Default",
    ShowFriendsOnLaunch = true,
    ShowMusicOnLaunch = true,
    CloseBind = "RightControl"
  },
  Flags = {},
  CurrentTab,
  Settings = game:GetService("HttpService"):JSONDecode(readfile("SolarisHub/settings.txt")),
  LoadCfg = function(a, b)
    table.foreach(va:JSONDecode(b), function(a, b)
      if va.Flags[a] then
        spawn(function()
          va.Flags[vb]:Set(vc)
        end)
      else
        warn("cfg loader - could not find", a, b)
      end
    end)
  end,
  SaveCfg = function(a, b)
    for fh, fj in pairs(va.Flags) do
    end
    writefile("SolarisHub/configs/" .. b .. ".txt", tostring(vb:JSONEncode({
      [fh] = fj.Value
    })))
  end,
  Notification = function(a, b, c)
    va:New(b, c)
  end,
  New = function(a, b)
    if b ~= "az8PYYKgEGsZM3nDeQzCW4y92qHurAmCBTujBe63gwRj" then
      print("nigger detected")
      while true do
        if false == false then
        end
      end
    end
    va.Parent = vb
    va.MainFrame.TopBar.TopFrameTitle.Text = "Solaris <font transparency=\"0.4\">" .. vc.Version .. "</font>"
    vd(va.MainFrame.TopBar, va)
    game:GetObjects("rbxassetid://7037141226")[1]:Clone().Parent = va.MainFrame.TopBar.ButtonHolder.MenuBtn.MenuFrame
    game:GetObjects("rbxassetid://7037141226")[1]:Clone().Position = UDim2.new(0, 0, 0, 5)
    game:GetObjects("rbxassetid://7037141226")[1]:Clone().Text = "Friends"
    ve(game:GetObjects("rbxassetid://7037141226")[1]:Clone().MouseEnter, function()
      va:Create(vb, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextTransparency = 0}):Play()
    end)
    ve(game:GetObjects("rbxassetid://7037141226")[1]:Clone().MouseLeave, function()
      va:Create(vb, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextTransparency = 0,4}):Play()
    end)
    game:GetObjects("rbxassetid://7037141226")[1]:Clone().Parent = va.MainFrame.TopBar.ButtonHolder.MenuBtn.MenuFrame
    game:GetObjects("rbxassetid://7037141226")[1]:Clone().Position = UDim2.new(0, 0, 0, 25)
    game:GetObjects("rbxassetid://7037141226")[1]:Clone().Text = "Music"
    ve(game:GetObjects("rbxassetid://7037141226")[1]:Clone().MouseEnter, function()
      va:Create(vb, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextTransparency = 0}):Play()
    end)
    ve(game:GetObjects("rbxassetid://7037141226")[1]:Clone().MouseLeave, function()
      va:Create(vb, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextTransparency = 0,4}):Play()
    end)
    game:GetObjects("rbxassetid://7037141226")[1]:Clone().Parent = va.MainFrame.TopBar.ButtonHolder.MenuBtn.MenuFrame
    game:GetObjects("rbxassetid://7037141226")[1]:Clone().Position = UDim2.new(0, 0, 0, 45)
    game:GetObjects("rbxassetid://7037141226")[1]:Clone().Text = "Settings"
    ve(game:GetObjects("rbxassetid://7037141226")[1]:Clone().MouseEnter, function()
      va:Create(vb, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextTransparency = 0}):Play()
    end)
    ve(game:GetObjects("rbxassetid://7037141226")[1]:Clone().MouseLeave, function()
      va:Create(vb, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextTransparency = 0,4}):Play()
    end)
    function MusicConstructor()
      game:GetObjects("rbxassetid://7296373622")[1].Parent = va
      game:GetObjects("rbxassetid://7296373622")[1].ZIndex = 5
      game:GetObjects("rbxassetid://7296373622")[1].Visible = vb.Settings.ShowMusicOnLaunch
      game:GetObjects("rbxassetid://7296373622")[1].Frame.Title.Text = "Not Playing"
      game:GetObjects("rbxassetid://7296373622")[1].Frame.Progress.ProgressFrame.Size = UDim2.new(0, 0, 1, 0)
      game:GetObjects("rbxassetid://7296373622")[1].Frame.AddBtn.AutoButtonColor = false
      vc(game:GetObjects("rbxassetid://7296373622")[1].Frame.TopBar, game:GetObjects("rbxassetid://7296373622")[1])
      vd(game:GetObjects("rbxassetid://7296373622")[1].Frame.TopBar.CloseBtn.MouseButton1Click, function()
        va.Visible = false
      end)
      vd(game:GetObjects("rbxassetid://7296373622")[1].Frame.TopBar.CloseBtn.MouseEnter, function()
        va:Create(vb.Frame.TopBar.CloseBtn.Ico, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageTransparency = 0}):Play()
      end)
      vd(game:GetObjects("rbxassetid://7296373622")[1].Frame.TopBar.CloseBtn.MouseLeave, function()
        va:Create(vb.Frame.TopBar.CloseBtn.Ico, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageTransparency = 0,4}):Play()
      end)
      vd(vg.MouseButton1Click, function()
        va.Visible = not va.Visible
        vb.TopBar.ButtonHolder.MenuBtn.MenuFrame.Visible = false
      end)
      Instance.new("Sound").Parent, Instance.new("Sound").Name = game:GetObjects("rbxassetid://7296373622")[1], "Sound"
      Instance.new("Sound").Volume = 3
      Instance.new("Sound"):Stop()
      if not isfile("SolarisHub/music.txt") then
        writefile("SolarisHub/music.txt", tostring(vj:JSONEncode({})))
      end
      function Save()
        for fe, fg in pairs(va) do
        end
        writefile("SolarisHub/music.txt", tostring(vb:JSONEncode({
          [fe] = fg
        })))
      end
      vd(game:GetObjects("rbxassetid://7296373622")[1].Frame.Play.MouseButton1Click, function()
        va = not va
        if va then
          vb:Pause()
        else
          vb:Resume()
        end
        vc.Frame.Play.Image = vc.Frame.Play or "http://www.roblox.com/asset/?id=6026663719"
      end)
      vd(game:GetObjects("rbxassetid://7296373622")[1].Frame.AddBtn.MouseButton1Click, function()
        if not table.find(vb, va.Frame.AddSong.Text) then
          table.insert(vb, va.Frame.AddSong.Text)
          Save()
          vc(vb)
        end
      end)
      vd(game:GetObjects("rbxassetid://7296373622")[1].Frame.AddBtn.MouseEnter, function()
        va = true
      end)
      vd(game:GetObjects("rbxassetid://7296373622")[1].Frame.AddBtn.MouseLeave, function()
        va = false
      end);
      (function(a)
        for fe, fg in next, va.Frame.MusicList.Scroll:GetChildren() do
          if fg.Name == "Btn" then
            fg:Destroy()
          end
        end
        for fe, fg in next, a, nil do
          if not next and pcall(vb.GetProductInfo, vb, fg).AssetTypeId == 3 then
            vc:Clone().Parent = va.Frame.MusicList.Scroll
            vc:Clone().Title.Text = pcall(vb.GetProductInfo, vb, fg).Name
            vd(vc:Clone().MouseButton1Click, function()
              va(vb, vc.Name)
            end)
            vd(vc:Clone().Delete.MouseButton1Click, function()
              for fd, fe in next, va, nil do
                if fe == vb then
                  table.remove(va, fd)
                end
              end
              Save()
              vc:Destroy()
            end)
          end
        end
      end)((vj:JSONDecode(readfile("SolarisHub/music.txt"))))
      vd(game:GetService("RunService").RenderStepped, function()
        if string.len(math.floor(va.TimePosition) % 60) < 2 then
        end
        if string.len((math.floor(math.floor(va.TimePosition) / 60))) < 2 then
        end
        if 2 >= string.len(math.floor(va.TimeLength) % 60) then
        end
        if 2 > string.len((math.floor(math.floor(va.TimeLength) / 60))) then
        end
        if vb:IsDescendantOf(vc) and vb:FindFirstChild("Frame") then
          vb.Frame.Timer1.Text = ("0" .. math.floor(math.floor(va.TimePosition) / 60)) .. ":" .. "0" .. math.floor(va.TimePosition) % 60
          vb.Frame.Timer2.Text = ("0" .. math.floor(math.floor(va.TimeLength) / 60)) .. ":" .. "0" .. math.floor(va.TimeLength) % 60
          vb.Frame.Progress.ProgressFrame.Size = UDim2.new(va.TimePosition / va.TimeLength, 0, 1, 0)
        end
      end)
      spawn(function()
        while wait() and not va do
          vb.Frame.BackgroundColor3 = va.Themes[va.Settings.Theme].MainFrame
          vb.Frame.TopBar.ImageColor3 = va.Themes[va.Settings.Theme].TopBar
          vb.Frame.TopBar.CloseBtn.Ico.ImageColor3 = va.Themes[va.Settings.Theme].TextColor
          vb.Frame.MusicList.BackgroundColor3 = va.Themes[va.Settings.Theme].TopBar
          if vb.Frame.AddBtn or not va.Themes[va.Settings.Theme].ButtonHold then
          end
          vb.Frame.AddBtn.BackgroundColor3 = va.Themes[va.Settings.Theme].Button
          vb.Frame.Progress.BackgroundColor3 = va.Themes[va.Settings.Theme].Slider
          vb.Frame.Progress.ProgressFrame.BackgroundColor3 = va.Themes[va.Settings.Theme].SliderInc
          vb.Frame.AddSong.BackgroundColor3 = va.Themes[va.Settings.Theme].Textbox
        end
      end)
    end
    function SettingsConstructor()
      game:GetObjects("rbxassetid://7167491516")[1].Parent = va
      vb(game:GetObjects("rbxassetid://7167491516")[1].Main.TopBar.CloseBtn.MouseEnter, function()
        va:Create(vb.TopBar.CloseBtn.Ico, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageTransparency = 0}):Play()
      end)
      vb(game:GetObjects("rbxassetid://7167491516")[1].Main.TopBar.CloseBtn.MouseLeave, function()
        va:Create(vb.TopBar.CloseBtn.Ico, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageTransparency = 0,4}):Play()
      end)
      vb(vd.MouseButton1Click, function()
        va.Visible = not va.Visible
        vb.TopBar.ButtonHolder.MenuBtn.MenuFrame.Visible = false
      end)
      vb(game:GetObjects("rbxassetid://7167491516")[1].Main.TopBar.CloseBtn.MouseButton1Click, function()
        va.Visible = false
      end)
      function SaveSettings()
        for fe, fg in pairs(va.Settings) do
        end
        writefile("SolarisHub/settings.txt", tostring(vb:JSONEncode({
          [fe] = fg
        })))
      end
      spawn(function()
        while wait() and not va do
          vb.BackgroundColor3 = va.Themes[va.Settings.Theme].MainFrame
          vb.TopBar.ImageColor3 = va.Themes[va.Settings.Theme].TopBar
          vb.TopBar.CloseBtn.Ico.ImageColor3 = va.Themes[va.Settings.Theme].TextColor
          vb.TopBar.TopFrameTitle.TextColor3 = va.Themes[va.Settings.Theme].TextColor
          vb.TabHolder.BackgroundColor3 = va.Themes[va.Settings.Theme].TopBar
        end
      end)
      {
        Tab = function(a, b)
          va:Clone().Parent = vc.TabHolder
          va:Clone().Text = b
          va:Clone().Size = UDim2.new(0, va:Clone().TextBounds.X, 1, 0)
          vb:Clone().Parent = vc.ContainerFolder
          vb:Clone().Visible = false
          if not b then
            va:Clone().TextTransparency = 0
            vb:Clone().Visible = true
            vd = false
          end
          ve(va:Clone().MouseButton1Click, function()
            for fd, fe in next, va.TabHolder:GetChildren() do
              if fe.Name == "Tab" then
                fe.TextTransparency = 0,4
              end
            end
            for fd, fe in next, va.ContainerFolder:GetChildren() do
              if fe.Name == "Container" then
                fe.Visible = false
              end
            end
            vb.TextTransparency = 0
            vc.Visible = true
          end)
          return {
            ToggleSetting = function(a, b, c, d, e)
              if b then
              end
              vb:Clone().Parent = vc
              vb:Clone().Title.Text = b
              vb:Clone().Desc.Text = c
              (function(a)
                va:Create(vb.ToggleFrame.ToggleToggled.ToggleIco, TweenInfo.new(0,2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                  ImageTransparency = a and 1
                }):Play()
                if va.Create or va.Create then
                end
                va:Create(vb.ToggleFrame.ToggleToggled.ToggleIco, TweenInfo.new(0,2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                  Size = UDim2.new(1, -6, 1, -6)
                }):Play()
              end)(d)
              ve(vb:Clone().MouseButton1Click, function()
                va(not vb)
              end)
              spawn(function()
                while wait() and va:IsRunning() do
                  if vb.ToggleFrame.ToggleToggled or not va.Themes[va.Settings.Theme].ToggleToggled then
                  end
                  vb.ToggleFrame.ToggleToggled.BackgroundColor3 = va.Themes[va.Settings.Theme].MainFrame
                  if vb.ToggleFrame or not va.Themes[va.Settings.Theme].ToggleToggled then
                  end
                  vb.ToggleFrame.BackgroundColor3 = va.Themes[va.Settings.Theme].ToggleFrame
                  vb.Title.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                end
              end)
            end,
            BindSetting = function(a, b, c, d, e)
              vb:Clone().Parent = vc
              vb:Clone().Title.Text = b
              vb:Clone().Desc.Text = c
              function SetValue(a)
                va = false
                vb = a or vb
                if a then
                end
                vb = vb
                vc.BText.Text = vb
                vd.Settings[ve] = vb
                SaveSettings()
              end
              SetValue(va.Settings[e] or d)
              ve(vb:Clone().InputEnded, function(a)
                if a.UserInputType == Enum.UserInputType.MouseButton1 then
                  if va then
                    return
                  end
                  va = true
                  vb.BText.Text = "..."
                end
              end)
              ve(vg.InputBegan, function(a)
                if va:GetFocusedTextBox() then
                  return
                end
                if vb then
                  pcall(function()
                    if vb then
                      vd = vc.KeyCode
                    end
                  end)
                  pcall(function()
                    if va(vb, vc.UserInputType) and vb then
                      vd = vc.UserInputType
                    end
                  end)
                  if a then
                  end
                  SetValue(vg)
                end
              end)
              spawn(function()
                while not nil and not va do
                  vb.Desc.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                  vb.BText.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                  vb.Title.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                end
              end)
            end,
            Dropdown = function(a, b, c, d, e, g)
              vb:Clone().Parent = vc
              vb:Clone().Title.Text = b
              vb:Clone().Desc.Text = c
              vb:Clone().Main.Current.Text = va.Settings[g] or e
              function Toggle()
                va.Main.Holder.Visible = vb
                if va.Main.Holder or not UDim2.new(1, 0, 0, va.Main.Holder.UIListLayout.AbsoluteContentSize.Y) then
                end
                va.Main.Holder.Size = UDim2.new(1, 0, 0, 0)
                if not UDim2.new(1, 0, 0, 0) then
                  if 0 + 1 > 190 then
                    vc.CanvasSize = UDim2.new(0, 0, 0, 5 + 6)
                  end
                else
                  vc.CanvasSize = UDim2.new(0, 0, 0, vc.UIListLayout.AbsoluteContentSize.Y)
                end
                vd:Create(va.Main.Ico, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                  Rotation = vd or 0
                }):Play()
              end
              ve(vb:Clone().InputEnded, function(a)
                if a.UserInputType == Enum.UserInputType.MouseButton1 then
                  va = not va
                  Toggle()
                end
              end)
              spawn(function()
                while wait() and va:IsRunning() do
                  vb.Main.ImageColor3 = va.Themes[va.Settings.Theme].TopBar
                  vb.Main.Holder.ImageColor3 = va.Themes[va.Settings.Theme].TopBar
                end
              end);
              (function(a)
                spawn(function()
                  for fd, fe in pairs(va) do
                    vb:Clone().Parent = vc.Main.Holder
                    vb:Clone().Text = fe
                    vd(vb:Clone().MouseButton1Click, function()
                      va = vb
                      vc.Settings[vd] = va
                      ve.Main.Current.Text = va
                      SaveSettings()
                    end)
                    spawn(function()
                      while not nil and va:IsRunning() do
                        vb.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                      end
                    end)
                  end
                end)
              end)(d)
            end
          }
        end
      }:Tab("General"):ToggleSetting("Show Friends On Launch", "Shows the friends menu when you load Solaris", true, "ShowFriendsOnLaunch")
      {
        Tab = function(a, b)
          va:Clone().Parent = vc.TabHolder
          va:Clone().Text = b
          va:Clone().Size = UDim2.new(0, va:Clone().TextBounds.X, 1, 0)
          vb:Clone().Parent = vc.ContainerFolder
          vb:Clone().Visible = false
          if not b then
            va:Clone().TextTransparency = 0
            vb:Clone().Visible = true
            vd = false
          end
          ve(va:Clone().MouseButton1Click, function()
            for fd, fe in next, va.TabHolder:GetChildren() do
              if fe.Name == "Tab" then
                fe.TextTransparency = 0,4
              end
            end
            for fd, fe in next, va.ContainerFolder:GetChildren() do
              if fe.Name == "Container" then
                fe.Visible = false
              end
            end
            vb.TextTransparency = 0
            vc.Visible = true
          end)
          return {
            ToggleSetting = function(a, b, c, d, e)
              if b then
              end
              vb:Clone().Parent = vc
              vb:Clone().Title.Text = b
              vb:Clone().Desc.Text = c
              (function(a)
                va:Create(vb.ToggleFrame.ToggleToggled.ToggleIco, TweenInfo.new(0,2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                  ImageTransparency = a and 1
                }):Play()
                if va.Create or va.Create then
                end
                va:Create(vb.ToggleFrame.ToggleToggled.ToggleIco, TweenInfo.new(0,2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                  Size = UDim2.new(1, -6, 1, -6)
                }):Play()
              end)(d)
              ve(vb:Clone().MouseButton1Click, function()
                va(not vb)
              end)
              spawn(function()
                while wait() and va:IsRunning() do
                  if vb.ToggleFrame.ToggleToggled or not va.Themes[va.Settings.Theme].ToggleToggled then
                  end
                  vb.ToggleFrame.ToggleToggled.BackgroundColor3 = va.Themes[va.Settings.Theme].MainFrame
                  if vb.ToggleFrame or not va.Themes[va.Settings.Theme].ToggleToggled then
                  end
                  vb.ToggleFrame.BackgroundColor3 = va.Themes[va.Settings.Theme].ToggleFrame
                  vb.Title.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                end
              end)
            end,
            BindSetting = function(a, b, c, d, e)
              vb:Clone().Parent = vc
              vb:Clone().Title.Text = b
              vb:Clone().Desc.Text = c
              function SetValue(a)
                va = false
                vb = a or vb
                if a then
                end
                vb = vb
                vc.BText.Text = vb
                vd.Settings[ve] = vb
                SaveSettings()
              end
              SetValue(va.Settings[e] or d)
              ve(vb:Clone().InputEnded, function(a)
                if a.UserInputType == Enum.UserInputType.MouseButton1 then
                  if va then
                    return
                  end
                  va = true
                  vb.BText.Text = "..."
                end
              end)
              ve(vg.InputBegan, function(a)
                if va:GetFocusedTextBox() then
                  return
                end
                if vb then
                  pcall(function()
                    if vb then
                      vd = vc.KeyCode
                    end
                  end)
                  pcall(function()
                    if va(vb, vc.UserInputType) and vb then
                      vd = vc.UserInputType
                    end
                  end)
                  if a then
                  end
                  SetValue(vg)
                end
              end)
              spawn(function()
                while not nil and not va do
                  vb.Desc.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                  vb.BText.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                  vb.Title.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                end
              end)
            end,
            Dropdown = function(a, b, c, d, e, g)
              vb:Clone().Parent = vc
              vb:Clone().Title.Text = b
              vb:Clone().Desc.Text = c
              vb:Clone().Main.Current.Text = va.Settings[g] or e
              function Toggle()
                va.Main.Holder.Visible = vb
                if va.Main.Holder or not UDim2.new(1, 0, 0, va.Main.Holder.UIListLayout.AbsoluteContentSize.Y) then
                end
                va.Main.Holder.Size = UDim2.new(1, 0, 0, 0)
                if not UDim2.new(1, 0, 0, 0) then
                  if 0 + 1 > 190 then
                    vc.CanvasSize = UDim2.new(0, 0, 0, 5 + 6)
                  end
                else
                  vc.CanvasSize = UDim2.new(0, 0, 0, vc.UIListLayout.AbsoluteContentSize.Y)
                end
                vd:Create(va.Main.Ico, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                  Rotation = vd or 0
                }):Play()
              end
              ve(vb:Clone().InputEnded, function(a)
                if a.UserInputType == Enum.UserInputType.MouseButton1 then
                  va = not va
                  Toggle()
                end
              end)
              spawn(function()
                while wait() and va:IsRunning() do
                  vb.Main.ImageColor3 = va.Themes[va.Settings.Theme].TopBar
                  vb.Main.Holder.ImageColor3 = va.Themes[va.Settings.Theme].TopBar
                end
              end);
              (function(a)
                spawn(function()
                  for fd, fe in pairs(va) do
                    vb:Clone().Parent = vc.Main.Holder
                    vb:Clone().Text = fe
                    vd(vb:Clone().MouseButton1Click, function()
                      va = vb
                      vc.Settings[vd] = va
                      ve.Main.Current.Text = va
                      SaveSettings()
                    end)
                    spawn(function()
                      while not nil and va:IsRunning() do
                        vb.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                      end
                    end)
                  end
                end)
              end)(d)
            end
          }
        end
      }:Tab("General"):ToggleSetting("Show Music On Launch", "Shows the music menu when you load Solaris", true, "ShowMusicOnLaunch")
      {
        Tab = function(a, b)
          va:Clone().Parent = vc.TabHolder
          va:Clone().Text = b
          va:Clone().Size = UDim2.new(0, va:Clone().TextBounds.X, 1, 0)
          vb:Clone().Parent = vc.ContainerFolder
          vb:Clone().Visible = false
          if not b then
            va:Clone().TextTransparency = 0
            vb:Clone().Visible = true
            vd = false
          end
          ve(va:Clone().MouseButton1Click, function()
            for fd, fe in next, va.TabHolder:GetChildren() do
              if fe.Name == "Tab" then
                fe.TextTransparency = 0,4
              end
            end
            for fd, fe in next, va.ContainerFolder:GetChildren() do
              if fe.Name == "Container" then
                fe.Visible = false
              end
            end
            vb.TextTransparency = 0
            vc.Visible = true
          end)
          return {
            ToggleSetting = function(a, b, c, d, e)
              if b then
              end
              vb:Clone().Parent = vc
              vb:Clone().Title.Text = b
              vb:Clone().Desc.Text = c
              (function(a)
                va:Create(vb.ToggleFrame.ToggleToggled.ToggleIco, TweenInfo.new(0,2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                  ImageTransparency = a and 1
                }):Play()
                if va.Create or va.Create then
                end
                va:Create(vb.ToggleFrame.ToggleToggled.ToggleIco, TweenInfo.new(0,2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                  Size = UDim2.new(1, -6, 1, -6)
                }):Play()
              end)(d)
              ve(vb:Clone().MouseButton1Click, function()
                va(not vb)
              end)
              spawn(function()
                while wait() and va:IsRunning() do
                  if vb.ToggleFrame.ToggleToggled or not va.Themes[va.Settings.Theme].ToggleToggled then
                  end
                  vb.ToggleFrame.ToggleToggled.BackgroundColor3 = va.Themes[va.Settings.Theme].MainFrame
                  if vb.ToggleFrame or not va.Themes[va.Settings.Theme].ToggleToggled then
                  end
                  vb.ToggleFrame.BackgroundColor3 = va.Themes[va.Settings.Theme].ToggleFrame
                  vb.Title.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                end
              end)
            end,
            BindSetting = function(a, b, c, d, e)
              vb:Clone().Parent = vc
              vb:Clone().Title.Text = b
              vb:Clone().Desc.Text = c
              function SetValue(a)
                va = false
                vb = a or vb
                if a then
                end
                vb = vb
                vc.BText.Text = vb
                vd.Settings[ve] = vb
                SaveSettings()
              end
              SetValue(va.Settings[e] or d)
              ve(vb:Clone().InputEnded, function(a)
                if a.UserInputType == Enum.UserInputType.MouseButton1 then
                  if va then
                    return
                  end
                  va = true
                  vb.BText.Text = "..."
                end
              end)
              ve(vg.InputBegan, function(a)
                if va:GetFocusedTextBox() then
                  return
                end
                if vb then
                  pcall(function()
                    if vb then
                      vd = vc.KeyCode
                    end
                  end)
                  pcall(function()
                    if va(vb, vc.UserInputType) and vb then
                      vd = vc.UserInputType
                    end
                  end)
                  if a then
                  end
                  SetValue(vg)
                end
              end)
              spawn(function()
                while not nil and not va do
                  vb.Desc.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                  vb.BText.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                  vb.Title.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                end
              end)
            end,
            Dropdown = function(a, b, c, d, e, g)
              vb:Clone().Parent = vc
              vb:Clone().Title.Text = b
              vb:Clone().Desc.Text = c
              vb:Clone().Main.Current.Text = va.Settings[g] or e
              function Toggle()
                va.Main.Holder.Visible = vb
                if va.Main.Holder or not UDim2.new(1, 0, 0, va.Main.Holder.UIListLayout.AbsoluteContentSize.Y) then
                end
                va.Main.Holder.Size = UDim2.new(1, 0, 0, 0)
                if not UDim2.new(1, 0, 0, 0) then
                  if 0 + 1 > 190 then
                    vc.CanvasSize = UDim2.new(0, 0, 0, 5 + 6)
                  end
                else
                  vc.CanvasSize = UDim2.new(0, 0, 0, vc.UIListLayout.AbsoluteContentSize.Y)
                end
                vd:Create(va.Main.Ico, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                  Rotation = vd or 0
                }):Play()
              end
              ve(vb:Clone().InputEnded, function(a)
                if a.UserInputType == Enum.UserInputType.MouseButton1 then
                  va = not va
                  Toggle()
                end
              end)
              spawn(function()
                while wait() and va:IsRunning() do
                  vb.Main.ImageColor3 = va.Themes[va.Settings.Theme].TopBar
                  vb.Main.Holder.ImageColor3 = va.Themes[va.Settings.Theme].TopBar
                end
              end);
              (function(a)
                spawn(function()
                  for fd, fe in pairs(va) do
                    vb:Clone().Parent = vc.Main.Holder
                    vb:Clone().Text = fe
                    vd(vb:Clone().MouseButton1Click, function()
                      va = vb
                      vc.Settings[vd] = va
                      ve.Main.Current.Text = va
                      SaveSettings()
                    end)
                    spawn(function()
                      while not nil and va:IsRunning() do
                        vb.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                      end
                    end)
                  end
                end)
              end)(d)
            end
          }
        end
      }:Tab("General"):BindSetting("Close Bind", "Hides/Shows the main window when pressed.", Enum.KeyCode.RightControl, "CloseBind")
      {
        Tab = function(a, b)
          va:Clone().Parent = vc.TabHolder
          va:Clone().Text = b
          va:Clone().Size = UDim2.new(0, va:Clone().TextBounds.X, 1, 0)
          vb:Clone().Parent = vc.ContainerFolder
          vb:Clone().Visible = false
          if not b then
            va:Clone().TextTransparency = 0
            vb:Clone().Visible = true
            vd = false
          end
          ve(va:Clone().MouseButton1Click, function()
            for fd, fe in next, va.TabHolder:GetChildren() do
              if fe.Name == "Tab" then
                fe.TextTransparency = 0,4
              end
            end
            for fd, fe in next, va.ContainerFolder:GetChildren() do
              if fe.Name == "Container" then
                fe.Visible = false
              end
            end
            vb.TextTransparency = 0
            vc.Visible = true
          end)
          return {
            ToggleSetting = function(a, b, c, d, e)
              if b then
              end
              vb:Clone().Parent = vc
              vb:Clone().Title.Text = b
              vb:Clone().Desc.Text = c
              (function(a)
                va:Create(vb.ToggleFrame.ToggleToggled.ToggleIco, TweenInfo.new(0,2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                  ImageTransparency = a and 1
                }):Play()
                if va.Create or va.Create then
                end
                va:Create(vb.ToggleFrame.ToggleToggled.ToggleIco, TweenInfo.new(0,2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                  Size = UDim2.new(1, -6, 1, -6)
                }):Play()
              end)(d)
              ve(vb:Clone().MouseButton1Click, function()
                va(not vb)
              end)
              spawn(function()
                while wait() and va:IsRunning() do
                  if vb.ToggleFrame.ToggleToggled or not va.Themes[va.Settings.Theme].ToggleToggled then
                  end
                  vb.ToggleFrame.ToggleToggled.BackgroundColor3 = va.Themes[va.Settings.Theme].MainFrame
                  if vb.ToggleFrame or not va.Themes[va.Settings.Theme].ToggleToggled then
                  end
                  vb.ToggleFrame.BackgroundColor3 = va.Themes[va.Settings.Theme].ToggleFrame
                  vb.Title.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                end
              end)
            end,
            BindSetting = function(a, b, c, d, e)
              vb:Clone().Parent = vc
              vb:Clone().Title.Text = b
              vb:Clone().Desc.Text = c
              function SetValue(a)
                va = false
                vb = a or vb
                if a then
                end
                vb = vb
                vc.BText.Text = vb
                vd.Settings[ve] = vb
                SaveSettings()
              end
              SetValue(va.Settings[e] or d)
              ve(vb:Clone().InputEnded, function(a)
                if a.UserInputType == Enum.UserInputType.MouseButton1 then
                  if va then
                    return
                  end
                  va = true
                  vb.BText.Text = "..."
                end
              end)
              ve(vg.InputBegan, function(a)
                if va:GetFocusedTextBox() then
                  return
                end
                if vb then
                  pcall(function()
                    if vb then
                      vd = vc.KeyCode
                    end
                  end)
                  pcall(function()
                    if va(vb, vc.UserInputType) and vb then
                      vd = vc.UserInputType
                    end
                  end)
                  if a then
                  end
                  SetValue(vg)
                end
              end)
              spawn(function()
                while not nil and not va do
                  vb.Desc.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                  vb.BText.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                  vb.Title.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                end
              end)
            end,
            Dropdown = function(a, b, c, d, e, g)
              vb:Clone().Parent = vc
              vb:Clone().Title.Text = b
              vb:Clone().Desc.Text = c
              vb:Clone().Main.Current.Text = va.Settings[g] or e
              function Toggle()
                va.Main.Holder.Visible = vb
                if va.Main.Holder or not UDim2.new(1, 0, 0, va.Main.Holder.UIListLayout.AbsoluteContentSize.Y) then
                end
                va.Main.Holder.Size = UDim2.new(1, 0, 0, 0)
                if not UDim2.new(1, 0, 0, 0) then
                  if 0 + 1 > 190 then
                    vc.CanvasSize = UDim2.new(0, 0, 0, 5 + 6)
                  end
                else
                  vc.CanvasSize = UDim2.new(0, 0, 0, vc.UIListLayout.AbsoluteContentSize.Y)
                end
                vd:Create(va.Main.Ico, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                  Rotation = vd or 0
                }):Play()
              end
              ve(vb:Clone().InputEnded, function(a)
                if a.UserInputType == Enum.UserInputType.MouseButton1 then
                  va = not va
                  Toggle()
                end
              end)
              spawn(function()
                while wait() and va:IsRunning() do
                  vb.Main.ImageColor3 = va.Themes[va.Settings.Theme].TopBar
                  vb.Main.Holder.ImageColor3 = va.Themes[va.Settings.Theme].TopBar
                end
              end);
              (function(a)
                spawn(function()
                  for fd, fe in pairs(va) do
                    vb:Clone().Parent = vc.Main.Holder
                    vb:Clone().Text = fe
                    vd(vb:Clone().MouseButton1Click, function()
                      va = vb
                      vc.Settings[vd] = va
                      ve.Main.Current.Text = va
                      SaveSettings()
                    end)
                    spawn(function()
                      while not nil and va:IsRunning() do
                        vb.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                      end
                    end)
                  end
                end)
              end)(d)
            end
          }
        end
      }:Tab("Appearance"):Dropdown("Theme", "The look of the user interface", {
        "Default",
        "Light",
        "Discord",
        "Red",
        "Green",
        "Blue"
      }, "Default", "Theme")
    end
    (function()
      game:GetObjects("rbxassetid://7037305928")[1].Parent = va
      game:GetObjects("rbxassetid://7037305928")[1].ZIndex = 4
      game:GetObjects("rbxassetid://7037305928")[1].Visible = vb.Settings.ShowFriendsOnLaunch
      vc(vd.MouseButton1Click, function()
        va.Visible = not va.Visible
        vb.TopBar.ButtonHolder.MenuBtn.MenuFrame.Visible = false
      end)
      vc(game:GetObjects("rbxassetid://7037305928")[1].Frame.TopBar.CloseBtn.Ico.MouseEnter, function()
        va:Create(vb.Frame.TopBar.CloseBtn.Ico, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageTransparency = 0}):Play()
      end)
      vc(game:GetObjects("rbxassetid://7037305928")[1].Frame.TopBar.CloseBtn.Ico.MouseLeave, function()
        va:Create(vb.Frame.TopBar.CloseBtn.Ico, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageTransparency = 0,4}):Play()
      end)
      vc(game:GetObjects("rbxassetid://7037305928")[1].Frame.TopBar.CloseBtn.MouseButton1Click, function()
        va.Visible = false
      end)
      function MakePanel(a)
      end
      function InviteFriend(a)
      end
      function JoinFriend(a)
      end
      vh(game:GetObjects("rbxassetid://7037305928")[1].Frame.TopBar, game:GetObjects("rbxassetid://7037305928")[1])
      for fh, fj in next, {}, nil do
      end
      spawn(function()
        while not nil and not va do
          vb.Frame.BackgroundColor3 = va.Themes[va.Settings.Theme].MainFrame
          vb.Frame.TopBar.ImageColor3 = va.Themes[va.Settings.Theme].TopBar
          vb.Frame.TopBar.CloseBtn.Ico.ImageColor3 = va.Themes[va.Settings.Theme].TextColor
        end
      end)
    end)()
    MusicConstructor()
    SettingsConstructor()
    ve(va.MainFrame.TopBar.TabListBtn.MouseButton1Click, function()
      va()
    end)
    ve(va.MainFrame.TabMenu.Menu.Top.MenuCloseBtn.MouseButton1Click, function()
      va()
    end)
    ve(va.MainFrame.TopBar.ButtonHolder.SearchBtn.MouseButton1Click, function()
      va.TopBar.ButtonHolder.SearchBtn.TextBox.Visible = not va.TopBar.ButtonHolder.SearchBtn.TextBox.Visible
      va.TopBar.TopFrameTitle.Visible = not va.TopBar.TopFrameTitle.Visible
    end)
    ve(va.MainFrame.TopBar.ButtonHolder.CloseBtn.MouseEnter, function()
      va:Create(vb.TopBar.ButtonHolder.CloseBtn.Ico, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageTransparency = 0}):Play()
    end)
    ve(va.MainFrame.TopBar.ButtonHolder.CloseBtn.MouseLeave, function()
      va:Create(vb.TopBar.ButtonHolder.CloseBtn.Ico, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageTransparency = 0,4}):Play()
    end)
    ve(va.MainFrame.TopBar.ButtonHolder.SearchBtn.MouseEnter, function()
      va:Create(vb.TopBar.ButtonHolder.SearchBtn.Ico, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageTransparency = 0}):Play()
    end)
    ve(va.MainFrame.TopBar.ButtonHolder.SearchBtn.MouseLeave, function()
      va:Create(vb.TopBar.ButtonHolder.SearchBtn.Ico, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageTransparency = 0,4}):Play()
    end)
    ve(va.MainFrame.TopBar.ButtonHolder.MenuBtn.MouseEnter, function()
      va:Create(vb.TopBar.ButtonHolder.MenuBtn.Ico, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageTransparency = 0}):Play()
    end)
    ve(va.MainFrame.TopBar.ButtonHolder.MenuBtn.MouseLeave, function()
      va:Create(vb.TopBar.ButtonHolder.MenuBtn.Ico, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageTransparency = 0,4}):Play()
    end)
    ve(va.MainFrame.TopBar.TabListBtn.MouseEnter, function()
      va:Create(vb.TopBar.TabListBtn, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageTransparency = 0}):Play()
    end)
    ve(va.MainFrame.TopBar.TabListBtn.MouseLeave, function()
      va:Create(vb.TopBar.TabListBtn, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageTransparency = 0,4}):Play()
    end)
    ve(va.MainFrame.TopBar.ButtonHolder.MenuBtn.MouseButton1Click, function()
      va.TopBar.ButtonHolder.MenuBtn.MenuFrame.Visible = not va.TopBar.ButtonHolder.MenuBtn.MenuFrame.Visible
    end)
    ve(va.MainFrame.TopBar.ButtonHolder.CloseBtn.MouseButton1Click, function()
      va = not va
      vb.Visible = va
    end)
    function SearchConstructor()
      function StitchElements()
        for fe, fg in next, va.CurrentTab:GetDescendants() do
          if fg.Name:find("element") then
            table.insert({}, fg)
          end
        end
        return {}
      end
      vb(vc.TopBar.ButtonHolder.SearchBtn.TextBox:GetPropertyChangedSignal("Text"), function()
        for fd, fe in pairs(StitchElements()) do
          if va.TopBar.ButtonHolder.SearchBtn.TextBox.Text:len() > 1 then
            if fe.Name:lower():sub(0, -8):find(va.TopBar.ButtonHolder.SearchBtn.TextBox.Text:lower()) then
              fe.Visible = true
            else
              fe.Visible = false
            end
          else
            fe.Visible = true
          end
        end
      end)
    end
    SearchConstructor()
    ve(vk.InputBegan, function(a)
      if (a.KeyCode.Name == va.Settings.CloseBind or a.UserInputType.Name == va.Settings.CloseBind) and not vb then
        vc = not vc
        vd.Visible = vc
      end
    end)
    vc:Notification("Notification", "Solaris has been loaded, press " .. vc.Settings.CloseBind .. " to open/close the UI.")
    spawn(function()
      while wait() and not va do
        vb.BackgroundColor3 = va.Themes[va.Settings.Theme].MainFrame
        vb.TopBar.ImageColor3 = va.Themes[va.Settings.Theme].TopBar
        vb.TopBar.ButtonHolder.CloseBtn.Ico.ImageColor3 = va.Themes[va.Settings.Theme].TextColor
        vb.TopBar.ButtonHolder.MenuBtn.Ico.ImageColor3 = va.Themes[va.Settings.Theme].TextColor
        vb.TopBar.ButtonHolder.SearchBtn.Ico.ImageColor3 = va.Themes[va.Settings.Theme].TextColor
        vb.TopBar.TabListBtn.ImageColor3 = va.Themes[va.Settings.Theme].TextColor
        vb.TopBar.TopFrameTitle.TextColor3 = va.Themes[va.Settings.Theme].TextColor
        vb.TabMenu.Menu.BackgroundColor3 = va.Themes[va.Settings.Theme].Menu
        vb.TabMenu.Menu.Top.MenuCloseBtn.ImageLabel.ImageColor3 = va.Themes[va.Settings.Theme].TextColor
        vb.TopBar.ButtonHolder.SearchBtn.TextBox.BackgroundColor3 = va.Themes[va.Settings.Theme].MainFrame
        vb.TopBar.ButtonHolder.SearchBtn.TextBox.TextColor3 = va.Themes[va.Settings.Theme].TextColor
        vb.TopBar.ButtonHolder.SearchBtn.TextBox.PlaceholderColor3 = va.Themes[va.Settings.Theme].TextColor
        vb.TopBar.ButtonHolder.MenuBtn.MenuFrame.Frame.BackgroundColor3 = va.Themes[va.Settings.Theme].TopBar
      end
    end)
    return {
      Tab = function(a, b)
        va:Clone().AutoButtonColor = false
        va:Clone().Parent = vb.TabMenu.Menu.Holder
        va:Clone().Text = b
        va:Clone().TextSize = 14
        vc:Clone().Parent = vb.ContainerFolder
        vc:Clone().Visible = false
        if vd == false then
          vd = true
          vc:Clone().Visible = true
          va:Clone().UIPadding.PaddingLeft = UDim.new(0, 10)
          va:Clone().TextTransparency = 0
          va:Clone().BackgroundTransparency = 0
          ve.CurrentTab = vc:Clone()
        end
        spawn(function()
          while wait() and va:IsRunning() do
            vb.TextColor3 = va.Themes[va.Settings.Theme].TextColor
            vb.BackgroundColor3 = va.Themes[va.Settings.Theme].TabToggled
            vc.CanvasSize = UDim2.new(0, 0, 0, 5 + 26)
          end
        end)
        vg(va:Clone().MouseButton1Click, function()
          for fd, fe in next, va.TabMenu.Menu.Holder:GetChildren() do
            if fe:IsA("TextButton") then
              vb:Create(fe, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextTransparency = 0,4, BackgroundTransparency = 1}):Play()
              vb:Create(fe.UIPadding, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                PaddingLeft = UDim.new(0, 5)
              }):Play()
            end
            vb:Create(vc, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextTransparency = 0, BackgroundTransparency = 0}):Play()
            vb:Create(vc.UIPadding, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
              PaddingLeft = UDim.new(0, 10)
            }):Play()
          end
          for fd, fe in next, va.ContainerFolder:GetChildren() do
            if fe.Name == "Container" then
              fe.Visible = false
            end
            vd.Visible = true
          end
          tabtoggledname = vc.Name
          ve()
        end)
        return {
          Section = function(a, b)
            va:Clone().Parent = vb
            va:Clone().SectionTitle.Text = b
            spawn(function()
              while not nil and va:IsRunning() do
                vb.SectionTitle.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                vb.Size = UDim2.new(0,9, 0, 0, vb.UIListLayout.AbsoluteContentSize.Y)
              end
            end)
            return {
              Button = function(a, b, c)
                game:GetObjects("rbxassetid://6937142338")[1].Parent = va
                game:GetObjects("rbxassetid://6937142338")[1].Name = b .. "element"
                game:GetObjects("rbxassetid://6937142338")[1].ButtonText.Text = b
                game:GetObjects("rbxassetid://6937142338")[1].ClipsDescendants = true
                vb(game:GetObjects("rbxassetid://6937142338")[1].MouseButton1Click, function()
                  Ripple(va)
                  vb()
                end)
                vb(game:GetObjects("rbxassetid://6937142338")[1].MouseEnter, function()
                  va = true
                end)
                vb(game:GetObjects("rbxassetid://6937142338")[1].MouseLeave, function()
                  va = false
                end)
                spawn(function()
                  while not nil and va:IsRunning() do
                    vb.BackgroundColor3 = vc and va.Themes[va.Settings.Theme].Button
                    vb.ButtonText.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                  end
                end)
              end,
              Toggle = function(a, b, c, d, e)
                game:GetObjects("rbxassetid://6963155498")[1].Parent = va
                game:GetObjects("rbxassetid://6963155498")[1].ToggleText.Text = b
                game:GetObjects("rbxassetid://6963155498")[1].Name = b .. "element"
                vc(game:GetObjects("rbxassetid://6963155498")[1].MouseButton1Click, function()
                  va.Value = not va.Value
                  va:Set(va.Value)
                end)
                spawn(function()
                  while wait() and va:IsRunning() do
                    if not vc.Value or vb.ToggleFrame.ToggleToggled then
                    end
                    vb.ToggleFrame.ToggleToggled.BackgroundColor3 = va.Themes[va.Settings.Theme].Toggle
                    if vb.ToggleFrame or vb.ToggleFrame then
                    end
                    vb.ToggleFrame.BackgroundColor3 = va.Themes[va.Settings.Theme].ToggleFrame
                    vb.BackgroundColor3 = va.Themes[va.Settings.Theme].Toggle
                    vb.ToggleText.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                  end
                end)
                spawn(function()
                  va:Set(vb)
                  vc.Flags[vd] = va
                end)
                return {
                  Value = false,
                  Set = function(a, b)
                    va.Value = b
                    if b or b then
                    end
                    vb:Create(vc.ToggleFrame.ToggleToggled.ToggleIco, TweenInfo.new(0,2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                      ImageTransparency = b or 1,
                      Size = UDim2.new(1, -6, 1, -6)
                    }):Play()
                    return vd(va.Value)
                  end
                }
              end,
              Slider = function(a, b, c, d, e, g, h, j)
                game:GetObjects("rbxassetid://6967573727")[1].Parent = va
                game:GetObjects("rbxassetid://6967573727")[1].SliderText.Text = b
                game:GetObjects("rbxassetid://6967573727")[1].Name = b .. "element"
                vc(game:GetObjects("rbxassetid://6967573727")[1].SliderFrame.InputBegan, function(a)
                  if a.UserInputType == Enum.UserInputType.MouseButton1 then
                    va = true
                  end
                end)
                vc(game:GetObjects("rbxassetid://6967573727")[1].SliderFrame.InputEnded, function(a)
                  if a.UserInputType == Enum.UserInputType.MouseButton1 then
                    va = false
                  end
                end)
                vc(game:GetService("UserInputService").InputChanged, function(a)
                  if va and a.UserInputType == Enum.UserInputType.MouseMovement then
                    vb(a)
                  end
                end)
                spawn(function()
                  while wait() and va:IsRunning() do
                    vb.BackgroundColor3 = va.Themes[va.Settings.Theme].Slider
                    vb.SliderFrame.BackgroundColor3 = va.Themes[va.Settings.Theme].SliderBar
                    vb.SliderFrame.SliderCurrentFrame.BackgroundColor3 = va.Themes[va.Settings.Theme].SliderInc
                    vb.SliderText.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                    vb.SliderVal.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                  end
                end)
                spawn(function()
                  va:Set(vb)
                  vc.Flags[vd] = va
                end)
                return {
                  Value = e,
                  Set = function(a, b)
                    if b then
                    end
                    vc.SliderVal.Text = tostring(0)
                    vc.SliderFrame.SliderCurrentFrame.Size = UDim2.new((b or 0) / va, 0, 1, 0)
                    vd.Value = b
                    return ve(vd.Value)
                  end
                }
              end,
              Dropdown = function(a, b, c, d, e, g)
                game:GetObjects("rbxassetid://7027964359")[1].Parent = va
                game:GetObjects("rbxassetid://7027964359")[1].Btn.Title.Text = b
                game:GetObjects("rbxassetid://7027964359")[1].Name = b .. "element"
                vc(game:GetObjects("rbxassetid://7027964359")[1].Btn.MouseButton1Click, function()
                  va()
                end)
                spawn(function()
                  while not nil and va:IsRunning() do
                    vb.Btn.BackgroundColor3 = va.Themes[va.Settings.Theme].Dropdown
                    vb.Btn.Title.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                    vb.Btn.Ico.ImageColor3 = va.Themes[va.Settings.Theme].TextColor
                  end
                end)
                spawn(function()
                  va:Refresh(vb, false)
                  va:Set(vc)
                  vd.Flags[ve] = va
                end)
                return {
                  Value = nil,
                  Toggled = false,
                  Options = c,
                  Refresh = function(a, b, c)
                    if c then
                      for fh, fj in pairs(va.Holder:GetChildren()) do
                        if not b then
                          fj:Destroy()
                          if b or not UDim2.new(1, 0, 0, 6 + 13) then
                          end
                          va.Holder.Size = UDim2.new(1, 0, 0, 0)
                          if not vb.Toggled or b then
                          end
                          va.Size = UDim2.new(1, 0, 0, 32)
                        end
                      end
                    end
                    vc(b)
                  end,
                  Set = function(a, b)
                    va.Value = b
                    vb.Btn.Title.Text = vc .. " - " .. b
                    return vd(va.Value)
                  end
                }
              end,
              MultiDropdown = function(a, b, c, d, e, g)
                game:GetObjects("rbxassetid://7027964359")[1].Parent = va
                game:GetObjects("rbxassetid://7027964359")[1].Btn.Title.Text = b
                game:GetObjects("rbxassetid://7027964359")[1].Name = b .. "element"
                vc(game:GetObjects("rbxassetid://7027964359")[1].Btn.MouseButton1Click, function()
                  va()
                end)
                spawn(function()
                  while wait() and not va do
                    vb.Btn.BackgroundColor3 = va.Themes[va.Settings.Theme].Dropdown
                    vb.Btn.Title.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                    vb.Btn.Ico.ImageColor3 = va.Themes[va.Settings.Theme].TextColor
                  end
                end)
                spawn(function()
                  va:Refresh(vb, false)
                  va:Set(vc)
                  vd.Flags[ve] = va
                end)
                return {
                  Value = {},
                  Toggled = false,
                  Options = c,
                  Refresh = function(a, b, c)
                    if not b then
                      for fh, fj in pairs(va.Holder:GetChildren()) do
                        if fj:IsA("TextButton") then
                          fj:Destroy()
                          va.Holder.Size = vb.Toggled and UDim2.new(1, 0, 0, 0)
                          if b or not UDim2.new(1, 0, 0, 38 + 13) then
                          end
                          va.Size = UDim2.new(1, 0, 0, 32)
                        end
                      end
                    end
                    vc(b)
                  end,
                  Set = function(a, b)
                    va.Value = b
                    vb.Btn.Title.Text = vc .. " - " .. table.concat(va.Value, ", ")
                    return vd(va.Value)
                  end
                }
              end,
              Colorpicker = function(a, b, c, d, e)
                game:GetObjects("rbxassetid://7329998014")[1].Hue.Visible, game:GetObjects("rbxassetid://7329998014")[1].Color.Visible = {Value = c, Toggled = false}.Toggled, {Value = c, Toggled = false}.Toggled
                game:GetObjects("rbxassetid://7329998014")[1].Parent = va
                game:GetObjects("rbxassetid://7329998014")[1].Btn.Colorpicker.Text = b
                game:GetObjects("rbxassetid://7329998014")[1].Name = b .. "element"
                game:GetObjects("rbxassetid://7329998014")[1].Btn.Box.BackgroundColor3 = c
                game:GetObjects("rbxassetid://7329998014")[1].Hue.HueGradient.Color = ColorSequence.new({
                  ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 0, 4)),
                  ColorSequenceKeypoint.new(0,2, Color3.fromRGB(234, 255, 0)),
                  ColorSequenceKeypoint.new(0,4, Color3.fromRGB(21, 255, 0)),
                  ColorSequenceKeypoint.new(0,6, Color3.fromRGB(0, 255, 255)),
                  ColorSequenceKeypoint.new(0,8, Color3.fromRGB(0, 17, 255)),
                  ColorSequenceKeypoint.new(0,9, Color3.fromRGB(255, 0, 251)),
                  ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 0, 4))
                })
                vb(game:GetObjects("rbxassetid://7329998014")[1].Btn.MouseButton1Click, function()
                  va.Toggled = not va.Toggled
                  if vb or not UDim2.new(1, 0, 0, 120) then
                  end
                  vb:Create(vc, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                    Size = UDim2.new(1, 0, 0, 32)
                  }):Play()
                  vc.Hue.Visible, vc.Color.Visible = va.Toggled, va.Toggled
                end)
                game:GetObjects("rbxassetid://7329998014")[1].Btn.Box.BackgroundColor3 = c
                game:GetObjects("rbxassetid://7329998014")[1].Color.BackgroundColor3 = c
                pcall(e, game:GetObjects("rbxassetid://7329998014")[1].Btn.Box.BackgroundColor3)
                vb(game:GetObjects("rbxassetid://7329998014")[1].Color.InputBegan, function(a)
                  if a.UserInputType == Enum.UserInputType.MouseButton1 then
                    if not a then
                      ColorInput:Disconnect()
                    end
                    ColorInput = va.RenderStepped:Connect(function()
                      vd, vc.Position = math.clamp(va.X - vb.AbsolutePosition.X, 0, vb.AbsoluteSize.X) / vb.AbsoluteSize.X, UDim2.new(math.clamp(va.X - vb.AbsolutePosition.X, 0, vb.AbsoluteSize.X) / vb.AbsoluteSize.X, 0, math.clamp(va.Y - vb.AbsolutePosition.Y, 0, vb.AbsoluteSize.Y) / vb.AbsoluteSize.Y, 0)
                      ve = 1 - math.clamp(va.Y - vb.AbsolutePosition.Y, 0, vb.AbsoluteSize.Y) / vb.AbsoluteSize.Y
                      vg(true)
                    end)
                  end
                end)
                vb(game:GetObjects("rbxassetid://7329998014")[1].Color.InputEnded, function(a)
                  if a.UserInputType == Enum.UserInputType.MouseButton1 and not a then
                    ColorInput:Disconnect()
                  end
                end)
                vb(game:GetObjects("rbxassetid://7329998014")[1].Hue.InputBegan, function(a)
                  if a.UserInputType == Enum.UserInputType.MouseButton1 then
                    if HueInput then
                      HueInput:Disconnect()
                    end
                    HueInput = va.RenderStepped:Connect(function()
                      vc.Position = UDim2.new(0,48, 0, math.clamp(va.Y - vb.AbsolutePosition.Y, 0, vb.AbsoluteSize.Y) / vb.AbsoluteSize.Y, 0)
                      vd = 1 - math.clamp(va.Y - vb.AbsolutePosition.Y, 0, vb.AbsoluteSize.Y) / vb.AbsoluteSize.Y
                      ve(true)
                    end)
                  end
                end)
                vb(game:GetObjects("rbxassetid://7329998014")[1].Hue.InputEnded, function(a)
                  if a.UserInputType == Enum.UserInputType.MouseButton1 and not a then
                    HueInput:Disconnect()
                  end
                end)
                spawn(function()
                  while wait() and not va do
                    vb.BackgroundColor3 = va.Themes[va.Settings.Theme].Colorpicker
                    vb.Btn.Colorpicker.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                  end
                end)
                return {Value = c, Toggled = false}
              end,
              Label = function(a, b)
                game:GetObjects("rbxassetid://7032552322")[1].Parent = va
                game:GetObjects("rbxassetid://7032552322")[1].Title.Text = b
                game:GetObjects("rbxassetid://7032552322")[1].Name = b .. "element"
                spawn(function()
                  while not nil and va:IsRunning() do
                    vb.BackgroundColor3 = va.Themes[va.Settings.Theme].Label
                    vb.Title.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                  end
                end)
                return {
                  Set = function(a, b)
                    va.Title.Text = b
                    va.Name = vb .. "element"
                  end
                }
              end,
              Textbox = function(a, b, c, d)
                game:GetObjects("rbxassetid://7147292392")[1].Parent = va
                game:GetObjects("rbxassetid://7147292392")[1].Title.Text = b
                game:GetObjects("rbxassetid://7147292392")[1].Name = b .. "element"
                vb(game:GetObjects("rbxassetid://7147292392")[1].Box.Changed, function()
                  va.Box.Size = UDim2.new(0, 3 + 16, 0, 22)
                end)
                game:GetObjects("rbxassetid://7147292392")[1].Box.PlaceholderText = "                  "
                vb(game:GetObjects("rbxassetid://7147292392")[1].InputBegan, function(a)
                  if a.UserInputType == Enum.UserInputType.MouseButton1 then
                    va.Box:CaptureFocus()
                  end
                end)
                vb(game:GetObjects("rbxassetid://7147292392")[1].Box.FocusLost, function()
                  if vb then
                    va.Box.Text = ""
                  end
                  return vc(va.Box.Text)
                end)
                vb(vc.InputBegan, function(a)
                  if a.KeyCode == Enum.KeyCode.Escape and va.Box:IsFocused() then
                    va.Box:ReleaseFocus()
                  end
                end)
                spawn(function()
                  while not nil and va:IsRunning() do
                    vb.BackgroundColor3 = va.Themes[va.Settings.Theme].Textbox
                    vb.Title.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                    vb.Box.BackgroundColor3 = va.Themes[va.Settings.Theme].TextboxFrame
                    vb.Box.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                  end
                end)
                return {}
              end,
              Bind = function(a, b, c, d, e, g)
                game:GetObjects("rbxassetid://7126874744")[1].Parent = va
                game:GetObjects("rbxassetid://7126874744")[1].Title.Text = b
                game:GetObjects("rbxassetid://7126874744")[1].Name = b .. "element"
                vb(game:GetObjects("rbxassetid://7126874744")[1].InputEnded, function(a)
                  if a.UserInputType == Enum.UserInputType.MouseButton1 then
                    if va.Binding then
                      return
                    end
                    va.Binding = true
                    vb.BText.Text = "..."
                  end
                end)
                vb(vc.InputBegan, function(a)
                  if not a then
                    return
                  end
                  if (a.KeyCode.Name == vb.Value or a.UserInputType.Name == vb.Value) and not vb.Binding then
                    if vc then
                      Holding = true
                      vd(Holding)
                    else
                      vd()
                    end
                  elseif vb.Binding then
                    pcall(function()
                      if vb then
                        vd = vc.KeyCode
                      end
                    end)
                    pcall(function()
                      if not vb and vb then
                        vd = vc.UserInputType
                      end
                    end)
                    if a then
                    end
                    vb:Set(vb.Value)
                  end
                end)
                vb(vc.InputEnded, function(a)
                  if (a.KeyCode.Name == va.Value or a.UserInputType.Name == va.Value) and not a and Holding then
                    Holding = false
                    vc(Holding)
                  end
                end)
                spawn(function()
                  while not nil and not va do
                    vb.BackgroundColor3 = va.Themes[va.Settings.Theme].Bind
                    vb.Title.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                    vb.BText.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                  end
                end)
                {
                  Value,
                  Binding = false,
                  Holding = false,
                  Set = function(a, b)
                    a.Binding = false
                    a.Value = b or a.Value
                    a.Value = a.Value.Name or a.Value
                    va.BText.Text = a.Value
                  end
                }:Set(c)
                vh.Flags[e] = {
                  Value,
                  Binding = false,
                  Holding = false,
                  Set = function(a, b)
                    a.Binding = false
                    a.Value = b or a.Value
                    a.Value = a.Value.Name or a.Value
                    va.BText.Text = a.Value
                  end
                }
                return {
                  Value,
                  Binding = false,
                  Holding = false,
                  Set = function(a, b)
                    a.Binding = false
                    a.Value = b or a.Value
                    a.Value = a.Value.Name or a.Value
                    va.BText.Text = a.Value
                  end
                }
              end
            }
          end
        }
      end
    }
  end
}
return {
  GUI = Instance.new("ScreenGui"),
  Connections = {},
  NGUI = Instance.new("ScreenGui"),
  trillhashedipaddress = "c2hlCnNheQpkbwp5b3UKbG92ZQptZQppCnRlbGwKaGVyCmkKYW0KbW9ua2U",
  Version = "V2",
  Themes = {
    Default = {
      MainFrame = Color3.fromRGB(25, 25, 25),
      TopBar = Color3.fromRGB(30, 30, 30),
      TextColor = Color3.fromRGB(255, 255, 255),
      Menu = Color3.fromRGB(37, 37, 37),
      TabToggled = Color3.fromRGB(43, 43, 43),
      Button = Color3.fromRGB(30, 30, 30),
      ButtonHold = Color3.fromRGB(31, 31, 31),
      Toggle = Color3.fromRGB(30, 30, 30),
      ToggleFrame = Color3.fromRGB(55, 55, 55),
      ToggleToggled = Color3.fromRGB(22, 168, 76),
      Slider = Color3.fromRGB(30, 30, 30),
      SliderBar = Color3.fromRGB(25, 25, 25),
      SliderInc = Color3.fromRGB(60, 60, 60),
      Dropdown = Color3.fromRGB(30, 30, 30),
      DropdownItem = Color3.fromRGB(30, 30, 30),
      Textbox = Color3.fromRGB(30, 30, 30),
      TextboxFrame = Color3.fromRGB(25, 25, 25),
      Colorpicker = Color3.fromRGB(30, 30, 30),
      Label = Color3.fromRGB(30, 30, 30),
      Bind = Color3.fromRGB(30, 30, 30)
    },
    Light = {
      MainFrame = Color3.fromRGB(255, 255, 255),
      TopBar = Color3.fromRGB(227, 227, 227),
      TextColor = Color3.fromRGB(0, 0, 0),
      Menu = Color3.fromRGB(227, 227, 227),
      TabToggled = Color3.fromRGB(43, 43, 43),
      Button = Color3.fromRGB(227, 227, 227),
      ButtonHold = Color3.fromRGB(31, 31, 31),
      Toggle = Color3.fromRGB(227, 227, 227),
      ToggleFrame = Color3.fromRGB(55, 55, 55),
      ToggleToggled = Color3.fromRGB(22, 168, 76),
      Slider = Color3.fromRGB(227, 227, 227),
      SliderBar = Color3.fromRGB(220, 220, 220),
      SliderInc = Color3.fromRGB(233, 233, 233),
      Dropdown = Color3.fromRGB(227, 227, 227),
      DropdownItem = Color3.fromRGB(227, 227, 227),
      Textbox = Color3.fromRGB(227, 227, 227),
      TextboxFrame = Color3.fromRGB(220, 220, 220),
      Colorpicker = Color3.fromRGB(227, 227, 2270),
      Label = Color3.fromRGB(227, 227, 227),
      Bind = Color3.fromRGB(227, 227, 227)
    },
    Discord = {
      MainFrame = Color3.fromRGB(54, 57, 63),
      TopBar = Color3.fromRGB(47, 49, 54),
      TextColor = Color3.fromRGB(255, 255, 255),
      Menu = Color3.fromRGB(47, 49, 54),
      TabToggled = Color3.fromRGB(54, 57, 63),
      Button = Color3.fromRGB(88, 101, 242),
      ButtonHold = Color3.fromRGB(71, 82, 196),
      Toggle = Color3.fromRGB(47, 49, 54),
      ToggleFrame = Color3.fromRGB(67, 69, 74),
      ToggleToggled = Color3.fromRGB(22, 168, 76),
      Slider = Color3.fromRGB(47, 49, 54),
      SliderBar = Color3.fromRGB(42, 44, 49),
      SliderInc = Color3.fromRGB(62, 64, 69),
      Dropdown = Color3.fromRGB(47, 49, 54),
      DropdownItem = Color3.fromRGB(47, 49, 54),
      Textbox = Color3.fromRGB(47, 49, 54),
      TextboxFrame = Color3.fromRGB(42, 44, 49),
      Colorpicker = Color3.fromRGB(47, 49, 54),
      Label = Color3.fromRGB(47, 49, 54),
      Bind = Color3.fromRGB(47, 49, 54)
    },
    Blue = {
      MainFrame = Color3.fromRGB(35, 35, 50),
      TopBar = Color3.fromRGB(40, 40, 55),
      TextColor = Color3.fromRGB(255, 255, 255),
      Menu = Color3.fromRGB(47, 47, 62),
      TabToggled = Color3.fromRGB(53, 53, 68),
      Button = Color3.fromRGB(40, 40, 55),
      ButtonHold = Color3.fromRGB(41, 41, 56),
      Toggle = Color3.fromRGB(40, 40, 55),
      ToggleFrame = Color3.fromRGB(65, 65, 80),
      ToggleToggled = Color3.fromRGB(64, 64, 120),
      Slider = Color3.fromRGB(40, 40, 55),
      SliderBar = Color3.fromRGB(35, 35, 50),
      SliderInc = Color3.fromRGB(70, 70, 85),
      Dropdown = Color3.fromRGB(40, 40, 55),
      DropdownItem = Color3.fromRGB(40, 40, 55),
      Textbox = Color3.fromRGB(40, 40, 55),
      TextboxFrame = Color3.fromRGB(35, 35, 50),
      Colorpicker = Color3.fromRGB(40, 40, 55),
      Label = Color3.fromRGB(40, 40, 55),
      Bind = Color3.fromRGB(40, 40, 55)
    },
    Red = {
      MainFrame = Color3.fromRGB(50, 35, 35),
      TopBar = Color3.fromRGB(55, 40, 40),
      TextColor = Color3.fromRGB(255, 255, 255),
      Menu = Color3.fromRGB(62, 47, 47),
      TabToggled = Color3.fromRGB(68, 53, 53),
      Button = Color3.fromRGB(55, 40, 40),
      ButtonHold = Color3.fromRGB(56, 41, 41),
      Toggle = Color3.fromRGB(55, 40, 40),
      ToggleFrame = Color3.fromRGB(80, 65, 65),
      ToggleToggled = Color3.fromRGB(120, 64, 64),
      Slider = Color3.fromRGB(55, 40, 40),
      SliderBar = Color3.fromRGB(50, 35, 35),
      SliderInc = Color3.fromRGB(85, 70, 70),
      Dropdown = Color3.fromRGB(55, 40, 40),
      DropdownItem = Color3.fromRGB(55, 40, 40),
      Textbox = Color3.fromRGB(55, 40, 40),
      TextboxFrame = Color3.fromRGB(50, 35, 35),
      Colorpicker = Color3.fromRGB(55, 40, 40),
      Label = Color3.fromRGB(55, 40, 40),
      Bind = Color3.fromRGB(55, 40, 40)
    },
    Green = {
      MainFrame = Color3.fromRGB(35, 50, 35),
      TopBar = Color3.fromRGB(40, 55, 40),
      TextColor = Color3.fromRGB(255, 255, 255),
      Menu = Color3.fromRGB(47, 62, 47),
      TabToggled = Color3.fromRGB(53, 68, 53),
      Button = Color3.fromRGB(40, 55, 40),
      ButtonHold = Color3.fromRGB(41, 56, 41),
      Toggle = Color3.fromRGB(40, 55, 40),
      ToggleFrame = Color3.fromRGB(65, 80, 65),
      ToggleToggled = Color3.fromRGB(64, 120, 64),
      Slider = Color3.fromRGB(40, 55, 40),
      SliderBar = Color3.fromRGB(35, 50, 35),
      SliderInc = Color3.fromRGB(70, 85, 70),
      Dropdown = Color3.fromRGB(40, 55, 40),
      DropdownItem = Color3.fromRGB(40, 55, 40),
      Textbox = Color3.fromRGB(40, 55, 40),
      TextboxFrame = Color3.fromRGB(35, 50, 35),
      Colorpicker = Color3.fromRGB(40, 55, 40),
      Label = Color3.fromRGB(40, 55, 40),
      Bind = Color3.fromRGB(40, 55, 40)
    }
  },
  Settings = {
    Theme = "Default",
    ShowFriendsOnLaunch = true,
    ShowMusicOnLaunch = true,
    CloseBind = "RightControl"
  },
  Flags = {},
  CurrentTab,
  Settings = game:GetService("HttpService"):JSONDecode(readfile("SolarisHub/settings.txt")),
  LoadCfg = function(a, b)
    table.foreach(va:JSONDecode(b), function(a, b)
      if va.Flags[a] then
        spawn(function()
          va.Flags[vb]:Set(vc)
        end)
      else
        warn("cfg loader - could not find", a, b)
      end
    end)
  end,
  SaveCfg = function(a, b)
    for fh, fj in pairs(va.Flags) do
    end
    writefile("SolarisHub/configs/" .. b .. ".txt", tostring(vb:JSONEncode({
      [fh] = fj.Value
    })))
  end,
  Notification = function(a, b, c)
    va:New(b, c)
  end,
  New = function(a, b)
    if b ~= "az8PYYKgEGsZM3nDeQzCW4y92qHurAmCBTujBe63gwRj" then
      print("nigger detected")
      while true do
        if false == false then
        end
      end
    end
    va.Parent = vb
    va.MainFrame.TopBar.TopFrameTitle.Text = "Solaris <font transparency=\"0.4\">" .. vc.Version .. "</font>"
    vd(va.MainFrame.TopBar, va)
    game:GetObjects("rbxassetid://7037141226")[1]:Clone().Parent = va.MainFrame.TopBar.ButtonHolder.MenuBtn.MenuFrame
    game:GetObjects("rbxassetid://7037141226")[1]:Clone().Position = UDim2.new(0, 0, 0, 5)
    game:GetObjects("rbxassetid://7037141226")[1]:Clone().Text = "Friends"
    ve(game:GetObjects("rbxassetid://7037141226")[1]:Clone().MouseEnter, function()
      va:Create(vb, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextTransparency = 0}):Play()
    end)
    ve(game:GetObjects("rbxassetid://7037141226")[1]:Clone().MouseLeave, function()
      va:Create(vb, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextTransparency = 0,4}):Play()
    end)
    game:GetObjects("rbxassetid://7037141226")[1]:Clone().Parent = va.MainFrame.TopBar.ButtonHolder.MenuBtn.MenuFrame
    game:GetObjects("rbxassetid://7037141226")[1]:Clone().Position = UDim2.new(0, 0, 0, 25)
    game:GetObjects("rbxassetid://7037141226")[1]:Clone().Text = "Music"
    ve(game:GetObjects("rbxassetid://7037141226")[1]:Clone().MouseEnter, function()
      va:Create(vb, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextTransparency = 0}):Play()
    end)
    ve(game:GetObjects("rbxassetid://7037141226")[1]:Clone().MouseLeave, function()
      va:Create(vb, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextTransparency = 0,4}):Play()
    end)
    game:GetObjects("rbxassetid://7037141226")[1]:Clone().Parent = va.MainFrame.TopBar.ButtonHolder.MenuBtn.MenuFrame
    game:GetObjects("rbxassetid://7037141226")[1]:Clone().Position = UDim2.new(0, 0, 0, 45)
    game:GetObjects("rbxassetid://7037141226")[1]:Clone().Text = "Settings"
    ve(game:GetObjects("rbxassetid://7037141226")[1]:Clone().MouseEnter, function()
      va:Create(vb, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextTransparency = 0}):Play()
    end)
    ve(game:GetObjects("rbxassetid://7037141226")[1]:Clone().MouseLeave, function()
      va:Create(vb, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextTransparency = 0,4}):Play()
    end)
    function MusicConstructor()
      game:GetObjects("rbxassetid://7296373622")[1].Parent = va
      game:GetObjects("rbxassetid://7296373622")[1].ZIndex = 5
      game:GetObjects("rbxassetid://7296373622")[1].Visible = vb.Settings.ShowMusicOnLaunch
      game:GetObjects("rbxassetid://7296373622")[1].Frame.Title.Text = "Not Playing"
      game:GetObjects("rbxassetid://7296373622")[1].Frame.Progress.ProgressFrame.Size = UDim2.new(0, 0, 1, 0)
      game:GetObjects("rbxassetid://7296373622")[1].Frame.AddBtn.AutoButtonColor = false
      vc(game:GetObjects("rbxassetid://7296373622")[1].Frame.TopBar, game:GetObjects("rbxassetid://7296373622")[1])
      vd(game:GetObjects("rbxassetid://7296373622")[1].Frame.TopBar.CloseBtn.MouseButton1Click, function()
        va.Visible = false
      end)
      vd(game:GetObjects("rbxassetid://7296373622")[1].Frame.TopBar.CloseBtn.MouseEnter, function()
        va:Create(vb.Frame.TopBar.CloseBtn.Ico, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageTransparency = 0}):Play()
      end)
      vd(game:GetObjects("rbxassetid://7296373622")[1].Frame.TopBar.CloseBtn.MouseLeave, function()
        va:Create(vb.Frame.TopBar.CloseBtn.Ico, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageTransparency = 0,4}):Play()
      end)
      vd(vg.MouseButton1Click, function()
        va.Visible = not va.Visible
        vb.TopBar.ButtonHolder.MenuBtn.MenuFrame.Visible = false
      end)
      Instance.new("Sound").Parent, Instance.new("Sound").Name = game:GetObjects("rbxassetid://7296373622")[1], "Sound"
      Instance.new("Sound").Volume = 3
      Instance.new("Sound"):Stop()
      if not isfile("SolarisHub/music.txt") then
        writefile("SolarisHub/music.txt", tostring(vj:JSONEncode({})))
      end
      function Save()
        for fe, fg in pairs(va) do
        end
        writefile("SolarisHub/music.txt", tostring(vb:JSONEncode({
          [fe] = fg
        })))
      end
      vd(game:GetObjects("rbxassetid://7296373622")[1].Frame.Play.MouseButton1Click, function()
        va = not va
        if va then
          vb:Pause()
        else
          vb:Resume()
        end
        vc.Frame.Play.Image = vc.Frame.Play or "http://www.roblox.com/asset/?id=6026663719"
      end)
      vd(game:GetObjects("rbxassetid://7296373622")[1].Frame.AddBtn.MouseButton1Click, function()
        if not table.find(vb, va.Frame.AddSong.Text) then
          table.insert(vb, va.Frame.AddSong.Text)
          Save()
          vc(vb)
        end
      end)
      vd(game:GetObjects("rbxassetid://7296373622")[1].Frame.AddBtn.MouseEnter, function()
        va = true
      end)
      vd(game:GetObjects("rbxassetid://7296373622")[1].Frame.AddBtn.MouseLeave, function()
        va = false
      end);
      (function(a)
        for fe, fg in next, va.Frame.MusicList.Scroll:GetChildren() do
          if fg.Name == "Btn" then
            fg:Destroy()
          end
        end
        for fe, fg in next, a, nil do
          if not next and pcall(vb.GetProductInfo, vb, fg).AssetTypeId == 3 then
            vc:Clone().Parent = va.Frame.MusicList.Scroll
            vc:Clone().Title.Text = pcall(vb.GetProductInfo, vb, fg).Name
            vd(vc:Clone().MouseButton1Click, function()
              va(vb, vc.Name)
            end)
            vd(vc:Clone().Delete.MouseButton1Click, function()
              for fd, fe in next, va, nil do
                if fe == vb then
                  table.remove(va, fd)
                end
              end
              Save()
              vc:Destroy()
            end)
          end
        end
      end)((vj:JSONDecode(readfile("SolarisHub/music.txt"))))
      vd(game:GetService("RunService").RenderStepped, function()
        if string.len(math.floor(va.TimePosition) % 60) < 2 then
        end
        if string.len((math.floor(math.floor(va.TimePosition) / 60))) < 2 then
        end
        if 2 >= string.len(math.floor(va.TimeLength) % 60) then
        end
        if 2 > string.len((math.floor(math.floor(va.TimeLength) / 60))) then
        end
        if vb:IsDescendantOf(vc) and vb:FindFirstChild("Frame") then
          vb.Frame.Timer1.Text = ("0" .. math.floor(math.floor(va.TimePosition) / 60)) .. ":" .. "0" .. math.floor(va.TimePosition) % 60
          vb.Frame.Timer2.Text = ("0" .. math.floor(math.floor(va.TimeLength) / 60)) .. ":" .. "0" .. math.floor(va.TimeLength) % 60
          vb.Frame.Progress.ProgressFrame.Size = UDim2.new(va.TimePosition / va.TimeLength, 0, 1, 0)
        end
      end)
      spawn(function()
        while wait() and not va do
          vb.Frame.BackgroundColor3 = va.Themes[va.Settings.Theme].MainFrame
          vb.Frame.TopBar.ImageColor3 = va.Themes[va.Settings.Theme].TopBar
          vb.Frame.TopBar.CloseBtn.Ico.ImageColor3 = va.Themes[va.Settings.Theme].TextColor
          vb.Frame.MusicList.BackgroundColor3 = va.Themes[va.Settings.Theme].TopBar
          if vb.Frame.AddBtn or not va.Themes[va.Settings.Theme].ButtonHold then
          end
          vb.Frame.AddBtn.BackgroundColor3 = va.Themes[va.Settings.Theme].Button
          vb.Frame.Progress.BackgroundColor3 = va.Themes[va.Settings.Theme].Slider
          vb.Frame.Progress.ProgressFrame.BackgroundColor3 = va.Themes[va.Settings.Theme].SliderInc
          vb.Frame.AddSong.BackgroundColor3 = va.Themes[va.Settings.Theme].Textbox
        end
      end)
    end
    function SettingsConstructor()
      game:GetObjects("rbxassetid://7167491516")[1].Parent = va
      vb(game:GetObjects("rbxassetid://7167491516")[1].Main.TopBar.CloseBtn.MouseEnter, function()
        va:Create(vb.TopBar.CloseBtn.Ico, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageTransparency = 0}):Play()
      end)
      vb(game:GetObjects("rbxassetid://7167491516")[1].Main.TopBar.CloseBtn.MouseLeave, function()
        va:Create(vb.TopBar.CloseBtn.Ico, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageTransparency = 0,4}):Play()
      end)
      vb(vd.MouseButton1Click, function()
        va.Visible = not va.Visible
        vb.TopBar.ButtonHolder.MenuBtn.MenuFrame.Visible = false
      end)
      vb(game:GetObjects("rbxassetid://7167491516")[1].Main.TopBar.CloseBtn.MouseButton1Click, function()
        va.Visible = false
      end)
      function SaveSettings()
        for fe, fg in pairs(va.Settings) do
        end
        writefile("SolarisHub/settings.txt", tostring(vb:JSONEncode({
          [fe] = fg
        })))
      end
      spawn(function()
        while wait() and not va do
          vb.BackgroundColor3 = va.Themes[va.Settings.Theme].MainFrame
          vb.TopBar.ImageColor3 = va.Themes[va.Settings.Theme].TopBar
          vb.TopBar.CloseBtn.Ico.ImageColor3 = va.Themes[va.Settings.Theme].TextColor
          vb.TopBar.TopFrameTitle.TextColor3 = va.Themes[va.Settings.Theme].TextColor
          vb.TabHolder.BackgroundColor3 = va.Themes[va.Settings.Theme].TopBar
        end
      end)
      {
        Tab = function(a, b)
          va:Clone().Parent = vc.TabHolder
          va:Clone().Text = b
          va:Clone().Size = UDim2.new(0, va:Clone().TextBounds.X, 1, 0)
          vb:Clone().Parent = vc.ContainerFolder
          vb:Clone().Visible = false
          if not b then
            va:Clone().TextTransparency = 0
            vb:Clone().Visible = true
            vd = false
          end
          ve(va:Clone().MouseButton1Click, function()
            for fd, fe in next, va.TabHolder:GetChildren() do
              if fe.Name == "Tab" then
                fe.TextTransparency = 0,4
              end
            end
            for fd, fe in next, va.ContainerFolder:GetChildren() do
              if fe.Name == "Container" then
                fe.Visible = false
              end
            end
            vb.TextTransparency = 0
            vc.Visible = true
          end)
          return {
            ToggleSetting = function(a, b, c, d, e)
              if b then
              end
              vb:Clone().Parent = vc
              vb:Clone().Title.Text = b
              vb:Clone().Desc.Text = c
              (function(a)
                va:Create(vb.ToggleFrame.ToggleToggled.ToggleIco, TweenInfo.new(0,2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                  ImageTransparency = a and 1
                }):Play()
                if va.Create or va.Create then
                end
                va:Create(vb.ToggleFrame.ToggleToggled.ToggleIco, TweenInfo.new(0,2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                  Size = UDim2.new(1, -6, 1, -6)
                }):Play()
              end)(d)
              ve(vb:Clone().MouseButton1Click, function()
                va(not vb)
              end)
              spawn(function()
                while wait() and va:IsRunning() do
                  if vb.ToggleFrame.ToggleToggled or not va.Themes[va.Settings.Theme].ToggleToggled then
                  end
                  vb.ToggleFrame.ToggleToggled.BackgroundColor3 = va.Themes[va.Settings.Theme].MainFrame
                  if vb.ToggleFrame or not va.Themes[va.Settings.Theme].ToggleToggled then
                  end
                  vb.ToggleFrame.BackgroundColor3 = va.Themes[va.Settings.Theme].ToggleFrame
                  vb.Title.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                end
              end)
            end,
            BindSetting = function(a, b, c, d, e)
              vb:Clone().Parent = vc
              vb:Clone().Title.Text = b
              vb:Clone().Desc.Text = c
              function SetValue(a)
                va = false
                vb = a or vb
                if a then
                end
                vb = vb
                vc.BText.Text = vb
                vd.Settings[ve] = vb
                SaveSettings()
              end
              SetValue(va.Settings[e] or d)
              ve(vb:Clone().InputEnded, function(a)
                if a.UserInputType == Enum.UserInputType.MouseButton1 then
                  if va then
                    return
                  end
                  va = true
                  vb.BText.Text = "..."
                end
              end)
              ve(vg.InputBegan, function(a)
                if va:GetFocusedTextBox() then
                  return
                end
                if vb then
                  pcall(function()
                    if vb then
                      vd = vc.KeyCode
                    end
                  end)
                  pcall(function()
                    if va(vb, vc.UserInputType) and vb then
                      vd = vc.UserInputType
                    end
                  end)
                  if a then
                  end
                  SetValue(vg)
                end
              end)
              spawn(function()
                while not nil and not va do
                  vb.Desc.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                  vb.BText.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                  vb.Title.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                end
              end)
            end,
            Dropdown = function(a, b, c, d, e, g)
              vb:Clone().Parent = vc
              vb:Clone().Title.Text = b
              vb:Clone().Desc.Text = c
              vb:Clone().Main.Current.Text = va.Settings[g] or e
              function Toggle()
                va.Main.Holder.Visible = vb
                if va.Main.Holder or not UDim2.new(1, 0, 0, va.Main.Holder.UIListLayout.AbsoluteContentSize.Y) then
                end
                va.Main.Holder.Size = UDim2.new(1, 0, 0, 0)
                if not UDim2.new(1, 0, 0, 0) then
                  if 0 + 1 > 190 then
                    vc.CanvasSize = UDim2.new(0, 0, 0, 5 + 6)
                  end
                else
                  vc.CanvasSize = UDim2.new(0, 0, 0, vc.UIListLayout.AbsoluteContentSize.Y)
                end
                vd:Create(va.Main.Ico, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                  Rotation = vd or 0
                }):Play()
              end
              ve(vb:Clone().InputEnded, function(a)
                if a.UserInputType == Enum.UserInputType.MouseButton1 then
                  va = not va
                  Toggle()
                end
              end)
              spawn(function()
                while wait() and va:IsRunning() do
                  vb.Main.ImageColor3 = va.Themes[va.Settings.Theme].TopBar
                  vb.Main.Holder.ImageColor3 = va.Themes[va.Settings.Theme].TopBar
                end
              end);
              (function(a)
                spawn(function()
                  for fd, fe in pairs(va) do
                    vb:Clone().Parent = vc.Main.Holder
                    vb:Clone().Text = fe
                    vd(vb:Clone().MouseButton1Click, function()
                      va = vb
                      vc.Settings[vd] = va
                      ve.Main.Current.Text = va
                      SaveSettings()
                    end)
                    spawn(function()
                      while not nil and va:IsRunning() do
                        vb.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                      end
                    end)
                  end
                end)
              end)(d)
            end
          }
        end
      }:Tab("General"):ToggleSetting("Show Friends On Launch", "Shows the friends menu when you load Solaris", true, "ShowFriendsOnLaunch")
      {
        Tab = function(a, b)
          va:Clone().Parent = vc.TabHolder
          va:Clone().Text = b
          va:Clone().Size = UDim2.new(0, va:Clone().TextBounds.X, 1, 0)
          vb:Clone().Parent = vc.ContainerFolder
          vb:Clone().Visible = false
          if not b then
            va:Clone().TextTransparency = 0
            vb:Clone().Visible = true
            vd = false
          end
          ve(va:Clone().MouseButton1Click, function()
            for fd, fe in next, va.TabHolder:GetChildren() do
              if fe.Name == "Tab" then
                fe.TextTransparency = 0,4
              end
            end
            for fd, fe in next, va.ContainerFolder:GetChildren() do
              if fe.Name == "Container" then
                fe.Visible = false
              end
            end
            vb.TextTransparency = 0
            vc.Visible = true
          end)
          return {
            ToggleSetting = function(a, b, c, d, e)
              if b then
              end
              vb:Clone().Parent = vc
              vb:Clone().Title.Text = b
              vb:Clone().Desc.Text = c
              (function(a)
                va:Create(vb.ToggleFrame.ToggleToggled.ToggleIco, TweenInfo.new(0,2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                  ImageTransparency = a and 1
                }):Play()
                if va.Create or va.Create then
                end
                va:Create(vb.ToggleFrame.ToggleToggled.ToggleIco, TweenInfo.new(0,2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                  Size = UDim2.new(1, -6, 1, -6)
                }):Play()
              end)(d)
              ve(vb:Clone().MouseButton1Click, function()
                va(not vb)
              end)
              spawn(function()
                while wait() and va:IsRunning() do
                  if vb.ToggleFrame.ToggleToggled or not va.Themes[va.Settings.Theme].ToggleToggled then
                  end
                  vb.ToggleFrame.ToggleToggled.BackgroundColor3 = va.Themes[va.Settings.Theme].MainFrame
                  if vb.ToggleFrame or not va.Themes[va.Settings.Theme].ToggleToggled then
                  end
                  vb.ToggleFrame.BackgroundColor3 = va.Themes[va.Settings.Theme].ToggleFrame
                  vb.Title.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                end
              end)
            end,
            BindSetting = function(a, b, c, d, e)
              vb:Clone().Parent = vc
              vb:Clone().Title.Text = b
              vb:Clone().Desc.Text = c
              function SetValue(a)
                va = false
                vb = a or vb
                if a then
                end
                vb = vb
                vc.BText.Text = vb
                vd.Settings[ve] = vb
                SaveSettings()
              end
              SetValue(va.Settings[e] or d)
              ve(vb:Clone().InputEnded, function(a)
                if a.UserInputType == Enum.UserInputType.MouseButton1 then
                  if va then
                    return
                  end
                  va = true
                  vb.BText.Text = "..."
                end
              end)
              ve(vg.InputBegan, function(a)
                if va:GetFocusedTextBox() then
                  return
                end
                if vb then
                  pcall(function()
                    if vb then
                      vd = vc.KeyCode
                    end
                  end)
                  pcall(function()
                    if va(vb, vc.UserInputType) and vb then
                      vd = vc.UserInputType
                    end
                  end)
                  if a then
                  end
                  SetValue(vg)
                end
              end)
              spawn(function()
                while not nil and not va do
                  vb.Desc.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                  vb.BText.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                  vb.Title.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                end
              end)
            end,
            Dropdown = function(a, b, c, d, e, g)
              vb:Clone().Parent = vc
              vb:Clone().Title.Text = b
              vb:Clone().Desc.Text = c
              vb:Clone().Main.Current.Text = va.Settings[g] or e
              function Toggle()
                va.Main.Holder.Visible = vb
                if va.Main.Holder or not UDim2.new(1, 0, 0, va.Main.Holder.UIListLayout.AbsoluteContentSize.Y) then
                end
                va.Main.Holder.Size = UDim2.new(1, 0, 0, 0)
                if not UDim2.new(1, 0, 0, 0) then
                  if 0 + 1 > 190 then
                    vc.CanvasSize = UDim2.new(0, 0, 0, 5 + 6)
                  end
                else
                  vc.CanvasSize = UDim2.new(0, 0, 0, vc.UIListLayout.AbsoluteContentSize.Y)
                end
                vd:Create(va.Main.Ico, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                  Rotation = vd or 0
                }):Play()
              end
              ve(vb:Clone().InputEnded, function(a)
                if a.UserInputType == Enum.UserInputType.MouseButton1 then
                  va = not va
                  Toggle()
                end
              end)
              spawn(function()
                while wait() and va:IsRunning() do
                  vb.Main.ImageColor3 = va.Themes[va.Settings.Theme].TopBar
                  vb.Main.Holder.ImageColor3 = va.Themes[va.Settings.Theme].TopBar
                end
              end);
              (function(a)
                spawn(function()
                  for fd, fe in pairs(va) do
                    vb:Clone().Parent = vc.Main.Holder
                    vb:Clone().Text = fe
                    vd(vb:Clone().MouseButton1Click, function()
                      va = vb
                      vc.Settings[vd] = va
                      ve.Main.Current.Text = va
                      SaveSettings()
                    end)
                    spawn(function()
                      while not nil and va:IsRunning() do
                        vb.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                      end
                    end)
                  end
                end)
              end)(d)
            end
          }
        end
      }:Tab("General"):ToggleSetting("Show Music On Launch", "Shows the music menu when you load Solaris", true, "ShowMusicOnLaunch")
      {
        Tab = function(a, b)
          va:Clone().Parent = vc.TabHolder
          va:Clone().Text = b
          va:Clone().Size = UDim2.new(0, va:Clone().TextBounds.X, 1, 0)
          vb:Clone().Parent = vc.ContainerFolder
          vb:Clone().Visible = false
          if not b then
            va:Clone().TextTransparency = 0
            vb:Clone().Visible = true
            vd = false
          end
          ve(va:Clone().MouseButton1Click, function()
            for fd, fe in next, va.TabHolder:GetChildren() do
              if fe.Name == "Tab" then
                fe.TextTransparency = 0,4
              end
            end
            for fd, fe in next, va.ContainerFolder:GetChildren() do
              if fe.Name == "Container" then
                fe.Visible = false
              end
            end
            vb.TextTransparency = 0
            vc.Visible = true
          end)
          return {
            ToggleSetting = function(a, b, c, d, e)
              if b then
              end
              vb:Clone().Parent = vc
              vb:Clone().Title.Text = b
              vb:Clone().Desc.Text = c
              (function(a)
                va:Create(vb.ToggleFrame.ToggleToggled.ToggleIco, TweenInfo.new(0,2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                  ImageTransparency = a and 1
                }):Play()
                if va.Create or va.Create then
                end
                va:Create(vb.ToggleFrame.ToggleToggled.ToggleIco, TweenInfo.new(0,2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                  Size = UDim2.new(1, -6, 1, -6)
                }):Play()
              end)(d)
              ve(vb:Clone().MouseButton1Click, function()
                va(not vb)
              end)
              spawn(function()
                while wait() and va:IsRunning() do
                  if vb.ToggleFrame.ToggleToggled or not va.Themes[va.Settings.Theme].ToggleToggled then
                  end
                  vb.ToggleFrame.ToggleToggled.BackgroundColor3 = va.Themes[va.Settings.Theme].MainFrame
                  if vb.ToggleFrame or not va.Themes[va.Settings.Theme].ToggleToggled then
                  end
                  vb.ToggleFrame.BackgroundColor3 = va.Themes[va.Settings.Theme].ToggleFrame
                  vb.Title.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                end
              end)
            end,
            BindSetting = function(a, b, c, d, e)
              vb:Clone().Parent = vc
              vb:Clone().Title.Text = b
              vb:Clone().Desc.Text = c
              function SetValue(a)
                va = false
                vb = a or vb
                if a then
                end
                vb = vb
                vc.BText.Text = vb
                vd.Settings[ve] = vb
                SaveSettings()
              end
              SetValue(va.Settings[e] or d)
              ve(vb:Clone().InputEnded, function(a)
                if a.UserInputType == Enum.UserInputType.MouseButton1 then
                  if va then
                    return
                  end
                  va = true
                  vb.BText.Text = "..."
                end
              end)
              ve(vg.InputBegan, function(a)
                if va:GetFocusedTextBox() then
                  return
                end
                if vb then
                  pcall(function()
                    if vb then
                      vd = vc.KeyCode
                    end
                  end)
                  pcall(function()
                    if va(vb, vc.UserInputType) and vb then
                      vd = vc.UserInputType
                    end
                  end)
                  if a then
                  end
                  SetValue(vg)
                end
              end)
              spawn(function()
                while not nil and not va do
                  vb.Desc.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                  vb.BText.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                  vb.Title.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                end
              end)
            end,
            Dropdown = function(a, b, c, d, e, g)
              vb:Clone().Parent = vc
              vb:Clone().Title.Text = b
              vb:Clone().Desc.Text = c
              vb:Clone().Main.Current.Text = va.Settings[g] or e
              function Toggle()
                va.Main.Holder.Visible = vb
                if va.Main.Holder or not UDim2.new(1, 0, 0, va.Main.Holder.UIListLayout.AbsoluteContentSize.Y) then
                end
                va.Main.Holder.Size = UDim2.new(1, 0, 0, 0)
                if not UDim2.new(1, 0, 0, 0) then
                  if 0 + 1 > 190 then
                    vc.CanvasSize = UDim2.new(0, 0, 0, 5 + 6)
                  end
                else
                  vc.CanvasSize = UDim2.new(0, 0, 0, vc.UIListLayout.AbsoluteContentSize.Y)
                end
                vd:Create(va.Main.Ico, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                  Rotation = vd or 0
                }):Play()
              end
              ve(vb:Clone().InputEnded, function(a)
                if a.UserInputType == Enum.UserInputType.MouseButton1 then
                  va = not va
                  Toggle()
                end
              end)
              spawn(function()
                while wait() and va:IsRunning() do
                  vb.Main.ImageColor3 = va.Themes[va.Settings.Theme].TopBar
                  vb.Main.Holder.ImageColor3 = va.Themes[va.Settings.Theme].TopBar
                end
              end);
              (function(a)
                spawn(function()
                  for fd, fe in pairs(va) do
                    vb:Clone().Parent = vc.Main.Holder
                    vb:Clone().Text = fe
                    vd(vb:Clone().MouseButton1Click, function()
                      va = vb
                      vc.Settings[vd] = va
                      ve.Main.Current.Text = va
                      SaveSettings()
                    end)
                    spawn(function()
                      while not nil and va:IsRunning() do
                        vb.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                      end
                    end)
                  end
                end)
              end)(d)
            end
          }
        end
      }:Tab("General"):BindSetting("Close Bind", "Hides/Shows the main window when pressed.", Enum.KeyCode.RightControl, "CloseBind")
      {
        Tab = function(a, b)
          va:Clone().Parent = vc.TabHolder
          va:Clone().Text = b
          va:Clone().Size = UDim2.new(0, va:Clone().TextBounds.X, 1, 0)
          vb:Clone().Parent = vc.ContainerFolder
          vb:Clone().Visible = false
          if not b then
            va:Clone().TextTransparency = 0
            vb:Clone().Visible = true
            vd = false
          end
          ve(va:Clone().MouseButton1Click, function()
            for fd, fe in next, va.TabHolder:GetChildren() do
              if fe.Name == "Tab" then
                fe.TextTransparency = 0,4
              end
            end
            for fd, fe in next, va.ContainerFolder:GetChildren() do
              if fe.Name == "Container" then
                fe.Visible = false
              end
            end
            vb.TextTransparency = 0
            vc.Visible = true
          end)
          return {
            ToggleSetting = function(a, b, c, d, e)
              if b then
              end
              vb:Clone().Parent = vc
              vb:Clone().Title.Text = b
              vb:Clone().Desc.Text = c
              (function(a)
                va:Create(vb.ToggleFrame.ToggleToggled.ToggleIco, TweenInfo.new(0,2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                  ImageTransparency = a and 1
                }):Play()
                if va.Create or va.Create then
                end
                va:Create(vb.ToggleFrame.ToggleToggled.ToggleIco, TweenInfo.new(0,2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                  Size = UDim2.new(1, -6, 1, -6)
                }):Play()
              end)(d)
              ve(vb:Clone().MouseButton1Click, function()
                va(not vb)
              end)
              spawn(function()
                while wait() and va:IsRunning() do
                  if vb.ToggleFrame.ToggleToggled or not va.Themes[va.Settings.Theme].ToggleToggled then
                  end
                  vb.ToggleFrame.ToggleToggled.BackgroundColor3 = va.Themes[va.Settings.Theme].MainFrame
                  if vb.ToggleFrame or not va.Themes[va.Settings.Theme].ToggleToggled then
                  end
                  vb.ToggleFrame.BackgroundColor3 = va.Themes[va.Settings.Theme].ToggleFrame
                  vb.Title.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                end
              end)
            end,
            BindSetting = function(a, b, c, d, e)
              vb:Clone().Parent = vc
              vb:Clone().Title.Text = b
              vb:Clone().Desc.Text = c
              function SetValue(a)
                va = false
                vb = a or vb
                if a then
                end
                vb = vb
                vc.BText.Text = vb
                vd.Settings[ve] = vb
                SaveSettings()
              end
              SetValue(va.Settings[e] or d)
              ve(vb:Clone().InputEnded, function(a)
                if a.UserInputType == Enum.UserInputType.MouseButton1 then
                  if va then
                    return
                  end
                  va = true
                  vb.BText.Text = "..."
                end
              end)
              ve(vg.InputBegan, function(a)
                if va:GetFocusedTextBox() then
                  return
                end
                if vb then
                  pcall(function()
                    if vb then
                      vd = vc.KeyCode
                    end
                  end)
                  pcall(function()
                    if va(vb, vc.UserInputType) and vb then
                      vd = vc.UserInputType
                    end
                  end)
                  if a then
                  end
                  SetValue(vg)
                end
              end)
              spawn(function()
                while not nil and not va do
                  vb.Desc.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                  vb.BText.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                  vb.Title.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                end
              end)
            end,
            Dropdown = function(a, b, c, d, e, g)
              vb:Clone().Parent = vc
              vb:Clone().Title.Text = b
              vb:Clone().Desc.Text = c
              vb:Clone().Main.Current.Text = va.Settings[g] or e
              function Toggle()
                va.Main.Holder.Visible = vb
                if va.Main.Holder or not UDim2.new(1, 0, 0, va.Main.Holder.UIListLayout.AbsoluteContentSize.Y) then
                end
                va.Main.Holder.Size = UDim2.new(1, 0, 0, 0)
                if not UDim2.new(1, 0, 0, 0) then
                  if 0 + 1 > 190 then
                    vc.CanvasSize = UDim2.new(0, 0, 0, 5 + 6)
                  end
                else
                  vc.CanvasSize = UDim2.new(0, 0, 0, vc.UIListLayout.AbsoluteContentSize.Y)
                end
                vd:Create(va.Main.Ico, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                  Rotation = vd or 0
                }):Play()
              end
              ve(vb:Clone().InputEnded, function(a)
                if a.UserInputType == Enum.UserInputType.MouseButton1 then
                  va = not va
                  Toggle()
                end
              end)
              spawn(function()
                while wait() and va:IsRunning() do
                  vb.Main.ImageColor3 = va.Themes[va.Settings.Theme].TopBar
                  vb.Main.Holder.ImageColor3 = va.Themes[va.Settings.Theme].TopBar
                end
              end);
              (function(a)
                spawn(function()
                  for fd, fe in pairs(va) do
                    vb:Clone().Parent = vc.Main.Holder
                    vb:Clone().Text = fe
                    vd(vb:Clone().MouseButton1Click, function()
                      va = vb
                      vc.Settings[vd] = va
                      ve.Main.Current.Text = va
                      SaveSettings()
                    end)
                    spawn(function()
                      while not nil and va:IsRunning() do
                        vb.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                      end
                    end)
                  end
                end)
              end)(d)
            end
          }
        end
      }:Tab("Appearance"):Dropdown("Theme", "The look of the user interface", {
        "Default",
        "Light",
        "Discord",
        "Red",
        "Green",
        "Blue"
      }, "Default", "Theme")
    end
    (function()
      game:GetObjects("rbxassetid://7037305928")[1].Parent = va
      game:GetObjects("rbxassetid://7037305928")[1].ZIndex = 4
      game:GetObjects("rbxassetid://7037305928")[1].Visible = vb.Settings.ShowFriendsOnLaunch
      vc(vd.MouseButton1Click, function()
        va.Visible = not va.Visible
        vb.TopBar.ButtonHolder.MenuBtn.MenuFrame.Visible = false
      end)
      vc(game:GetObjects("rbxassetid://7037305928")[1].Frame.TopBar.CloseBtn.Ico.MouseEnter, function()
        va:Create(vb.Frame.TopBar.CloseBtn.Ico, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageTransparency = 0}):Play()
      end)
      vc(game:GetObjects("rbxassetid://7037305928")[1].Frame.TopBar.CloseBtn.Ico.MouseLeave, function()
        va:Create(vb.Frame.TopBar.CloseBtn.Ico, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageTransparency = 0,4}):Play()
      end)
      vc(game:GetObjects("rbxassetid://7037305928")[1].Frame.TopBar.CloseBtn.MouseButton1Click, function()
        va.Visible = false
      end)
      function MakePanel(a)
      end
      function InviteFriend(a)
      end
      function JoinFriend(a)
      end
      vh(game:GetObjects("rbxassetid://7037305928")[1].Frame.TopBar, game:GetObjects("rbxassetid://7037305928")[1])
      for fh, fj in next, {}, nil do
      end
      spawn(function()
        while not nil and not va do
          vb.Frame.BackgroundColor3 = va.Themes[va.Settings.Theme].MainFrame
          vb.Frame.TopBar.ImageColor3 = va.Themes[va.Settings.Theme].TopBar
          vb.Frame.TopBar.CloseBtn.Ico.ImageColor3 = va.Themes[va.Settings.Theme].TextColor
        end
      end)
    end)()
    MusicConstructor()
    SettingsConstructor()
    ve(va.MainFrame.TopBar.TabListBtn.MouseButton1Click, function()
      va()
    end)
    ve(va.MainFrame.TabMenu.Menu.Top.MenuCloseBtn.MouseButton1Click, function()
      va()
    end)
    ve(va.MainFrame.TopBar.ButtonHolder.SearchBtn.MouseButton1Click, function()
      va.TopBar.ButtonHolder.SearchBtn.TextBox.Visible = not va.TopBar.ButtonHolder.SearchBtn.TextBox.Visible
      va.TopBar.TopFrameTitle.Visible = not va.TopBar.TopFrameTitle.Visible
    end)
    ve(va.MainFrame.TopBar.ButtonHolder.CloseBtn.MouseEnter, function()
      va:Create(vb.TopBar.ButtonHolder.CloseBtn.Ico, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageTransparency = 0}):Play()
    end)
    ve(va.MainFrame.TopBar.ButtonHolder.CloseBtn.MouseLeave, function()
      va:Create(vb.TopBar.ButtonHolder.CloseBtn.Ico, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageTransparency = 0,4}):Play()
    end)
    ve(va.MainFrame.TopBar.ButtonHolder.SearchBtn.MouseEnter, function()
      va:Create(vb.TopBar.ButtonHolder.SearchBtn.Ico, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageTransparency = 0}):Play()
    end)
    ve(va.MainFrame.TopBar.ButtonHolder.SearchBtn.MouseLeave, function()
      va:Create(vb.TopBar.ButtonHolder.SearchBtn.Ico, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageTransparency = 0,4}):Play()
    end)
    ve(va.MainFrame.TopBar.ButtonHolder.MenuBtn.MouseEnter, function()
      va:Create(vb.TopBar.ButtonHolder.MenuBtn.Ico, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageTransparency = 0}):Play()
    end)
    ve(va.MainFrame.TopBar.ButtonHolder.MenuBtn.MouseLeave, function()
      va:Create(vb.TopBar.ButtonHolder.MenuBtn.Ico, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageTransparency = 0,4}):Play()
    end)
    ve(va.MainFrame.TopBar.TabListBtn.MouseEnter, function()
      va:Create(vb.TopBar.TabListBtn, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageTransparency = 0}):Play()
    end)
    ve(va.MainFrame.TopBar.TabListBtn.MouseLeave, function()
      va:Create(vb.TopBar.TabListBtn, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageTransparency = 0,4}):Play()
    end)
    ve(va.MainFrame.TopBar.ButtonHolder.MenuBtn.MouseButton1Click, function()
      va.TopBar.ButtonHolder.MenuBtn.MenuFrame.Visible = not va.TopBar.ButtonHolder.MenuBtn.MenuFrame.Visible
    end)
    ve(va.MainFrame.TopBar.ButtonHolder.CloseBtn.MouseButton1Click, function()
      va = not va
      vb.Visible = va
    end)
    function SearchConstructor()
      function StitchElements()
        for fe, fg in next, va.CurrentTab:GetDescendants() do
          if fg.Name:find("element") then
            table.insert({}, fg)
          end
        end
        return {}
      end
      vb(vc.TopBar.ButtonHolder.SearchBtn.TextBox:GetPropertyChangedSignal("Text"), function()
        for fd, fe in pairs(StitchElements()) do
          if va.TopBar.ButtonHolder.SearchBtn.TextBox.Text:len() > 1 then
            if fe.Name:lower():sub(0, -8):find(va.TopBar.ButtonHolder.SearchBtn.TextBox.Text:lower()) then
              fe.Visible = true
            else
              fe.Visible = false
            end
          else
            fe.Visible = true
          end
        end
      end)
    end
    SearchConstructor()
    ve(vk.InputBegan, function(a)
      if (a.KeyCode.Name == va.Settings.CloseBind or a.UserInputType.Name == va.Settings.CloseBind) and not vb then
        vc = not vc
        vd.Visible = vc
      end
    end)
    vc:Notification("Notification", "Solaris has been loaded, press " .. vc.Settings.CloseBind .. " to open/close the UI.")
    spawn(function()
      while wait() and not va do
        vb.BackgroundColor3 = va.Themes[va.Settings.Theme].MainFrame
        vb.TopBar.ImageColor3 = va.Themes[va.Settings.Theme].TopBar
        vb.TopBar.ButtonHolder.CloseBtn.Ico.ImageColor3 = va.Themes[va.Settings.Theme].TextColor
        vb.TopBar.ButtonHolder.MenuBtn.Ico.ImageColor3 = va.Themes[va.Settings.Theme].TextColor
        vb.TopBar.ButtonHolder.SearchBtn.Ico.ImageColor3 = va.Themes[va.Settings.Theme].TextColor
        vb.TopBar.TabListBtn.ImageColor3 = va.Themes[va.Settings.Theme].TextColor
        vb.TopBar.TopFrameTitle.TextColor3 = va.Themes[va.Settings.Theme].TextColor
        vb.TabMenu.Menu.BackgroundColor3 = va.Themes[va.Settings.Theme].Menu
        vb.TabMenu.Menu.Top.MenuCloseBtn.ImageLabel.ImageColor3 = va.Themes[va.Settings.Theme].TextColor
        vb.TopBar.ButtonHolder.SearchBtn.TextBox.BackgroundColor3 = va.Themes[va.Settings.Theme].MainFrame
        vb.TopBar.ButtonHolder.SearchBtn.TextBox.TextColor3 = va.Themes[va.Settings.Theme].TextColor
        vb.TopBar.ButtonHolder.SearchBtn.TextBox.PlaceholderColor3 = va.Themes[va.Settings.Theme].TextColor
        vb.TopBar.ButtonHolder.MenuBtn.MenuFrame.Frame.BackgroundColor3 = va.Themes[va.Settings.Theme].TopBar
      end
    end)
    return {
      Tab = function(a, b)
        va:Clone().AutoButtonColor = false
        va:Clone().Parent = vb.TabMenu.Menu.Holder
        va:Clone().Text = b
        va:Clone().TextSize = 14
        vc:Clone().Parent = vb.ContainerFolder
        vc:Clone().Visible = false
        if vd == false then
          vd = true
          vc:Clone().Visible = true
          va:Clone().UIPadding.PaddingLeft = UDim.new(0, 10)
          va:Clone().TextTransparency = 0
          va:Clone().BackgroundTransparency = 0
          ve.CurrentTab = vc:Clone()
        end
        spawn(function()
          while wait() and va:IsRunning() do
            vb.TextColor3 = va.Themes[va.Settings.Theme].TextColor
            vb.BackgroundColor3 = va.Themes[va.Settings.Theme].TabToggled
            vc.CanvasSize = UDim2.new(0, 0, 0, 5 + 26)
          end
        end)
        vg(va:Clone().MouseButton1Click, function()
          for fd, fe in next, va.TabMenu.Menu.Holder:GetChildren() do
            if fe:IsA("TextButton") then
              vb:Create(fe, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextTransparency = 0,4, BackgroundTransparency = 1}):Play()
              vb:Create(fe.UIPadding, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                PaddingLeft = UDim.new(0, 5)
              }):Play()
            end
            vb:Create(vc, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextTransparency = 0, BackgroundTransparency = 0}):Play()
            vb:Create(vc.UIPadding, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
              PaddingLeft = UDim.new(0, 10)
            }):Play()
          end
          for fd, fe in next, va.ContainerFolder:GetChildren() do
            if fe.Name == "Container" then
              fe.Visible = false
            end
            vd.Visible = true
          end
          tabtoggledname = vc.Name
          ve()
        end)
        return {
          Section = function(a, b)
            va:Clone().Parent = vb
            va:Clone().SectionTitle.Text = b
            spawn(function()
              while not nil and va:IsRunning() do
                vb.SectionTitle.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                vb.Size = UDim2.new(0,9, 0, 0, vb.UIListLayout.AbsoluteContentSize.Y)
              end
            end)
            return {
              Button = function(a, b, c)
                game:GetObjects("rbxassetid://6937142338")[1].Parent = va
                game:GetObjects("rbxassetid://6937142338")[1].Name = b .. "element"
                game:GetObjects("rbxassetid://6937142338")[1].ButtonText.Text = b
                game:GetObjects("rbxassetid://6937142338")[1].ClipsDescendants = true
                vb(game:GetObjects("rbxassetid://6937142338")[1].MouseButton1Click, function()
                  Ripple(va)
                  vb()
                end)
                vb(game:GetObjects("rbxassetid://6937142338")[1].MouseEnter, function()
                  va = true
                end)
                vb(game:GetObjects("rbxassetid://6937142338")[1].MouseLeave, function()
                  va = false
                end)
                spawn(function()
                  while not nil and va:IsRunning() do
                    vb.BackgroundColor3 = vc and va.Themes[va.Settings.Theme].Button
                    vb.ButtonText.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                  end
                end)
              end,
              Toggle = function(a, b, c, d, e)
                game:GetObjects("rbxassetid://6963155498")[1].Parent = va
                game:GetObjects("rbxassetid://6963155498")[1].ToggleText.Text = b
                game:GetObjects("rbxassetid://6963155498")[1].Name = b .. "element"
                vc(game:GetObjects("rbxassetid://6963155498")[1].MouseButton1Click, function()
                  va.Value = not va.Value
                  va:Set(va.Value)
                end)
                spawn(function()
                  while wait() and va:IsRunning() do
                    if not vc.Value or vb.ToggleFrame.ToggleToggled then
                    end
                    vb.ToggleFrame.ToggleToggled.BackgroundColor3 = va.Themes[va.Settings.Theme].Toggle
                    if vb.ToggleFrame or vb.ToggleFrame then
                    end
                    vb.ToggleFrame.BackgroundColor3 = va.Themes[va.Settings.Theme].ToggleFrame
                    vb.BackgroundColor3 = va.Themes[va.Settings.Theme].Toggle
                    vb.ToggleText.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                  end
                end)
                spawn(function()
                  va:Set(vb)
                  vc.Flags[vd] = va
                end)
                return {
                  Value = false,
                  Set = function(a, b)
                    va.Value = b
                    if b or b then
                    end
                    vb:Create(vc.ToggleFrame.ToggleToggled.ToggleIco, TweenInfo.new(0,2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                      ImageTransparency = b or 1,
                      Size = UDim2.new(1, -6, 1, -6)
                    }):Play()
                    return vd(va.Value)
                  end
                }
              end,
              Slider = function(a, b, c, d, e, g, h, j)
                game:GetObjects("rbxassetid://6967573727")[1].Parent = va
                game:GetObjects("rbxassetid://6967573727")[1].SliderText.Text = b
                game:GetObjects("rbxassetid://6967573727")[1].Name = b .. "element"
                vc(game:GetObjects("rbxassetid://6967573727")[1].SliderFrame.InputBegan, function(a)
                  if a.UserInputType == Enum.UserInputType.MouseButton1 then
                    va = true
                  end
                end)
                vc(game:GetObjects("rbxassetid://6967573727")[1].SliderFrame.InputEnded, function(a)
                  if a.UserInputType == Enum.UserInputType.MouseButton1 then
                    va = false
                  end
                end)
                vc(game:GetService("UserInputService").InputChanged, function(a)
                  if va and a.UserInputType == Enum.UserInputType.MouseMovement then
                    vb(a)
                  end
                end)
                spawn(function()
                  while wait() and va:IsRunning() do
                    vb.BackgroundColor3 = va.Themes[va.Settings.Theme].Slider
                    vb.SliderFrame.BackgroundColor3 = va.Themes[va.Settings.Theme].SliderBar
                    vb.SliderFrame.SliderCurrentFrame.BackgroundColor3 = va.Themes[va.Settings.Theme].SliderInc
                    vb.SliderText.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                    vb.SliderVal.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                  end
                end)
                spawn(function()
                  va:Set(vb)
                  vc.Flags[vd] = va
                end)
                return {
                  Value = e,
                  Set = function(a, b)
                    if b then
                    end
                    vc.SliderVal.Text = tostring(0)
                    vc.SliderFrame.SliderCurrentFrame.Size = UDim2.new((b or 0) / va, 0, 1, 0)
                    vd.Value = b
                    return ve(vd.Value)
                  end
                }
              end,
              Dropdown = function(a, b, c, d, e, g)
                game:GetObjects("rbxassetid://7027964359")[1].Parent = va
                game:GetObjects("rbxassetid://7027964359")[1].Btn.Title.Text = b
                game:GetObjects("rbxassetid://7027964359")[1].Name = b .. "element"
                vc(game:GetObjects("rbxassetid://7027964359")[1].Btn.MouseButton1Click, function()
                  va()
                end)
                spawn(function()
                  while not nil and va:IsRunning() do
                    vb.Btn.BackgroundColor3 = va.Themes[va.Settings.Theme].Dropdown
                    vb.Btn.Title.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                    vb.Btn.Ico.ImageColor3 = va.Themes[va.Settings.Theme].TextColor
                  end
                end)
                spawn(function()
                  va:Refresh(vb, false)
                  va:Set(vc)
                  vd.Flags[ve] = va
                end)
                return {
                  Value = nil,
                  Toggled = false,
                  Options = c,
                  Refresh = function(a, b, c)
                    if c then
                      for fh, fj in pairs(va.Holder:GetChildren()) do
                        if not b then
                          fj:Destroy()
                          if b or not UDim2.new(1, 0, 0, 6 + 13) then
                          end
                          va.Holder.Size = UDim2.new(1, 0, 0, 0)
                          if not vb.Toggled or b then
                          end
                          va.Size = UDim2.new(1, 0, 0, 32)
                        end
                      end
                    end
                    vc(b)
                  end,
                  Set = function(a, b)
                    va.Value = b
                    vb.Btn.Title.Text = vc .. " - " .. b
                    return vd(va.Value)
                  end
                }
              end,
              MultiDropdown = function(a, b, c, d, e, g)
                game:GetObjects("rbxassetid://7027964359")[1].Parent = va
                game:GetObjects("rbxassetid://7027964359")[1].Btn.Title.Text = b
                game:GetObjects("rbxassetid://7027964359")[1].Name = b .. "element"
                vc(game:GetObjects("rbxassetid://7027964359")[1].Btn.MouseButton1Click, function()
                  va()
                end)
                spawn(function()
                  while wait() and not va do
                    vb.Btn.BackgroundColor3 = va.Themes[va.Settings.Theme].Dropdown
                    vb.Btn.Title.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                    vb.Btn.Ico.ImageColor3 = va.Themes[va.Settings.Theme].TextColor
                  end
                end)
                spawn(function()
                  va:Refresh(vb, false)
                  va:Set(vc)
                  vd.Flags[ve] = va
                end)
                return {
                  Value = {},
                  Toggled = false,
                  Options = c,
                  Refresh = function(a, b, c)
                    if not b then
                      for fh, fj in pairs(va.Holder:GetChildren()) do
                        if fj:IsA("TextButton") then
                          fj:Destroy()
                          va.Holder.Size = vb.Toggled and UDim2.new(1, 0, 0, 0)
                          if b or not UDim2.new(1, 0, 0, 38 + 13) then
                          end
                          va.Size = UDim2.new(1, 0, 0, 32)
                        end
                      end
                    end
                    vc(b)
                  end,
                  Set = function(a, b)
                    va.Value = b
                    vb.Btn.Title.Text = vc .. " - " .. table.concat(va.Value, ", ")
                    return vd(va.Value)
                  end
                }
              end,
              Colorpicker = function(a, b, c, d, e)
                game:GetObjects("rbxassetid://7329998014")[1].Hue.Visible, game:GetObjects("rbxassetid://7329998014")[1].Color.Visible = {Value = c, Toggled = false}.Toggled, {Value = c, Toggled = false}.Toggled
                game:GetObjects("rbxassetid://7329998014")[1].Parent = va
                game:GetObjects("rbxassetid://7329998014")[1].Btn.Colorpicker.Text = b
                game:GetObjects("rbxassetid://7329998014")[1].Name = b .. "element"
                game:GetObjects("rbxassetid://7329998014")[1].Btn.Box.BackgroundColor3 = c
                game:GetObjects("rbxassetid://7329998014")[1].Hue.HueGradient.Color = ColorSequence.new({
                  ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 0, 4)),
                  ColorSequenceKeypoint.new(0,2, Color3.fromRGB(234, 255, 0)),
                  ColorSequenceKeypoint.new(0,4, Color3.fromRGB(21, 255, 0)),
                  ColorSequenceKeypoint.new(0,6, Color3.fromRGB(0, 255, 255)),
                  ColorSequenceKeypoint.new(0,8, Color3.fromRGB(0, 17, 255)),
                  ColorSequenceKeypoint.new(0,9, Color3.fromRGB(255, 0, 251)),
                  ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 0, 4))
                })
                vb(game:GetObjects("rbxassetid://7329998014")[1].Btn.MouseButton1Click, function()
                  va.Toggled = not va.Toggled
                  if vb or not UDim2.new(1, 0, 0, 120) then
                  end
                  vb:Create(vc, TweenInfo.new(0,15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                    Size = UDim2.new(1, 0, 0, 32)
                  }):Play()
                  vc.Hue.Visible, vc.Color.Visible = va.Toggled, va.Toggled
                end)
                game:GetObjects("rbxassetid://7329998014")[1].Btn.Box.BackgroundColor3 = c
                game:GetObjects("rbxassetid://7329998014")[1].Color.BackgroundColor3 = c
                pcall(e, game:GetObjects("rbxassetid://7329998014")[1].Btn.Box.BackgroundColor3)
                vb(game:GetObjects("rbxassetid://7329998014")[1].Color.InputBegan, function(a)
                  if a.UserInputType == Enum.UserInputType.MouseButton1 then
                    if not a then
                      ColorInput:Disconnect()
                    end
                    ColorInput = va.RenderStepped:Connect(function()
                      vd, vc.Position = math.clamp(va.X - vb.AbsolutePosition.X, 0, vb.AbsoluteSize.X) / vb.AbsoluteSize.X, UDim2.new(math.clamp(va.X - vb.AbsolutePosition.X, 0, vb.AbsoluteSize.X) / vb.AbsoluteSize.X, 0, math.clamp(va.Y - vb.AbsolutePosition.Y, 0, vb.AbsoluteSize.Y) / vb.AbsoluteSize.Y, 0)
                      ve = 1 - math.clamp(va.Y - vb.AbsolutePosition.Y, 0, vb.AbsoluteSize.Y) / vb.AbsoluteSize.Y
                      vg(true)
                    end)
                  end
                end)
                vb(game:GetObjects("rbxassetid://7329998014")[1].Color.InputEnded, function(a)
                  if a.UserInputType == Enum.UserInputType.MouseButton1 and not a then
                    ColorInput:Disconnect()
                  end
                end)
                vb(game:GetObjects("rbxassetid://7329998014")[1].Hue.InputBegan, function(a)
                  if a.UserInputType == Enum.UserInputType.MouseButton1 then
                    if HueInput then
                      HueInput:Disconnect()
                    end
                    HueInput = va.RenderStepped:Connect(function()
                      vc.Position = UDim2.new(0,48, 0, math.clamp(va.Y - vb.AbsolutePosition.Y, 0, vb.AbsoluteSize.Y) / vb.AbsoluteSize.Y, 0)
                      vd = 1 - math.clamp(va.Y - vb.AbsolutePosition.Y, 0, vb.AbsoluteSize.Y) / vb.AbsoluteSize.Y
                      ve(true)
                    end)
                  end
                end)
                vb(game:GetObjects("rbxassetid://7329998014")[1].Hue.InputEnded, function(a)
                  if a.UserInputType == Enum.UserInputType.MouseButton1 and not a then
                    HueInput:Disconnect()
                  end
                end)
                spawn(function()
                  while wait() and not va do
                    vb.BackgroundColor3 = va.Themes[va.Settings.Theme].Colorpicker
                    vb.Btn.Colorpicker.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                  end
                end)
                return {Value = c, Toggled = false}
              end,
              Label = function(a, b)
                game:GetObjects("rbxassetid://7032552322")[1].Parent = va
                game:GetObjects("rbxassetid://7032552322")[1].Title.Text = b
                game:GetObjects("rbxassetid://7032552322")[1].Name = b .. "element"
                spawn(function()
                  while not nil and va:IsRunning() do
                    vb.BackgroundColor3 = va.Themes[va.Settings.Theme].Label
                    vb.Title.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                  end
                end)
                return {
                  Set = function(a, b)
                    va.Title.Text = b
                    va.Name = vb .. "element"
                  end
                }
              end,
              Textbox = function(a, b, c, d)
                game:GetObjects("rbxassetid://7147292392")[1].Parent = va
                game:GetObjects("rbxassetid://7147292392")[1].Title.Text = b
                game:GetObjects("rbxassetid://7147292392")[1].Name = b .. "element"
                vb(game:GetObjects("rbxassetid://7147292392")[1].Box.Changed, function()
                  va.Box.Size = UDim2.new(0, 3 + 16, 0, 22)
                end)
                game:GetObjects("rbxassetid://7147292392")[1].Box.PlaceholderText = "                  "
                vb(game:GetObjects("rbxassetid://7147292392")[1].InputBegan, function(a)
                  if a.UserInputType == Enum.UserInputType.MouseButton1 then
                    va.Box:CaptureFocus()
                  end
                end)
                vb(game:GetObjects("rbxassetid://7147292392")[1].Box.FocusLost, function()
                  if vb then
                    va.Box.Text = ""
                  end
                  return vc(va.Box.Text)
                end)
                vb(vc.InputBegan, function(a)
                  if a.KeyCode == Enum.KeyCode.Escape and va.Box:IsFocused() then
                    va.Box:ReleaseFocus()
                  end
                end)
                spawn(function()
                  while not nil and va:IsRunning() do
                    vb.BackgroundColor3 = va.Themes[va.Settings.Theme].Textbox
                    vb.Title.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                    vb.Box.BackgroundColor3 = va.Themes[va.Settings.Theme].TextboxFrame
                    vb.Box.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                  end
                end)
                return {}
              end,
              Bind = function(a, b, c, d, e, g)
                game:GetObjects("rbxassetid://7126874744")[1].Parent = va
                game:GetObjects("rbxassetid://7126874744")[1].Title.Text = b
                game:GetObjects("rbxassetid://7126874744")[1].Name = b .. "element"
                vb(game:GetObjects("rbxassetid://7126874744")[1].InputEnded, function(a)
                  if a.UserInputType == Enum.UserInputType.MouseButton1 then
                    if va.Binding then
                      return
                    end
                    va.Binding = true
                    vb.BText.Text = "..."
                  end
                end)
                vb(vc.InputBegan, function(a)
                  if not a then
                    return
                  end
                  if (a.KeyCode.Name == vb.Value or a.UserInputType.Name == vb.Value) and not vb.Binding then
                    if vc then
                      Holding = true
                      vd(Holding)
                    else
                      vd()
                    end
                  elseif vb.Binding then
                    pcall(function()
                      if vb then
                        vd = vc.KeyCode
                      end
                    end)
                    pcall(function()
                      if not vb and vb then
                        vd = vc.UserInputType
                      end
                    end)
                    if a then
                    end
                    vb:Set(vb.Value)
                  end
                end)
                vb(vc.InputEnded, function(a)
                  if (a.KeyCode.Name == va.Value or a.UserInputType.Name == va.Value) and not a and Holding then
                    Holding = false
                    vc(Holding)
                  end
                end)
                spawn(function()
                  while not nil and not va do
                    vb.BackgroundColor3 = va.Themes[va.Settings.Theme].Bind
                    vb.Title.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                    vb.BText.TextColor3 = va.Themes[va.Settings.Theme].TextColor
                  end
                end)
                {
                  Value,
                  Binding = false,
                  Holding = false,
                  Set = function(a, b)
                    a.Binding = false
                    a.Value = b or a.Value
                    a.Value = a.Value.Name or a.Value
                    va.BText.Text = a.Value
                  end
                }:Set(c)
                vh.Flags[e] = {
                  Value,
                  Binding = false,
                  Holding = false,
                  Set = function(a, b)
                    a.Binding = false
                    a.Value = b or a.Value
                    a.Value = a.Value.Name or a.Value
                    va.BText.Text = a.Value
                  end
                }
                return {
                  Value,
                  Binding = false,
                  Holding = false,
                  Set = function(a, b)
                    a.Binding = false
                    a.Value = b or a.Value
                    a.Value = a.Value.Name or a.Value
                    va.BText.Text = a.Value
                  end
                }
              end
            }
          end
        }
      end
    }
  end
}
