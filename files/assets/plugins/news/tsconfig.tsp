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

        20 = --div--,Date menu
        21 = Years only menu
        22 = Years & months menu
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

// "SAVE & PREVIEW" FOR NEWS RECORDS

TCEMAIN.preview {
    tx_news_domain_model_news {
        previewPageId = 109
        useDefaultLanguageRecord = 0
        fieldToParameterMap {
            uid = tx_news_pi1[news_preview]
        }
        additionalGetParameters {
            tx_news_pi1.controller = News
            tx_news_pi1.action = detail
        }
    }
}

//============================================================
// SET DEFAULT VALUES FOR FLEXFORM FIELDS
// http://docs.typo3.org/TYPO3/TSconfigReference/UserTsconfig/TopLevelObjects/Index.html?highlight=tcadefaults
//============================================================

TCAdefaults {
    tx_news_domain_model_news.hidden = 1
}

//============================================================
// HIDE/RECONFIG FIELDS
// http://docs.typo3.org/TYPO3/TSconfigReference/UserTsconfig/TopLevelObjects/Index.html?highlight=tcadefaults
//============================================================

TCEFORM.tx_news_domain_model_news {
    type.disabled = 1
    sys_language_uid.disabled = 1
    rte_disabled.disabled = 1
    author.disabled = 0
    author_email.disabled = 0
    archive.disabled = 1
    alternative_title.disabled = 0
    path_segment.disabled = 0
}

TCEFORM.sys_file_reference {
    showinpreview.disabled = 0
}