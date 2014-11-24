#
# CUSTOM RTE CONFIG
#
# Always actual manual: http://docs.typo3.org/typo3cms/extensions/rtehtmlarea/
#

RTE.default {

    # path = files/public/user_upload/graphics/

    buttons {
        image {
            options {
                magic.maxWidth = 800
                magic.maxHeight = 1000
                plain.maxWidth = 800
                plain.maxHeight = 1000
            }

            properties {
                class {
                    #default =
                    allowedClasses := addToList(noShadow)
                }
            }
        }

        #***** Nowe obiekty dla formatowania,
        # dodawane pozycje musze byc malymi znakami
        formatblock {
            addItems = h4lead, externalurl

            items{
                h4lead {
                    label = Nagłówek H4 Lead
                    addClass = leadHeader
					tagName = h4
                }

                externalurl {
                    label = Styl dla linku
                    addClass = externalUrl
					tagName = p
                }
            }
        }

        #***** Nowe klasy dostępne dla linkow
        link {
            properties {
                class {
                    allowedClasses := addToList()
                }
            }
        }

        #***** Nowe klasy dla obiektów tekstowych (muszą występować w contentCSS)
        textstyle {
            tags {
                span {
                    allowedClasses := addToList(sizeBigger)
                }
            }
        }

        #***** Nowe klasy dla obiektów blokowych (muszą występować w contentCSS)
        blockstyle {
            tags {
                div {
                    allowedClasses := addToList(sizeBigger)
                }

                p {
                    allowedClasses := addToList(sizeBigger)
                }
            }
        }
	}
}


#***** DB PROCESES
RTE.default.proc {

    #***** Dopuszczane klasy
    allowedClasses := addToList(sizeBigger, externalUrl)
}


#***** Obsługa klas z rte.css
RTE.classes {
	sizeBigger {
		#name = LLL:EXT:rtehtmlarea/htmlarea/locallang_tooltips.xml:justifyleft
		name = Większy tekst
	}
}

#***** Property for "buttons.link"
RTE.classesAnchor {

}


#***** COLORS
RTE.default {
    disableColorPicker = 1
    disableSelectColor = 0
    colors = color1, color2, color3
}

RTE.colors {

  color1 {
    name = Difined 1
    value = #00BDFF
  }

  color2 {
    name = Difined 2
    value = #775533
  }

  color3 {
    name = Difined 3
    value = #64B335
  }
}

#***** Custom user elements
RTE.default {
    userElements {
        # Category with various elements
        10 = Zdefiniowane elementy
        10 {
            2 = Pozioma linia
            2.description = Wstawia bezpieczną poziomą linię
            2.content = <div><hr></div>

            3 = Content ID
            3.description = Zostanie wyswietlona zawartosc contentu o wskazanym Id
            3.mode = wrap
            3.content = <t3content>|</t3content>

            4 = Logo 1
            4.description = This is the logo number 1.
            4.content = <img src="###_URL###fileadmin/istate/curro.png">

            # This submits the selected text content to the script, rte_cleaner.php
            5 = Strip all tags
            5.description = All HTML-codes are removed from selection.
            5.mode = processor
            5.submitToScript = typo3/rte_cleaner.php
        }

        # Category with images from the fileadmin/istate/ folder
        20 = Logo
        20.load = images_from_folder
        20.merge = 1
        20.path = fileadmin/istate/
        # here the logo from "Various elements" is included as well
        20.1 < .10.1
    }
}
