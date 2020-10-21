-- get framexml data before any loadondemand addons load
KethoDoc:PreloadFrames()
KethoDoc:PreloadFrameXML()

KethoDoc.LoadOnDemand = {}

-- this might throw some blizzard errors
function KethoDoc:LoadLodAddons()
	for _, addon in pairs(self.LoadOnDemand[self.branch]) do
		UIParentLoadAddOn(addon)
	end
end

-- 9.0.1 (36230)
KethoDoc.LoadOnDemand.live = {
	"Blizzard_AchievementUI",
	"Blizzard_AdventureMap",
	"Blizzard_AlliedRacesUI",
	"Blizzard_AnimaDiversionUI",
	"Blizzard_APIDocumentation",
	"Blizzard_ArchaeologyUI",
	"Blizzard_ArenaUI",
	"Blizzard_ArtifactUI",
	"Blizzard_AuctionHouseUI",
	"Blizzard_AzeriteEssenceUI",
	"Blizzard_AzeriteRespecUI",
	"Blizzard_AzeriteUI",
	"Blizzard_BarberShopUI",
	"Blizzard_BattlefieldMap",
	"Blizzard_BindingUI",
	"Blizzard_BlackMarketUI",
	"Blizzard_BoostTutorial",
	"Blizzard_Calendar",
	"Blizzard_ChallengesUI",
	-- "Blizzard_CharacterCreate",
	"Blizzard_CharacterCustomize",
	"Blizzard_ChromieTimeUI",
	"Blizzard_ClassTrial",
	"Blizzard_Collections",
	"Blizzard_CombatLog",
	"Blizzard_CombatText",
	"Blizzard_Commentator",
	"Blizzard_Communities",
	"Blizzard_Contribution",
	"Blizzard_CovenantCallings",
	"Blizzard_CovenantPreviewUI",
	"Blizzard_CovenantSanctum",
	"Blizzard_DeathRecap",
	"Blizzard_DebugTools",
	"Blizzard_EncounterJournal",
	"Blizzard_FlightMap",
	"Blizzard_GarrisonTemplates",
	"Blizzard_GarrisonUI",
	"Blizzard_GMChatUI",
	-- "Blizzard_GMSurveyUI",
	"Blizzard_GuildBankUI",
	"Blizzard_GuildControlUI",
	"Blizzard_GuildRecruitmentUI",
	"Blizzard_GuildUI",
	"Blizzard_HybridMinimap",
	"Blizzard_InspectUI",
	"Blizzard_IslandsPartyPoseUI",
	"Blizzard_IslandsQueueUI",
	"Blizzard_ItemInteractionUI",
	"Blizzard_ItemSocketingUI",
	"Blizzard_ItemUpgradeUI",
	"Blizzard_Kiosk",
	"Blizzard_LandingSoulbinds",
	"Blizzard_LookingForGuildUI",
	"Blizzard_MacroUI",
	"Blizzard_MapCanvas",
	"Blizzard_MovePad",
	"Blizzard_NewPlayerExperience",
	"Blizzard_NewPlayerExperienceGuide",
	"Blizzard_ObliterumUI",
	"Blizzard_OrderHallUI",
	"Blizzard_PartyPoseUI",
	"Blizzard_PlayerChoiceUI",
	-- "Blizzard_PTRFeedbackGlue", -- OnlyBetaAndPTR
	"Blizzard_PVPUI",
	"Blizzard_RaidUI",
	"Blizzard_RuneforgeUI",
	"Blizzard_ScrappingMachineUI",
	"Blizzard_SharedMapDataProviders",
	"Blizzard_SocialUI",
	"Blizzard_Soulbinds",
	"Blizzard_SubscriptionInterstitialUI",
	"Blizzard_TalentUI",
	"Blizzard_TalkingHeadUI",
	"Blizzard_TimeManager",
	"Blizzard_TradeSkillUI",
	"Blizzard_TrainerUI",
	"Blizzard_Tutorial",
	"Blizzard_TutorialTemplates",
	"Blizzard_VoidStorageUI",
	"Blizzard_WarfrontsPartyPoseUI",
	"Blizzard_WeeklyRewards",
}

KethoDoc.LoadOnDemand.ptr = KethoDoc.LoadOnDemand.live

KethoDoc.LoadOnDemand.beta = CopyTable(KethoDoc.LoadOnDemand.live)
tinsert(KethoDoc.LoadOnDemand.beta, "Blizzard_CovenantRenown")

-- 1.13.3 (32790)
KethoDoc.LoadOnDemand.classic = {
	"Blizzard_APIDocumentation",
	"Blizzard_AuctionUI",
	"Blizzard_BattlefieldMap",
	"Blizzard_BindingUI",
	"Blizzard_CombatLog",
	"Blizzard_CombatText",
	"Blizzard_Commentator",
	"Blizzard_Communities",
	"Blizzard_CraftUI",
	"Blizzard_DebugTools",
	"Blizzard_FlightMap",
	"Blizzard_GMChatUI",
	"Blizzard_GMSurveyUI",
	"Blizzard_InspectUI",
	"Blizzard_Kiosk",
	"Blizzard_MacroUI",
	"Blizzard_MapCanvas",
	"Blizzard_MovePad",
	"Blizzard_RaidUI",
	"Blizzard_SharedMapDataProviders",
	"Blizzard_SocialUI",
	"Blizzard_TalentUI",
	"Blizzard_TradeSkillUI",
	"Blizzard_TrainerUI",
}
