fx_version 'bodacious'
game 'gta5'

author 'London Studios'
description 'Setup and control dynamic speed limit signs.'
version '1.0.0'
lua54 'yes'

client_scripts {
    'config.lua',
    'cl_utils.lua',
    'cl_motorways.lua'
}

server_scripts {
    'config.lua',
    'sv_utils.lua',
    'sv_motorways.lua',
}

escrow_ignore {
    'stream/*.ytd',
    'stream/*.ytyp',
    'config.lua',
    'stream/*.ydr',
    'sv_utils.lua',
    'cl_utils.lua',
}

files {
    'stream/*.ytyp',
}

data_file 'DLC_ITYP_REQUEST' 'stream/*.ytyp'
dependency '/assetpacks'