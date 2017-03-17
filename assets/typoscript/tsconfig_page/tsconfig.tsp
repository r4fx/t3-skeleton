// !!! This file is included automatically from location: "typo3conf/AdditionalConfiguration.php"
//
// Manual:
// https://docs.typo3.org/typo3cms/TSconfigReference/
// **********************************************************************

// INTERFACE AND DEFAULT ACTIONS
TCEMAIN.table {
	tt_content {
		disablePrependAtCopy = 1
	}
}

// DEFAULT USERS GROUP ID FOR NEW PAGES IN ACCESS MODULE
TCEMAIN.permissions.groupid = 

mod {

    // WEB -> PAGE
    web_layout {
        menu.function {
            // Disable QuickEdit
            0 = 0
        }

        disableSearchBox = 1
    }

    // WEB -> VIEW
    web_view.previewFrameWidths {
        300.label = myPreview
        300.height = 500
    }

    // WEB -> LIST
    web_list {
        alternateBgColors = 1
        hideTranslations = *
    }

    SHARED {
        #defaultLanguageFlag = pl
        #defaultLanguageLabel = polish
    }
}

// NEW CONTENT ELEMENT WIZARD
/*
mod.wizards.newContentElement.wizardItems.special {
    elements.prism {
        icon = gfx/c_wiz/html.gif
        title = PRISM code
        description = Wrap and color the snippets
        tt_content_defValues {
            CType = html
            layout = 1
            section_frame = 33
            bodytext = &lt;div>PRISM!</div>
        }
    }

    show := addToList(prism)
}
*/
