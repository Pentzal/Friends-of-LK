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

local buncLoaded = SMODS.Mods.Bunco and SMODS.Mods.Bunco.can_load

local suitColor = { HEX("3C4368"), HEX("F03464"), HEX("235955"), HEX("F06B3F"), HEX("D6901A"), HEX("6E3C63") }
local suitColorHC = { HEX("374649"), HEX("F83B2F"), HEX("007BC7"), HEX("FFA300"), HEX("DBB529"), HEX("993283") }
local suitColorEC = { HEX("5D55A6"), HEX("EE151B"), HEX("197F77"), HEX("E56B10") }

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

-- Spades Wave 1
SMODS.DeckSkin{
	key = "SpadesOne",
	suit = "Spades",
	loc_txt = {
		['en-us'] = "Friends of LK"
	},
	palettes = {
		{
			key = 'lc',
			ranks = face,
			atlas = 'folk_SpadesOne',
			pos_style = 'collab',
			loc_txt = {
				['en-us'] = "Low Contrast Colors"
			},
			colour = suitColor[1]
		},
		{
			key = 'lcAce',
			ranks = faceAce,
			atlas = 'folk_SpadesOne',
			pos_style = {
				fallback_style = 'collab',
				Ace = { atlas = 'folk_ShieldAces', pos = {x = 0, y = 0} }
			},
			loc_txt = {
				['en-us'] = "Low Contrast & Emblem"
			},
			colour = suitColor[1]
		},
		{
			key = 'hc',
			ranks = face,
			atlas = 'folk_SpadesOneHC',
			pos_style = 'collab',
			loc_txt = {
				['en-us'] = "High Contrast Colors"
			},
			suit_icon = {
				atlas = 'ui_2',
				pos = { x = 3, y = 1 }
			},
			hc_default = true,
			colour = suitColorHC[1]
		},
		{
			key = 'hcAce',
			ranks = faceAce,
			atlas = 'folk_SpadesOneHC',
			pos_style = {
				fallback_style = 'collab',
				Ace = { atlas = 'folk_ShieldAces', pos = {x = 0, y = 1} }
			},
			loc_txt = {
				['en-us'] = "High Contrast & Emblem"
			},
			suit_icon = {
				atlas = 'ui_2',
				pos = { x = 3, y = 1 }
			},
			hc_default = true,
			colour = suitColorHC[1]
		}
	}
}
-- Spades (Halberds)
SMODS.DeckSkin{
	key = "SpadesHalberds",
	suit = "Spades",
	loc_txt = {
		['en-us'] = "Friends of LK (Exotic)"
	},
	palettes = {
		{
			key = 'lc',
			ranks = face,
			atlas = 'folk_SpadesHalberds',
			pos_style = 'collab',
			loc_txt = {
				['en-us'] = "Low Contrast Colors"
			},
			colour = suitColor[1]
		},
		{
			key = 'lcAce',
			ranks = faceAce,
			atlas = 'folk_SpadesHalberds',
			pos_style = {
				fallback_style = 'collab',
				Ace = { atlas = 'folk_ShieldAces', pos = {x = 0, y = 0} }
			},
			loc_txt = {
				['en-us'] = "Low Contrast & Emblem"
			},
			colour = suitColor[1]
		},
		{
			key = 'hc',
			ranks = face,
			atlas = 'folk_SpadesHalberdsHC',
			pos_style = 'collab',
			loc_txt = {
				['en-us'] = "High Contrast Colors"
			},
			suit_icon = {
				atlas = 'ui_2',
				pos = { x = 3, y = 1 }
			},
			hc_default = true,
			colour = suitColorHC[1]
		},
		{
			key = 'hcAce',
			ranks = faceAce,
			atlas = 'folk_SpadesHalberdsHC',
			pos_style = {
				fallback_style = 'collab',
				Ace = { atlas = 'folk_ShieldAces', pos = {x = 0, y = 1} }
			},
			loc_txt = {
				['en-us'] = "High Contrast & Emblem"
			},
			suit_icon = {
				atlas = 'ui_2',
				pos = { x = 3, y = 1 }
			},
			hc_default = true,
			colour = suitColorHC[1]
		}
	}
}

-- Hearts Wave 1
SMODS.DeckSkin{
	key = "HeartsOne",
	suit = "Hearts",
	loc_txt = {
		['en-us'] = "Friends of LK"
	},
	palettes = {
		{
			key = 'lc',
			ranks = face,
			atlas = 'folk_HeartsOne',
			pos_style = 'collab',
			loc_txt = {
				['en-us'] = "Low Contrast Colors"
			},
			colour = suitColor[2]
		},
		{
			key = 'lcAce',
			ranks = faceAce,
			atlas = 'folk_HeartsOne',
			pos_style = {
				fallback_style = 'collab',
				Ace = { atlas = 'folk_ShieldAces', pos = {x = 1, y = 0} }
			},
			loc_txt = {
				['en-us'] = "Low Contrast & Emblem"
			},
			colour = suitColor[2]
		},
		{
			key = 'hc',
			ranks = face,
			atlas = 'folk_HeartsOneHC',
			pos_style = 'collab',
			loc_txt = {
				['en-us'] = "High Contrast Colors"
			},
			suit_icon = {
				atlas = 'ui_2',
				pos = { x = 0, y = 1 }
			},
			hc_default = true,
			colour = suitColorHC[2]
		},
		{
			key = 'hcAce',
			ranks = faceAce,
			atlas = 'folk_HeartsOneHC',
			pos_style = {
				fallback_style = 'collab',
				Ace = { atlas = 'folk_ShieldAces', pos = {x = 1, y = 1} }
			},
			loc_txt = {
				['en-us'] = "High Contrast & Emblem"
			},
			suit_icon = {
				atlas = 'ui_2',
				pos = { x = 0, y = 1 }
			},
			hc_default = true,
			colour = suitColorHC[2]
		}
	}
}
-- Hearts (Fleurons)
SMODS.DeckSkin{
	key = "HeartsFleurons",
	suit = "Hearts",
	loc_txt = {
		['en-us'] = "Friends of LK (Exotic)"
	},
	palettes = {
		{
			key = 'lc',
			ranks = face,
			atlas = 'folk_HeartsFleurons',
			pos_style = 'collab',
			loc_txt = {
				['en-us'] = "Low Contrast Colors"
			},
			colour = suitColor[2]
		},
		{
			key = 'lcAce',
			ranks = faceAce,
			atlas = 'folk_HeartsFleurons',
			pos_style = {
				fallback_style = 'collab',
				Ace = { atlas = 'folk_ShieldAces', pos = {x = 1, y = 0} }
			},
			loc_txt = {
				['en-us'] = "Low Contrast & Emblem"
			},
			colour = suitColor[2]
		},
		{
			key = 'hc',
			ranks = face,
			atlas = 'folk_HeartsFleuronsHC',
			pos_style = 'collab',
			loc_txt = {
				['en-us'] = "High Contrast Colors"
			},
			suit_icon = {
				atlas = 'ui_2',
				pos = { x = 0, y = 1 }
			},
			hc_default = true,
			colour = suitColorHC[2]
		},
		{
			key = 'hcAce',
			ranks = faceAce,
			atlas = 'folk_HeartsFleuronsHC',
			pos_style = {
				fallback_style = 'collab',
				Ace = { atlas = 'folk_ShieldAces', pos = {x = 1, y = 1} }
			},
			loc_txt = {
				['en-us'] = "High Contrast & Emblem"
			},
			suit_icon = {
				atlas = 'ui_2',
				pos = { x = 0, y = 1 }
			},
			hc_default = true,
			colour = suitColorHC[2]
		}
	}
}

-- Clubs Wave 1
SMODS.DeckSkin{
	key = "ClubsOne",
	suit = "Clubs",
	loc_txt = {
		['en-us'] = "Friends of LK"
	},
	palettes = {
		{
			key = 'lc',
			ranks = face,
			atlas = 'folk_ClubsOne',
			pos_style = 'collab',
			loc_txt = {
				['en-us'] = "Low Contrast Colors"
			},
			colour = suitColor[3]
		},
		{
			key = 'lcAce',
			ranks = faceAce,
			atlas = 'folk_ClubsOne',
			pos_style = {
				fallback_style = 'collab',
				Ace = { atlas = 'folk_ShieldAces', pos = {x = 2, y = 0} }
			},
			loc_txt = {
				['en-us'] = "Low Contrast & Emblem"
			},
			colour = suitColor[3]
		},
		{
			key = 'hc',
			ranks = face,
			atlas = 'folk_ClubsOneHC',
			pos_style = 'collab',
			loc_txt = {
				['en-us'] = "High Contrast Colors"
			},
			suit_icon = {
				atlas = 'ui_2',
				pos = { x = 2, y = 1 }
			},
			hc_default = true,
			colour = suitColorHC[3]
		},
		{
			key = 'hcAce',
			ranks = faceAce,
			atlas = 'folk_ClubsOneHC',
			pos_style = {
				fallback_style = 'collab',
				Ace = { atlas = 'folk_ShieldAces', pos = {x = 2, y = 1} }
			},
			loc_txt = {
				['en-us'] = "High Contrast & Emblem"
			},
			suit_icon = {
				atlas = 'ui_2',
				pos = { x = 2, y = 1 }
			},
			hc_default = true,
			colour = suitColorHC[3]
		}
	}
}

-- Diamonds Wave 1
SMODS.DeckSkin{
	key = "DiamondsOne",
	suit = "Diamonds",
	loc_txt = {
		['en-us'] = "Friends of LK"
	},
	palettes = {
		{
			key = 'lc',
			ranks = face,
			atlas = 'folk_DiamondsOne',
			pos_style = 'collab',
			loc_txt = {
				['en-us'] = "Low Contrast Colors"
			},
			colour = suitColor[4]
		},
		{
			key = 'lcAce',
			ranks = faceAce,
			atlas = 'folk_DiamondsOne',
			pos_style = {
				fallback_style = 'collab',
				Ace = { atlas = 'folk_ShieldAces', pos = {x = 3, y = 0} }
			},
			loc_txt = {
				['en-us'] = "Low Contrast & Emblem"
			},
			colour = suitColor[4]
		},
		{
			key = 'hc',
			ranks = face,
			atlas = 'folk_DiamondsOneHC',
			pos_style = 'collab',
			loc_txt = {
				['en-us'] = "High Contrast Colors"
			},
			suit_icon = {
				atlas = 'ui_2',
				pos = { x = 1, y = 1 }
			},
			hc_default = true,
			colour = suitColorHC[4]
		},
		{
			key = 'hcAce',
			ranks = faceAce,
			atlas = 'folk_DiamondsOneHC',
			pos_style = {
				fallback_style = 'collab',
				Ace = { atlas = 'folk_ShieldAces', pos = {x = 3, y = 1} }
			},
			loc_txt = {
				['en-us'] = "High Contrast & Emblem"
			},
			suit_icon = {
				atlas = 'ui_2',
				pos = { x = 1, y = 1 }
			},
			hc_default = true,
			colour = suitColorHC[4]
		}
	}
}
---- BUNCO COMPAT
if buncLoaded then
	SMODS.DeckSkin.add_palette(SMODS.DeckSkins['folk_SpadesOne'], -- Spades
	{	key = 'recast_contrast',
		ranks = fullRanks,
		display_ranks = face,
		atlas = 'bunc_bunco_resprites_enhanced_contrast',
		pos_style = {
			fallback_style = 'deck',
			Jack = { atlas = 'folk_SpadesOneEC', pos = {x = 0, y = 0} },
			Queen = { atlas = 'folk_SpadesOneEC', pos = {x = 1, y = 0} },
			King = { atlas = 'folk_SpadesOneEC', pos = {x = 2, y = 0} },
		},
		loc_txt = {
			['en-us'] = "Recast Contrast Colors"
		},
		suit_icon = {
			atlas = 'bunc_bunco_resprites_enhanced_contrast_ui'
		},
		colour = suitColorEC[1]
	})
	SMODS.DeckSkin.add_palette(SMODS.DeckSkins['folk_SpadesOne'], -- Spades (Ace)
	{	key = 'recast_contrast_ace',
		ranks = fullRanks,
		display_ranks = faceAce,
		atlas = 'bunc_bunco_resprites_enhanced_contrast',
		pos_style = {
			fallback_style = 'deck',
			Jack = { atlas = 'folk_SpadesOneEC', pos = {x = 0, y = 0} },
			Queen = { atlas = 'folk_SpadesOneEC', pos = {x = 1, y = 0} },
			King = { atlas = 'folk_SpadesOneEC', pos = {x = 2, y = 0} },
			Ace = { atlas = 'folk_ShieldAces', pos = {x = 0, y = 2} }
		},
		loc_txt = {
			['en-us'] = "Recast Contrast & Emblem"
		},
		suit_icon = {
			atlas = 'bunc_bunco_resprites_enhanced_contrast_ui'
		},
		colour = suitColorEC[1]
	})

	SMODS.DeckSkin.add_palette(SMODS.DeckSkins['folk_HeartsOne'], -- Hearts
	{	key = 'recast_contrast',
		ranks = fullRanks,
		display_ranks = face,
		atlas = 'bunc_bunco_resprites_enhanced_contrast',
		pos_style = {
			fallback_style = 'deck',
			Jack = { atlas = 'folk_HeartsOneEC', pos = {x = 0, y = 0} },
			Queen = { atlas = 'folk_HeartsOneEC', pos = {x = 1, y = 0} },
			King = { atlas = 'folk_HeartsOneEC', pos = {x = 2, y = 0} },
		},
		loc_txt = {
			['en-us'] = "Recast Contrast Colors"
		},
		suit_icon = {
			atlas = 'bunc_bunco_resprites_enhanced_contrast_ui'
		},
		colour = suitColorEC[2]
	})
	SMODS.DeckSkin.add_palette(SMODS.DeckSkins['folk_HeartsOne'], -- Hearts (Ace)
	{	key = 'recast_contrast_ace',
		ranks = fullRanks,
		display_ranks = faceAce,
		atlas = 'bunc_bunco_resprites_enhanced_contrast',
		pos_style = {
			fallback_style = 'deck',
			Jack = { atlas = 'folk_HeartsOneEC', pos = {x = 0, y = 0} },
			Queen = { atlas = 'folk_HeartsOneEC', pos = {x = 1, y = 0} },
			King = { atlas = 'folk_HeartsOneEC', pos = {x = 2, y = 0} },
			Ace = { atlas = 'folk_ShieldAces', pos = {x = 1, y = 2} }
		},
		loc_txt = {
			['en-us'] = "Recast Contrast & Emblem"
		},
		suit_icon = {
			atlas = 'bunc_bunco_resprites_enhanced_contrast_ui'
		},
		colour = suitColorEC[2]
	})

	SMODS.DeckSkin.add_palette(SMODS.DeckSkins['folk_ClubsOne'], -- Clubs
	{	key = 'recast_contrast',
		ranks = fullRanks,
		display_ranks = face,
		atlas = 'bunc_bunco_resprites_enhanced_contrast',
		pos_style = {
			fallback_style = 'deck',
			Jack = { atlas = 'folk_ClubsOneEC', pos = {x = 0, y = 0} },
			Queen = { atlas = 'folk_ClubsOneEC', pos = {x = 1, y = 0} },
			King = { atlas = 'folk_ClubsOneEC', pos = {x = 2, y = 0} },
		},
		loc_txt = {
			['en-us'] = "Recast Contrast Colors"
		},
		suit_icon = {
			atlas = 'bunc_bunco_resprites_enhanced_contrast_ui'
		},
		colour = suitColorEC[3]
	})
	SMODS.DeckSkin.add_palette(SMODS.DeckSkins['folk_ClubsOne'], -- Clubs (Ace)
	{
		key = 'recast_contrast_ace',
		ranks = fullRanks,
		display_ranks = faceAce,
		atlas = 'bunc_bunco_resprites_enhanced_contrast',
		pos_style = {
			fallback_style = 'deck',
			Jack = { atlas = 'folk_ClubsOneEC', pos = {x = 0, y = 0} },
			Queen = { atlas = 'folk_ClubsOneEC', pos = {x = 1, y = 0} },
			King = { atlas = 'folk_ClubsOneEC', pos = {x = 2, y = 0} },
			Ace = { atlas = 'folk_ShieldAces', pos = {x = 2, y = 2} }
		},
		loc_txt = {
			['en-us'] = "Recast Contrast & Emblem"
		},
		suit_icon = {
			atlas = 'bunc_bunco_resprites_enhanced_contrast_ui'
		},
		colour = suitColorEC[3]
	})

	SMODS.DeckSkin.add_palette(SMODS.DeckSkins['folk_DiamondsOne'], -- Diamonds
	{ 	key = 'recast_contrast',
		ranks = fullRanks,
		display_ranks = face,
		atlas = 'bunc_bunco_resprites_enhanced_contrast',
		pos_style = {
			fallback_style = 'deck',
			Jack = { atlas = 'folk_DiamondsOneEC', pos = {x = 0, y = 0} },
			Queen = { atlas = 'folk_DiamondsOneEC', pos = {x = 1, y = 0} },
			King = { atlas = 'folk_DiamondsOneEC', pos = {x = 2, y = 0} },
		},
		loc_txt = {
			['en-us'] = "Recast Contrast Colors"
		},
		suit_icon = {
			atlas = 'bunc_bunco_resprites_enhanced_contrast_ui'
		},
		colour = suitColorEC[4]
	})
	SMODS.DeckSkin.add_palette(SMODS.DeckSkins['folk_DiamondsOne'], -- Diamonds (Ace)
	{	key = 'recast_contrast_ace',
		ranks = fullRanks,
		display_ranks = faceAce,
		atlas = 'bunc_bunco_resprites_enhanced_contrast',
		pos_style = {
			fallback_style = 'deck',
			Jack = { atlas = 'folk_DiamondsOneEC', pos = {x = 0, y = 0} },
			Queen = { atlas = 'folk_DiamondsOneEC', pos = {x = 1, y = 0} },
			King = { atlas = 'folk_DiamondsOneEC', pos = {x = 2, y = 0} },
			Ace = { atlas = 'folk_ShieldAces', pos = {x = 3, y = 2} }
		},
		loc_txt = {
			['en-us'] = "Recast Contrast & Emblem"
		},
		suit_icon = {
			atlas = 'bunc_bunco_resprites_enhanced_contrast_ui'
		},
		colour = suitColorEC[4]
	})

	SMODS.DeckSkin{ -- Fleurons
		key = "FleuronsOne",
		suit = "bunc_Fleurons",
		loc_txt = {
			['en-us'] = "Friends of LK"
		},
		palettes = {
			{
				key = 'lc',
				ranks = face,
				atlas = 'folk_FleuronsOne',
				pos_style = 'collab',
				loc_txt = {
					['en-us'] = "Low Contrast Colors"
				},
				colour = suitColor[5]
			},
			{
				key = 'lcAce',
				ranks = faceAce,
				atlas = 'folk_FleuronsOne',
				pos_style = {
					fallback_style = 'collab',
					Ace = { atlas = 'folk_WandAces', pos = {x = 0, y = 0} }
				},
				loc_txt = {
					['en-us'] = "Low Contrast & Emblem"
				},
				suit_icon = {
					atlas = 'bunc_bunco_suits',
					pos = { x = 0, y = 0 }
				},
				colour = suitColor[5]
			},
			{
				key = 'hc',
				ranks = face,
				atlas = 'folk_FleuronsOneHC',
				pos_style = 'collab',
				loc_txt = {
					['en-us'] = "High Contrast Colors"
				},
				hc_default = true,
				colour = suitColorHC[5]
			},
			{
				key = 'hcAce',
				ranks = faceAce,
				atlas = 'folk_FleuronsOneHC',
				pos_style = {
					fallback_style = 'collab',
					Ace = { atlas = 'folk_WandAces', pos = {x = 0, y = 1} }
				},
				loc_txt = {
					['en-us'] = "High Contrast & Emblem"
				},
				suit_icon = {
					atlas = 'bunc_bunco_suits_hc',
					pos = { x = 0, y = 0 }
				},
				hc_default = true,
				colour = suitColorHC[5]
			}
		}
	}

	SMODS.DeckSkin{ -- Halberds
		key = "HalberdsOne",
		suit = "bunc_Halberds",
		loc_txt = {
			['en-us'] = "Friends of LK"
		},
		palettes = {
			{
				key = 'lc',
				ranks = face,
				atlas = 'folk_HalberdsOne',
				pos_style = 'collab',
				loc_txt = {
					['en-us'] = "Low Contrast Colors"
				},
				colour = suitColor[6]
			},
			{
				key = 'lcAce',
				ranks = faceAce,
				atlas = 'folk_HalberdsOne',
				pos_style = {
					fallback_style = 'collab',
					Ace = { atlas = 'folk_WandAces', pos = {x = 1, y = 0} }
				},
				loc_txt = {
					['en-us'] = "Low Contrast & Emblem"
				},
				suit_icon = {
					atlas = 'bunc_bunco_suits',
					pos = { x = 1, y = 0 }
				},
				colour = suitColor[6]
			},
			{
				key = 'hc',
				ranks = face,
				atlas = 'folk_HalberdsOneHC',
				pos_style = 'collab',
				loc_txt = {
					['en-us'] = "High Contrast Colors"
				},
				hc_default = true,
				colour = suitColorHC[6]
			},
			{
				key = 'hcAce',
				ranks = faceAce,
				atlas = 'folk_HalberdsOneHC',
				pos_style = {
					fallback_style = 'collab',
					Ace = { atlas = 'folk_WandAces', pos = {x = 1, y = 1} }
				},
				loc_txt = {
					['en-us'] = "High Contrast & Emblem"
				},
				suit_icon = {
					atlas = 'bunc_bunco_suits_hc',
					pos = { x = 1, y = 0 }
				},
				hc_default = true,
				colour = suitColorHC[6]
			}
		}
	}
end
----------------------------------------------
------------MOD CODE END----------------------
----------------------------------------------