## Description
A simple script to use an item to apply chameleon paint to vehicles in fivem. I haven't seen much discussion about the chameleon paint affects added in a recent DLC, so thought I would make very simple script to show how these new vehicle color indexes are applied. I have added a simple inventory icon for this item, and you must move `spraypaint.ogg` to your `interactsound` resource. I'm sure more can be done with this like adding indexes to `qb-customs` or adding job dependancy, but I will leave that to all of you to do. Hope this helps.

The meta and texture files found in the `data` and `stream` folders must be present for this to work.

## Credit
- [MrZedo](https://github.com/MrZedo/Cameleon-Color) Used information and assets found in this repo to implement the primary effect.

## Dependencies
- [qb-core](https://github.com/qbcore-framework/qb-core)
- For the colors to work you must be in GameBuild 2545

## Preview
https://streamable.com/oes8d9

## Shared items example
```lua
['chameleonpaint_161'] 			 = {['name'] = 'chameleonpaint_161', 			['label'] = 'Monochrome Spray', 				['weight'] = 2000, 		['type'] = 'item', 		['image'] = 'chameleonpaint.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'A fancy spray for your ride.'},
	['chameleonpaint_162'] 			 = {['name'] = 'chameleonpaint_162', 			['label'] = 'Night & Day Spray', 				['weight'] = 2000, 		['type'] = 'item', 		['image'] = 'chameleonpaint.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'A fancy spray for your ride.'},
	['chameleonpaint_163'] 			 = {['name'] = 'chameleonpaint_163', 			['label'] = 'The Verlierer Spray', 				['weight'] = 2000, 		['type'] = 'item', 		['image'] = 'chameleonpaint.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'A fancy spray for your ride.'},
	['chameleonpaint_164'] 			 = {['name'] = 'chameleonpaint_164', 			['label'] = 'Sprunk Extreme Spray', 			['weight'] = 2000, 		['type'] = 'item', 		['image'] = 'chameleonpaint.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'A fancy spray for your ride.'},
	['chameleonpaint_165'] 			 = {['name'] = 'chameleonpaint_165', 			['label'] = 'Vice City Spray', 					['weight'] = 2000, 		['type'] = 'item', 		['image'] = 'chameleonpaint.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'A fancy spray for your ride.'},
	['chameleonpaint_166'] 			 = {['name'] = 'chameleonpaint_166', 			['label'] = 'Synthwave Nights Spray', 			['weight'] = 2000, 		['type'] = 'item', 		['image'] = 'chameleonpaint.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'A fancy spray for your ride.'},
	['chameleonpaint_167'] 			 = {['name'] = 'chameleonpaint_167', 			['label'] = 'Four Seasons Spray', 				['weight'] = 2000, 		['type'] = 'item', 		['image'] = 'chameleonpaint.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'A fancy spray for your ride.'},
	['chameleonpaint_168'] 			 = {['name'] = 'chameleonpaint_168', 			['label'] = 'Maisonette 9 Throwback Spray', 	['weight'] = 2000, 		['type'] = 'item', 		['image'] = 'chameleonpaint.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'A fancy spray for your ride.'},
	['chameleonpaint_169'] 			 = {['name'] = 'chameleonpaint_169', 			['label'] = 'Bubblegum Spray', 					['weight'] = 2000, 		['type'] = 'item', 		['image'] = 'chameleonpaint.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'A fancy spray for your ride.'},
	['chameleonpaint_170'] 			 = {['name'] = 'chameleonpaint_170', 			['label'] = 'Full Rainbow Spray', 				['weight'] = 2000, 		['type'] = 'item', 		['image'] = 'chameleonpaint.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'A fancy spray for your ride.'},
	['chameleonpaint_171'] 			 = {['name'] = 'chameleonpaint_171', 			['label'] = 'Sunset Spray', 					['weight'] = 2000, 		['type'] = 'item', 		['image'] = 'chameleonpaint.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'A fancy spray for your ride.'},
	['chameleonpaint_172'] 			 = {['name'] = 'chameleonpaint_172', 			['label'] = 'The Seven Spray', 					['weight'] = 2000, 		['type'] = 'item', 		['image'] = 'chameleonpaint.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'A fancy spray for your ride.'},
	['chameleonpaint_173'] 			 = {['name'] = 'chameleonpaint_173', 			['label'] = 'Kamen Rider Spray', 				['weight'] = 2000, 		['type'] = 'item', 		['image'] = 'chameleonpaint.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'A fancy spray for your ride.'},
	['chameleonpaint_174'] 			 = {['name'] = 'chameleonpaint_174', 			['label'] = 'Chromatic Aberration Spray', 		['weight'] = 2000, 		['type'] = 'item', 		['image'] = 'chameleonpaint.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'A fancy spray for your ride.'},
	['chameleonpaint_175'] 			 = {['name'] = 'chameleonpaint_175', 			['label'] = 'Its Christmas! Spray', 			['weight'] = 2000, 		['type'] = 'item', 		['image'] = 'chameleonpaint.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'A fancy spray for your ride.'},
	['chameleonpaint_176'] 			 = {['name'] = 'chameleonpaint_176', 			['label'] = 'Temperature Spray', 				['weight'] = 2000, 		['type'] = 'item', 		['image'] = 'chameleonpaint.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'A fancy spray for your ride.'},
```

## Discord
https://www.discord.gg/projectsloth
