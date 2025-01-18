<?php

$EM_CONF[$_EXTKEY] = [
    'title' => 'CMS setup kit',
    'description' => 'Universal site package kit',
    'category' => 'templates',
    'constraints' => [
        'depends' => [
            'typo3' => '13.4.0-13.4.99',
            'fluid_styled_content' => '13.4.0-13.4.99',
            'rte_ckeditor' => '13.4.0-13.4.99',
        ],
        'conflicts' => [
        ],
    ],
    'autoload' => [
        'psr-4' => [
            'Frontside\\CmsSetupKit\\' => 'Classes',
        ],
    ],
    'state' => 'stable',
    'uploadfolder' => 0,
    'createDirs' => '',
    'clearCacheOnLoad' => 1,
    'author' => 'Rafał Brzeski',
    'author_email' => 'r.brzeski@gmail.com',
    'author_company' => 'frontside',
    'version' => '1.0.0',
];
