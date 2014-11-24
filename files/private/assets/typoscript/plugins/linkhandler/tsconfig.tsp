#========== LINK HANDLER
RTE.default.tx_linkhandler {
	record {
		label = Records
		listTables = *
		onlyPids = 27,99,120
		onlyPids.recursive = 1
	}

}

mod.tx_linkhandler {
	record {
		label = Records
		listTables = *
		onlyPids = 27,99,120
		onlyPids.recursive = 1
	}
}
#========== end LINK HANDLER