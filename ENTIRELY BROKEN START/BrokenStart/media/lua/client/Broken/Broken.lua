--***********************************************************
--**                                          NOCTURNE XIII                                          **
--***********************************************************

Broken = {};
Broken.characterInfo = nil;

Broken.onNewGame = function()


	-- START
	----------------------------------------------------------------------------
	-- PlayerObj
	local player = getPlayer();
	
	-- MEDSUPPLIES LIST
	Broken.medsupplies = {"Base.AlcoholBandage","Base.Disinfectant","Base.Bandaid","Base.Antibiotics","Base.Pills"};
	
	-- BAG
	local bag = player:getInventory():AddItem("Base.Bag_ALICEpack_Army");
	----------------------------------------------------------------------------


	-- BAG ITEMS
	----------------------------------------------------------------------------
	-- UTILITY
	bag:getItemContainer():AddItem("Base.Lighter");
	bag:getItemContainer():AddItem("Base.TinOpener");

	-- WHISKEY :)
	bag:getItemContainer():AddItem("Base.WhiskeyFull");

	-- CIGARETTES
	bag:getItemContainer():AddItem("Base.Cigarettes");
	bag:getItemContainer():AddItem("Base.Cigarettes");

	-- WEAPONS | MELEE
	bag:getItemContainer():AddItem("Base.Katana");
	bag:getItemContainer():AddItem("Base.Katana");
	bag:getItemContainer():AddItem("Base.Axe");

	-- WEAPONS | THROWABLE
	bag:getItemContainer():AddItem("Base.Molotov");

	-- MUNITIONS
	bag:getItemContainer():AddItem("Base.ShotgunSawnoff");
	bag:getItemContainer():AddItem("Base.ShotgunShellsBox");

	-- FOOD & DRINK
	bag:getItemContainer():AddItem("Base.CannedCornedBeef");
	bag:getItemContainer():AddItem("Base.CannedCornedBeef");
	bag:getItemContainer():AddItem("Base.CannedCornedBeef");
	bag:getItemContainer():AddItem("Base.WaterBottleFull");

	-- MEDICAL
	local FirstAidKit = player:getInventory():AddItem("Base.FirstAidKit");
	FirstAidKit:getItemContainer():AddItem("Base.SutureNeedle");
	FirstAidKit:getItemContainer():AddItem("Base.Tweezers");

	-- MEDKIT FILL
	for i , item in pairs(Broken.medsupplies) do
		FirstAidKit:getItemContainer():AddItems(item,3);
	end

	-- ADD MEDKIT TO BAG
	bag:getItemContainer():AddItem(FirstAidKit);
	----------------------------------------------------------------------------


	-- FINAL
	----------------------------------------------------------------------------
	-- WEAR BAG
	player:setClothingItem_Back(bag);
	----------------------------------------------------------------------------

end

Broken.OnGameStart = function()

	-- TODO

end

Events.OnNewGame.Add(Broken.onNewGame);

Events.OnGameStart.Add(Broken.OnGameStart);
