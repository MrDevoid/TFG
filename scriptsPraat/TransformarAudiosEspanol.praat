form Filename and number of songs
	sentence audiosSourcePath ../../Universidad/TFG/S0329/INTER1SP_01
	sentence audiosDestPath ./Audios
endform

procedure nombreArchivos: direct$
	if direct$ = "sessa001" || direct$ = "sessa002"
		.nombre$ = "EspanolIra"
		.destiny$ = "Ira"
	elsif direct$ = "sessf001" || direct$ = "sessf002"
		.nombre$ = "EspanolMiedo"
		.destiny$ = "Miedo"
	elsif direct$ = "sessd001" || direct$ = "sessd002"
		.nombre$ = "EspanolAsco"
		.destiny$ = "Asco"
	elsif direct$ = "sesss001" || direct$ = "sesss002"
		.nombre$ = "EspanolTristeza"
		.destiny$ = "Tristeza"
	elsif direct$ = "sessj001" || direct$ = "sessj002"
		.nombre$ = "EspanolAlegria"
		.destiny$ = "Alegria"
	elsif direct$ = "sessn001" || direct$ = "sessn002"
		.nombre$ = "EspanolNeutral"
		.destiny$ = "Neutral"
	elsif direct$ = "sessh001"
		.nombre$ = "EspanolNeutralAlto"
		.destiny$ = "Neutral"
	elsif direct$ = "sessl001"
		.nombre$ = "EspanolNeutralBajo"
		.destiny$ = "Neutral"
	elsif direct$ = "sessw001"
		.nombre$ = "EspanolNeutralLento"
		.destiny$ = "Neutral"
	elsif direct$ = "sessz001"
		.nombre$ = "EspanolNeutralRapido"
		.destiny$ = "Neutral"
	endif
endproc


procedure transformarAudios: nameOfPath$
	directory$ = audiosSourcePath$ + "/" + nameOfPath$ + "/*" 
	directoryList = Create Strings as directory list: "directoryList", directory$
	numberOfDirectories = Get number of strings
	for i from 1 to numberOfDirectories
		select directoryList
		nameOfDirectory$ = Get string... i
		@nombreArchivos: nameOfDirectory$
		nameOfFiles$ = nombreArchivos.nombre$
		nameOfDestPath$ = nombreArchivos.destiny$
		nameOfDirectory$ = audiosSourcePath$ + "/" + nameOfPath$ + "/" + nameOfDirectory$
		name$ = nameOfDirectory$ + "/" + "*.l16"
		Create Strings as file list: "list", name$
		numberOfSongs = Get number of strings
		for counter from 1 to numberOfSongs
			select Strings list
			name$ = Get string... counter
			name$ = nameOfDirectory$ + "/" + name$
			sound=Read Sound from raw 16-bit Little Endian file: (name$)
			destPath$ = audiosDestPath$ + "/" + nameOfDestPath$ + "/" + nameOfFiles$ + string$ (counter) + ".wav"
			select sound
			Save as WAV file: (destPath$)
		endfor
	endfor
endproc

@transformarAudios: "f"
@transformarAudios: "m" 
