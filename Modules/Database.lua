local GlobalHealerDropDownID -- use global variable to get ID into populate function
local GlobalTankDropDownID -- use global variable to get ID into populate function
HealingAsssignments.Raiddatabase = {} -- Database of raidmembers -> all 40

-- populate a specific tank dropdown
function HealingAsssignments.Mainframe:PopulateTankDropdown()

	local OptionsFrame = 16
	local LeftsideCheck = HealingAsssignments.Mainframe.Foreground.Profile[1].Template[OptionsFrame].Assigments.Content.LeftsideCheckbox:GetChecked()
	local RightsideCheck = HealingAsssignments.Mainframe.Foreground.Profile[1].Template[OptionsFrame].Assigments.Content.RightsideCheckbox:GetChecked()
	local MeleeCheck = HealingAsssignments.Mainframe.Foreground.Profile[1].Template[OptionsFrame].Assigments.Content.MeleeCheckbox:GetChecked()
	local DispelCheck = HealingAsssignments.Mainframe.Foreground.Profile[1].Template[OptionsFrame].Assigments.Content.DispelCheckbox:GetChecked()
	local CustomCheckbox = HealingAsssignments.Mainframe.Foreground.Profile[1].Template[OptionsFrame].Assigments.Content.CustomCheckbox:GetChecked()
	
	local info = {};
	for i=1,table.getn(HealingAsssignments.Raiddatabase) do
		
		if HealingAsssignments.Raiddatabase[i].Class == "WARRIOR" or 
		(HealingAsssignments.Raiddatabase[i].Class == "WARLOCK" and HealingAsssignments.Mainframe.Foreground.Profile[1].Template[OptionsFrame].Assigments.Content.WarlockCheckbox:GetChecked()) or
		(HealingAsssignments.Raiddatabase[i].Class == "DRUID" and HealingAsssignments.Mainframe.Foreground.Profile[1].Template[OptionsFrame].Assigments.Content.DruidCheckbox:GetChecked()) or
		(HealingAsssignments.Raiddatabase[i].Class == "ROGUE" and HealingAsssignments.Mainframe.Foreground.Profile[1].Template[OptionsFrame].Assigments.Content.RogueCheckbox:GetChecked()) or
		(HealingAsssignments.Raiddatabase[i].Class == "HUNTER" and HealingAsssignments.Mainframe.Foreground.Profile[1].Template[OptionsFrame].Assigments.Content.HunterCheckbox:GetChecked()) or
		(HealingAsssignments.Raiddatabase[i].Class == "MAGE" and HealingAsssignments.Mainframe.Foreground.Profile[1].Template[OptionsFrame].Assigments.Content.MageCheckbox:GetChecked()) or
		(HealingAsssignments.Raiddatabase[i].Class == "SHAMAN" and HealingAsssignments.Mainframe.Foreground.Profile[1].Template[OptionsFrame].Assigments.Content.ShamanCheckbox:GetChecked()) or
		(HealingAsssignments.Raiddatabase[i].Class == "PRIEST" and HealingAsssignments.Mainframe.Foreground.Profile[1].Template[OptionsFrame].Assigments.Content.PriestCheckbox:GetChecked()) or
		(HealingAsssignments.Raiddatabase[i].Class == "PALADIN" and HealingAsssignments.Mainframe.Foreground.Profile[1].Template[OptionsFrame].Assigments.Content.PaladinCheckbox:GetChecked())
		then
			info.text = HealingAsssignments.Raiddatabase[i].Name
			if HealingAsssignments.Raiddatabase[i].Class == "WARRIOR" then info.textR = 0.78; info.textG = 0.61; info.textB = 0.43;
			elseif HealingAsssignments.Raiddatabase[i].Class == "DRUID" then info.textR = 1.00; info.textG = 0.49; info.textB = 0.04;
			elseif HealingAsssignments.Raiddatabase[i].Class == "HUNTER" then info.textR = 0.67; info.textG = 0.83; info.textB = 0.45;
			elseif HealingAsssignments.Raiddatabase[i].Class == "MAGE" then info.textR = 0.41; info.textG = 0.80; info.textB = 0.94;
			elseif HealingAsssignments.Raiddatabase[i].Class == "ROGUE" then info.textR = 1.00; info.textG = 0.96; info.textB = 0.41;
			elseif HealingAsssignments.Raiddatabase[i].Class == "WARLOCK" then info.textR = 0.58; info.textG = 0.51; info.textB = 0.79;
			elseif HealingAsssignments.Raiddatabase[i].Class == "SHAMAN" then info.textR = 0.96; info.textG = 0.55; info.textB = 0.73;
			elseif HealingAsssignments.Raiddatabase[i].Class == "PRIEST" then info.textR = 1.00; info.textG = 1.00; info.textB = 1.00;
			elseif HealingAsssignments.Raiddatabase[i].Class == "PALADIN" then info.textR = 0.96; info.textG = 0.55; info.textB = 0.73;
			end	
			info.checked = false
			--info.notCheckable = true
			info.func = function()
				UIDropDownMenu_SetSelectedID(GlobalTankDropDownID, this:GetID(), 0);
				HealingAsssignments:UpdateRaidDataBase()
			end
			UIDropDownMenu_AddButton(info);
		end
	end
	if LeftsideCheck == 1 then 
		-- create emtpy field to deleting
		info.text = "Left Side"
		info.textR = 1; info.textG = 0; info.textB = 0;
		info.checked = false
		info.func = function()
		UIDropDownMenu_SetSelectedID(GlobalTankDropDownID, this:GetID(), 0);
			HealingAsssignments:UpdateRaidDataBase()
		end
		UIDropDownMenu_AddButton(info);
	end
	
	if RightsideCheck == 1 then 
		-- create emtpy field to deleting
		info.text = "Right Side"
		info.textR = 0; info.textG = 0; info.textB = 1;
		info.checked = false
		info.func = function()
		UIDropDownMenu_SetSelectedID(GlobalTankDropDownID, this:GetID(), 0);
			HealingAsssignments:UpdateRaidDataBase()
		end
		UIDropDownMenu_AddButton(info);
	end
	
	if MeleeCheck == 1 then 
		-- create emtpy field to deleting
		info.text = "Melee"
		info.textR = 0.49; info.textG = 0.51; info.textB = 0.27;
		info.checked = false
		info.func = function()
		UIDropDownMenu_SetSelectedID(GlobalTankDropDownID, this:GetID(), 0);
			HealingAsssignments:UpdateRaidDataBase()
		end
		UIDropDownMenu_AddButton(info);
	end
	
	if DispelCheck == 1 then 
		-- create emtpy field to deleting
		info.text = "Dispel"
		info.textR = 1; info.textG = 1; info.textB = 1;
		info.checked = false
		info.func = function()
		UIDropDownMenu_SetSelectedID(GlobalTankDropDownID, this:GetID(), 0);
			HealingAsssignments:UpdateRaidDataBase()
		end
		UIDropDownMenu_AddButton(info);
	end
	
	if CustomCheckbox == 1 then 
		-- create emtpy field to deleting
		info.text = HealingAsssignments.Mainframe.Foreground.Profile[1].Template[OptionsFrame].Assigments.Content.CustomCheckboxText:GetText()
		info.textR = 0; info.textG = 1; info.textB = 0;
		info.checked = false
		info.func = function()
		UIDropDownMenu_SetSelectedID(GlobalTankDropDownID, this:GetID(), 0);
			HealingAsssignments:UpdateRaidDataBase()
		end
		UIDropDownMenu_AddButton(info);
	end
	
	-- create emtpy field to deleting
	info.text = " "
	info.checked = false
	info.func = function()
		UIDropDownMenu_SetSelectedID(GlobalTankDropDownID, this:GetID(), 0);
		HealingAsssignments:UpdateRaidDataBase()
	end
	UIDropDownMenu_AddButton(info);
end

-- populate a specific healer dropdown
function HealingAsssignments.Mainframe:PopulateHealerDropdown()
	local RaidMarkCheck = HealingAsssignments.Mainframe.Foreground.Profile[1].Template[16].Assigments.Content.AdditionalHealersCheckbox:GetChecked()
	local info = {};
	for i=1,table.getn(HealingAsssignments.Raiddatabase) do
		if HealingAsssignments.Raiddatabase[i].Class == "DRUID" or HealingAsssignments.Raiddatabase[i].Class == "SHAMAN" or HealingAsssignments.Raiddatabase[i].Class == "PRIEST" or HealingAsssignments.Raiddatabase[i].Class == "PALADIN" then
			info.text = HealingAsssignments.Raiddatabase[i].Name
			if HealingAsssignments.Raiddatabase[i].Class == "WARRIOR" then info.textR = 0.78; info.textG = 0.61; info.textB = 0.43;
			elseif HealingAsssignments.Raiddatabase[i].Class == "DRUID" then info.textR = 1.00; info.textG = 0.49; info.textB = 0.04;
			elseif HealingAsssignments.Raiddatabase[i].Class == "HUNTER" then info.textR = 0.67; info.textG = 0.83; info.textB = 0.45;
			elseif HealingAsssignments.Raiddatabase[i].Class == "MAGE" then info.textR = 0.41; info.textG = 0.80; info.textB = 0.94;
			elseif HealingAsssignments.Raiddatabase[i].Class == "ROGUE" then info.textR = 1.00; info.textG = 0.96; info.textB = 0.41;
			elseif HealingAsssignments.Raiddatabase[i].Class == "WARLOCK" then info.textR = 0.58; info.textG = 0.51; info.textB = 0.79;
			elseif HealingAsssignments.Raiddatabase[i].Class == "SHAMAN" then info.textR = 0.96; info.textG = 0.55; info.textB = 0.73;
			elseif HealingAsssignments.Raiddatabase[i].Class == "PRIEST" then info.textR = 1.00; info.textG = 1.00; info.textB = 1.00;
			elseif HealingAsssignments.Raiddatabase[i].Class == "PALADIN" then info.textR = 0.96; info.textG = 0.55; info.textB = 0.73;
			end	
			info.checked = false
			info.func = function()
				UIDropDownMenu_SetSelectedID(GlobalHealerDropDownID, this:GetID(), 0);
				HealingAsssignments:UpdateRaidDataBase()
			end
			UIDropDownMenu_AddButton(info);
		end
	end
	
	-- Raid Marks
	if RaidMarkCheck == 1 then 
		-- {Skull}
		info.text = "{Skull}"
		info.textR = 1; info.textG = 1; info.textB = 1;
		info.checked = false
		info.func = function()
		UIDropDownMenu_SetSelectedID(GlobalHealerDropDownID, this:GetID(), 0);
			HealingAsssignments:UpdateRaidDataBase()
		end
		UIDropDownMenu_AddButton(info);
		
		-- {Cross}
		info.text = "{Cross}"
		info.textR = 1; info.textG = 0; info.textB = 0;
		info.checked = false
		info.func = function()
		UIDropDownMenu_SetSelectedID(GlobalHealerDropDownID, this:GetID(), 0);
			HealingAsssignments:UpdateRaidDataBase()
		end
		UIDropDownMenu_AddButton(info);
		
		-- {Circle}
		info.text = "{Circle}"
		info.textR = 1; info.textG = 0.647; info.textB = 0;
		info.checked = false
		info.func = function()
		UIDropDownMenu_SetSelectedID(GlobalHealerDropDownID, this:GetID(), 0);
			HealingAsssignments:UpdateRaidDataBase()
		end
		UIDropDownMenu_AddButton(info);
		
		-- {Star}
		info.text = "{Star}"
		info.textR = 1; info.textG = 1; info.textB = 0;
		info.checked = false
		info.func = function()
		UIDropDownMenu_SetSelectedID(GlobalHealerDropDownID, this:GetID(), 0);
			HealingAsssignments:UpdateRaidDataBase()
		end
		UIDropDownMenu_AddButton(info);
		
		-- 	{Square}
		info.text = "{Square}"
		info.textR = 0.255; info.textG = 0.412; info.textB = 0.882;
		info.checked = false
		info.func = function()
		UIDropDownMenu_SetSelectedID(GlobalHealerDropDownID, this:GetID(), 0);
			HealingAsssignments:UpdateRaidDataBase()
		end
		UIDropDownMenu_AddButton(info);
		
		-- {Triangle}
		info.text = "{Triangle}"
		info.textR = 0; info.textG = 1; info.textB = 0;
		info.checked = false
		info.func = function()
		UIDropDownMenu_SetSelectedID(GlobalHealerDropDownID, this:GetID(), 0);
			HealingAsssignments:UpdateRaidDataBase()
		end
		UIDropDownMenu_AddButton(info);
		
		--{Diamond}
		info.text = "{Diamond}"
		info.textR = 1; info.textG = 0; info.textB = 1;
		info.checked = false
		info.func = function()
		UIDropDownMenu_SetSelectedID(GlobalHealerDropDownID, this:GetID(), 0);
			HealingAsssignments:UpdateRaidDataBase()
		end
		UIDropDownMenu_AddButton(info);
		
		-- {Moon}
		info.text = "{Moon}"
		info.textR = 0.878; info.textG = 1; info.textB = 1;
		info.checked = false
		info.func = function()
		UIDropDownMenu_SetSelectedID(GlobalHealerDropDownID, this:GetID(), 0);
			HealingAsssignments:UpdateRaidDataBase()
		end
		UIDropDownMenu_AddButton(info);
	end
	
	-- create emtpy field to deleting
	info.text = " "
	info.checked = false
	info.func = function()
		UIDropDownMenu_SetSelectedID(GlobalHealerDropDownID, this:GetID(), 0);
		HealingAsssignments:UpdateRaidDataBase()
	end
	UIDropDownMenu_AddButton(info);
end

-- Initialize a specific tank dropdown
function HealingAsssignments.Mainframe:TankDropDownOnClick(DropDownID)
	GlobalTankDropDownID = DropDownID -- feed global
	UIDropDownMenu_Initialize(DropDownID, self.PopulateTankDropdown)
end

-- Initialize a specific healer dropdown
function HealingAsssignments.Mainframe:HealerDropDownOnClick(DropDownID)
	GlobalHealerDropDownID = DropDownID -- feed global
	UIDropDownMenu_Initialize(DropDownID, self.PopulateHealerDropdown)
	UIDropDownMenu_GetText(DropDownID) 
end

-- create raiddatabase from raidata (unfiltered)
function HealingAsssignments:CreateRaidDatabase()
	HealingAsssignments.Raiddatabase = {}
	for i=1,GetNumRaidMembers() do
		HealingAsssignments.Raiddatabase[i] = {}
		HealingAsssignments.Raiddatabase[i].Name = UnitName("raid"..i)
		_,HealingAsssignments.Raiddatabase[i].Class = UnitClass("raid"..i)
		HealingAsssignments.Raiddatabase[i].Connection = UnitIsConnected("raid"..i)
	end
end	

-- Update the raiddatabase and set Colors
function HealingAsssignments:UpdateRaidDataBase()
	HealingAsssignments:CreateRaidDatabase()
	local activeFrame = HealingAsssignments.Mainframe.ActiveFrame
	
	if HealingAsssignments.Mainframe.ActiveFrame ~= nil and activeFrame <= 15 and HealingAssignmentsTemplates.Profile[HealingAsssignments.Mainframe.ActiveProfile] and HealingAssignmentsTemplates.Profile[HealingAsssignments.Mainframe.ActiveProfile].Template[activeFrame] then
		HealingAssignmentsTemplates.Profile[HealingAsssignments.Mainframe.ActiveProfile].Template[activeFrame].Tank = {}
		HealingAssignmentsTemplates.Profile[HealingAsssignments.Mainframe.ActiveProfile].Template[activeFrame].Tankhealernames = {}
		local TankNum = HealingAssignmentsTemplates.Profile[HealingAsssignments.Mainframe.ActiveProfile].Template[activeFrame].TankNum
		local HealerNum = 0
		for i=1,TankNum do
			local foundName = 0;
			local numnum = i
			local TankName = UIDropDownMenu_GetText(HealingAsssignments.Mainframe.Foreground.Profile[HealingAsssignments.Mainframe.ActiveProfile].Template[activeFrame].Assigments.Content.Frame[i].Tank[i])
			
			if TankName == nil then TankName = " " end
			HealingAssignmentsTemplates.Profile[HealingAsssignments.Mainframe.ActiveProfile].Template[activeFrame].Tank[i] = TankName
			HealingAssignmentsTemplates.Profile[HealingAsssignments.Mainframe.ActiveProfile].Template[activeFrame].Tankhealernames[i] = {}
			
			
			for v=1,table.getn(HealingAsssignments.Raiddatabase) do
				if HealingAsssignments.Raiddatabase[v].Name == TankName then HealingAsssignments.Raiddatabase[v] = {} end
			end
			
			for w=1,GetNumRaidMembers() do
					if UnitName("raid"..w) == TankName then
						local color = self:GetClassColors(w)
						getglobal(HealingAsssignments.Mainframe.Foreground.Profile[HealingAsssignments.Mainframe.ActiveProfile].Template[activeFrame].Assigments.Content.Frame[i].Tank[i]:GetName().."Text"):SetTextColor(color[2],color[3],color[4],1)
						foundName = 1;
					end	
			end
			-- check for additional tanks
			if TankName == "Left Side" then getglobal(HealingAsssignments.Mainframe.Foreground.Profile[HealingAsssignments.Mainframe.ActiveProfile].Template[activeFrame].Assigments.Content.Frame[i].Tank[i]:GetName().."Text"):SetTextColor(1,0,0,1) end
			if TankName == "Right Side" then getglobal(HealingAsssignments.Mainframe.Foreground.Profile[HealingAsssignments.Mainframe.ActiveProfile].Template[activeFrame].Assigments.Content.Frame[i].Tank[i]:GetName().."Text"):SetTextColor(0,0,1,1) end
			if TankName == "Melee" then getglobal(HealingAsssignments.Mainframe.Foreground.Profile[HealingAsssignments.Mainframe.ActiveProfile].Template[activeFrame].Assigments.Content.Frame[i].Tank[i]:GetName().."Text"):SetTextColor(0.49,0.51,0.27,1) end
			if TankName == "Dispel" then getglobal(HealingAsssignments.Mainframe.Foreground.Profile[HealingAsssignments.Mainframe.ActiveProfile].Template[activeFrame].Assigments.Content.Frame[i].Tank[i]:GetName().."Text"):SetTextColor(1,1,1,1) end
			if foundName == 0 and TankName ~= "Right Side" and TankName ~= "Left Side" and TankName ~= "Melee" and TankName ~= "Dispel" then getglobal(HealingAsssignments.Mainframe.Foreground.Profile[HealingAsssignments.Mainframe.ActiveProfile].Template[activeFrame].Assigments.Content.Frame[i].Tank[i]:GetName().."Text"):SetTextColor(0,1,0,1) end
			
			HealerNum = HealingAssignmentsTemplates.Profile[HealingAsssignments.Mainframe.ActiveProfile].Template[activeFrame].TankHealer[i]
			if HealerNum == nil then HealerNum = 0 end
			HealingAssignmentsTemplates.Profile[HealingAsssignments.Mainframe.ActiveProfile].Template[activeFrame].Tankhealernames[i].Healer = {}
			for j=1,HealerNum do
				local numj = j
				local HealerName = UIDropDownMenu_GetText(HealingAsssignments.Mainframe.Foreground.Profile[HealingAsssignments.Mainframe.ActiveProfile].Template[activeFrame].Assigments.Content.Frame[i].Healer[j])
				
				if HealerName == nil then HealerName = " " end
				HealingAssignmentsTemplates.Profile[HealingAsssignments.Mainframe.ActiveProfile].Template[activeFrame].Tankhealernames[i].Healer[j] = HealerName
				
				for v=1,table.getn(HealingAsssignments.Raiddatabase) do
				if HealingAsssignments.Raiddatabase[v].Name == HealerName then HealingAsssignments.Raiddatabase[v] = {} end
				end
				-- set standard color
				
				getglobal(HealingAsssignments.Mainframe.Foreground.Profile[HealingAsssignments.Mainframe.ActiveProfile].Template[activeFrame].Assigments.Content.Frame[i].Healer[j]:GetName().."Text"):SetTextColor(1,0,0,1)
				for w=1,GetNumRaidMembers() do
					if UnitName("raid"..w) == HealerName then 
						local color = self:GetClassColors(w)
						getglobal(HealingAsssignments.Mainframe.Foreground.Profile[HealingAsssignments.Mainframe.ActiveProfile].Template[activeFrame].Assigments.Content.Frame[i].Healer[j]:GetName().."Text"):SetTextColor(color[2],color[3],color[4],1)
					end
				end
				
				if HealerName == "{Skull}" then getglobal(HealingAsssignments.Mainframe.Foreground.Profile[HealingAsssignments.Mainframe.ActiveProfile].Template[activeFrame].Assigments.Content.Frame[i].Healer[j]:GetName().."Text"):SetTextColor(1,1,1,1)
				elseif HealerName == "{Cross}" then getglobal(HealingAsssignments.Mainframe.Foreground.Profile[HealingAsssignments.Mainframe.ActiveProfile].Template[activeFrame].Assigments.Content.Frame[i].Healer[j]:GetName().."Text"):SetTextColor(1,0,0,1)
				elseif HealerName == "{Circle}" then getglobal(HealingAsssignments.Mainframe.Foreground.Profile[HealingAsssignments.Mainframe.ActiveProfile].Template[activeFrame].Assigments.Content.Frame[i].Healer[j]:GetName().."Text"):SetTextColor(1,0.647,0,1)
				elseif HealerName == "{Star}" then getglobal(HealingAsssignments.Mainframe.Foreground.Profile[HealingAsssignments.Mainframe.ActiveProfile].Template[activeFrame].Assigments.Content.Frame[i].Healer[j]:GetName().."Text"):SetTextColor(1,1,0,1)
				elseif HealerName == "{Square}" then getglobal(HealingAsssignments.Mainframe.Foreground.Profile[HealingAsssignments.Mainframe.ActiveProfile].Template[activeFrame].Assigments.Content.Frame[i].Healer[j]:GetName().."Text"):SetTextColor(0.255,0.412,0.882,1)
				elseif HealerName == "{Triangle}" then getglobal(HealingAsssignments.Mainframe.Foreground.Profile[HealingAsssignments.Mainframe.ActiveProfile].Template[activeFrame].Assigments.Content.Frame[i].Healer[j]:GetName().."Text"):SetTextColor(0,1,0,1)
				elseif HealerName == "{Diamond}" then getglobal(HealingAsssignments.Mainframe.Foreground.Profile[HealingAsssignments.Mainframe.ActiveProfile].Template[activeFrame].Assigments.Content.Frame[i].Healer[j]:GetName().."Text"):SetTextColor(1,0,1,1)
				elseif HealerName == "{Moon}" then getglobal(HealingAsssignments.Mainframe.Foreground.Profile[HealingAsssignments.Mainframe.ActiveProfile].Template[activeFrame].Assigments.Content.Frame[i].Healer[j]:GetName().."Text"):SetTextColor(1,1,1,1)
				end
			end
		end
	end
end

-- delivers class and color from raid ID
function HealingAsssignments:GetClassColors(RaidID)
	
	local classColors = {}
	_,classColors[1] = UnitClass("raid"..RaidID)
	if UnitIsConnected("raid"..RaidID) == nil then classColors[2] = 0.7; classColors[3] = 0.7; classColors[4] = 0.7; classColors[5] = "BABABA"; return classColors
    elseif classColors[1] == "WARRIOR" then classColors[2] = 0.78; classColors[3] = 0.61; classColors[4] = 0.43; classColors[5] = "C79C6E"; return classColors
	elseif classColors[1] == "HUNTER" then classColors[2] = 0.67; classColors[3] = 0.83; classColors[4] = 0.45; classColors[5] = "ABD473"; return classColors
	elseif classColors[1] == "MAGE" then classColors[2] = 0.41; classColors[3] = 0.80; classColors[4] = 0.94; classColors[5] = "69CCF0"; return classColors
	elseif classColors[1] == "ROGUE" then classColors[2] = 1.00; classColors[3] = 0.96; classColors[4] = 0.41; classColors[5] = "FFF569"; return classColors
	elseif classColors[1] == "WARLOCK" then classColors[2] = 0.58; classColors[3] = 0.51; classColors[4] = 0.79; classColors[5] = "9482C9"; return classColors
    elseif classColors[1] == "DRUID" then classColors[2] = 1.00; classColors[3] = 0.49; classColors[4] = 0.04; classColors[5] = "FF7D0A"; return classColors
    elseif classColors[1] == "SHAMAN" then classColors[2] = 0.96; classColors[3] = 0.55; classColors[4] = 0.73; classColors[5] = "F58CBA"; return classColors
    elseif classColors[1] == "PRIEST" then classColors[2] = 1.00; classColors[3] = 1.00; classColors[4] = 1.00; classColors[5] = "FFFFFF"; return classColors
    elseif classColors[1] == "PALADIN" then classColors[2] = 0.96; classColors[3] = 0.55; classColors[4] = 0.73; classColors[5] = "FF0000" return classColors
    else classColors[1] = " "; classColors[2] = 1.00; classColors[3] = 0.00; classColors[4] = 0.00; classColors[5] = "FF0000"; return classColors
    end
    
end

