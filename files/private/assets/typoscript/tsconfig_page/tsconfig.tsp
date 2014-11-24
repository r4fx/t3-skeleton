#============================================================
# INTERFACE AND DEFAULT ACTIONS
#============================================================
TCEMAIN.table {
	pages{
		disableHideAtCopy = 0
	}

	tt_content {
		disableHideAtCopy = 0
		disablePrependAtCopy = 1
	}
}


#============================================================
# USTAWIENIA MODUŁÓW
# http://docs.typo3.org/typo3cms/TSconfigReference/PageTsconfig/Mod/Index.html
#============================================================

mod {

    # USTAWIENIA MODUŁU WEB -> PAGE
    web_layout {
        menu.function {
            // Disable QuickEdit
            0 = 0
        }

        disableSearchBox = 1
    }

    # USTAWIENIA MODUŁU WEB -> VIEW
    web_view.previewFrameWidths {
        300.label = myPreview
        300.height = 500
    }

    # USTAWIENIA MODUŁU WEB -> LIST
    web_list {
        alternateBgColors = 1
    }

    SHARED {
        #defaultLanguageFlag = pl
        #defaultLanguageLabel = polish
    }
}



#===================================================
# NEW CONTENT ELEMENT WIZARD
#===================================================
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
}

mod.wizards.newContentElement.wizardItems.special.show := addToList(prism)


#===================================================
# SET DEFAULT CONFIG FOR FLEXFORM FIELDS
# http://docs.typo3.org/typo3cms/TSconfigReference/PageTsconfig/TCEform/Index.html
#===================================================
TCEFORM {
    tt_content {
        pi_flexform.mygeshi_pi1.sDEF {
            title.disabled = 1
            code {
                config {
                    cols = 200
                    rows = 10
                }
            }
        }
    }
}