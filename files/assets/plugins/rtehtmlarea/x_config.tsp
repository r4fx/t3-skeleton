// CUSTOM RTE CONFIG
//
// Keep your eyes open on always updated manual:
// http://docs.typo3.org/typo3cms/extensions/rtehtmlarea/
// **********************************************************************

RTE.default {

    #path = files/public/user_upload/

    buttons {
        image {
            properties {
                class {
                    #default =
                    allowedClasses := addToList()
                }
            }
        }

        // New elements in Format blocks, must be lowercase
        formatblock {
            addItems = externalurl

            items{
                externalurl {
                    label = Link style
                    addClass = externalUrl
					tagName = p
                }
            }
        }

        // New classess for links
        link {
            properties {
                class {
                    allowedClasses := addToList()
                }
            }
        }

        // New classess for text objects (they must be present in contentCSS)
        textstyle {
            tags {
                span {
                    allowedClasses := addToList()
                }
            }
        }

        // New classess for block objects (they must be present in contentCSS)
        blockstyle {
            tags {
                div {
                    allowedClasses := addToList()
                }

                p {
                    allowedClasses := addToList()
                }
            }
        }
	}
}

// DB PROCESES
RTE.default.proc {
    allowedClasses := addToList(externalUrl)
}

// Fun with classess from rte.css
RTE.classes {
	sizeBigger {
		#name = LLL:EXT:rtehtmlarea/htmlarea/locallang_tooltips.xml:justifyleft
		name = Bigger text
	}
}

// Property for "buttons.link"
RTE.classesAnchor {

}

// COLORS
RTE.default {
    disableColorPicker = 1
    disableSelectColor = 0
    colors = color1, color2, color3, color4
}

RTE.colors {
    color1 {
        name = Success
        value = #00A631
    }

    color2 {
        name = Alert
        value = #B03C1D
    }

    color3 {
        name = Warning
        value = #ffb82d
    }

    color4 {
        name = Info
        value = #249cff
    }
}

// Custom user elements
RTE.default {
    userElements {
        // Category with various elements
        10 = Defined elements
        10 {
            2 = Horizontal line
            2.description = Safely horizontal line
            2.content = <div><hr></div>

            3 = Content ID
            3.description = Insert content by Id
            3.mode = wrap
            3.content = <t3content>|</t3content>

            4 = Logo 1
            4.description = This is the logo number 1.
            4.content = <img src="###_URL###fileadmin/istate/curro.png">

            // This submits the selected text content to the script, rte_cleaner.php
            5 = Strip all tags
            5.description = All HTML-codes are removed from selection.
            5.mode = processor
            5.submitToScript = typo3/rte_cleaner.php
        }

        // Category with images from the files/public/istate/ folder
        20 = Logo
        20.load = images_from_folder
        20.merge = 1
        20.path = files/public/istate/

        // here the logo from "Various elements" is included as well
        20.1 < .10.1
    }
}