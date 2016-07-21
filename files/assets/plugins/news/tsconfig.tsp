//============================================================
// DOC url: http://docs.typo3.org/typo3cms/extensions/news/AdministratorManual/Configuration/TsConfig/Index.html
// Remember to change PIDs corresponding to your installation
//============================================================

tx_news {
    singlePid = 28

    templateLayouts {
        1 = --div--,List view
        11 = Main page
        12 = Masonry
        13 = Headers only
        14 = In sub nav
        15 = Squares

        20 = --div--,Date menu
        21 = Years only menu
        22 = Years & months menu

        30 = --div--,Events
        31 = List
        32 = Details
    }

    module {
        #defaultPid.tx_news_domain_model_news = 34
        #redirectToPageOnStart = 34
        #allowedPage = 34
        preselect {
            sortingField = datetime desc
        }
    }
}

//============================================================
// SET DEFAULT VALUES FOR FLEXFORM FIELDS
// http://docs.typo3.org/TYPO3/TSconfigReference/UserTsconfig/TopLevelObjects/Index.html?highlight=tcadefaults
//============================================================

TCAdefaults {
    tx_news_domain_model_news.hidden = 1
    sys_file_reference.showinpreview = 1
}


//============================================================
// HIDE/RECONFIG FIELDS
// http://docs.typo3.org/TYPO3/TSconfigReference/UserTsconfig/TopLevelObjects/Index.html?highlight=tcadefaults
//============================================================

TCEFORM.tx_news_domain_model_news {
    type {
        disabled = 1
    }
    sys_language_uid.disabled = 1
    rte_disabled.disabled = 1
    author.disabled = 0
    author_email.disabled = 0
    archive.disabled = 1
    alternative_title.disabled = 0
    path_segment.disabled = 0
}