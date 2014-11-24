# Always actual manual: http://docs.typo3.org/typo3cms/extensions/rtehtmlarea/

RTE.default.proc {

    ## TRANSFORMATION METHOD
    ## We assume that CSS Styled Content is used.
	overruleMode = ts_css

    ## DO NOT CONVERT BR TAGS INTO LINEBREAKS
    ## br tags in the content are assumed to be intentional.
	dontConvBRtoParagraph = 1

    ## PRESERVE DIV SECTIONS - DO NOT REMAP TO P
	preserveDIVSections = 1

	plainImageMode = lockRatioWhenSmaller

    ## TAGS ALLOWED
    ## Added to the default internal list from "css_styled_content"
    ## But, for the sake of clarity, we use a complete list in alphabetic order.
    ## center, font, link, meta, o:p, strike, sdfield, style, title and u will be removed on entry (see below).
    ## b and i will be remapped on exit (see below).
	allowTags (
		a, abbr, acronym, address, b, bdo, big, blockquote, br, caption, center, cite, code, col, colgroup, dd, del, dfn, dl, div, dt, em, font,
		h1, h2, h3, h4, h5, h6, hr, i, img, ins, kbd, label, li, link, meta, ol, p, pre, q, samp, sdfield, small,
		span, strike, strong, style, sub, sup, table, thead, tbody, tfoot, td, th, tr, title, tt, u, ul, var
    )
    allowTags := addToList(iframe,t3content)

    ## TAGS ALLOWED OUTSIDE P & DIV
	allowTagsOutside := addToList(iframe,t3content,code,cite,img)

    ## TAGS DENIED
    ## Make sure we can set rules on any tag listed in allowTags.
	denyTags >

    ## ALLOWED P & DIV ATTRIBUTES
    ## Attributes class and align are always preserved
    ## Align attribute will be unset on entry (see below)
    ## This is a list of additional attributes to keep
	keepPDIVattribs = id, title, dir, lang, xml:lang, style

    ## REMAP BOLD AND ITALIC TO STRONG AND EMPHASIS AND VICE VERSA
	transformBoldAndItalicTags = 1

    ## ALLOW TO WRITE ABOUT HTML
	dontUndoHSC_db = 1
	dontHSC_rte = 1

    ## List all class selectors that are allowed on the way to the database
    allowedClasses (
        external, download, mail, modal,
        inline-left, inline-center, inline-right, inline-justify,
        frame1, frame2, important, detail, indent
    )

    ##==================== CONTENT TO DATABASE
	entryHTMLparser_db = 1
	entryHTMLparser_db {

        ## TAGS ALLOWED
        ## Always use the same list of allowed tags.
		allowTags < RTE.default.proc.allowTags

        ## TAGS DENIED
        ## Make sure we can set rules on any tag listed in allowTags.
		denyTags >

        ## AVOID CONTENT BEING HSC'ed TWICE
		htmlSpecialChars = 0

		tags {

            ## REMOVE IMG TAGS
            ##img.allowedAttribs = 0
            ##img.rmTagIfNoAttrib = 1

            ## Allow img tags
            img >

            ## CLEAN ATTRIBUTES (style) ON THE FOLLOWING TAGS (span)
            span.fixAttrib.style.unset = 1

            ## Allow style attribute fos span
            span.fixAttrib.style.unset >

			hr.allowedAttribs = class
			b.allowedAttribs = id, title, dir, lang, xml:lang, class
			bdo.allowedAttribs = id, title, dir, lang, xml:lang, class
			big.allowedAttribs = id, title, dir, lang, xml:lang, class
			blockquote.allowedAttribs = id, title, dir, lang, xml:lang, class
			cite.allowedAttribs = id, title, dir, lang, xml:lang, class
			code.allowedAttribs = id, title, dir, lang, xml:lang, class
            div.allowedAttribs = id, title, dir, lang, xml:lang, class, style
			del.allowedAttribs = id, title, dir, lang, xml:lang, class
			dfn.allowedAttribs = id, title, dir, lang, xml:lang, class
			em.allowedAttribs = id, title, dir, lang, xml:lang, class
			i.allowedAttribs = id, title, dir, lang, xml:lang, class
			ins.allowedAttribs = id, title, dir, lang, xml:lang, class
			kbd.allowedAttribs = id, title, dir, lang, xml:lang, class
			label.allowedAttribs = id, title, dir, lang, xml:lang, class
            p.allowedAttribs = id, title, dir, lang, xml:lang, class, style
			q.allowedAttribs = id, title, dir, lang, xml:lang, class
			samp.allowedAttribs = id, title, dir, lang, xml:lang, class
			small.allowedAttribs = id, title, dir, lang, xml:lang, class
            span.allowedAttribs = id, title, dir, lang, xml:lang, class, style
			strike.allowedAttribs = id, title, dir, lang, xml:lang, class
			strong.allowedAttribs = id, title, dir, lang, xml:lang, class
			sub.allowedAttribs = id, title, dir, lang, xml:lang, class
			sup.allowedAttribs = id, title, dir, lang, xml:lang, class
			tt.allowedAttribs = id, title, dir, lang, xml:lang, class
			u.allowedAttribs = id, title, dir, lang, xml:lang, class
			var.allowedAttribs = id, title, dir, lang, xml:lang, class
		}

        ## REMOVE OPEN OFFICE META DATA TAGS, WORD 2003 TAGS, LINK, META, STYLE AND TITLE TAGS, AND DEPRECATED HTML TAGS
        ## We use this rule instead of the denyTags rule so that we can protect custom tags without protecting these unwanted tags.
		removeTags = center, font, link, meta, o:p, sdfield, strike, style, title, u

        ## PROTECT CUSTOM TAGS
		keepNonMatchedTags = protect
	}

	HTMLparser_db {

        ## STRIP ALL ATTRIBUTES FROM THESE TAGS
        ## If this list of tags is not set, it will default to: b,i,u,br,center,hr,sub,sup,strong,em,li,ul,ol,blockquote,strike.
        ## However, we want to keep xml:lang attribute on most tags and tags from the default list where cleaned on entry.
		noAttrib = br

        ## XHTML COMPLIANCE
        ## Note that applying xhtml_cleaning on exit would break non-standard attributes of typolink tags
		xhtml_cleaning = 1
	}

	exitHTMLparser_db = 1
	exitHTMLparser_db {

        ## Remap bold and italic
        tags.b.remap = strong
        tags.i.remap = em

        ## KEEP ALL TAGS
        ## Unwanted tags were removed on entry.
        ## Without this rule, the parser will remove all tags! Presumably, this rule will be more efficient than repeating the allowTags rule
		keepNonMatchedTags = 1

        ## AVOID CONTENT BEING HSC'ed TWICE
		htmlSpecialChars = 0
	}

}

## Use same processing as on entry to database to clean content pasted into the editor
RTE.default.enableWordClean.HTMLparser < RTE.default.proc.entryHTMLparser_db

## Use same RTE processing rules in FE
RTE.default.FE.proc < RTE.default.proc

## RTE processing rules for bodytext column of tt_content table
## Erase settings from other extensions
RTE.config.tt_content.bodytext >

## Make sure we use ts_css transformation
RTE.config.tt_content.bodytext.proc.overruleMode = ts_css
RTE.config.tt_content.bodytext.types.text.proc.overruleMode = ts_css
RTE.config.tt_content.bodytext.types.textpic.proc.overruleMode = ts_css