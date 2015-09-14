#============================================================
# Remember to edit file ce_layout/setup.tss
#============================================================


#============================================================
# CONTENT FRAMES
#============================================================
TCEFORM.tt_content.section_frame{
    removeItems = 1,5,6,10,11,12,20,21,66

    altLabels {
        0 = [Default - no wrap]
        #1 = LLL:EXT:ext_key/locallang_tca.xml:tt_content.section_frame.altLabels.20
    }

    addItems {
        30 = Box
        40 = Color box
    }
}

#============================================================
# CONTENT LAYOUT
#============================================================
TCEFORM.tt_content.layout{
    altLabels {
        0 = ---
        #1 = Variant 1
    }

    addItems {
        10 = center
        11 = left
        12 = right
        13 = mini hr
    }

    removeItems = 1,2,3
}