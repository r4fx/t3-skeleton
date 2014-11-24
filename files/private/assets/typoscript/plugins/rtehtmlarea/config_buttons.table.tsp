# OPCJONALNE USTAWIENIA DLA TABELEK
# DOŁĄCZ TYLKO JEŚLI POTRZEBUJESZ SPECJALNYCH USTAWIEŃ DLA KOLUMN, WIERSZY I KOMÓREK
#
# Always actual manual: http://docs.typo3.org/typo3cms/extensions/rtehtmlarea/

RTE.default {

	disableLayoutFieldsetInTableOperations = 0
	disableAlignmentFieldsetInTableOperations = 0
    disableSpacingFieldsetInTableOperations = 0

    buttons {

		#***** Nowe klasy dla obiektów blokowych (muszą występować w contentCSS)
        blockstyle {
            tags {

                table {
                    allowedClasses := addToList(float-right, float-left)
                }
				
				td {
                    allowedClasses := addToList(align-left, align-right)
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
					defaultValue = 100
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