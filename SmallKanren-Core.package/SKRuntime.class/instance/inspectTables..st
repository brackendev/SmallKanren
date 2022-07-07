inspecting
inspectTables: aBuilder
	<inspectorPresentationOrder: 2 title: 'Tables'>
	| notebook |
	notebook := aBuilder newNotebook.
	"tables ifEmpty: [ self halt. notebook hide ]."
	tables keysAndValuesDo: [ :tableName :table |
		notebook
			addPageTitle: tableName provider: [ 
				aBuilder newTable
					addColumn: (SpStringTableColumn title: 'Key' evaluated: #key);
					addColumn: (SpStringTableColumn title: 'Cache' evaluated: [ :kv | ' ' join: kv value ]);
					items: (table associations collect: [:e | StInspectorAssociationNode hostObject: e ])]].
	^ notebook.