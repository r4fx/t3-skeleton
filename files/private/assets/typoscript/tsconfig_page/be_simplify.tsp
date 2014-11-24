#============================================================
# DISABLE UNUSED FLEXFORM FIELDS
#============================================================
TCEFORM {

    #===================================================
    # TT_CONTENT
    #===================================================
    tt_content {
        CType.removeItems = search,bullets

        sys_language_uid.disabled = 1
        layout.disabled = 0
        header_position.disabled = 0
        colPos.disabled = 0
        spaceBefore.disabled = 1
        spaceAfter.disabled = 1
        header_position.disabled = 1
        header_link.disabled = 0
        date.disabled = 1
    }

    #===================================================
    # NEWS
    #===================================================
    tx_news_domain_model_news {
        type.disabled = 1
        sys_language_uid.disabled = 1

        bodytext.disabled = 0
        rte_disabled.disabled = 0

        author.disabled = 0
        author_email.disabled = 1
        archive.disabled = 1
        alternative_title.disabled = 0
        path_segment.disabled = 0
    }
}