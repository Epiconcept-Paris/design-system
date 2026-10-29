<?php
/* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
 * This is VOOZANOO, a program. Contact voozanoo@epiconcept.fr, or   *
 * see http://www.voozanoo.net/ for more information.                *
 *                                                                   *
 * Copyright 2001-2013 Epiconcept                                    *
 *                                                                   *
 * This program is free software; you can redistribute it and/or     *
 * modify it under the terms of the GNU General Public License as    *
 * published by the Free Software Foundation - version 2             *
 *                                                                   *
 * This program is distributed in the hope that it will be useful,   *
 * but WITHOUT ANY WARRANTY; without even the implied warranty of    *
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the     *
 * GNU General Public License in file COPYING for more details.      *
 *                                                                   *
 * You should have received a copy of the GNU General Public         *
 * License along with this program; if not, write to the Free        *
 * Software Foundation, Inc., 51 Franklin Street, Fifth Floor,       *
 * Boston, MA 02111, USA.                                            *
 *                                                                   *
 * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * */

$aPath = explode( DIRECTORY_SEPARATOR, __DIR__ );
$sAppName = $aPath[ count( $aPath ) - 3 ];

$sVersionVoo4Key = "voo4_version=";
$sEnvKey = "env=";
$aArgs = $_SERVER[ 'argv' ];
array_shift( $aArgs );
// Attention, ne permet pas de choisir la version de Voozanoo utilisée par le script en CLI:
// renseignez ce numéro de version de manière cohérente avec le APPINFOS
$sVersionVoo4 = '2.26';
$sEnv = null;
foreach ( $aArgs as $sArg ) {
    if ( substr( $sArg, 0, strlen( $sVersionVoo4Key ) ) === $sVersionVoo4Key ) {
        $sVersionVoo4 = str_replace( $sVersionVoo4Key, "", $sArg );
    }
    if ( substr( $sArg, 0, strlen( $sEnvKey ) ) === $sEnvKey ) {
        $sEnv = str_replace( $sEnvKey, "", $sArg );
    }
}
if ( defined( 'PATH_ENV' ) ) {
    require_once( PATH_ENV . '/' . $sAppName . '_env.php' );
} else {
    require_once( __DIR__ . DIRECTORY_SEPARATOR . '..' . DIRECTORY_SEPARATOR . '..' . DIRECTORY_SEPARATOR . 'configs' .
                  DIRECTORY_SEPARATOR .
                  'env.php' );
}

putenv( 'VOO4_APPBOOTSTRAPPER=' . VOO4_APPBOOTSTRAPPER );
putenv( 'PATH_VOO4_CORE=' . PATH_VOO4_CORE );
putenv( 'PATH_VOO4_EXTLIB=' . PATH_VOO4_EXTLIB );
putenv( 'PATH_FARM=' . PATH_FARM );
putenv( 'PATH_ZF=' . PATH_ZF );
putenv( 'APPLICATION_ENV=' . APPLICATION_ENV );

defined( 'VOO4_APPBOOTSTRAPPER' ) ||
define( 'VOO4_APPBOOTSTRAPPER', getenv( 'VOO4_APPBOOTSTRAPPER' ) ? getenv( 'VOO4_APPBOOTSTRAPPER' ) : null );

require_once( VOO4_APPBOOTSTRAPPER );

Voo4_AppBootstrapper::bootstrapApplication( __DIR__ . '/../..' );

require_once( CHEMIN_CORE . '/tools/Voo4CliApi.php' );

try {
    //Duplicate the arguments
    $aArgs = $_SERVER[ 'argv' ];
    //Remove first argument : name of the Script
    array_shift( $aArgs );

    $oApi = new Voo4CliApi( $aArgs );

    $mReturn = $oApi->process();
    //If a string or a numeric were return print it, to dialog with shell/batch script
    if ( !is_null( $mReturn ) && ( is_string( $mReturn ) || is_numeric( $mReturn ) ) ) {
        echo $mReturn . "\n";
    }
} catch ( Exception $oException ) {
    error_log( "Exception : " . $oException->getMessage() );
    error_log( $oException->getTraceAsString() );
    exit( 1 );
}

exit( 0 );
