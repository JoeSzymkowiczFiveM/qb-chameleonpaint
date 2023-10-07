fx_version 'cerulean'
game 'gta5'

lua54 'yes'
use_experimental_fxv2_oal 'yes'

client_scripts {
    'client/main.lua',
}

server_scripts {
    '@oxmysql/lib/MySQL.lua',
	'server/main.lua'
}

files {
    "data/carcols_gen9.meta",
    "data/carmodcols_gen9.meta",
    "data/carmodcols.ymt",
    "stream/vehicle_paint_ramps.ytd"
}

data_file 'CARCOLS_GEN9_FILE' 'carcols_gen9.meta'
data_file 'CARMODCOLS_GEN9_FILE' 'carmodcols_gen9.meta'