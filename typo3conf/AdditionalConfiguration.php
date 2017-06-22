<?php

# Backend Settings
$GLOBALS['TYPO3_CONF_VARS']['BE']['fileadminDir'] = 'files/';
$GLOBALS['TYPO3_CONF_VARS']['BE']['RTE_imageStorageDir'] = 'files/user_upload/';

# Default BE User settings
$GLOBALS['TYPO3_CONF_VARS']['BE']['defaultUserTSconfig'] .= '<INCLUDE_TYPOSCRIPT: source="FILE:assets/typoscript/tsconfig_user/tsconfig.tsu">';

# Frontend Settings
$GLOBALS['TYPO3_CONF_VARS']['FE']['additionalAbsRefPrefixDirectories'] = 'files/';
$GLOBALS['TYPO3_CONF_VARS']['FE']['cHashExcludedParameters'] .= ', debug';

# rte_ckeditor custom presets
$GLOBALS['TYPO3_CONF_VARS']['RTE']['Presets']['skelton'] = 'assets/plugins/rte_ckeditor/Default.yaml';