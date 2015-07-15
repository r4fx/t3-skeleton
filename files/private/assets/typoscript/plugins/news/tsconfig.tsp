#===================================================
# Remember to change PIDs corresponding to your installation
# !!! tx_news do not respect configuration from this file, probably bug https://forge.typo3.org/issues/61804
#===================================================

tx_news {
    singlePid = 4

    # Additional news layouts
    templateLayouts {
        1 = Main
        2 = Foo
        3 = --div--,Group 1
        4 = Bar
    }

    # News default Pid
    module {
        defaultPid.tx_news_domain_model_news = 4
        redirectToPageOnStart = 4
    }
}


#===================================================
# SET DEFAULT VALUES FOR FLEXFORM FIELDS
# http://docs.typo3.org/TYPO3/TSconfigReference/UserTsconfig/TopLevelObjects/Index.html?highlight=tcadefaults
#===================================================
TCAdefaults {
    # Hide news on start editing
    tx_news_domain_model_news.hidden = 1
}