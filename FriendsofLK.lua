--- STEAMODDED HEADER
--- MOD_NAME: Friends of LK
--- MOD_ID: FoLK
--- PREFIX: folk
--- MOD_AUTHOR: [Pentzal]
--- MOD_DESCRIPTION: Adds new options in Customise Deck based on the show "C.R.U.S.A.D.E."! Also features special Bunco compatibility!
----------------------------------------------
------------MOD CODE -------------------------
local fullRanks = {"Ace", "King", "Queen", "Jack", "10", "9", "8", "7", "6", "5", "4", "3", "2"}
local faceAce = {"Ace", "King", "Queen", "Jack"}
local face = {"King", "Queen", "Jack"}

SMODS.Atlas{ key = 'SpadesOne', px = 71, py = 95, path = 'Spades/Wave1.png' }
SMODS.Atlas{ key = 'SpadesOneHC', px = 71, py = 95, path = 'Spades/Wave1H.png' }
SMODS.Atlas{ key = 'SpadesOneEC', px = 71, py = 95, path = 'Spades/Wave1E.png' }
SMODS.Atlas{ key = 'SpadesHalberds', px = 71, py = 95, path = 'Spades/HalberdWave1.png' }
SMODS.Atlas{ key = 'SpadesHalberdsHC', px = 71, py = 95, path = 'Spades/HalberdWave1H.png' }

SMODS.Atlas{ key = 'HeartsOne', px = 71, py = 95, path = 'Hearts/Wave1.png' }
SMODS.Atlas{ key = 'HeartsOneHC', px = 71, py = 95, path = 'Hearts/Wave1H.png' }
SMODS.Atlas{ key = 'HeartsOneEC', px = 71, py = 95, path = 'Hearts/Wave1E.png' }
SMODS.Atlas{ key = 'HeartsFleurons', px = 71, py = 95, path = 'Hearts/FleuronWave1.png' }
SMODS.Atlas{ key = 'HeartsFleuronsHC', px = 71, py = 95, path = 'Hearts/FleuronWave1H.png' }

SMODS.Atlas{ key = 'ClubsOne', px = 71, py = 95, path = 'Clubs/Wave1.png' }
SMODS.Atlas{ key = 'ClubsOneHC', px = 71, py = 95, path = 'Clubs/Wave1H.png' }
SMODS.Atlas{ key = 'ClubsOneEC', px = 71, py = 95, path = 'Clubs/Wave1E.png' }

SMODS.Atlas{ key = 'DiamondsOne', px = 71, py = 95, path = 'Diamonds/Wave1.png' }
SMODS.Atlas{ key = 'DiamondsOneHC', px = 71, py = 95, path = 'Diamonds/Wave1H.png' }
SMODS.Atlas{ key = 'DiamondsOneEC', px = 71, py = 95, path = 'Diamonds/Wave1E.png' }

SMODS.Atlas{ key = 'HalberdsOne', px = 71, py = 95, path = 'Exotic/HalberdWave1.png' }
SMODS.Atlas{ key = 'HalberdsOneHC', px = 71, py = 95, path = 'Exotic/HalberdWave1H.png' }
SMODS.Atlas{ key = 'FleuronsOne', px = 71, py = 95, path = 'Exotic/FleuronWave1.png' }
SMODS.Atlas{ key = 'FleuronsOneHC', px = 71, py = 95, path = 'Exotic/FleuronWave1H.png' }

SMODS.Atlas{ key = 'ShieldAces', px = 71, py = 95, path = 'ShieldAces.png' }
SMODS.Atlas{ key = 'WandAces', px = 71, py = 95, path = 'Exotic/WandAces.png' }

-- Friends of LK Spades Wave 1
SMODS.DeckSkin{
	key = "SpadesOne",
	suit = "Spades",
	loc_txt = {
		['en-us'] = "Friends of LK"
	},
	palettes = {
		{
			key = 'SpadesOne',
			ranks = face,
			atlas = 'folk_SpadesOne',
			pos_style = 'collab',
			loc_txt = {
				['en-us'] = "Low Contrast Colors"
			},
		},
		{
			key = 'SpadesOneAce',
			ranks = faceAce,
			atlas = 'cards_1',
			pos_style = {
				Jack = { atlas = 'folk_SpadesOne', pos = {x = 0, y = 0} },
				Queen = { atlas = 'folk_SpadesOne', pos = {x = 1, y = 0} },
				King = { atlas = 'folk_SpadesOne', pos = {x = 2, y = 0} },
				Ace = { atlas = 'folk_ShieldAces', pos = {x = 0, y = 0} }
			},
			loc_txt = {
				['en-us'] = "Low Contrast & Emblem"
			},
		},
		{
			key = 'SpadesOneHC',
			ranks = fullRanks,
			display_ranks = face,
			atlas = 'cards_2',
			pos_style = {
				fallback_style = 'deck',
				Jack = { atlas = 'folk_SpadesOneHC', pos = {x = 0, y = 0} },
				Queen = { atlas = 'folk_SpadesOneHC', pos = {x = 1, y = 0} },
				King = { atlas = 'folk_SpadesOneHC', pos = {x = 2, y = 0} }
			},
			loc_txt = {
				['en-us'] = "High Contrast Colors"
			},
		},
		{
			key = 'SpadesOneHCAce',
			ranks = fullRanks,
			display_ranks = faceAce,
			atlas = 'cards_2',
			pos_style = {
				fallback_style = 'deck',
				Jack = { atlas = 'folk_SpadesOneHC', pos = {x = 0, y = 0} },
				Queen = { atlas = 'folk_SpadesOneHC', pos = {x = 1, y = 0} },
				King = { atlas = 'folk_SpadesOneHC', pos = {x = 2, y = 0} },
				Ace = { atlas = 'folk_ShieldAces', pos = {x = 0, y = 1} }
			},
			loc_txt = {
				['en-us'] = "High Contrast & Emblem"
			},
		},
		{
			key = 'SpadesOneEC',
			ranks = fullRanks,
			display_ranks = face,
			atlas = 'cards_2',
			pos_style = {
				fallback_style = 'deck',
				Jack = { atlas = 'folk_SpadesOneEC', pos = {x = 0, y = 0} },
				Queen = { atlas = 'folk_SpadesOneEC', pos = {x = 1, y = 0} },
				King = { atlas = 'folk_SpadesOneEC', pos = {x = 2, y = 0} }
			},
			loc_txt = {
				['en-us'] = "Enhanced Contrast Colors"
			},
		},
		{
			key = 'SpadesOneECAce',
			ranks = fullRanks,
			display_ranks = faceAce,
			atlas = 'cards_2',
			pos_style = {
				fallback_style = 'deck',
				Jack = { atlas = 'folk_SpadesOneEC', pos = {x = 0, y = 0} },
				Queen = { atlas = 'folk_SpadesOneEC', pos = {x = 1, y = 0} },
				King = { atlas = 'folk_SpadesOneEC', pos = {x = 2, y = 0} },
				Ace = { atlas = 'folk_ShieldAces', pos = {x = 0, y = 2} }
			},
			loc_txt = {
				['en-us'] = "Enhanced Contrast & Emblem"
			},
		},
	},
}
-- Friends of LK Spades Wave 1 (Halberd)
SMODS.DeckSkin{
	key = "SpadesHalberds",
	suit = "Spades",
	loc_txt = {
		['en-us'] = "Friends of LK (Halberds)"
	},
	palettes = {
		{
			key = 'SpadesHalberds',
			ranks = face,
			atlas = 'folk_SpadesHalberds',
			pos_style = 'collab',
			loc_txt = {
				['en-us'] = "Low Contrast Colors"
			},
		},
		{
			key = 'SpadesHalberdsAce',
			ranks = faceAce,
			atlas = 'cards_1',
			pos_style = {
				Jack = { atlas = 'folk_SpadesHalberds', pos = {x = 0, y = 0} },
				Queen = { atlas = 'folk_SpadesHalberds', pos = {x = 1, y = 0} },
				King = { atlas = 'folk_SpadesHalberds', pos = {x = 2, y = 0} },
				Ace = { atlas = 'folk_ShieldAces', pos = {x = 0, y = 0} }
			},
			loc_txt = {
				['en-us'] = "Low Contrast & Emblem"
			},
		},
		{
			key = 'SpadesHalberdsHC',
			ranks = fullRanks,
			display_ranks = face,
			atlas = 'cards_2',
			pos_style = {
				fallback_style = 'deck',
				Jack = { atlas = 'folk_SpadesHalberdsHC', pos = {x = 0, y = 0} },
				Queen = { atlas = 'folk_SpadesHalberdsHC', pos = {x = 1, y = 0} },
				King = { atlas = 'folk_SpadesHalberdsHC', pos = {x = 2, y = 0} }
			},
			loc_txt = {
				['en-us'] = "High Contrast Colors"
			},
		},
		{
			key = 'SpadesHalberdsHCAce',
			ranks = fullRanks,
			display_ranks = faceAce,
			atlas = 'cards_2',
			pos_style = {
				fallback_style = 'deck',
				Jack = { atlas = 'folk_SpadesHalberdsHC', pos = {x = 0, y = 0} },
				Queen = { atlas = 'folk_SpadesHalberdsHC', pos = {x = 1, y = 0} },
				King = { atlas = 'folk_SpadesHalberdsHC', pos = {x = 2, y = 0} },
				Ace = { atlas = 'folk_ShieldAces', pos = {x = 0, y = 1} }
			},
			loc_txt = {
				['en-us'] = "High Contrast & Emblem"
			},
		},
	},
}

-- Friends of LK Hearts Wave 1
SMODS.DeckSkin{
	key = "HeartsOne",
	suit = "Hearts",
	loc_txt = {
		['en-us'] = "Friends of LK"
	},
	palettes = {
		{
			key = 'HeartsOne',
			ranks = face,
			atlas = 'folk_HeartsOne',
			pos_style = 'collab',
			loc_txt = {
				['en-us'] = "Low Contrast Colors"
			},
		},
		{
			key = 'HeartsOneAce',
			ranks = faceAce,
			atlas = 'cards_1',
			pos_style = {
				Jack = { atlas = 'folk_HeartsOne', pos = {x = 0, y = 0} },
				Queen = { atlas = 'folk_HeartsOne', pos = {x = 1, y = 0} },
				King = { atlas = 'folk_HeartsOne', pos = {x = 2, y = 0} },
				Ace = { atlas = 'folk_ShieldAces', pos = {x = 1, y = 0} }
			},
			loc_txt = {
				['en-us'] = "Low Contrast & Emblem"
			},
		},
		{
			key = 'HeartsOneHC',
			ranks = fullRanks,
			display_ranks = face,
			atlas = 'cards_2',
			pos_style = {
				fallback_style = 'deck',
				Jack = { atlas = 'folk_HeartsOneHC', pos = {x = 0, y = 0} },
				Queen = { atlas = 'folk_HeartsOneHC', pos = {x = 1, y = 0} },
				King = { atlas = 'folk_HeartsOneHC', pos = {x = 2, y = 0} }
			},
			loc_txt = {
				['en-us'] = "High Contrast Colors"
			},
		},
		{
			key = 'HeartsOneHCAce',
			ranks = fullRanks,
			display_ranks = faceAce,
			atlas = 'cards_2',
			pos_style = {
				fallback_style = 'deck',
				Jack = { atlas = 'folk_HeartsOneHC', pos = {x = 0, y = 0} },
				Queen = { atlas = 'folk_HeartsOneHC', pos = {x = 1, y = 0} },
				King = { atlas = 'folk_HeartsOneHC', pos = {x = 2, y = 0} },
				Ace = { atlas = 'folk_ShieldAces', pos = {x = 1, y = 1} }
			},
			loc_txt = {
				['en-us'] = "High Contrast & Emblem"
			},
		},
		{
			key = 'HeartsOneEC',
			ranks = fullRanks,
			display_ranks = face,
			atlas = 'cards_2',
			pos_style = {
				fallback_style = 'deck',
				Jack = { atlas = 'folk_HeartsOneEC', pos = {x = 0, y = 0} },
				Queen = { atlas = 'folk_HeartsOneEC', pos = {x = 1, y = 0} },
				King = { atlas = 'folk_HeartsOneEC', pos = {x = 2, y = 0} }
			},
			loc_txt = {
				['en-us'] = "Enhanced Contrast Colors"
			},
		},
		{
			key = 'HeartsOneECAce',
			ranks = fullRanks,
			display_ranks = faceAce,
			atlas = 'cards_2',
			pos_style = {
				fallback_style = 'deck',
				Jack = { atlas = 'folk_HeartsOneEC', pos = {x = 0, y = 0} },
				Queen = { atlas = 'folk_HeartsOneEC', pos = {x = 1, y = 0} },
				King = { atlas = 'folk_HeartsOneEC', pos = {x = 2, y = 0} },
				Ace = { atlas = 'folk_ShieldAces', pos = {x = 1, y = 2} }
			},
			loc_txt = {
				['en-us'] = "Enhanced Contrast & Emblem"
			},
		},
	},
}
-- Friends of LK Hearts Wave 1 (Fleuron)
SMODS.DeckSkin{
	key = "HeartsFleurons",
	suit = "Hearts",
	loc_txt = {
		['en-us'] = "Friends of LK (Fleurons)"
	},
	palettes = {
		{
			key = 'HeartsFleurons',
			ranks = face,
			atlas = 'folk_HeartsFleurons',
			pos_style = 'collab',
			loc_txt = {
				['en-us'] = "Low Contrast Colors"
			},
		},
		{
			key = 'HeartsFleuronsAce',
			ranks = faceAce,
			atlas = 'cards_1',
			pos_style = {
				Jack = { atlas = 'folk_HeartsFleurons', pos = {x = 0, y = 0} },
				Queen = { atlas = 'folk_HeartsFleurons', pos = {x = 1, y = 0} },
				King = { atlas = 'folk_HeartsFleurons', pos = {x = 2, y = 0} },
				Ace = { atlas = 'folk_ShieldAces', pos = {x = 1, y = 0} }
			},
			loc_txt = {
				['en-us'] = "Low Contrast & Emblem"
			},
		},
		{
			key = 'HeartsFleuronsHC',
			ranks = fullRanks,
			display_ranks = face,
			atlas = 'cards_2',
			pos_style = {
				fallback_style = 'deck',
				Jack = { atlas = 'folk_HeartsFleuronsHC', pos = {x = 0, y = 0} },
				Queen = { atlas = 'folk_HeartsFleuronsHC', pos = {x = 1, y = 0} },
				King = { atlas = 'folk_HeartsFleuronsHC', pos = {x = 2, y = 0} }
			},
			loc_txt = {
				['en-us'] = "High Contrast Colors"
			},
		},
		{
			key = 'HeartsFleuronsHCAce',
			ranks = fullRanks,
			display_ranks = faceAce,
			atlas = 'cards_2',
			pos_style = {
				fallback_style = 'deck',
				Jack = { atlas = 'folk_HeartsFleuronsHC', pos = {x = 0, y = 0} },
				Queen = { atlas = 'folk_HeartsFleuronsHC', pos = {x = 1, y = 0} },
				King = { atlas = 'folk_HeartsFleuronsHC', pos = {x = 2, y = 0} },
				Ace = { atlas = 'folk_ShieldAces', pos = {x = 1, y = 1} }
			},
			loc_txt = {
				['en-us'] = "High Contrast & Emblem"
			},
		},
	},
}

-- Friends of LK Clubs Wave 1
SMODS.DeckSkin{
	key = "ClubsOne",
	suit = "Clubs",
	loc_txt = {
		['en-us'] = "Friends of LK"
	},
	palettes = {
		{
			key = 'ClubsOne',
			ranks = face,
			atlas = 'folk_ClubsOne',
			pos_style = 'collab',
			loc_txt = {
				['en-us'] = "Low Contrast Colors"
			},
		},
		{
			key = 'ClubsOneAce',
			ranks = faceAce,
			atlas = 'cards_1',
			pos_style = {
				Jack = { atlas = 'folk_ClubsOne', pos = {x = 0, y = 0} },
				Queen = { atlas = 'folk_ClubsOne', pos = {x = 1, y = 0} },
				King = { atlas = 'folk_ClubsOne', pos = {x = 2, y = 0} },
				Ace = { atlas = 'folk_ShieldAces', pos = {x = 0, y = 0} }
			},
			loc_txt = {
				['en-us'] = "Low Contrast & Emblem"
			},
		},
		{
			key = 'ClubsOneHC',
			ranks = fullRanks,
			display_ranks = face,
			atlas = 'cards_2',
			pos_style = {
				fallback_style = 'deck',
				Jack = { atlas = 'folk_ClubsOneHC', pos = {x = 0, y = 0} },
				Queen = { atlas = 'folk_ClubsOneHC', pos = {x = 1, y = 0} },
				King = { atlas = 'folk_ClubsOneHC', pos = {x = 2, y = 0} }
			},
			loc_txt = {
				['en-us'] = "High Contrast Colors"
			},
		},
		{
			key = 'ClubsOneHCAce',
			ranks = fullRanks,
			display_ranks = faceAce,
			atlas = 'cards_2',
			pos_style = {
				fallback_style = 'deck',
				Jack = { atlas = 'folk_ClubsOneHC', pos = {x = 0, y = 0} },
				Queen = { atlas = 'folk_ClubsOneHC', pos = {x = 1, y = 0} },
				King = { atlas = 'folk_ClubsOneHC', pos = {x = 2, y = 0} },
				Ace = { atlas = 'folk_ShieldAces', pos = {x = 0, y = 1} }
			},
			loc_txt = {
				['en-us'] = "High Contrast & Emblem"
			},
		},
		{
			key = 'ClubsOneEC',
			ranks = fullRanks,
			display_ranks = face,
			atlas = 'cards_2',
			pos_style = {
				fallback_style = 'deck',
				Jack = { atlas = 'folk_ClubsOneEC', pos = {x = 0, y = 0} },
				Queen = { atlas = 'folk_ClubsOneEC', pos = {x = 1, y = 0} },
				King = { atlas = 'folk_ClubsOneEC', pos = {x = 2, y = 0} }
			},
			loc_txt = {
				['en-us'] = "Enhanced Contrast Colors"
			},
		},
		{
			key = 'ClubsOneECAce',
			ranks = fullRanks,
			display_ranks = faceAce,
			atlas = 'cards_2',
			pos_style = {
				fallback_style = 'deck',
				Jack = { atlas = 'folk_ClubsOneEC', pos = {x = 0, y = 0} },
				Queen = { atlas = 'folk_ClubsOneEC', pos = {x = 1, y = 0} },
				King = { atlas = 'folk_ClubsOneEC', pos = {x = 2, y = 0} },
				Ace = { atlas = 'folk_ShieldAces', pos = {x = 0, y = 2} }
			},
			loc_txt = {
				['en-us'] = "Enhanced Contrast & Emblem"
			},
		},
	},
}

-- Friends of LK Diamonds Wave 1
SMODS.DeckSkin{
	key = "DiamondsOne",
	suit = "Diamonds",
	loc_txt = {
		['en-us'] = "Friends of LK"
	},
	palettes = {
		{
			key = 'DiamondsOne',
			ranks = face,
			atlas = 'folk_DiamondsOne',
			pos_style = 'collab',
			loc_txt = {
				['en-us'] = "Low Contrast Colors"
			},
		},
		{
			key = 'DiamondsOneAce',
			ranks = faceAce,
			atlas = 'cards_1',
			pos_style = {
				Jack = { atlas = 'folk_DiamondsOne', pos = {x = 0, y = 0} },
				Queen = { atlas = 'folk_DiamondsOne', pos = {x = 1, y = 0} },
				King = { atlas = 'folk_DiamondsOne', pos = {x = 2, y = 0} },
				Ace = { atlas = 'folk_ShieldAces', pos = {x = 0, y = 0} }
			},
			loc_txt = {
				['en-us'] = "Low Contrast & Emblem"
			},
		},
		{
			key = 'DiamondsOneHC',
			ranks = fullRanks,
			display_ranks = face,
			atlas = 'cards_2',
			pos_style = {
				fallback_style = 'deck',
				Jack = { atlas = 'folk_DiamondsOneHC', pos = {x = 0, y = 0} },
				Queen = { atlas = 'folk_DiamondsOneHC', pos = {x = 1, y = 0} },
				King = { atlas = 'folk_DiamondsOneHC', pos = {x = 2, y = 0} }
			},
			loc_txt = {
				['en-us'] = "High Contrast Colors"
			},
		},
		{
			key = 'DiamondsOneHCAce',
			ranks = fullRanks,
			display_ranks = faceAce,
			atlas = 'cards_2',
			pos_style = {
				fallback_style = 'deck',
				Jack = { atlas = 'folk_DiamondsOneHC', pos = {x = 0, y = 0} },
				Queen = { atlas = 'folk_DiamondsOneHC', pos = {x = 1, y = 0} },
				King = { atlas = 'folk_DiamondsOneHC', pos = {x = 2, y = 0} },
				Ace = { atlas = 'folk_ShieldAces', pos = {x = 0, y = 1} }
			},
			loc_txt = {
				['en-us'] = "High Contrast & Emblem"
			},
		},
		{
			key = 'DiamondsOneEC',
			ranks = fullRanks,
			display_ranks = face,
			atlas = 'cards_2',
			pos_style = {
				fallback_style = 'deck',
				Jack = { atlas = 'folk_DiamondsOneEC', pos = {x = 0, y = 0} },
				Queen = { atlas = 'folk_DiamondsOneEC', pos = {x = 1, y = 0} },
				King = { atlas = 'folk_DiamondsOneEC', pos = {x = 2, y = 0} }
			},
			loc_txt = {
				['en-us'] = "Enhanced Contrast Colors"
			},
		},
		{
			key = 'DiamondsOneECAce',
			ranks = fullRanks,
			display_ranks = faceAce,
			atlas = 'cards_2',
			pos_style = {
				fallback_style = 'deck',
				Jack = { atlas = 'folk_DiamondsOneEC', pos = {x = 0, y = 0} },
				Queen = { atlas = 'folk_DiamondsOneEC', pos = {x = 1, y = 0} },
				King = { atlas = 'folk_DiamondsOneEC', pos = {x = 2, y = 0} },
				Ace = { atlas = 'folk_ShieldAces', pos = {x = 0, y = 2} }
			},
			loc_txt = {
				['en-us'] = "Enhanced Contrast & Emblem"
			},
		},
	},
}

-- Friends of LK Halberds Wave 1
SMODS.DeckSkin{
	key = "HalberdsOne",
	suit = "bunc_Halberds",
	loc_txt = {
		['en-us'] = "Friends of LK"
	},
	palettes = {
		{
			key = 'HalberdsOne',
			ranks = face,
			atlas = 'folk_HalberdsOne',
			pos_style = 'collab',
			loc_txt = {
				['en-us'] = "Low Contrast Colors"
			},
		},
		{
			key = 'HalberdsOneAce',
			ranks = faceAce,
			atlas = 'bunco_cards',
			pos_style = {
				Jack = { atlas = 'folk_HalberdsOne', pos = {x = 0, y = 0} },
				Queen = { atlas = 'folk_HalberdsOne', pos = {x = 1, y = 0} },
				King = { atlas = 'folk_HalberdsOne', pos = {x = 2, y = 0} },
				Ace = { atlas = 'folk_WandAces', pos = {x = 1, y = 0} }
			},
			loc_txt = {
				['en-us'] = "Low Contrast & Emblem"
			},
		},
		{
			key = 'HalberdsOneHC',
			ranks = fullRanks,
			display_ranks = face,
			atlas = 'bunco_cards_hc',
			pos_style = {
				fallback_style = 'deck',
				Jack = { atlas = 'folk_HalberdsOneHC', pos = {x = 0, y = 0} },
				Queen = { atlas = 'folk_HalberdsOneHC', pos = {x = 1, y = 0} },
				King = { atlas = 'folk_HalberdsOneHC', pos = {x = 2, y = 0} }
			},
			loc_txt = {
				['en-us'] = "High Contrast Colors"
			},
		},
		{
			key = 'HalberdsOneHCAce',
			ranks = fullRanks,
			display_ranks = faceAce,
			atlas = 'bunco_cards_hc',
			pos_style = {
				fallback_style = 'deck',
				Jack = { atlas = 'folk_HalberdsOneHC', pos = {x = 0, y = 0} },
				Queen = { atlas = 'folk_HalberdsOneHC', pos = {x = 1, y = 0} },
				King = { atlas = 'folk_HalberdsOneHC', pos = {x = 2, y = 0} },
				Ace = { atlas = 'folk_WandAces', pos = {x = 1, y = 1} }
			},
			loc_txt = {
				['en-us'] = "High Contrast & Emblem"
			},
		},
	},
}

-- Friends of LK Fleurons Wave 1
SMODS.DeckSkin{
	key = "FleuronsOne",
	suit = "bunc_Fleurons",
	loc_txt = {
		['en-us'] = "Friends of LK"
	},
	palettes = {
		{
			key = 'FleuronsOne',
			ranks = face,
			atlas = 'folk_FleuronsOne',
			pos_style = 'collab',
			loc_txt = {
				['en-us'] = "Low Contrast Colors"
			},
		},
		{
			key = 'FleuronsOneAce',
			ranks = faceAce,
			atlas = 'bunco_cards',
			pos_style = {
				Jack = { atlas = 'folk_FleuronsOne', pos = {x = 0, y = 0} },
				Queen = { atlas = 'folk_FleuronsOne', pos = {x = 1, y = 0} },
				King = { atlas = 'folk_FleuronsOne', pos = {x = 2, y = 0} },
				Ace = { atlas = 'folk_WandAces', pos = {x = 0, y = 0} }
			},
			loc_txt = {
				['en-us'] = "Low Contrast & Emblem"
			},
		},
		{
			key = 'FleuronsOneHC',
			ranks = fullRanks,
			display_ranks = face,
			atlas = 'bunco_cards_hc',
			pos_style = {
				fallback_style = 'deck',
				Jack = { atlas = 'folk_FleuronsOneHC', pos = {x = 0, y = 0} },
				Queen = { atlas = 'folk_FleuronsOneHC', pos = {x = 1, y = 0} },
				King = { atlas = 'folk_FleuronsOneHC', pos = {x = 2, y = 0} }
			},
			loc_txt = {
				['en-us'] = "High Contrast Colors"
			},
		},
		{
			key = 'FleuronsOneHCAce',
			ranks = fullRanks,
			display_ranks = faceAce,
			atlas = 'bunco_cards_hc',
			pos_style = {
				fallback_style = 'deck',
				Jack = { atlas = 'folk_FleuronsOneHC', pos = {x = 0, y = 0} },
				Queen = { atlas = 'folk_FleuronsOneHC', pos = {x = 1, y = 0} },
				King = { atlas = 'folk_FleuronsOneHC', pos = {x = 2, y = 0} },
				Ace = { atlas = 'folk_WandAces', pos = {x = 0, y = 1} }
			},
			loc_txt = {
				['en-us'] = "High Contrast & Emblem"
			},
		},
	},
}
----------------------------------------------
------------MOD CODE END----------------------
----------------------------------------------