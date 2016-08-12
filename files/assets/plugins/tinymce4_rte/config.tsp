RTE.default {
    tinymceConfiguration = files/assets/plugins/tinymce4_rte/tinymce_custom.js
    contentCSS = files/assets/plugins/tinymce4_rte/tinymce_custom.css

    buttons {
        image {
            options {
                removeItems = magic
                magic.maxWidth = 1200
                magic.maxHeight = 1200
                plain.maxWidth = 1200
                plain.maxHeight = 1200
            }
        }
    }
}

RTE.default.proc {
    allowTagsOutside := addToList(iframe,code,cite)
    allowTags := addToList(iframe)
    transformBoldAndItalicTags = 0

    /*
    // List all class selectors that are allowed on the way to the database
    allowedClasses (
    external, file, mail, modal,
    inline-left, inline-center, inline-right, inline-justify,
    frame1, frame2, important, detail, indent
    )
    */
}