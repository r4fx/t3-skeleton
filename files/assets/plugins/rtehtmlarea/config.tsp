// Keep your eyes open on always updated manual:
// http://docs.typo3.org/typo3cms/extensions/rtehtmlarea/
// **********************************************************************

RTE.default {
    path = files/public/uploads/
    contentCSS = files/assets/plugins/rtehtmlarea/rte.css

    enableWordClean = 1
	removeTrailingBR = 0
	removeComments = 1
	removeTags = center, font, o:p, sdfield
	removeTagsAndContents = link, meta, script, style, title
    defaultContentLanguage = pl

    RTEWidthOverride = 75%
    showStatusBar =  1
    keepButtonGroupTogether = 0

    // Toolbar options
	showButtons = *
	hideButtons = fontstyle, emoticon, language, showlanguagemarks, lefttoright, righttoleft, textindicator, acronym, big, small, blockstyle, emphasis, insertedtext, definition, showhelp, deletedtext, fontsize, copy, cut, paste, monospaced,citation, code, user

	// The keywords space, bar and linebreak may be used to insert a space, a separator or a line break
    toolbarOrder (
        formatblock, space, textstyle, bar, left, center, right, justifyfull, space, orderedlist, unorderedlist, definitionlist, definitionitem, bar, indent, outdent, insertparagraphbefore, insertparagraphafter, linebreak,
        table, toggleborders, bar, tableproperties, tablerestyle, bar, rowproperties, rowinsertabove, rowinsertunder, rowdelete, rowsplit, bar, columnproperties, columninsertbefore, columninsertafter, columndelete, columnsplit, bar, cellproperties, cellinsertbefore, cellinsertafter, celldelete, cellsplit, cellmerge, linebreak,
        undo, redo, space, pastetoggle, pastebehaviour, bar, findreplace, spellcheck, removeformat, bar, image, link, unlink, bar, strong, italic, underline, strikethrough, subscript, superscript, blockquote, quotation, span, textcolor, bgcolor,
        bar, line, insertcharacter, inserttag, editelement, bar, chMode, linebreak
    )

	hideTableOperationsInToolbar = 0

    contextMenu {
        disable = 0
        maxHeight = 400

        showButtons (
            copy, cut, paste, strong, italic, underline, strikethrough, textcolor, bgcolor, link, unlink, image, bar,
            tableproperties, tablerestyle, bar, rowproperties, rowinsertabove, rowinsertunder, rowdelete, rowsplit, bar,
            columnproperties, columninsertbefore, columninsertafter, columndelete, columnsplit, bar, cellproperties,
            cellinsertbefore, cellinsertafter, celldelete, cellsplit, cellmerge
        )

        hideButtons (
            undo, redo, findreplace, spellcheck, inserttag, user, line,
            cellinsertbefore, cellinsertafter, celldelete, cellsplit, cellmerge,
            tableproperties, tablerestyle, rowproperties, rowinsertabove, rowinsertunder, rowdelete, rowsplit,
            columnproperties, columninsertbefore, columninsertafter, columndelete, columnsplit, bar, cellproperties
        )
    }

    // Buttons behaviour
	buttons {
        left.useClass = inline-left
        center.useClass = inline-center
        right.useClass = inline-right
        justifyfull.useClass = inline-justify

		image {
		    options {
		        removeItems = magic

		        magic.maxWidth = 1024
		        magic.maxHeight = 1000
		        plain.maxWidth = 1024
		        plain.maxHeight = 1000
		    }

		    properties {
                removeItems = float, paddingTop, paddingRight, paddingBottom, paddingLeft

                class {
                    // Class to be assigned by default to an image when it is inserted in the RTE.
                    #default =
		            allowedClasses = float-left, float-right
		        }
		    }
		}

		link {
		    relAttribute.enabled = 1
		    pageIdSelector.enabled = 1
		    queryParametersSelector.enabled = 0

            options {
                removeItems =
            }

            properties {
                class {
                    allowedClasses := removeFromList(download, external-link-new-window, internal-link-new-window, internal-link)
                    allowedClasses := addToList(btn, file)
                }
            }

            // Exteranl links
            url {
                properties {
                    // target works from TYPO3 v.7
                    target.default = _blank
                    class.default = external-link
                }
            }

            // File links
            file {
                properties {
                    target.default = _blank
                    class.default = file
                }
            }
		}

        formatblock {
            orderItems = p, h1, h2, h3, h4, h5, h6, pre, address, blockquote, div
            removeItems = h1, address, blockquote
            postfixLabelWithTag = 1
            width = 150
            listWidth = 200
        }

        formattext {
            // If not set, the default order will be alphabetical
            #orderItems =
            #removeItems =
        }

        fontstyle {
            #addItems =
            #removeItems =
        }

        // Hidden from toolbar
        fontsize {
            removeItems = *
            addItems = Small, Normal, Large
            #defaultItem = Normal
            width = 100
        }

        // Text objects
        textstyle {
            // Show all applicable class selectors available in the style sheet file
            showTagFreeClasses = 1

            width = 150
            listWidth = 200

            tags {
                span {
                    allowedClasses := addToList()
                }
            }
        }

        // Block objects
        // New classes for objects (these classes must exist in contentCSS file)
        blockstyle {
            # Show all applicable class selectors available in the style sheet file
            showTagFreeClasses = 1

            tags {
                p {
                    allowedClasses := addToList()
                }

                div {
                    #allowedClasses := addToList()
                }

                table {
                    #allowedClasses := addToList()
                }

                td {
                    #allowedClasses := addToList()
                }
            }
        }

	    toggleborders {
	        keepInToolbar = 1
	        setOnTableCreation = 1
	        setOnRTEOpen = 1
	    }

        spellcheck {
            enablePersonalDictionaries = 1
            dictionaries.restrictToItems = pl, en
        }

	    inserttag {
	        denyTags = font, u, strike, table
	    }

	    editelement {
	        removeFieldsets = language, events
	    }

	    // HOT KEYS
        strong.hotKey = b
        italic.hotKey = i
        strikethrough.hotKey = s
        underline.hotkey = u
	}

    // Remove the following fieldsets from the table operations dialogs
	disableAlignmentFieldsetInTableOperations = 1
	disableSpacingFieldsetInTableOperations = 1
	disableColorFieldsetInTableOperations = 1
	disableLayoutFieldsetInTableOperations = 1
	disableBordersFieldsetInTableOperations = 1
    disableDescriptionFieldsetInTableOperations = 1
    disableStyleFieldsetInTableOperations = 0

    // userElements
	userElements {

	}
}

// Property for "buttons.link"
RTE.classesAnchor {
    externalLink.titleText >
    internalLink.titleText >
    file {
        titleText = Add file icon
    }
    mail.titleText >
}

RTE.classes >


// FE RTE configuration
RTE.default.FE < RTE.default
RTE.default.FE.FE >
RTE.default.FE.userElements >