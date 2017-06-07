// !!! This file is included automatically from location: "typo3conf/AdditionalConfiguration.php" !!!

//============================================================
// Manual:
// https://docs.typo3.org/typo3cms/TSconfigReference/
//============================================================

// INTERFACE AND DEFAULT ACTIONS
TCEMAIN.table {
	tt_content {
		disablePrependAtCopy = 1
	}
}

// SET DEFAULTS PERMISSIONS FOR NEW PAGES
TCEMAIN {
    permissions {
        #userid = 
        #groupid = 
        #group = show,edit,delete,new,editcontent
        #everybody = show
    }
}

// WEB -> PAGE
mod.web_layout {
    menu.function {
        // Disable QuickEdit
        0 = 0
    }

    disableSearchBox = 1
}

// WEB -> VIEW
mod.web_view {
    previewFrameWidths {
        300.label = myPreview
        300.height = 500
    }
}

// WEB -> LIST
mod.web_list {
    alternateBgColors = 1
    hideTranslations = *
}

mod.SHARED {
    #defaultLanguageFlag = pl
    #defaultLanguageLabel = polish
}