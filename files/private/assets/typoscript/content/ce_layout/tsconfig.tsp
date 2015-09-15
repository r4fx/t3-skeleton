#============================================================
# Manual: https://docs.typo3.org/typo3cms/TSconfigReference/PageTsconfig/TCEform/Index.html
# Remember to edit file ce_layout/setup.tss
#============================================================


#============================================================
# CONTENT WRAPPERS
#============================================================
TCEFORM.tt_content.section_frame {
    disableNoMatchingValueElement = 1

    keepItems = 0
    altLabels.0 =

    addItems {
        1 = Box
        2 = Color box
    }
}

#============================================================
# CONTENT LAYOUT
#============================================================
TCEFORM.tt_content.layout {
    disableNoMatchingValueElement = 1

    keepItems = 0
    altLabels.0 =

    addItems {
        1 = Inline center
        2 = Inline left
        3 = Inline right
    }
}