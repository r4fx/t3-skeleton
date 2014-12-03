tx_news {
    singlePid = 4

    #*** Additional news layouts
    templateLayouts {
        2 = XYZ
    }

    #*** News default Pid
    module {
        # include problems
        defaultPid.tx_news_domain_model_news = 4
        redirectToPageOnStart = 4
    }
}


#===================================================
# SET DEFAULT VALUES OD FLEXFORM FIELDS
# http://docs.typo3.org/TYPO3/TSconfigReference/UserTsconfig/TopLevelObjects/Index.html?highlight=tcadefaults
#===================================================
TCAdefaults {
    # Hide news on start editing
    tx_news_domain_model_news.hidden = 1
}