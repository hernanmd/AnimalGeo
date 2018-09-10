accessing
fieldInstVarNames

	^ self allInstVarNames copyWithoutAll: #(versions date author names)