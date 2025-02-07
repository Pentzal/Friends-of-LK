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

SMODS.Atlas{ key = 'FoLKSpades', px = 71, py = 95, path = 'Spades/Wave1.png' }
SMODS.Atlas{ key = 'FoLKSpadesHC', px = 71, py = 95, path = 'Spades/Wave1H.png' }
SMODS.Atlas{ key = 'FoLKSpadesEC', px = 71, py = 95, path = 'Spades/Wave1E.png' }
SMODS.Atlas{ key = 'FoLKSpadesH', px = 71, py = 95, path = 'Spades/HalberdWave1.png' }
SMODS.Atlas{ key = 'FoLKSpadesHHC', px = 71, py = 95, path = 'Spades/HalberdWave1H.png' }

SMODS.Atlas{ key = 'FoLKHearts', px = 71, py = 95, path = 'Hearts/Wave1.png' }
SMODS.Atlas{ key = 'FoLKHeartsHC', px = 71, py = 95, path = 'Hearts/Wave1H.png' }
SMODS.Atlas{ key = 'FoLKHeartsEC', px = 71, py = 95, path = 'Hearts/Wave1E.png' }
SMODS.Atlas{ key = 'FoLKHeartsF', px = 71, py = 95, path = 'Hearts/FleuronWave1.png' }
SMODS.Atlas{ key = 'FoLKHeartsFHC', px = 71, py = 95, path = 'Hearts/FleuronWave1H.png' }

SMODS.Atlas{ key = 'FoLKClubs', px = 71, py = 95, path = 'Clubs/Wave1.png' }
SMODS.Atlas{ key = 'FoLKClubsHC', px = 71, py = 95, path = 'Clubs/Wave1H.png' }
SMODS.Atlas{ key = 'FoLKClubsEC', px = 71, py = 95, path = 'Clubs/Wave1E.png' }

SMODS.Atlas{ key = 'FoLKDiamonds', px = 71, py = 95, path = 'Diamonds/Wave1.png' }
SMODS.Atlas{ key = 'FoLKDiamondsHC', px = 71, py = 95, path = 'Diamonds/Wave1H.png' }
SMODS.Atlas{ key = 'FoLKDiamondsEC', px = 71, py = 95, path = 'Diamonds/Wave1E.png' }



SMODS.Atlas{ key = 'ShieldAces', px = 71, py = 95, path = 'ShieldAces.png'}

-- Friends of LK Spades Wave 1
SMODS.DeckSkin{
	key = "FoLKSpades",
	suit = "Spades",
	loc_txt = {
		['en-us'] = "Friends of LK"
	},
	palettes = {
		{
			key = 'FoLKSpades',
			ranks = face,
			atlas = 'folk_FoLKSpades',
			pos_style = 'collab',
			loc_txt = {
				['en-us'] = "Low Contrast Colors"
			},
		},
		{
			key = 'FoLKSpadesAce',
			ranks = faceAce,
			atlas = 'cards_1',
			pos_style = {
				Jack = { atlas = 'folk_FoLKSpades', pos = {x = 0, y = 0} },
				Queen = { atlas = 'folk_FoLKSpades', pos = {x = 1, y = 0} },
				King = { atlas = 'folk_FoLKSpades', pos = {x = 2, y = 0} },
				Ace = { atlas = 'folk_ShieldAces', pos = {x = 0, y = 0} }
			},
			loc_txt = {
				['en-us'] = "Low Contrast & Shield"
			},
		},
		{
			key = 'FoLKSpadesHC',
			ranks = fullRanks,
			display_ranks = face,
			atlas = 'cards_2',
			pos_style = {
				fallback_style = 'deck',
				Jack = { atlas = 'folk_FoLKSpadesHC', pos = {x = 0, y = 0} },
				Queen = { atlas = 'folk_FoLKSpadesHC', pos = {x = 1, y = 0} },
				King = { atlas = 'folk_FoLKSpadesHC', pos = {x = 2, y = 0} }
			},
			loc_txt = {
				['en-us'] = "High Contrast Colors"
			},
		},
		{
			key = 'FoLKSpadesHCAce',
			ranks = fullRanks,
			display_ranks = faceAce,
			atlas = 'cards_2',
			pos_style = {
				fallback_style = 'deck',
				Jack = { atlas = 'folk_FoLKSpadesHC', pos = {x = 0, y = 0} },
				Queen = { atlas = 'folk_FoLKSpadesHC', pos = {x = 1, y = 0} },
				King = { atlas = 'folk_FoLKSpadesHC', pos = {x = 2, y = 0} },
				Ace = { atlas = 'folk_ShieldAces', pos = {x = 0, y = 1} }
			},
			loc_txt = {
				['en-us'] = "High Contrast & Shield"
			},
		},
		{
			key = 'FoLKSpadesEC',
			ranks = fullRanks,
			display_ranks = face,
			atlas = 'cards_2',
			pos_style = {
				fallback_style = 'deck',
				Jack = { atlas = 'folk_FoLKSpadesEC', pos = {x = 0, y = 0} },
				Queen = { atlas = 'folk_FoLKSpadesEC', pos = {x = 1, y = 0} },
				King = { atlas = 'folk_FoLKSpadesEC', pos = {x = 2, y = 0} }
			},
			loc_txt = {
				['en-us'] = "Enhanced Contrast Colors"
			},
		},
		{
			key = 'FoLKSpadesECAce',
			ranks = fullRanks,
			display_ranks = faceAce,
			atlas = 'cards_2',
			pos_style = {
				fallback_style = 'deck',
				Jack = { atlas = 'folk_FoLKSpadesEC', pos = {x = 0, y = 0} },
				Queen = { atlas = 'folk_FoLKSpadesEC', pos = {x = 1, y = 0} },
				King = { atlas = 'folk_FoLKSpadesEC', pos = {x = 2, y = 0} },
				Ace = { atlas = 'folk_ShieldAces', pos = {x = 0, y = 2} }
			},
			loc_txt = {
				['en-us'] = "Enhanced Contrast & Shield"
			},
		},
	},
}
-- Friends of LK Spades Wave 1 (Halberd)
SMODS.DeckSkin{
	key = "FoLKSpadesHalberds",
	suit = "Spades",
	loc_txt = {
		['en-us'] = "Friends of LK (Halberds)"
	},
	palettes = {
		{
			key = 'FoLKSpadesHalberds',
			ranks = face,
			atlas = 'folk_FoLKSpadesH',
			pos_style = 'collab',
			loc_txt = {
				['en-us'] = "Low Contrast Colors"
			},
		},
		{
			key = 'FoLKSpadesHalberdsAce',
			ranks = faceAce,
			atlas = 'cards_1',
			pos_style = {
				Jack = { atlas = 'folk_FoLKSpadesH', pos = {x = 0, y = 0} },
				Queen = { atlas = 'folk_FoLKSpadesH', pos = {x = 1, y = 0} },
				King = { atlas = 'folk_FoLKSpadesH', pos = {x = 2, y = 0} },
				Ace = { atlas = 'folk_ShieldAces', pos = {x = 0, y = 0} }
			},
			loc_txt = {
				['en-us'] = "Low Contrast & Shield"
			},
		},
		{
			key = 'FoLKSpadesHalberdsHC',
			ranks = fullRanks,
			display_ranks = face,
			atlas = 'cards_2',
			pos_style = {
				fallback_style = 'deck',
				Jack = { atlas = 'folk_FoLKSpadesHHC', pos = {x = 0, y = 0} },
				Queen = { atlas = 'folk_FoLKSpadesHHC', pos = {x = 1, y = 0} },
				King = { atlas = 'folk_FoLKSpadesHHC', pos = {x = 2, y = 0} }
			},
			loc_txt = {
				['en-us'] = "High Contrast Colors"
			},
		},
		{
			key = 'FoLKSpadesHalberdsHCAce',
			ranks = fullRanks,
			display_ranks = faceAce,
			atlas = 'cards_2',
			pos_style = {
				fallback_style = 'deck',
				Jack = { atlas = 'folk_FoLKSpadesHHC', pos = {x = 0, y = 0} },
				Queen = { atlas = 'folk_FoLKSpadesHHC', pos = {x = 1, y = 0} },
				King = { atlas = 'folk_FoLKSpadesHHC', pos = {x = 2, y = 0} },
				Ace = { atlas = 'folk_ShieldAces', pos = {x = 0, y = 1} }
			},
			loc_txt = {
				['en-us'] = "High Contrast & Shield"
			},
		},
	},
}

-- Friends of LK Hearts Wave 1
SMODS.DeckSkin{
	key = "FoLKHearts",
	suit = "Hearts",
	loc_txt = {
		['en-us'] = "Friends of LK"
	},
	palettes = {
		{
			key = 'FoLKHearts',
			ranks = face,
			atlas = 'folk_FoLKHearts',
			pos_style = 'collab',
			loc_txt = {
				['en-us'] = "Low Contrast Colors"
			},
		},
		{
			key = 'FoLKHeartsAce',
			ranks = faceAce,
			atlas = 'cards_1',
			pos_style = {
				Jack = { atlas = 'folk_FoLKHearts', pos = {x = 0, y = 0} },
				Queen = { atlas = 'folk_FoLKHearts', pos = {x = 1, y = 0} },
				King = { atlas = 'folk_FoLKHearts', pos = {x = 2, y = 0} },
				Ace = { atlas = 'folk_ShieldAces', pos = {x = 1, y = 0} }
			},
			loc_txt = {
				['en-us'] = "Low Contrast & Shield"
			},
		},
		{
			key = 'FoLKHeartsHC',
			ranks = fullRanks,
			display_ranks = face,
			atlas = 'cards_2',
			pos_style = {
				fallback_style = 'deck',
				Jack = { atlas = 'folk_FoLKHeartsHC', pos = {x = 0, y = 0} },
				Queen = { atlas = 'folk_FoLKHeartsHC', pos = {x = 1, y = 0} },
				King = { atlas = 'folk_FoLKHeartsHC', pos = {x = 2, y = 0} }
			},
			loc_txt = {
				['en-us'] = "High Contrast Colors"
			},
		},
		{
			key = 'FoLKHeartsHCAce',
			ranks = fullRanks,
			display_ranks = faceAce,
			atlas = 'cards_2',
			pos_style = {
				fallback_style = 'deck',
				Jack = { atlas = 'folk_FoLKHeartsHC', pos = {x = 0, y = 0} },
				Queen = { atlas = 'folk_FoLKHeartsHC', pos = {x = 1, y = 0} },
				King = { atlas = 'folk_FoLKHeartsHC', pos = {x = 2, y = 0} },
				Ace = { atlas = 'folk_ShieldAces', pos = {x = 1, y = 1} }
			},
			loc_txt = {
				['en-us'] = "High Contrast & Shield"
			},
		},
		{
			key = 'FoLKHeartsEC',
			ranks = fullRanks,
			display_ranks = face,
			atlas = 'cards_2',
			pos_style = {
				fallback_style = 'deck',
				Jack = { atlas = 'folk_FoLKHeartsEC', pos = {x = 0, y = 0} },
				Queen = { atlas = 'folk_FoLKHeartsEC', pos = {x = 1, y = 0} },
				King = { atlas = 'folk_FoLKHeartsEC', pos = {x = 2, y = 0} }
			},
			loc_txt = {
				['en-us'] = "Enhanced Contrast Colors"
			},
		},
		{
			key = 'FoLKHeartsECAce',
			ranks = fullRanks,
			display_ranks = faceAce,
			atlas = 'cards_2',
			pos_style = {
				fallback_style = 'deck',
				Jack = { atlas = 'folk_FoLKHeartsEC', pos = {x = 0, y = 0} },
				Queen = { atlas = 'folk_FoLKHeartsEC', pos = {x = 1, y = 0} },
				King = { atlas = 'folk_FoLKHeartsEC', pos = {x = 2, y = 0} },
				Ace = { atlas = 'folk_ShieldAces', pos = {x = 1, y = 2} }
			},
			loc_txt = {
				['en-us'] = "Enhanced Contrast & Shield"
			},
		},
	},
}
-- Friends of LK Hearts Wave 1 (Fleuron)
SMODS.DeckSkin{
	key = "FoLKHeartsFleurons",
	suit = "Hearts",
	loc_txt = {
		['en-us'] = "Friends of LK (Fleurons)"
	},
	palettes = {
		{
			key = 'FoLKHeartsFleurons',
			ranks = face,
			atlas = 'folk_FoLKHeartsF',
			pos_style = 'collab',
			loc_txt = {
				['en-us'] = "Low Contrast Colors"
			},
		},
		{
			key = 'FoLKHeartsFleuronsAce',
			ranks = faceAce,
			atlas = 'cards_1',
			pos_style = {
				Jack = { atlas = 'folk_FoLKHeartsF', pos = {x = 0, y = 0} },
				Queen = { atlas = 'folk_FoLKHeartsF', pos = {x = 1, y = 0} },
				King = { atlas = 'folk_FoLKHeartsF', pos = {x = 2, y = 0} },
				Ace = { atlas = 'folk_ShieldAces', pos = {x = 1, y = 0} }
			},
			loc_txt = {
				['en-us'] = "Low Contrast & Shield"
			},
		},
		{
			key = 'FoLKHeartsFleuronsHC',
			ranks = fullRanks,
			display_ranks = face,
			atlas = 'cards_2',
			pos_style = {
				fallback_style = 'deck',
				Jack = { atlas = 'folk_FoLKHeartsFHC', pos = {x = 0, y = 0} },
				Queen = { atlas = 'folk_FoLKHeartsFHC', pos = {x = 1, y = 0} },
				King = { atlas = 'folk_FoLKHeartsFHC', pos = {x = 2, y = 0} }
			},
			loc_txt = {
				['en-us'] = "High Contrast Colors"
			},
		},
		{
			key = 'FoLKHeartsFleuronsHCAce',
			ranks = fullRanks,
			display_ranks = faceAce,
			atlas = 'cards_2',
			pos_style = {
				fallback_style = 'deck',
				Jack = { atlas = 'folk_FoLKHeartsFHC', pos = {x = 0, y = 0} },
				Queen = { atlas = 'folk_FoLKHeartsFHC', pos = {x = 1, y = 0} },
				King = { atlas = 'folk_FoLKHeartsFHC', pos = {x = 2, y = 0} },
				Ace = { atlas = 'folk_ShieldAces', pos = {x = 1, y = 1} }
			},
			loc_txt = {
				['en-us'] = "High Contrast & Shield"
			},
		},
	},
}

-- Friends of LK Clubs Wave 1
SMODS.DeckSkin{
	key = "FoLKClubs",
	suit = "Clubs",
	loc_txt = {
		['en-us'] = "Friends of LK"
	},
	palettes = {
		{
			key = 'FoLKClubs',
			ranks = face,
			atlas = 'folk_FoLKClubs',
			pos_style = 'collab',
			loc_txt = {
				['en-us'] = "Low Contrast Colors"
			},
		},
		{
			key = 'FoLKClubsAce',
			ranks = faceAce,
			atlas = 'cards_1',
			pos_style = {
				Jack = { atlas = 'folk_FoLKClubs', pos = {x = 0, y = 0} },
				Queen = { atlas = 'folk_FoLKClubs', pos = {x = 1, y = 0} },
				King = { atlas = 'folk_FoLKClubs', pos = {x = 2, y = 0} },
				Ace = { atlas = 'folk_ShieldAces', pos = {x = 2, y = 0} }
			},
			loc_txt = {
				['en-us'] = "Low Contrast & Shield"
			},
		},
		{
			key = 'FoLKClubsHC',
			ranks = fullRanks,
			display_ranks = face,
			atlas = 'cards_2',
			pos_style = {
				fallback_style = 'deck',
				Jack = { atlas = 'folk_FoLKClubsHC', pos = {x = 0, y = 0} },
				Queen = { atlas = 'folk_FoLKClubsHC', pos = {x = 1, y = 0} },
				King = { atlas = 'folk_FoLKClubsHC', pos = {x = 2, y = 0} }
			},
			loc_txt = {
				['en-us'] = "High Contrast Colors"
			},
		},
		{
			key = 'FoLKClubsHCAce',
			ranks = fullRanks,
			display_ranks = faceAce,
			atlas = 'cards_2',
			pos_style = {
				fallback_style = 'deck',
				Jack = { atlas = 'folk_FoLKClubsHC', pos = {x = 0, y = 0} },
				Queen = { atlas = 'folk_FoLKClubsHC', pos = {x = 1, y = 0} },
				King = { atlas = 'folk_FoLKClubsHC', pos = {x = 2, y = 0} },
				Ace = { atlas = 'folk_ShieldAces', pos = {x = 2, y = 1} }
			},
			loc_txt = {
				['en-us'] = "High Contrast & Shield"
			},
		},
		{
			key = 'FoLKClubsEC',
			ranks = fullRanks,
			display_ranks = face,
			atlas = 'cards_2',
			pos_style = {
				fallback_style = 'deck',
				Jack = { atlas = 'folk_FoLKClubsEC', pos = {x = 0, y = 0} },
				Queen = { atlas = 'folk_FoLKClubsEC', pos = {x = 1, y = 0} },
				King = { atlas = 'folk_FoLKClubsEC', pos = {x = 2, y = 0} }
			},
			loc_txt = {
				['en-us'] = "Enhanced Contrast Colors"
			},
		},
		{
			key = 'FoLKClubsECAce',
			ranks = fullRanks,
			display_ranks = faceAce,
			atlas = 'cards_2',
			pos_style = {
				fallback_style = 'deck',
				Jack = { atlas = 'folk_FoLKClubsEC', pos = {x = 0, y = 0} },
				Queen = { atlas = 'folk_FoLKClubsEC', pos = {x = 1, y = 0} },
				King = { atlas = 'folk_FoLKClubsEC', pos = {x = 2, y = 0} },
				Ace = { atlas = 'folk_ShieldAces', pos = {x = 2, y = 2} }
			},
			loc_txt = {
				['en-us'] = "Enhanced Contrast & Shield"
			},
		},
	},
}

-- Friends of LK Diamonds Wave 1
SMODS.DeckSkin{
	key = "FoLKDiamonds",
	suit = "Diamonds",
	loc_txt = {
		['en-us'] = "Friends of LK"
	},
	palettes = {
		{
			key = 'FoLKDiamonds',
			ranks = face,
			atlas = 'folk_FoLKDiamonds',
			pos_style = 'collab',
			loc_txt = {
				['en-us'] = "Low Contrast Colors"
			},
		},
		{
			key = 'FoLKDiamondsAce',
			ranks = faceAce,
			atlas = 'cards_1',
			pos_style = {
				Jack = { atlas = 'folk_FoLKDiamonds', pos = {x = 0, y = 0} },
				Queen = { atlas = 'folk_FoLKDiamonds', pos = {x = 1, y = 0} },
				King = { atlas = 'folk_FoLKDiamonds', pos = {x = 2, y = 0} },
				Ace = { atlas = 'folk_ShieldAces', pos = {x = 3, y = 0} }
			},
			loc_txt = {
				['en-us'] = "Low Contrast & Shield"
			},
		},
		{
			key = 'FoLKDiamondsHC',
			ranks = fullRanks,
			display_ranks = face,
			atlas = 'cards_2',
			pos_style = {
				fallback_style = 'deck',
				Jack = { atlas = 'folk_FoLKDiamondsHC', pos = {x = 0, y = 0} },
				Queen = { atlas = 'folk_FoLKDiamondsHC', pos = {x = 1, y = 0} },
				King = { atlas = 'folk_FoLKDiamondsHC', pos = {x = 2, y = 0} }
			},
			loc_txt = {
				['en-us'] = "High Contrast Colors"
			},
		},
		{
			key = 'FoLKDiamondsHCAce',
			ranks = fullRanks,
			display_ranks = faceAce,
			atlas = 'cards_2',
			pos_style = {
				fallback_style = 'deck',
				Jack = { atlas = 'folk_FoLKDiamondsHC', pos = {x = 0, y = 0} },
				Queen = { atlas = 'folk_FoLKDiamondsHC', pos = {x = 1, y = 0} },
				King = { atlas = 'folk_FoLKDiamondsHC', pos = {x = 2, y = 0} },
				Ace = { atlas = 'folk_ShieldAces', pos = {x = 3, y = 1} }
			},
			loc_txt = {
				['en-us'] = "High Contrast & Shield"
			},
		},
		{
			key = 'FoLKDiamondsEC',
			ranks = fullRanks,
			display_ranks = face,
			atlas = 'cards_2',
			pos_style = {
				fallback_style = 'deck',
				Jack = { atlas = 'folk_FoLKDiamondsEC', pos = {x = 0, y = 0} },
				Queen = { atlas = 'folk_FoLKDiamondsEC', pos = {x = 1, y = 0} },
				King = { atlas = 'folk_FoLKDiamondsEC', pos = {x = 2, y = 0} }
			},
			loc_txt = {
				['en-us'] = "Enhanced Contrast Colors"
			},
		},
		{
			key = 'FoLKDiamondsECAce',
			ranks = fullRanks,
			display_ranks = faceAce,
			atlas = 'cards_2',
			pos_style = {
				fallback_style = 'deck',
				Jack = { atlas = 'folk_FoLKDiamondsEC', pos = {x = 0, y = 0} },
				Queen = { atlas = 'folk_FoLKDiamondsEC', pos = {x = 1, y = 0} },
				King = { atlas = 'folk_FoLKDiamondsEC', pos = {x = 2, y = 0} },
				Ace = { atlas = 'folk_ShieldAces', pos = {x = 3, y = 2} }
			},
			loc_txt = {
				['en-us'] = "Enhanced Contrast & Shield"
			},
		},
	},
}


----------------------------------------------
------------MOD CODE END----------------------
----------------------------------------------