local GlobalDropDownID

function HealingAsssignments.Syncframe:ConfigureFrame()
	local backdrop = {bgFile = "Interface\\DialogFrame\\UI-DialogBox-Background", edgeFile="Interface\\DialogFrame\\UI-DialogBox-Border", tile = true, tileSize = 32, edgeSize = 32, insets = { left = 11, right = 12, top = 12, bottom = 11 }}
	self:SetBackdrop(backdrop)
	self:SetWidth(140)
	self:SetHeight(HealingAsssignments.Mainframe:GetHeight()-15)
	self:SetPoint("TOPLEFT",HealingAsssignments.Mainframe:GetWidth(),-9)
	
	local syncString = self:CreateFontString(nil, "OVERLAY")
    syncString:SetPoint("TOPLEFT",15,-20)
	syncString:SetFont("Fonts\\FRIZQT__.TTF", 12)
	syncString:SetWidth(110)
	syncString:SetJustifyH("CENTER")
    syncString:SetText("Profiles")

	
	self.ProfileButton1 = CreateFrame("Button","ProfileButton1",self,"UIPanelButtonTemplate")
	self.ProfileButton1:SetPoint("TOPLEFT",15,-40)
	self.ProfileButton1:SetWidth(110)
	self.ProfileButton1:SetHeight(18)
	self.ProfileButton1:SetText(HealingAssignmentsTemplates.Profile[1].Name)
	self.ProfileButton1:SetScript("OnClick", function() PlaySound("igMainMenuOptionCheckBoxOn");HealingAsssignments.Syncframe:SelectProfile(1);end)
	--self.ProfileButton1:Hide()
	
	self.ProfileButton2 = CreateFrame("Button","ProfileButton2",self,"UIPanelButtonTemplate")
	self.ProfileButton2:SetPoint("TOPLEFT",15,-80)
	self.ProfileButton2:SetWidth(110)
	self.ProfileButton2:SetHeight(18)
	self.ProfileButton2:SetText(HealingAssignmentsTemplates.Profile[2].Name)
	self.ProfileButton2:SetScript("OnClick", function() PlaySound("igMainMenuOptionCheckBoxOn");HealingAsssignments.Syncframe:SelectProfile(2); end)
	--self.ProfileButton2:Hide()
	
	self.ProfileButton3 = CreateFrame("Button","ProfileButton3",self,"UIPanelButtonTemplate")
	self.ProfileButton3:SetPoint("TOPLEFT",15,-100)
	self.ProfileButton3:SetWidth(110)
	self.ProfileButton3:SetHeight(18)
	self.ProfileButton3:SetText(HealingAssignmentsTemplates.Profile[3].Name)
	self.ProfileButton3:SetScript("OnClick", function() PlaySound("igMainMenuOptionCheckBoxOn");HealingAsssignments.Syncframe:SelectProfile(3); end)
	--self.ProfileButton3:Hide()
	
	self.ProfileButton4 = CreateFrame("Button","ProfileButton4",self,"UIPanelButtonTemplate")
	self.ProfileButton4:SetPoint("TOPLEFT",15,-120)
	self.ProfileButton4:SetWidth(110)
	self.ProfileButton4:SetHeight(18)
	self.ProfileButton4:SetText(HealingAssignmentsTemplates.Profile[4].Name)
	self.ProfileButton4:SetScript("OnClick", function() PlaySound("igMainMenuOptionCheckBoxOn");HealingAsssignments.Syncframe:SelectProfile(4); end)
	--self.ProfileButton4:Hide()
	
	self.ProfileButton5 = CreateFrame("Button","ProfileButton5",self,"UIPanelButtonTemplate")
	self.ProfileButton5:SetPoint("TOPLEFT",15,-140)
	self.ProfileButton5:SetWidth(110)
	self.ProfileButton5:SetHeight(18)
	self.ProfileButton5:SetText(HealingAssignmentsTemplates.Profile[5].Name)
	self.ProfileButton5:SetScript("OnClick", function() PlaySound("igMainMenuOptionCheckBoxOn");HealingAsssignments.Syncframe:SelectProfile(5); end)
	--self.ProfileButton5:Hide()
	
	self.ProfileButton6 = CreateFrame("Button","ProfileButton6",self,"UIPanelButtonTemplate")
	self.ProfileButton6:SetPoint("TOPLEFT",15,-160)
	self.ProfileButton6:SetWidth(110)
	self.ProfileButton6:SetHeight(18)
	self.ProfileButton6:SetText(HealingAssignmentsTemplates.Profile[6].Name)
	self.ProfileButton6:SetScript("OnClick", function() PlaySound("igMainMenuOptionCheckBoxOn");HealingAsssignments.Syncframe:SelectProfile(6);end)
	--self.ProfileButton6:Hide()
	
	self.ProfileButton7 = CreateFrame("Button","ProfileButton7",self,"UIPanelButtonTemplate")
	self.ProfileButton7:SetPoint("TOPLEFT",15,-180)
	self.ProfileButton7:SetWidth(110)
	self.ProfileButton7:SetHeight(18)
	self.ProfileButton7:SetText(HealingAssignmentsTemplates.Profile[7].Name)
	self.ProfileButton7:SetScript("OnClick", function() PlaySound("igMainMenuOptionCheckBoxOn");HealingAsssignments.Syncframe:SelectProfile(7); end)
	--self.ProfileButton7:Hide()
	
	self.ProfileButton8 = CreateFrame("Button","ProfileButton8",self,"UIPanelButtonTemplate")
	self.ProfileButton8:SetPoint("TOPLEFT",15,-200)
	self.ProfileButton8:SetWidth(110)
	self.ProfileButton8:SetHeight(18)
	self.ProfileButton8:SetText(HealingAssignmentsTemplates.Profile[8].Name)
	self.ProfileButton8:SetScript("OnClick", function() PlaySound("igMainMenuOptionCheckBoxOn") ;HealingAsssignments.Syncframe:SelectProfile(8);end)
	--self.ProfileButton8:Hide()
	
	self.ProfileButton9 = CreateFrame("Button","ProfileButton9",self,"UIPanelButtonTemplate")
	self.ProfileButton9:SetPoint("TOPLEFT",15,-220)
	self.ProfileButton9:SetWidth(110)
	self.ProfileButton9:SetHeight(18)
	self.ProfileButton9:SetText(HealingAssignmentsTemplates.Profile[9].Name)
	self.ProfileButton9:SetScript("OnClick", function() PlaySound("igMainMenuOptionCheckBoxOn");HealingAsssignments.Syncframe:SelectProfile(9); end)
	--self.ProfileButton9:Hide()
	
	self.ProfileButton10 = CreateFrame("Button","ProfileButton10",self,"UIPanelButtonTemplate")
	self.ProfileButton10:SetPoint("TOPLEFT",15,-240)
	self.ProfileButton10:SetWidth(110)
	self.ProfileButton10:SetHeight(18)
	self.ProfileButton10:SetText(HealingAssignmentsTemplates.Profile[10].Name)
	self.ProfileButton10:SetScript("OnClick", function() PlaySound("igMainMenuOptionCheckBoxOn");HealingAsssignments.Syncframe:SelectProfile(10); end)
	--self.ProfileButton10:Hide()
	
	self.ProfileButton11 = CreateFrame("Button","ProfileButton11",self,"UIPanelButtonTemplate")
	self.ProfileButton11:SetPoint("TOPLEFT",15,-260)
	self.ProfileButton11:SetWidth(110)
	self.ProfileButton11:SetHeight(18)
	self.ProfileButton11:SetText(HealingAssignmentsTemplates.Profile[11].Name)
	self.ProfileButton11:SetScript("OnClick", function() PlaySound("igMainMenuOptionCheckBoxOn");HealingAsssignments.Syncframe:SelectProfile(11); end)
	--self.ProfileButton11:Hide()
	
	self:Show()
end

-- returns next free Profile Slot if new Name
function HealingAsssignments.Syncframe:GetProfileNum(ProfileName)
	local ProfileNumber
	for i=2,11 do
		if HealingAssignmentsTemplates.Profile[i].Name == ProfileName then ProfileNumber = i break 
		elseif  HealingAssignmentsTemplates.Profile[i].Name == " " then ProfileNumber = i break
		else ProfileNumber = 100
		end
	end
	if ProfileNumber ~= 100 and ProfileName ~= UnitName("player") then HealingAssignmentsTemplates.Profile[ProfileNumber].Name = ProfileName end
	return ProfileNumber
end

function HealingAsssignments.Syncframe:GetProfileNumNonSave(ProfileName)
	local ProfileNumber
	for i=1,11 do
		if HealingAssignmentsTemplates.Profile[i].Name == ProfileName then ProfileNumber = i end
	end
	return ProfileNumber
end


function HealingAsssignments.Syncframe:SelectProfile(profileNum)
	HealingAsssignments.Mainframe.ActiveProfile = profileNum
	
	-- hide templates AND window
	for j=1,11 do
		for i=1,15 do
			if HealingAsssignments.Mainframe.Foreground.Profile[j].Template[i] then
				local TemplateNumber = i;
				HealingAsssignments.Mainframe.Foreground.Profile[j].Template[TemplateNumber].Assigments:Hide()
				HealingAsssignments.Mainframe.Foreground.Profile[j].Template[TemplateNumber].Menu:Hide()
			end
		end
	end
	HealingAsssignments.Mainframe.Foreground.Profile[1].Template[16].Assigments:Hide()
	
		for i=1,15 do
			if HealingAsssignments.Mainframe.Foreground.Profile[HealingAsssignments.Mainframe.ActiveProfile].Template[i] then
				local TemplateNumber = i;
				HealingAsssignments.Mainframe.Foreground.Profile[HealingAsssignments.Mainframe.ActiveProfile].Template[TemplateNumber].Menu:Show()
			end
	end
	
	getglobal(HealingAsssignments.Mainframe.ProfileDropdown:GetName().."Text"):SetText(HealingAssignmentsTemplates.Profile[profileNum].Name)
	HealingAsssignments.Mainframe:SelectActiveTemplate(HealingAsssignments.Mainframe.ActiveFrameBuffer)
end


-- add template (if not already exists) -- todo: if already exist with same name then delete and make new!
function HealingAsssignments.Syncframe:AddTemplate(ProfileNum,TemplateNum,TemplateName)
	local name = TemplateName
	-- check if template already exist
	if not HealingAssignmentsTemplates.Profile[ProfileNum].Template[TemplateNum] then
		HealingAssignmentsTemplates.Profile[ProfileNum].Template[TemplateNum] = {}
		HealingAsssignments.Mainframe.Foreground.Profile[ProfileNum].Template[TemplateNum] = {}
		-- create Template
		HealingAssignmentsTemplates.Profile[ProfileNum].Template[TemplateNum].Name = name -- Save this to global
		HealingAsssignments.Mainframe.Foreground.Profile[ProfileNum].Template[TemplateNum].Name = name
		HealingAsssignments.Mainframe.Foreground.Profile[ProfileNum].Template[TemplateNum].Menu = CreateFrame("Frame", nil, HealingAsssignments.Mainframe) 
		HealingAsssignments.Mainframe.Foreground.Profile[ProfileNum].Template[TemplateNum].Menu:SetFrameStrata("MEDIUM")
		HealingAsssignments.Mainframe.Foreground.Profile[ProfileNum].Template[TemplateNum].Menu:SetWidth(130) -- Set these to whatever height/width is needed 
		HealingAsssignments.Mainframe.Foreground.Profile[ProfileNum].Template[TemplateNum].Menu:SetHeight(20) -- for your Texture
		HealingAsssignments.Mainframe.Foreground.Profile[ProfileNum].Template[TemplateNum].Menu:SetPoint("TOPLEFT", HealingAsssignments.Mainframe, "TOPLEFT",23, (TemplateNum * (-20)) -85)
		HealingAsssignments.Mainframe.Foreground.Profile[ProfileNum].Template[TemplateNum].Menu.colorBg = HealingAsssignments.Mainframe.Foreground.Profile[ProfileNum].Template[TemplateNum].Menu:CreateTexture(nil, "BACKGROUND") 
		HealingAsssignments.Mainframe.Foreground.Profile[ProfileNum].Template[TemplateNum].Menu.colorBg:SetAllPoints(HealingAsssignments.Mainframe.Foreground.Profile[ProfileNum].Template[TemplateNum].Menu) 
		HealingAsssignments.Mainframe.Foreground.Profile[ProfileNum].Template[TemplateNum].Menu.colorBg:SetTexture(0, 0, 0, 0.3)
				
		HealingAsssignments.Mainframe.Foreground.Profile[ProfileNum].Template[TemplateNum].Menu.ScriptButton = CreateFrame("Button",nil,HealingAsssignments.Mainframe.Foreground.Profile[ProfileNum].Template[TemplateNum].Menu)
		HealingAsssignments.Mainframe.Foreground.Profile[ProfileNum].Template[TemplateNum].Menu.ScriptButton:SetFrameStrata("LOW")
		HealingAsssignments.Mainframe.Foreground.Profile[ProfileNum].Template[TemplateNum].Menu.ScriptButton:SetWidth(130)
		HealingAsssignments.Mainframe.Foreground.Profile[ProfileNum].Template[TemplateNum].Menu.ScriptButton:SetHeight(20)
		HealingAsssignments.Mainframe.Foreground.Profile[ProfileNum].Template[TemplateNum].Menu.ScriptButton:SetPoint("TOPLEFT", HealingAsssignments.Mainframe, "TOPLEFT",23, (TemplateNum * (-20)) -85)
		HealingAsssignments.Mainframe.Foreground.Profile[ProfileNum].Template[TemplateNum].Menu.ScriptButton:SetScript("OnClick", function() PlaySound("igMainMenuOptionCheckBoxOn")
																					HealingAsssignments.Mainframe:SelectActiveTemplate(TemplateNum)
																					end)
						
		-- String
		HealingAsssignments.Mainframe.Foreground.Profile[ProfileNum].Template[TemplateNum].Menu.FontString = HealingAsssignments.Mainframe.Foreground.Profile[ProfileNum].Template[TemplateNum].Menu:CreateFontString(nil, "OVERLAY")
		HealingAsssignments.Mainframe.Foreground.Profile[ProfileNum].Template[TemplateNum].Menu.FontString:SetPoint("TOPLEFT", HealingAsssignments.Mainframe.Foreground.Profile[ProfileNum].Template[TemplateNum].Menu, "TOPLEFT", 5, -3)
		HealingAsssignments.Mainframe.Foreground.Profile[ProfileNum].Template[TemplateNum].Menu.FontString:SetFont("Fonts\\FRIZQT__.TTF", 11)
		HealingAsssignments.Mainframe.Foreground.Profile[ProfileNum].Template[TemplateNum].Menu.FontString:SetWidth(200)
		HealingAsssignments.Mainframe.Foreground.Profile[ProfileNum].Template[TemplateNum].Menu.FontString:SetJustifyH("LEFT")
		HealingAsssignments.Mainframe.Foreground.Profile[ProfileNum].Template[TemplateNum].Menu.FontString:SetText(HealingAssignmentsTemplates.Profile[ProfileNum].Template[TemplateNum].Name)
						
		-- Button
		HealingAsssignments.Mainframe.Foreground.Profile[ProfileNum].Template[TemplateNum].Menu.Button = CreateFrame("Button",nil,HealingAsssignments.Mainframe.Foreground.Profile[ProfileNum].Template[TemplateNum].Menu,"UIPanelButtonTemplate")
		HealingAsssignments.Mainframe.Foreground.Profile[ProfileNum].Template[TemplateNum].Menu.Button:SetPoint("TOPLEFT",133,0)
		HealingAsssignments.Mainframe.Foreground.Profile[ProfileNum].Template[TemplateNum].Menu.Button:SetFrameStrata("LOW")
		HealingAsssignments.Mainframe.Foreground.Profile[ProfileNum].Template[TemplateNum].Menu.Button:SetWidth(20)
		HealingAsssignments.Mainframe.Foreground.Profile[ProfileNum].Template[TemplateNum].Menu.Button:SetHeight(20)
		HealingAsssignments.Mainframe.Foreground.Profile[ProfileNum].Template[TemplateNum].Menu.Button:SetText("X")
		HealingAsssignments.Mainframe.Foreground.Profile[ProfileNum].Template[TemplateNum].Menu.Button:SetScript("OnClick", function() PlaySound("igMainMenuOptionCheckBoxOn")
																						HealingAsssignments.Mainframe:OpenTemplateDeleteOptions(TemplateNum)
																						end)	
		-- create scrollframe!
		HealingAsssignments.Mainframe:AddAssignmentFrame(ProfileNum,TemplateNum)
		HealingAssignmentsTemplates.Profile[ProfileNum].Template[TemplateNum].TankNum = 0;
		HealingAssignmentsTemplates.Profile[ProfileNum].Template[TemplateNum].TankHealer = {}
	else HealingAssignmentsTemplates.Profile[ProfileNum].Template[TemplateNum].Name = name -- Save this to global
		 HealingAsssignments.Mainframe.Foreground.Profile[ProfileNum].Template[TemplateNum].Name = name
		 HealingAsssignments.Mainframe.Foreground.Profile[ProfileNum].Template[TemplateNum].Menu.FontString:SetText(name)
	end
end

function HealingAsssignments.Syncframe:AddDropdown(ProfileNum,TemplateNum,DropType,ActiveTankFrame,ActiveHealerFrame,DropText)
	-- tank dropdown
	if not DropText or DropText == nil then DropText = " " end
	if DropType == 2 then
		-- delete all old text
		if ActiveTankFrame == 1 then
			HealingAsssignments.Syncframe:ResetDropdownText(ProfileNum,TemplateNum)
		end
		
		if not HealingAsssignments.Mainframe.Foreground.Profile[ProfileNum].Template[TemplateNum].Assigments.Content.Frame then HealingAsssignments.Mainframe.Foreground.Profile[ProfileNum].Template[TemplateNum].Assigments.Content.Frame = {} end
		if not HealingAsssignments.Mainframe.Foreground.Profile[ProfileNum].Template[TemplateNum].Assigments.Content.Frame[ActiveTankFrame] then	
			HealingAsssignments.Mainframe.Foreground.Profile[ProfileNum].Template[TemplateNum].Assigments.Content.Frame[ActiveTankFrame] = CreateFrame("Frame", nil, HealingAsssignments.Mainframe.Foreground.Profile[ProfileNum].Template[TemplateNum].Assigments.Content);
			HealingAsssignments.Mainframe.Foreground.Profile[ProfileNum].Template[TemplateNum].Assigments.Content.Frame[ActiveTankFrame]:SetFrameStrata("LOW")
			HealingAsssignments.Mainframe.Foreground.Profile[ProfileNum].Template[TemplateNum].Assigments.Content.Frame[ActiveTankFrame]:SetWidth(565) -- Set these to whatever height/width is needed 
			HealingAsssignments.Mainframe.Foreground.Profile[ProfileNum].Template[TemplateNum].Assigments.Content.Frame[ActiveTankFrame]:SetHeight(60) -- for your Texture
			local height = HealingAsssignments.Mainframe:GetScrollFrameHeight(ProfileNum,TemplateNum)
			HealingAsssignments.Mainframe.Foreground.Profile[ProfileNum].Template[TemplateNum].Assigments.Content.Frame[ActiveTankFrame]:SetPoint("TOPLEFT", 0, -height+60)
			local colorBg = HealingAsssignments.Mainframe.Foreground.Profile[ProfileNum].Template[TemplateNum].Assigments.Content.Frame[ActiveTankFrame]:CreateTexture(nil, "BACKGROUND") 
			colorBg:SetAllPoints(HealingAsssignments.Mainframe.Foreground.Profile[ProfileNum].Template[TemplateNum].Assigments.Content.Frame[ActiveTankFrame]) 
			colorBg:SetTexture(0, 0, 0, 0)
			
			-- add dropdown here
			HealingAsssignments.Mainframe.DropDownCounter = HealingAsssignments.Mainframe.DropDownCounter +1
			local DropDownCount = HealingAsssignments.Mainframe.DropDownCounter
			if not HealingAsssignments.Mainframe.Foreground.Profile[ProfileNum].Template[TemplateNum].Assigments.Content.Frame[ActiveTankFrame].Tank then HealingAsssignments.Mainframe.Foreground.Profile[ProfileNum].Template[TemplateNum].Assigments.Content.Frame[ActiveTankFrame].Tank = {} end;
			HealingAsssignments.Mainframe.Foreground.Profile[ProfileNum].Template[TemplateNum].Assigments.Content.Frame[ActiveTankFrame].Tank[ActiveTankFrame] = CreateFrame("Button","HADropdown"..DropDownCount, HealingAsssignments.Mainframe.Foreground.Profile[ProfileNum].Template[TemplateNum].Assigments.Content.Frame[ActiveTankFrame], "UIDropDownMenuTemplate")
			HealingAsssignments.Mainframe.Foreground.Profile[ProfileNum].Template[TemplateNum].Assigments.Content.Frame[ActiveTankFrame].Tank[ActiveTankFrame]:SetPoint("TOPLEFT", -12, -20)
			getglobal(HealingAsssignments.Mainframe.Foreground.Profile[ProfileNum].Template[TemplateNum].Assigments.Content.Frame[ActiveTankFrame].Tank[ActiveTankFrame]:GetName().."Button"):SetScript("OnClick", function()
																	local DropDownID = getglobal(HealingAsssignments.Mainframe.Foreground.Profile[ProfileNum].Template[TemplateNum].Assigments.Content.Frame[ActiveTankFrame].Tank[ActiveTankFrame]:GetName())
																	HealingAsssignments.Mainframe:TankDropDownOnClick(DropDownID)
																	ToggleDropDownMenu(); -- inherit UIDropDownMenuTemplate functions
																	PlaySound("igMainMenuOptionCheckBoxOn"); -- inherit UIDropDownMenuTemplate functions
																	end)
			getglobal(HealingAsssignments.Mainframe.Foreground.Profile[ProfileNum].Template[TemplateNum].Assigments.Content.Frame[ActiveTankFrame].Tank[ActiveTankFrame]:GetName().."Text"):SetText(DropText)
			
			-- add font string
			local TankFontString = HealingAsssignments.Mainframe.Foreground.Profile[ProfileNum].Template[TemplateNum].Assigments.Content.Frame[ActiveTankFrame].Tank[ActiveTankFrame]:CreateFontString(nil, "OVERLAY")
			TankFontString:SetPoint("CENTER", 62, 27)
			TankFontString:SetFont("Fonts\\FRIZQT__.TTF", 11)
			TankFontString:SetJustifyH("CENTER")
			TankFontString:SetText("Tank "..ActiveTankFrame)
			
			-- reconfigure scrollslider and save Database
			HealingAssignmentsTemplates.Profile[ProfileNum].Template[TemplateNum].TankNum = table.getn(HealingAsssignments.Mainframe.Foreground.Profile[ProfileNum].Template[TemplateNum].Assigments.Content.Frame)
			if not HealingAssignmentsTemplates.Profile[ProfileNum].Template[TemplateNum].Tank then HealingAssignmentsTemplates.Profile[ProfileNum].Template[TemplateNum].Tank = {} end
			HealingAssignmentsTemplates.Profile[ProfileNum].Template[TemplateNum].Tank[ActiveTankFrame] = DropText
			
			--HealingAsssignments.Mainframe:SetScrollFrameHeight(TemplateNum)
			else getglobal(HealingAsssignments.Mainframe.Foreground.Profile[ProfileNum].Template[TemplateNum].Assigments.Content.Frame[ActiveTankFrame].Tank[ActiveTankFrame]:GetName().."Text"):SetText(DropText)
			HealingAssignmentsTemplates.Profile[ProfileNum].Template[TemplateNum].Tank[ActiveTankFrame] = DropText
		end
	
	--healer dropdown
	elseif DropType > 2 then
		if not HealingAsssignments.Mainframe.Foreground.Profile[ProfileNum].Template[TemplateNum].Assigments.Content.Frame[ActiveTankFrame].Healer or not HealingAsssignments.Mainframe.Foreground.Profile[ProfileNum].Template[TemplateNum].Assigments.Content.Frame[ActiveTankFrame].Healer[ActiveHealerFrame] then
			HealingAsssignments.Mainframe.DropDownCounter = HealingAsssignments.Mainframe.DropDownCounter +1
			local DropDownCount = HealingAsssignments.Mainframe.DropDownCounter
			if not HealingAsssignments.Mainframe.Foreground.Profile[ProfileNum].Template[TemplateNum].Assigments.Content.Frame[ActiveTankFrame].Healer then HealingAsssignments.Mainframe.Foreground.Profile[ProfileNum].Template[TemplateNum].Assigments.Content.Frame[ActiveTankFrame].Healer = {} end;
			HealingAsssignments.Mainframe.Foreground.Profile[ProfileNum].Template[TemplateNum].Assigments.Content.Frame[ActiveTankFrame].Healer[ActiveHealerFrame] = CreateFrame("Button","HADropdown"..DropDownCount, HealingAsssignments.Mainframe.Foreground.Profile[ProfileNum].Template[TemplateNum].Assigments.Content.Frame[ActiveTankFrame], "UIDropDownMenuTemplate")
			getglobal(HealingAsssignments.Mainframe.Foreground.Profile[ProfileNum].Template[TemplateNum].Assigments.Content.Frame[ActiveTankFrame].Healer[ActiveHealerFrame]:GetName().."Button"):SetScript("OnClick", function()
															local DropDownID = getglobal(HealingAsssignments.Mainframe.Foreground.Profile[ProfileNum].Template[TemplateNum].Assigments.Content.Frame[ActiveTankFrame].Healer[ActiveHealerFrame]:GetName())
															HealingAsssignments.Mainframe:HealerDropDownOnClick(DropDownID)
															ToggleDropDownMenu(); -- inherit UIDropDownMenuTemplate functions
															PlaySound("igMainMenuOptionCheckBoxOn"); -- inherit UIDropDownMenuTemplate functions
															end)
			getglobal(HealingAsssignments.Mainframe.Foreground.Profile[ProfileNum].Template[TemplateNum].Assigments.Content.Frame[ActiveTankFrame].Healer[ActiveHealerFrame]:GetName().."Text"):SetText(DropText)
			
			if math.mod(ActiveHealerFrame,4) == 1 then x = 137; y = math.floor((ActiveHealerFrame/4)-(1/5))*(-60); HealingAsssignments.Mainframe.Foreground.Profile[ProfileNum].Template[TemplateNum].Assigments.Content.Frame[ActiveTankFrame]:SetHeight((math.floor((ActiveHealerFrame/3)-(1/5)))*60+60)
			elseif math.mod(ActiveHealerFrame,4) == 2 then x = 274; y = math.floor((ActiveHealerFrame/4)-(1/5))*(-60)
			elseif math.mod(ActiveHealerFrame,4) == 3 then x = 411; y = math.floor((ActiveHealerFrame/4)-(1/5))*(-60)
			elseif math.mod(ActiveHealerFrame,4) == 0 then x = 548; y = math.floor((ActiveHealerFrame/4)-(1/5))*(-60) end
			HealingAsssignments.Mainframe.Foreground.Profile[ProfileNum].Template[TemplateNum].Assigments.Content.Frame[ActiveTankFrame].Healer[ActiveHealerFrame]:SetPoint("TOPLEFT", x-12, y-20)
			
			-- add font string
			local HealerFontString = HealingAsssignments.Mainframe.Foreground.Profile[ProfileNum].Template[TemplateNum].Assigments.Content.Frame[ActiveTankFrame].Healer[ActiveHealerFrame]:CreateFontString(nil, "OVERLAY")
			HealerFontString:SetPoint("CENTER", 62, 27)
			HealerFontString:SetFont("Fonts\\FRIZQT__.TTF", 11)
			HealerFontString:SetJustifyH("CENTER")
			HealerFontString:SetText("Healer "..ActiveHealerFrame)
			
			-- reconfigure Slider and Set Database
			HealingAssignmentsTemplates.Profile[ProfileNum].Template[TemplateNum].TankHealer[ActiveTankFrame] = ActiveHealerFrame
			if not HealingAssignmentsTemplates.Profile[ProfileNum].Template[TemplateNum].Tankhealernames then HealingAssignmentsTemplates.Profile[ProfileNum].Template[TemplateNum].Tankhealernames = {} end
			if not HealingAssignmentsTemplates.Profile[ProfileNum].Template[TemplateNum].Tankhealernames[ActiveTankFrame] then HealingAssignmentsTemplates.Profile[ProfileNum].Template[TemplateNum].Tankhealernames[ActiveTankFrame] = {} end
			if not HealingAssignmentsTemplates.Profile[ProfileNum].Template[TemplateNum].Tankhealernames[ActiveTankFrame].Healer then HealingAssignmentsTemplates.Profile[ProfileNum].Template[TemplateNum].Tankhealernames[ActiveTankFrame].Healer = {} end
			HealingAssignmentsTemplates.Profile[ProfileNum].Template[TemplateNum].Tankhealernames[ActiveTankFrame].Healer[ActiveHealerFrame] = DropText
		else getglobal(HealingAsssignments.Mainframe.Foreground.Profile[ProfileNum].Template[TemplateNum].Assigments.Content.Frame[ActiveTankFrame].Healer[ActiveHealerFrame]:GetName().."Text"):SetText(DropText)
			 HealingAssignmentsTemplates.Profile[ProfileNum].Template[TemplateNum].Tankhealernames[ActiveTankFrame].Healer[ActiveHealerFrame] = DropText
		end
	end
end

function HealingAsssignments.Syncframe:TriggerSync()
	if HealingAsssignments.Mainframe.SyncCheckbox:GetChecked() == 1 then
		SendAddonMessage("VHTrigger","trigger", "RAID")
	end
end

function HealingAsssignments.Syncframe:ResetDropdownText(ProfileNum,TemplateNum)
	local TankNum = 0
	local HealerNum = 0
	if HealingAssignmentsTemplates.Profile[ProfileNum].Template[TemplateNum].TankNum then TankNum = HealingAssignmentsTemplates.Profile[ProfileNum].Template[TemplateNum].TankNum end
	for i=1,TankNum do
		HealerNum = HealingAssignmentsTemplates.Profile[ProfileNum].Template[TemplateNum].TankHealer[i]
		getglobal(HealingAsssignments.Mainframe.Foreground.Profile[ProfileNum].Template[TemplateNum].Assigments.Content.Frame[i].Tank[i]:GetName().."Text"):SetText(" ")
		if HealerNum == nil then HealerNum = 0 end
		for j=1,HealerNum do
			getglobal(HealingAsssignments.Mainframe.Foreground.Profile[ProfileNum].Template[TemplateNum].Assigments.Content.Frame[i].Healer[j]:GetName().."Text"):SetText(" ")
		end
	end
end

function HealingAsssignments.Syncframe:PopulateDropdown()
	-- get the number of profiles
	local NumofProfiles = 0
	local info = {};
	for i=1,11 do
		if HealingAssignmentsTemplates.Profile[i].Name ~= " " then 
			info.text = HealingAssignmentsTemplates.Profile[i].Name
			info.checked = false
			info.func = function()
				UIDropDownMenu_SetSelectedID(GlobalDropDownID, this:GetID(), 0);
				HealingAsssignments.Syncframe:ProfileDropdown()
				HealingAsssignments.Syncframe:UpdateDeleteButton()
			end
			UIDropDownMenu_AddButton(info);
		end
	end
end

-- update the profile choose dropdown
function HealingAsssignments.Syncframe:UpdateDropdown()
	local DropDownID = getglobal(HealingAsssignments.Mainframe.ProfileDropdown:GetName())
	GlobalDropDownID = DropDownID
	-- feed the dropdown
	UIDropDownMenu_Initialize(DropDownID, self.PopulateDropdown)
end

function HealingAsssignments.Syncframe:ProfileDropdown()
	local ProfileName = UIDropDownMenu_GetText(getglobal(HealingAsssignments.Mainframe.ProfileDropdown:GetName()))
	local ProfileNumber
	for i=1,11 do
		if HealingAssignmentsTemplates.Profile[i].Name == ProfileName then ProfileNumber = i break end
	end
	
	HealingAsssignments.Syncframe:SelectProfile(ProfileNumber)
end


-- send your profiles and data 
function HealingAsssignments.Syncframe:Send()
	local SendString = " "
	local TankName = " "
	local HealerName = " "
	local TemplateNum = getn(HealingAssignmentsTemplates.Profile[1].Template)
	local TemplateName = " "
	local TemplateNumberString
	
	for n=1,TemplateNum do
		TemplateName = HealingAssignmentsTemplates.Profile[1].Template[n].Name
		local TankNum = HealingAssignmentsTemplates.Profile[1].Template[n].TankNum
		if TankNum == nil or TankNum == 0 then 
			if n<10 then TemplateNumberString = "0"..n else TemplateNumberString = n end
			SendString = " "
			SendAddonMessage("VHA$"..TemplateNumberString.."$"..TemplateName ,SendString, "RAID")	
		end
		for i=1,TankNum do
			SendString = " "
			TankName = getglobal(HealingAsssignments.Mainframe.Foreground.Profile[1].Template[n].Assigments.Content.Frame[i].Tank[i]:GetName().."Text"):GetText(" ")
			if TankName == nil then TankName = " " end
			SendString = i.."#"..TankName.."#"
			local HealerNum = HealingAssignmentsTemplates.Profile[1].Template[n].TankHealer[i]
			if HealerNum == nil then HealerNum = 0 end
			for j=1,HealerNum do
				HealerName = getglobal(HealingAsssignments.Mainframe.Foreground.Profile[1].Template[n].Assigments.Content.Frame[i].Healer[j]:GetName().."Text"):GetText(" ")
				if HealerName == nil then HealerName = " " end
				SendString = SendString..HealerName.."#"
			end
			if n<10 then TemplateNumberString = "0"..n else TemplateNumberString = n end
			SendAddonMessage("VHA$"..TemplateNumberString.."$"..TemplateName ,SendString, "RAID")
		end
	end
end

function HealingAsssignments.Syncframe:Receive(ProfileName,TemplateNum,TemplateName,NameArray)
	-- get Profile Number and set Name
	local ProfileNum = HealingAsssignments.Syncframe:GetProfileNum(ProfileName)
	if ProfileNum ~= 100 then -- if templates are full
		local ActiveTank = tonumber(NameArray[1])
		if ActiveTank == nil then ActiveTank = 0 end
		local Height = 0
		-- add templates
		self:AddTemplate(ProfileNum,TemplateNum,TemplateName) -- works!
		
		-- add dropdowns
		for i=2,getn(NameArray) do
			HealingAsssignments.Syncframe:AddDropdown(ProfileNum,TemplateNum,i,ActiveTank,i-2,NameArray[i])
		end
		
		-- rearrange dropdowns
		if ActiveTank >= 2 then
			for i=1,ActiveTank-1 do
			 Height = Height + HealingAsssignments.Mainframe.Foreground.Profile[ProfileNum].Template[TemplateNum].Assigments.Content.Frame[i]:GetHeight()
			end
			HealingAsssignments.Mainframe.Foreground.Profile[ProfileNum].Template[TemplateNum].Assigments.Content.Frame[ActiveTank]:SetPoint("TOPLEFT", 0, -Height)
		end
		
		-- reconfig height of scrollbar
		Height = 0
		if HealingAsssignments.Mainframe.Foreground.Profile[ProfileNum].Template[TemplateNum].Assigments.Content.Frame ~= nil then  
			for i=1,table.getn(HealingAsssignments.Mainframe.Foreground.Profile[ProfileNum].Template[TemplateNum].Assigments.Content.Frame) do
				Height = Height + HealingAsssignments.Mainframe.Foreground.Profile[ProfileNum].Template[TemplateNum].Assigments.Content.Frame[i]:GetHeight()
			end
		end
		if Height > 300 then HealingAsssignments.Mainframe.Foreground.Profile[ProfileNum].Template[TemplateNum].Assigments.Scrollbar:SetMinMaxValues(0, Height-300) end
		
		HealingAsssignments.Syncframe:SelectProfile(HealingAsssignments.Mainframe.ActiveProfile)
	end
end

function HealingAsssignments.Syncframe:DeleteProfile()
	local ProfileNum = HealingAsssignments.Syncframe:GetProfileNumNonSave(UIDropDownMenu_GetText(getglobal(HealingAsssignments.Mainframe.ProfileDropdown:GetName())))
	if ProfileNum >= 2 and ProfileNum <= 11 then
		for i=1,getn(HealingAsssignments.Mainframe.Foreground.Profile[ProfileNum].Template) do
			HealingAsssignments.Mainframe.Foreground.Profile[ProfileNum].Template[i].Menu.ScriptButton:Hide()
			HealingAsssignments.Mainframe.Foreground.Profile[ProfileNum].Template[i].Menu.ScriptButton:SetParent(nil)
			HealingAsssignments.Mainframe.Foreground.Profile[ProfileNum].Template[i].Menu:Hide()
			HealingAsssignments.Mainframe.Foreground.Profile[ProfileNum].Template[i].Menu:SetParent(nil)
			HealingAsssignments.Mainframe.Foreground.Profile[ProfileNum].Template[i].Assigments:Hide()
			HealingAsssignments.Mainframe.Foreground.Profile[ProfileNum].Template[i].Assigments:SetParent(nil)
			HealingAsssignments.Mainframe.Foreground.Profile[ProfileNum].Template[i] = nil
			HealingAssignmentsTemplates.Profile[ProfileNum] = {}
			HealingAssignmentsTemplates.Profile[ProfileNum].Template = {}
			HealingAssignmentsTemplates.Profile[ProfileNum].Template.TankHealer = {}
			HealingAssignmentsTemplates.Profile[ProfileNum].Template.Name = {}
			HealingAssignmentsTemplates.Profile[ProfileNum].Name = " "
		end
		HealingAsssignments.Syncframe:SelectProfile(1)
		HealingAsssignments.Syncframe:UpdateDropdown()
		HealingAsssignments.Syncframe:UpdateDeleteButton()
	end
end

function HealingAsssignments.Syncframe:UpdateDeleteButton()
	local ProfileName = UIDropDownMenu_GetText(getglobal(HealingAsssignments.Mainframe.ProfileDropdown:GetName()))
	if ProfileName == UnitName("player") then HealingAsssignments.Mainframe.SyncDeleteButton:Disable()
	else HealingAsssignments.Mainframe.SyncDeleteButton:Enable() end
end


-- from healCommm-1.0 addon / lua 5.1 workaround
function strsplit(pString, pPattern)
	local Table = {}
	local fpat = "(.-)" .. pPattern
	local last_end = 1
	local s, e, cap = strfind(pString, fpat, 1)
	while s do
		if s ~= 1 or cap ~= "" then
			table.insert(Table,cap)
		end
		last_end = e+1
		s, e, cap = strfind(pString, fpat, last_end)
	end
	if last_end <= strlen(pString) then
		cap = strfind(pString, last_end)
		table.insert(Table, cap)
	end
	return Table
end
