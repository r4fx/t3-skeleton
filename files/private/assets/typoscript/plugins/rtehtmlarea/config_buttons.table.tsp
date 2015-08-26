# OPTIONAL SETTINGS FOR TABLES
#
# Always actual manual: http://docs.typo3.org/typo3cms/extensions/rtehtmlarea/

RTE.default {


    disableLayoutFieldsetInTableOperations = 0
    	disableAlignmentFieldsetInTableOperations =
    0
	disableSpacingFieldsetInTableOperations =

    0

	buttons {

		#***** New classess for block objects (must be included in
        contentCSS)

            blockstyle {

                tags {


                    table {
					allowedClasses := addToList(float-right,

                float-left)
				}

				td {
					allowedClasses := addToList(inline-left,
            inline-right)
				}
			}
		}

		table {
			removeFieldsets = borders, description, language
			properties {
				removed = height
				headers {
					defaultValue = none
				}

				width {
					defaultValue =
				}
			}
		}

		tableproperties {
			removeFieldsets = borders, description, language
			properties {
				headers {
					defaultValue = top
				}
			}
		}

		rowproperties {
			removeFieldsets = border, alignment
			properties {
				removed = width
			}
		}

		columnproperties {
			properties {
				widthUnit {
					defaultValue = %
				}
			}
		}

		cellproperties {
			properties {
				widthUnit {
					defaultValue = %
				}
			}
		}
	}
}