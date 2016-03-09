<?php

# Backend Settings
$GLOBALS['TYPO3_CONF_VARS']['BE']['fileadminDir'] = 'files/';
$GLOBALS['TYPO3_CONF_VARS']['BE']['RTE_imageStorageDir'] = 'files/public/uploads/';

# Default BE User settings
$GLOBALS['TYPO3_CONF_VARS']['BE']['defaultUserTSconfig'] .= '<INCLUDE_TYPOSCRIPT: source="FILE:files/assets/typoscript/tsconfig_user/tsconfig.tsu">';

# Frontend Settings
$GLOBALS['TYPO3_CONF_VARS']['FE']['additionalAbsRefPrefixDirectories'] = 'files/';