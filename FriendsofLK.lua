--- STEAMODDED HEADER
--- MOD_NAME: Friends of LK
--- MOD_ID: FoLK
--- MOD_AUTHOR: [Pentzal]
--- MOD_DESCRIPTION: Adds new options in Customise Deck based on the show "C.R.U.S.A.D.E."! Also features special Bunco compatibility!
----------------------------------------------
------------MOD CODE -------------------------
local buncLoaded = SMODS.Mods.Bunco and SMODS.Mods.Bunco.can_load

SMODS.Atlas{ key = 'SpadesOne', path = 'Spades/Wave1.png', px = 71, py = 95 }
SMODS.Atlas{ key = 'SpadesOneHC', path = 'Spades/Wave1H.png', px = 71, py = 95 }
SMODS.Atlas{ key = 'SpadesOneEC', path = 'Spades/Wave1E.png', px = 71, py = 95 }
SMODS.Atlas{ key = 'SpadesHalberds', path = 'Spades/HalberdWave1.png', px = 71, py = 95 }
SMODS.Atlas{ key = 'SpadesHalberdsHC', path = 'Spades/HalberdWave1H.png', px = 71, py = 95 }

SMODS.Atlas{ key = 'HeartsOne', path = 'Hearts/Wave1.png', px = 71, py = 95 }
SMODS.Atlas{ key = 'HeartsOneHC', path = 'Hearts/Wave1H.png', px = 71, py = 95 }
SMODS.Atlas{ key = 'HeartsOneEC', path = 'Hearts/Wave1E.png', px = 71, py = 95 }
SMODS.Atlas{ key = 'HeartsFleurons', path = 'Hearts/FleuronWave1.png', px = 71, py = 95 }
SMODS.Atlas{ key = 'HeartsFleuronsHC', path = 'Hearts/FleuronWave1H.png', px = 71, py = 95 }

SMODS.Atlas{ key = 'ClubsOne', path = 'Clubs/Wave1.png', px = 71, py = 95 }
SMODS.Atlas{ key = 'ClubsOneHC', path = 'Clubs/Wave1H.png', px = 71, py = 95 }
SMODS.Atlas{ key = 'ClubsOneEC', path = 'Clubs/Wave1E.png', px = 71, py = 95 }

SMODS.Atlas{ key = 'DiamondsOne', path = 'Diamonds/Wave1.png', px = 71, py = 95 }
SMODS.Atlas{ key = 'DiamondsOneHC', path = 'Diamonds/Wave1H.png', px = 71, py = 95 }
SMODS.Atlas{ key = 'DiamondsOneEC', path = 'Diamonds/Wave1E.png', px = 71, py = 95 }

SMODS.Atlas{ key = 'HalberdsOne', path = 'Exotic/HalberdWave1.png', px = 71, py = 95 }
SMODS.Atlas{ key = 'HalberdsOneHC', path = 'Exotic/HalberdWave1H.png', px = 71, py = 95 }
SMODS.Atlas{ key = 'FleuronsOne', path = 'Exotic/FleuronWave1.png', px = 71, py = 95 }
SMODS.Atlas{ key = 'FleuronsOneHC', path = 'Exotic/FleuronWave1H.png', px = 71, py = 95 }

SMODS.DeckSkin{
	key = "SpadesOne",
	suit = "Spades",
    ranks = { "Jack", "Queen", "King" },
	lc_atlas = 'SpadesOne',
	hc_atlas = buncLoaded and 'SpadesOneEC' or 'SpadesOneHC',
	loc_txt = "Friends of LK",
	posStyle = 'collab'
}

SMODS.DeckSkin{
	key = "HeartsOne",
	suit = "Hearts",
    ranks = { "Jack", "Queen", "King" },
	lc_atlas = 'HeartsOne',
	hc_atlas = buncLoaded and 'HeartsOneEC' or 'HeartsOneHC',
	loc_txt = "Friends of LK",
	posStyle = 'collab'
}

SMODS.DeckSkin{
	key = "ClubsOne",
	suit = "Clubs",
    ranks = { "Jack", "Queen", "King" },
	lc_atlas = 'ClubsOne',
	hc_atlas = buncLoaded and 'ClubsOneEC' or 'ClubsOneHC',
	loc_txt = "Friends of LK",
	posStyle = 'collab'
}

SMODS.DeckSkin{
	key = "DiamondsOne",
	suit = "Diamonds",
    ranks = { "Jack", "Queen", "King" },
	lc_atlas = 'DiamondsOne',
	hc_atlas = buncLoaded and 'DiamondsOneEC' or 'DiamondsOneHC',
	loc_txt = "Friends of LK",
	posStyle = 'collab'
}

SMODS.DeckSkin{
	key = "HalberdsOne",
	suit = "bunc_Halberds",
    ranks = { "Jack", "Queen", "King" },
	lc_atlas = 'HalberdsOne',
	hc_atlas = 'HalberdsOneHC',
	loc_txt = "Friends of LK",
	posStyle = 'collab'
}

SMODS.DeckSkin{
	key = "SpadesHalberds",
	suit = "Spades",
	ranks = { "Jack", "Queen", "King" },
	lc_atlas = 'SpadesHalberds',
	hc_atlas = 'SpadesHalberdsHC',
	loc_txt = "Friends of LK (Halberds)",
	posStyle = 'collab'
}

SMODS.DeckSkin{
	key = "FleuronsOne",
	suit = "bunc_Fleurons",
    ranks = { "Jack", "Queen", "King" },
	lc_atlas = 'FleuronsOne',
	hc_atlas = 'FleuronsOneHC',
	loc_txt = "Friends of LK",
	posStyle = 'collab'
}

SMODS.DeckSkin{
	key = "HeartsFleurons",
	suit = "Hearts",
	ranks = { "Jack", "Queen", "King" },
	lc_atlas = 'HeartsFleurons',
	hc_atlas = 'HeartsFleuronsHC',
	loc_txt = "Friends of LK (Fleurons)",
	posStyle = 'collab'
}
----------------------------------------------
------------MOD CODE END----------------------
----------------------------------------------