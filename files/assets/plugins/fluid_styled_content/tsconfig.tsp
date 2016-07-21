//============================================================
// CONTENT HEADERS
//============================================================

TCEFORM.tt_content.header_layout {
    // Default header tag, see at {$styles.content.defaultHeaderType}
    altLabels.0 = LLL:files/assets/l10n/locallang.xlf:header_layout.default

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
    altLabels.0 = ---

    addItems {
        1 = Box container
        2 = Box centered
    }
}