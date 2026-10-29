<?php
if ( $sVersionVoo4 == 'master' ) {
    define(
        'VOO4_APPBOOTSTRAPPER', "/space/www/libs/VOOZANOO4/" . $sVersionVoo4 . "/src/tools/Voo4_AppBootstrapper.php"
    );
    define( 'PATH_VOO4_CORE', "/space/www/libs/VOOZANOO4/" . $sVersionVoo4 . "/src" );
    define( 'PATH_VOO4_EXTLIB', "/space/www/libs/VOOZANOO4/" . $sVersionVoo4 . "/libs" );
    define( 'PATH_FARM', "/space/www/configuration/voozanoo4" );
    define( 'PATH_ZF', "/space/www/libs/ZendFramework" );
    define( 'APPLICATION_ENV', "production" );
} else {
    define(
        'VOO4_APPBOOTSTRAPPER', "/var/www/libs/voozanoo4/" . $sVersionVoo4 . "/src/tools/Voo4_AppBootstrapper.php"
    );
    define( 'PATH_VOO4_CORE', "/var/www/libs/voozanoo4/" . $sVersionVoo4 . "/src" );
    define( 'PATH_VOO4_EXTLIB', "/var/www/libs/voozanoo4/" . $sVersionVoo4 . "/libs" );
    define( 'PATH_FARM', "/var/www/configuration/voozanoo4" );
    define( 'PATH_ZF', "/var/www/libs/ZendFramework" );
    define( 'APPLICATION_ENV', "production" );
}
