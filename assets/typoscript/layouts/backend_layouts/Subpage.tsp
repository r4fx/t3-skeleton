mod {
    web_layout {
        BackendLayouts {
            Subpage {
                title = Subpage
                #icon = /Images/BackendLayouts/default_2_columns_25_75.gif
                config {
                    backend_layout {
                        colCount = 4
                        rowCount = 1

                        rows {
                            1 {
                                columns {
                                    1 {
                                        name = Main container
                                        colPos = 0
                                        colspan = 3
                                    }

                                    2 {
                                        name = Aside
                                        colPos = 1
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}