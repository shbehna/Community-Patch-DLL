-- Babylon

UPDATE Traits
SET InvestmentModifier = '-15'
WHERE Type = 'TRAIT_INGENIOUS' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_CIVS' AND Value= 1 );

-- Babylon 

UPDATE Buildings
SET ExtraCityHitPoints = '75'
WHERE Type = 'BUILDING_WALLS_OF_BABYLON' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_LEADERS' AND Value= 1 );

UPDATE Buildings
SET Defense = '1500'
WHERE Type = 'BUILDING_WALLS_OF_BABYLON' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Buildings
SET SpecialistType = 'SPECIALIST_SCIENTIST'
WHERE Type = 'BUILDING_WALLS_OF_BABYLON' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_LEADERS' AND Value= 1 );

UPDATE Buildings
SET SpecialistCount = '1'
WHERE Type = 'BUILDING_WALLS_OF_BABYLON' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_LEADERS' AND Value= 1 );

-- Mongols
UPDATE Traits
SET BullyAnnex = '1'
WHERE Type = 'TRAIT_TERROR' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_CIVS' AND Value= 1 );

-- Polynesia -- Boost Range of Moai
UPDATE Traits
Set NearbyImprovementBonusRange = '3'
WHERE Type = 'TRAIT_WAYFINDING' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_LEADERS' AND Value= 1 );

UPDATE Traits
Set NearbyImprovementCombatBonus = '20'
WHERE Type = 'TRAIT_WAYFINDING' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_LEADERS' AND Value= 1 );

UPDATE Builds
Set PrereqTech = 'TECH_THE_WHEEL'
WHERE Type = 'BUILD_MOAI' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_LEADERS' AND Value= 1 );

UPDATE Improvements
SET CultureAdjacentSameType = '0'
WHERE Type = 'IMPROVEMENT_MOAI' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_LEADERS' AND Value= 1 );

-- Spain

UPDATE Traits
Set Reconquista = '1'
WHERE Type = 'TRAIT_SEVEN_CITIES' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_LEADERS' AND Value= 1 );

UPDATE Traits
Set NoSpread = '1'
WHERE Type = 'TRAIT_SEVEN_CITIES' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_LEADERS' AND Value= 1 );

UPDATE Traits
Set NaturalWonderFirstFinderGold = '0'
WHERE Type = 'TRAIT_SEVEN_CITIES' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_LEADERS' AND Value= 1 );

UPDATE Traits
Set NaturalWonderSubsequentFinderGold = '0'
WHERE Type = 'TRAIT_SEVEN_CITIES' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_LEADERS' AND Value= 1 );

UPDATE Traits
Set NaturalWonderYieldModifier = '0'
WHERE Type = 'TRAIT_SEVEN_CITIES' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_LEADERS' AND Value= 1 );

UPDATE Traits
Set NaturalWonderHappinessModifier = '0'
WHERE Type = 'TRAIT_SEVEN_CITIES' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_LEADERS' AND Value= 1 );

-- Inca
UPDATE Traits
Set ImprovementMaintenanceModifier = '0'
WHERE Type = 'TRAIT_GREAT_ANDEAN_ROAD' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_LEADERS' AND Value= 1 );

UPDATE Traits
Set NoHillsImprovementMaintenance = '0'
WHERE Type = 'TRAIT_GREAT_ANDEAN_ROAD' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_LEADERS' AND Value= 1 );

UPDATE Traits
Set MountainPass = '1'
WHERE Type = 'TRAIT_GREAT_ANDEAN_ROAD' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_LEADERS' AND Value= 1 );

-- Denmark -- Unique National Epic (Jelling Stones) -- Replace Ski Infantry

-- Korea -- Replace Turtle Ship with UB, adjust UA
UPDATE Trait_SpecialistYieldChanges
Set Yield = '1'
WHERE TraitType = 'TRAIT_SCHOLARS_JADE_HALL' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_LEADERS' AND Value= 1 );

UPDATE Traits
Set TechBoostFromCapitalScienceBuildings = '0'
WHERE Type = 'TRAIT_SCHOLARS_JADE_HALL' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_LEADERS' AND Value= 1 );

UPDATE Traits
Set IsOddEraScaler = '1'
WHERE Type = 'TRAIT_SCHOLARS_JADE_HALL' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_LEADERS' AND Value= 1 );

UPDATE Traits
SET GoldenAgeGreatArtistRateModifier = '50'
WHERE Type = 'TRAIT_SCHOLARS_JADE_HALL' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_LEADERS' AND Value= 1 );

UPDATE Traits
SET GoldenAgeGreatMusicianRateModifier = '50'
WHERE Type = 'TRAIT_SCHOLARS_JADE_HALL' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_LEADERS' AND Value= 1 );

UPDATE Traits
SET GoldenAgeGreatWriterRateModifier = '50'
WHERE Type = 'TRAIT_SCHOLARS_JADE_HALL' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_LEADERS' AND Value= 1 );

INSERT INTO Trait_GoldenAgeGreatPersonRateModifier
	(TraitType, GreatPersonType, Modifier)
VALUES
	('TRAIT_SCHOLARS_JADE_HALL', 'GREATPERSON_ENGINEER', 50),
	('TRAIT_SCHOLARS_JADE_HALL', 'GREATPERSON_SCIENTIST', 50),
	('TRAIT_SCHOLARS_JADE_HALL', 'GREATPERSON_MERCHANT', 50);

-- New Changes

INSERT INTO Improvement_TechYieldChanges
	(ImprovementType, TechType, YieldType, Yield)
VALUES
	('IMPROVEMENT_MOAI', 'TECH_CONSTRUCTION', 'YIELD_PRODUCTION', 1);

INSERT INTO Improvement_YieldAdjacentSameType
	(ImprovementType, YieldType, Yield)
VALUES
	('IMPROVEMENT_MOAI', 'YIELD_CULTURE', 1);

INSERT INTO Building_Flavors
	(BuildingType, FlavorType, Flavor)
VALUES
	('BUILDING_WALLS_OF_BABYLON', 'FLAVOR_HAPPINESS', 40),
	('BUILDING_MISSION', 'FLAVOR_HAPPINESS', 40);

INSERT INTO Improvement_AdjacentImprovementYieldChanges
	(ImprovementType, OtherImprovementType, YieldType, Yield)
VALUES
	('IMPROVEMENT_TERRACE_FARM', 'IMPROVEMENT_FARM', 'YIELD_FOOD', 1);

INSERT INTO Improvement_Yields
	(ImprovementType, YieldType, Yield)
VALUES
	('IMPROVEMENT_TERRACE_FARM', 'YIELD_PRODUCTION', 2),
	('IMPROVEMENT_TERRACE_FARM', 'YIELD_CULTURE', 1),
	('IMPROVEMENT_MOAI', 'YIELD_PRODUCTION', 1);

INSERT INTO Trait_YieldFromConquest
	(TraitType, YieldType, Yield)
VALUES
	('TRAIT_SEVEN_CITIES', 'YIELD_FAITH', 150);

INSERT INTO Trait_YieldFromSettle
	(TraitType, YieldType, Yield)
VALUES
	('TRAIT_SEVEN_CITIES', 'YIELD_FAITH', 40),
	('TRAIT_SEVEN_CITIES', 'YIELD_FOOD', 40);

-- NEW DLC Leader Data and Yields

INSERT INTO Building_Flavors
	(BuildingType, FlavorType, Flavor)
VALUES
	('BUILDING_MISSION', 'FLAVOR_DEFENSE', 50),
	('BUILDING_MISSION', 'FLAVOR_GOLD', 30),
	('BUILDING_MISSION', 'FLAVOR_HAPPINESS', 25),
	('BUILDING_MISSION', 'FLAVOR_RELIGION', 30),
	('BUILDING_JELLING_STONES', 'FLAVOR_CULTURE', 20),
	('BUILDING_JELLING_STONES', 'FLAVOR_GREAT_PEOPLE', 30),
	('BUILDING_JELLING_STONES', 'FLAVOR_NAVAL_GROWTH', 20),
	('BUILDING_JELLING_STONES', 'FLAVOR_GROWTH', 15),
	('BUILDING_SEOWON', 'FLAVOR_SCIENCE', 100),
	('BUILDING_SEOWON', 'FLAVOR_HAPPINESS', 25),
	('BUILDING_YURT', 'FLAVOR_GROWTH', 75),
	('BUILDING_YURT', 'FLAVOR_SCIENCE', 15),
	('BUILDING_YURT', 'FLAVOR_PRODUCTION', 10),
	('BUILDING_YURT', 'FLAVOR_EXPANSION', 10),
	('BUILDING_YURT', 'FLAVOR_I_LAND_TRADE_ROUTE', 10),
	('BUILDING_YURT', 'FLAVOR_I_SEA_TRADE_ROUTE', 10);

INSERT INTO Building_GrowthExtraYield
	(BuildingType, YieldType, Yield)
VALUES
	('BUILDING_MISSION', 'YIELD_GOLD', 300),
	('BUILDING_MISSION', 'YIELD_FAITH', 300);

INSERT INTO Civilization_BuildingClassOverrides
	(CivilizationType, BuildingClassType, BuildingType)
VALUES
	('CIVILIZATION_SPAIN', 'BUILDINGCLASS_CASTLE', 'BUILDING_MISSION'),
	('CIVILIZATION_DENMARK', 'BUILDINGCLASS_LIGHTHOUSE', 'BUILDING_JELLING_STONES'),
	('CIVILIZATION_KOREA', 'BUILDINGCLASS_UNIVERSITY', 'BUILDING_SEOWON'),
	('CIVILIZATION_MONGOL', 'BUILDINGCLASS_GRANARY', 'BUILDING_YURT');

INSERT INTO Building_SeaPlotYieldChanges
	(BuildingType, YieldType, Yield)
VALUES
	('BUILDING_JELLING_STONES', 'YIELD_FOOD', 1),
	('BUILDING_JELLING_STONES', 'YIELD_GOLD', 1);

INSERT INTO Building_YieldFromVictory
	(BuildingType, YieldType, Yield)
VALUES
	('BUILDING_JELLING_STONES', 'YIELD_CULTURE', 5),
	('BUILDING_JELLING_STONES', 'YIELD_PRODUCTION', 5);

INSERT INTO Building_InstantYield
	(BuildingType, YieldType, Yield)
VALUES
	('BUILDING_JELLING_STONES', 'YIELD_CULTURE', 25);

INSERT INTO Building_YieldChanges
	(BuildingType, YieldType, Yield)
VALUES
	('BUILDING_SEOWON', 'YIELD_SCIENCE', 3),
	('BUILDING_SEOWON', 'YIELD_FAITH', 2),
	('BUILDING_JELLING_STONES', 'YIELD_CULTURE', 2),
	('BUILDING_YURT', 'YIELD_FAITH', 1),
	('BUILDING_YURT', 'YIELD_FOOD', 1),
	('BUILDING_WALLS_OF_BABYLON', 'YIELD_SCIENCE', 1);

INSERT INTO Building_GrowthExtraYield
	(BuildingType, YieldType, Yield)
VALUES
	('BUILDING_MISSION', 'YIELD_GOLD', 300),
	('BUILDING_MISSION', 'YIELD_FAITH', 300),
	('BUILDING_SEOWON', 'YIELD_SCIENCE', 50);

INSERT INTO Building_FeatureYieldChanges
	(BuildingType, FeatureType, YieldType, Yield)
VALUES
	('BUILDING_SEOWON', 'FEATURE_JUNGLE', 'YIELD_SCIENCE', 1),
	('BUILDING_SEOWON', 'FEATURE_FOREST', 'YIELD_SCIENCE', 1);

INSERT INTO Building_ClassesNeededInCity
	(BuildingType, BuildingClassType)
VALUES
	('BUILDING_SEOWON', 'BUILDINGCLASS_LIBRARY');

INSERT INTO Building_ResourceYieldChanges
	(BuildingType, ResourceType, YieldType, Yield)
VALUES
	('BUILDING_YURT', 'RESOURCE_HORSE', 'YIELD_FOOD', 1),
	('BUILDING_YURT', 'RESOURCE_SHEEP', 'YIELD_FOOD', 1),
	('BUILDING_YURT', 'RESOURCE_COW', 'YIELD_FOOD', 1),
	('BUILDING_YURT', 'RESOURCE_WHEAT', 'YIELD_FOOD', 1),
	('BUILDING_YURT', 'RESOURCE_DEER', 'YIELD_FOOD', 1),
	('BUILDING_YURT', 'RESOURCE_BISON', 'YIELD_FOOD', 1),
	('BUILDING_YURT', 'RESOURCE_BANANA', 'YIELD_FOOD', 1);

INSERT INTO Trait_MountainRangeYield
	(TraitType, YieldType, Yield)
VALUES
	('TRAIT_GREAT_ANDEAN_ROAD', 'YIELD_GOLD', '2'),
	('TRAIT_GREAT_ANDEAN_ROAD', 'YIELD_SCIENCE', '1'),
	('TRAIT_GREAT_ANDEAN_ROAD', 'YIELD_FAITH', '1');

INSERT INTO Trait_UnimprovedFeatureYieldChanges
	(TraitType, FeatureType, YieldType, Yield)
VALUES
	('TRAIT_WAYFINDING', 'FEATURE_ATOLL', 'YIELD_FOOD', 2);

INSERT INTO Trait_ImprovementYieldChanges
	(TraitType, ImprovementType, YieldType, Yield)
VALUES
	('TRAIT_WAYFINDING', 'IMPROVEMENT_FISHING_BOATS', 'YIELD_FOOD', 2);