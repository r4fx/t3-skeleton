#===================================================
# DOC url: http://docs.typo3.org/typo3cms/extensions/news/AdministratorManual/Configuration/TsConfig/Index.html
# Remember to change PIDs corresponding to your installation
# !!! tx_news do not respect configuration from this file, probably bug https://forge.typo3.org/issues/61804
#===================================================

tx_news {
    singlePid = 4

    # Additional news layouts
    templateLayouts {
        1 = Main
        2 = Foo
        10 = --div--,Date menu
        11 = Years only menu
        12 = Years & months menu
    }

    module {
        defaultPid.tx_news_domain_model_news = 34
        redirectToPageOnStart = 34
        allowedPage = 34
        preselect {
            sortingField = datetime DESC
        }
    }
}


#===================================================
# SET DEFAULT VALUES FOR FLEXFORM FIELDS
# http://docs.typo3.org/TYPO3/TSconfigReference/UserTsconfig/TopLevelObjects/Index.html?highlight=tcadefaults
#===================================================
TCAdefaults {
    tx_news_domain_model_news.hidden = 1
    sys_file_reference.showinpreview = 1
}