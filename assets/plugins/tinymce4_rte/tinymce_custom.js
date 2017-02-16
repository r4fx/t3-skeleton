tinymce.init({
	selector: '.tinymce4_rte',
	browser_spellcheck: true,
	paste_as_text: true,
	remove_script_host: false,
	relative_urls: false,
	menubar: false,
	toolbar_items_size: 'small',
	autoresize_max_height: 500,
	plugins: [
		'autosave advlist autolink lists charmap hr anchor pagebreak searchreplace wordcount visualblocks visualchars code',
		'nonbreaking save table directionality template paste autoresize shy contextmenu textcolor'
	],

	toolbar1: 'undo redo cut copy paste searchreplace | bold italic strikethrough forecolor | blockquote nonbreaking | typo3image typo3link unlink | formatselect',
	toolbar2: 'alignleft aligncenter alignright alignjustify | bullist numlist outdent indent hr table | visualchars visualblocks removeformat code | template',

	external_plugins: {
		typo3filemanager: 'EXT:tinymce4_rte/Resources/Public/Plugins/Typo3FileManager/typo3filemanager.min.js',
		shy: 'EXT:tinymce/Resources/Public/JavaScript/TinymcePlugins/shy/plugin.min.js'
	},

	contextmenu: 'typo3link unlink',

	formats: {
		alignleft: [
			{selector: 'p,h1,h2,h3,h4,h5,h6,td,th,div,ul,ol,li,table', classes: 'inline-left'},
			{selector: 'img', classes: 'float-left'}
		],
		aligncenter: {selector: 'p,h1,h2,h3,h4,h5,h6,td,th,div,ul,ol,li,table', classes: 'inline-center'},
		alignright:
			[
				{selector: 'p,h1,h2,h3,h4,h5,h6,td,th,div,ul,ol,li,table', classes: 'inline-right'},
				{selector: 'img', classes: 'float-right'}
			]
		,
		alignjustify: {selector: 'p,h1,h2,h3,h4,h5,h6,td,th,div,ul,ol,li,table', classes: 'inline-justify'},

		greenBox: {
			block: 'div',
			wrapper: 1,
			remove: 'all',
			classes: 'box-green'
		}
	},

	block_formats:
		'Paragraph=p;' +
		'Header 2=h2;' +
		'Header 3=h3;' +
		'Header 4=h4;' +
		'Header 5=h5;' +
		'Header 6=h6 '
	,

	style_formats: [
		{title: 'Image Left', selector: 'img', styles: {
			'float' : 'left',
			'margin': '0 10px 0 10px'
		}},
		{title: 'Image Right', selector: 'img', styles: {
			'float' : 'right',
			'margin': '0 10px 0 10px'
		}}
	],

	// style_formats_merge: true,

	textcolor_map: [
		"FFE600", "Gold",
		"EC008C", "Pink",
		"00AEEF", "Blue"
	]
	
	//templates: [
	//	{ title: 'Statement box', content: '<div class="statement-content-box"><div class="statement-content-box__text">«Text»<div class="statement-box__date inline-right">(Date)</div></div><div class="statement-content-box__person">Person, Position</div>' }
	//]
});
