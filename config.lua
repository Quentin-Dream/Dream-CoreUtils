Config = {
    
--------------
--------------Ajouter pour les admins pouvant modif la meteo
changertemps = {
    'steam:1100001335da201',
    --'license:1234975143578921327',
},

---- Set this to false if you don't want the weather to change automatically every 10 minutes.
dynamicWeather = true, -- true ou false

--------------

messagepause = "Dream Dev'", --Message ecrit quand vous appuyer sur echape ( menu pause )
messagedisconnect = "Se déconnecter du serveur 😭", --Message ecrit sur bouton quitter le serveur ( menu pause )
messagequit = "Quitter FiveM🐌", --Message ecrit sur bouton quitter le jeu ( menu pause )

--------------------------------------------------------------

--Arme avec les quel vous pouvais prendre en otage
armeotage = {
    "WEAPON_PISTOL",
	"WEAPON_COMBATPISTOL",
	"WEAPON_SNSPISTOL",
},

--------------------------------------------------------------

--message /otage
otage = {
    messagepasarme = "Vous avez besoin d'un pistolet avec des munitions pour prendre un otage une personne!",
    messagepersonne = "Personne a proximite a prendre en otage!",
    message = "Appuyez sur [G] pour relacher la personne, ou sur [H] pour tué la personne",
},

--------------------------------------------------------------

--preecrit /me ( debut et fin )
me = {
    prefixdebut = '* ', --debut
    prefixfin = ' *', --fin
},

--------------------------------------------------------------

messagepersonneporter = 'Personne à proximité à porter !', --message /porter

--------------------------------------------------------------

messagepersonneporterepaule = 'Personne à proximité à porter !', --message /epaule

--------------------------------------------------------------

--toutes les commande dispo dans le CORE
commande = {
    annonce = 'announce', --faire une annonce ( juste les staff )
    me = 'me', --message au dessus de la personne qui le fait
    porter = 'porter', --porter quelqun
    porterepaule = 'epaule', --porter quelqun sur epaule
},

--------------------------------------------------------------

densiterpnj = 0.4, -- densiter de PNJ |  1.0 = normal | 0.0 = aucun PNJ

--------------------------------------------------------------

vitessemaxchangerplace = 60.0, -- ( a partir de quel vitesse on ne peu plu changer de place dans un vehicule ) | (NE PAS OUBLIER LE .0 !!!)

--------------------------------------------------------------

--richpresence
discordappid = 939205892044378133, -- remplacer les 0 par l'APPLICATION ID ( https://discord.com/developers/applications ) ( ne pas enlever les ,)
logo = 'dream', --nom de l'image ( dans rich-presence )
messagelogo = 'Voici notre logo', --message marquer sur le logo
petitlogo = '939205892044378133', --nom de l'image ( dans rich-presence )
messagepetitlogo = 'Puis notre 2eme', --message marquer sur le petit logo
ip = '193.26.14.58', --avec le port si celui-ci n'est pas 30120
discord = 'https://discord.gg/GjDnFqeACQ', --votre lien discord

----------------------------------------------------------------

--recule des armes ( si il manque des armes, vous pouvais rajouter comme ceci => | [hash de l'arme] = 0.5 |
recule = { -- + vous augmenter le nombre, + vous avez de recule.
	[453432689] = 0.3, -- PISTOL
	[3219281620] = 0.3, -- PISTOL MK2
	[1593441988] = 0.2, -- COMBAT PISTOL
	[584646201] = 0.1, -- AP PISTOL
	[-1716589765] = 0.6, -- PISTOL .50
	[324215364] = 0.2, -- MICRO SMG
	[736523883] = 0.1, -- SMG
	[2024373456] = 0.1, -- SMG MK2
	[-270015777] = 0.1, -- ASSAULT SMG
	[-1074790547] = 0.2, -- ASSAULT RIFLE
	[961495388] = 0.2, -- ASSAULT RIFLE MK2
	[-2084633992] = 0.1, -- CARBINE RIFLE
	[4208062921] = 0.1, -- CARBINE RIFLE MK2
	[-1357824103] = 0.1, -- ADVANCED RIFLE
	[-1660422300] = 0.1, -- MG
	[2144741730] = 0.1, -- COMBAT MG
	[3686625920] = 0.1, -- COMBAT MG MK2
	[487013001] = 0.4, -- PUMP SHOTGUN
	[1432025498] = 0.4, -- PUMP SHOTGUN MK2
	[2017895192] = 0.7, -- SAWNOFF SHOTGUN
	[-494615257] = 0.4, -- ASSAULT SHOTGUN
	[-1654528753] = 0.2, -- BULLPUP SHOTGUN
	[911657153] = 0.3, -- STUN GUN
	[100416529] = 0.5, -- SNIPER RIFLE
	[205991906] = 0.7, -- HEAVY SNIPER
	[177293209] = 0.7, -- HEAVY SNIPER MK2
	[856002082] = 1.2, -- REMOTE SNIPER
	[-1568386805] = 1.0, -- GRENADE LAUNCHER
	[1305664598] = 1.0, -- GRENADE LAUNCHER SMOKE
	[-1312131151] = 0.0, -- RPG
	[1752584910] = 0.0, -- STINGER
	[1119849093] = 0.01, -- MINIGUN
	[-1076751822] = 0.2, -- SNS PISTOL
	[2009644972] = 0.25, -- SNS PISTOL MK2
	[1627465347] = 0.1, -- GUSENBERG
	[-1063057011] = 0.2, -- SPECIAL CARBINE
	[-1768145561] = 0.25, -- SPECIAL CARBINE MK2
	[3523564046] = 0.5, -- HEAVY PISTOL
	[2132975508] = 0.2, -- BULLPUP RIFLE
	[-2066285827] = 0.25, -- BULLPUP RIFLE MK2
	[137902532] = 0.4, -- VINTAGE PISTOL
	[-1746263880] = 0.4, -- DOUBLE ACTION REVOLVER
	[2828843422] = 0.7, -- MUSKET
	[-771403250] = 0.2, -- HEAVY SHOTGUN
	[-952879014] = 0.3, -- MARKSMAN RIFLE
	[1785463520] = 0.35, -- MARKSMAN RIFLE MK2
	[1672152130] = 0, -- HOMING LAUNCHER
	[1198879012] = 0.9, -- FLARE GUN
	[171789620] = 0.2, -- COMBAT PDW
	[-598887786] = 0.9, -- MARKSMAN PISTOL
  	[1834241177] = 2.4, -- RAILGUN
	[-619010992] = 0.3, -- MACHINE PISTOL
	[-1045183535] = 0.6, -- REVOLVER
	[-879347409] = 0.65, -- REVOLVER MK2
	[-275439685] = 0.7, -- DOUBLE BARREL SHOTGUN
	[1649403952] = 0.3, -- COMPACT RIFLE
	[317205821] = 0.2, -- AUTO SHOTGUN
	[125959754] = 0.5, -- COMPACT LAUNCHER
	[-1121678507] = 0.1, -- MINI SMG		
},

--------------------------------------------------------------
--NE PAS TOUCHE !!
--------------------------------------------------------------
WeaponList = {
	324215364,
	-619010992,
	736523883,
	-270015777,
	171789620,
	2024373456,
	-1660422300,
	2144741730,
	1627465347,
	-1121678507,
	961495388,
	-1074790547,
	-2084633992,
	3686625920,
	-1357824103,
	-1063057011,
	4208062921,
	2132975508,
	100416529,
	1649403952,
	2017895192,
	-494615257,
	-1654528753,
	487013001,
	-952879014,
	-1466123874,
	177293209,
	205991906,
	-275439685,
	-1568386805,
	125959754,
	984333226,
	1119849093,
	2138347493,
	1834241177,
	-1312131151,
	1672152130,
	453432689,
	1305664598,
	3219281620,
	1593441988,
	-1076751822,
	-1716589765,
	-598887786,
	137902532,
	771403250,
	911657153,
	1198879012,
	584646201,
	-1045183535,
	
},

PedAbleToWalkWhileSwapping = true,
UnarmedHash = -1569615261,
---------------------------------------------

}