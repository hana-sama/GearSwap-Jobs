-------------------------------------------------------------------------------------------------------------------
-- Mappings, lists and sets to describe game relationships that aren't easily determinable otherwise.
-------------------------------------------------------------------------------------------------------------------

local mappings = {}

-- value == element that's weak to the key
mappings.weak_by_element = {['Light']='Dark', ['Dark']='Light', ['Fire']='Ice', ['Ice']='Wind', ['Wind']='Earth', ['Earth']='Lightning',
		['Lightning']='Water', ['Water']='Fire'}

-- value == element that's strong to the key
mappings.strong_by_element = {['Light']='Dark', ['Dark']='Light', ['Fire']='Water', ['Ice']='Fire', ['Wind']='Ice', ['Earth']='Wind',
		['Lightning']='Earth', ['Water']='Lightning'}

mappings.storm_by_element = {['Light']="Aurorastorm", ['Dark']="Voidstorm", ['Fire']="Firestorm", ['Earth']="Sandstorm",
		['Water']="Rainstorm", ['Wind']="Windstorm", ['Ice']="Hailstorm", ['Lightning']="Thunderstorm"}

mappings.spirit_by_element = {['Light']="Light Spirit", ['Dark']="Dark Spirit", ['Fire']="Fire Spirit", ['Earth']="Earth Spirit",
		['Water']="Water Spirit", ['Wind']="Air Spirit", ['Ice']="Ice Spirit", ['Lightning']="Thunder Spirit"}


-------------------------------------------------------------------------------------------------------------------
-- Spell mappings allow defining a general category or description that each of sets of related
-- spells all fall under.
-------------------------------------------------------------------------------------------------------------------

mappings.spell_maps = {
	['Cure']='Cure',['Cure II']='Cure',['Cure III']='Cure',['Cure IV']='Cure',['Cure V']='Cure',['Cure VI']='Cure',
	['Cura']='Curaga',['Cura II']='Curaga',['Cura III']='Curaga',
	['Curaga']='Curaga',['Curaga II']='Curaga',['Curaga III']='Curaga',['Curaga IV']='Curaga',['Curaga V']='Curaga',
	['Barfire']='Barspell',['Barstone']='Barspell',['Barwater']='Barspell',['Baraero']='Barspell',['Barblizzard']='Barspell',['Barthunder']='Barspell',
	['Barfira']='Barspell',['Barstonra']='Barspell',['Barwatera']='Barspell',['Baraera']='Barspell',['Barblizzara']='Barspell',['Barthundra']='Barspell',
	['Foe Lullaby']='Lullaby',['Foe Lullaby II']='Lullaby',['Horde Lullaby']='Lullaby',['Horde Lullaby II']='Lullaby',
	["Mage's Ballad"]='Ballad',["Mage's Ballad II"]='Ballad',["Mage's Ballad III"]='Ballad',
	['Advancing March']='March',['Victory March']='March',
	['Sword Madrigal']='Madrigal',['Blade Madrigal']='Madrigal',
	['Valor Minuet']='Minuet',['Valor Minuet II']='Minuet',['Valor Minuet III']='Minuet',['Valor Minuet IV']='Minuet',['Valor Minuet V']='Minuet',
	["Knight's Minne"]='Minne',["Knight's Minne II"]='Minne',["Knight's Minne III"]='Minne',["Knight's Minne IV"]='Minne',["Knight's Minne V"]='Minne',
	["Army's Paeon"]='Paeon',["Army's Paeon II"]='Paeon',["Army's Paeon III"]='Paeon',["Army's Paeon IV"]='Paeon',["Army's Paeon V"]='Paeon',["Army's Paeon VI"]='Paeon',
	['Fire Carol']='Carol',['Ice Carol']='Carol',['Wind Carol']='Carol',['Earth Carol']='Carol',['Lightning Carol']='Carol',['Water Carol']='Carol',['Light Carol']='Carol',['Dark Carol']='Carol',
	['Fire Carol II']='Carol',['Ice Carol II']='Carol',['Wind Carol II']='Carol',['Earth Carol II']='Carol',['Lightning Carol II']='Carol',['Water Carol II']='Carol',['Light Carol II']='Carol',['Dark Carol II']='Carol',
	['Regen']='Regen',['Regen II']='Regen',['Regen III']='Regen',['Regen IV']='Regen',['Regen V']='Regen',
	['Refresh']='Refresh',['Refresh II']='Refresh',
	['Protect']='Protect',['Protect II']='Protect',['Protect III']='Protect',['Protect IV']='Protect',['Protect V']='Protect',
	['Shell']='Shell',['Shell II']='Shell',['Shell III']='Shell',['Shell IV']='Shell',['Shell V']='Shell',
	['Protectra']='Protectra',['Protectra II']='Protectra',['Protectra III']='Protectra',['Protectra IV']='Protectra',['Protectra V']='Protectra',
	['Shellra']='Shellra',['Shellra II']='Shellra',['Shellra III']='Shellra',['Shellra IV']='Shellra',['Shellra V']='Shellra',
	-- Status Removal doesn't include Esuna or Sacrifice, since they work differently than the rest
	['Poisona']='StatusRemoval',['Paralyna']='StatusRemoval',['Silena']='StatusRemoval',['Blindna']='StatusRemoval',['Cursna']='StatusRemoval',
	['Stona']='StatusRemoval',['Viruna']='StatusRemoval',['Erase']='StatusRemoval',
	['Utsusemi: Ichi']='Utsusemi',['Utsusemi: Ni']='Utsusemi',
	['Burn']='ElementalEnfeeble',['Frost']='ElementalEnfeeble',['Choke']='ElementalEnfeeble',['Rasp']='ElementalEnfeeble',['Shock']='ElementalEnfeeble',['Drown']='ElementalEnfeeble',
	['Pyrohelix']='Helix',['Cryohelix']='Helix',['Anemohelix']='Helix',['Geohelix']='Helix',['Ionohelix']='Helix',['Hydrohelix']='Helix',['Luminohelix']='Helix',['Noctohelix']='Helix',
	['Firestorm']='Storm',['Hailstorm']='Storm',['Windstorm']='Storm',['Sandstorm']='Storm',['Thunderstorm']='Storm',['Rainstorm']='Storm',['Aurorastorm']='Storm',['Voidstorm']='Storm',
	['Teleport-Holla']='Teleport',['Teleport-Dem']='Teleport',['Teleport-Mea']='Teleport',['Teleport-Altep']='Teleport',['Teleport-Yhoat']='Teleport',
	['Teleport-Vahzl']='Teleport',['Recall-Pashh']='Teleport',['Recall-Meriph']='Teleport',['Recall-Jugner']='Teleport',
	['Raise']='Raise',['Raise II']='Raise',['Raise III']='Raise',['Arise']='Raise',
	['Reraise']='Reraise',['Reraise II']='Reraise',['Reraise III']='Reraise',
	['Fire Maneuver']='Maneuver',['Ice Maneuver']='Maneuver',['Wind Maneuver']='Maneuver',['Earth Maneuver']='Maneuver',['Thunder Maneuver']='Maneuver',
	['Water Maneuver']='Maneuver',['Light Maneuver']='Maneuver',['Dark Maneuver']='Maneuver',
}


-------------------------------------------------------------------------------------------------------------------
-- Tables to specify general area groupings.  Creates the 'areas' table to be referenced in job files.
-- Zone names provided by world.area/world.zone are currently in all-caps, so defining the same way here.
-------------------------------------------------------------------------------------------------------------------

mappings.areas = {}

-- City areas for town gear and behavior.
mappings.areas.Cities = S{
	"RU'LUDE GARDENS",
	'UPPER JEUNO',
	'LOWER JEUNO',
	'PORT JEUNO',
	'PORT WINDURST',
	'WINDURST WATERS',
	'WINDURST WOODS',
	'WINDURST WALLS',
	'HEAVENS TOWER',
	"PORT SAN D'ORIA",
	"NORTHERN SAN D'ORIA",
	"SOUTHERN SAN D'ORIA",
	'PORT BASTOK',
	'BASTOK MARKETS',
	'BASTOK MINES',
	'METALWORKS',
	'AHT URHGAN WHITEGATE',
	'TAVANAZIAN SAFEHOLD',
	'NASHMAU',
	'SELBINA',
	'MHAURA',
	'NORG',
	'EASTERN ADOULIN',
	'WESTERN ADOULIN',
	'KAZHAM'
}
-- Adoulin areas, where Ionis will grant special stat bonuses.
mappings.areas.Adoulin = S{
	'YAHSE HUNTING GROUNDS',
	'CEIZAK BATTLEGROUNDS',
	'FORET DE HENNETIEL',
	'MORIMAR BASALT FIELDS',
	'YORCIA WEALD',
	'YORCIA WEALD [U]',
	'CIRDAS CAVERNS',
	'CIRDAS CAVERNS [U]',
	'MARJAMI RAVINE',
	'KAMIHR DRIFTS',
	'SIH GATES',
	'MOH GATES',
	'DHO GATES',
	'WOH GATES',
	'RALA WATERWAYS',
	'RALA WATERWAYS [U]' -- TODO: Validate whether this one is valid
}


return mappings

