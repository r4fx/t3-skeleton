//============================================================
// CONTENT HEADERS
//============================================================

TCEFORM.tt_content.header_layout {
    // Default header tag is number 0, see at {$styles.content.defaultHeaderType}
    altLabels.0 = LLL:assets/l10n/locallang.xlf:header_layout.default
    altLabels.1 = H2
    altLabels.2 = H3
    altLabels.3 = H4
    altLabels.4 = H5
    altLabels.5 = H6

    // Additional items
    addItems.6 = Special H2
}

//============================================================
// CONTENT LAYOUT
//============================================================

TCEFORM.tt_content.layout {
    disableNoMatchingValueElement = 1
    keepItems = 0

    // Common layout options
    addItems {
        101 = common layout 101
        102 = common layout 102
    }

    types {
        // Layout options for textmedia elements
        textmedia.addItems {
            1 = textmedia layout 1
            2 = textmedia layout 2
        }

        // Layout options for html elements
        html.addItems {
            1 = html layout 1
            2 = html layout 2
        }
    }
}

//============================================================
// CONTENT WRAPPERS
//============================================================

TCEFORM.tt_content.frame_class {
    disableNoMatchingValueElement = 1
    keepItems = default, none
    addItems {
        custom_1 = LLL:assets/l10n/locallang.xlf:frame_class.custom_1
    }
}

//============================================================
// PAGE LAYOUT
//============================================================
TCEFORM.pages.layout {
    disableNoMatchingValueElement = 1
    keepItems = 0

    addItems {
        1 = Style 1
        2 = Style 2
    }
}
