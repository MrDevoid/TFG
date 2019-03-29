form Filename and number of songs
	sentence nameOfResultFile sonidosNuevos.csv
	sentence audiosPath .
endform

procedure extraerAudios: nameOfPath$
if nameOfPath$ = "Alegria"
	etiqueta = 0
elsif nameOfPath$ = "Tristeza"
	etiqueta = 1
elsif nameOfPath$ = "Miedo"
	etiqueta = 2
elsif nameOfPath$ = "Asco"
	etiqueta = 3
elsif nameOfPath$ = "Ira"
	etiqueta = 4
elsif nameOfPath$ = "Neutral"
	etiqueta = 5
endif

name$ = audiosPath$ + "/" + nameOfPath$ + "/" + "Espanol*.wav"
Create Strings as file list: "list", name$
numberOfSongs = Get number of strings
for counter from 1 to numberOfSongs
	select Strings list
	name$ = Get string... counter
	name$ = audiosPath$ + "/" + nameOfPath$ + "/" + name$
	sound=Read from file: (name$)
include ObtenerVariables.praat
appendFileLine:nameOfResultFile$,meanAmplitude,",",minAmplitude,",",maxAmplitude,",",stdAmplitude,",",rangeAmplitude,",",meanPitch,",",minPitch,",",maxPitch,",",stdPitch,",",rangePitch,",",meanHarmonicity,",",minHarmonicity,",",maxHarmonicity,",",stdHarmonicity,",",rangeHarmonicity,",",minIntensity,",",maxIntensity,",",quantileIntensity,",",meanIntensity,",",stdIntensity,",",rangeIntensity,",",speakingrate,",",articulationrate,",",meanEnergy,",",stdEnergy,",",minEnergy,",",maxEnergy,",",rangeEnergy,",",meanMFCC1,",",stdMFCC1,",",minMFCC1,",",maxMFCC1,",",rangeMFCC1,",",meanMFCC2,",",stdMFCC2,",",minMFCC2,",",maxMFCC2,",",rangeMFCC2,",",meanMFCC3,",",stdMFCC3,",",minMFCC3,",",maxMFCC3,",",rangeMFCC3,",",meanMFCC4,",",stdMFCC4,",",minMFCC4,",",maxMFCC4,",",rangeMFCC4,",",meanMFCC5,",",stdMFCC5,",",minMFCC5,",",maxMFCC5,",",rangeMFCC5,",",meanMFCC6,",",stdMFCC6,",",minMFCC6,",",maxMFCC6,",",rangeMFCC6,",",meanMFCC7,",",stdMFCC7,",",minMFCC7,",",maxMFCC7,",",rangeMFCC7,",",meanMFCC8,",",stdMFCC8,",",minMFCC8,",",maxMFCC8,",",rangeMFCC8,",",meanMFCC9,",",stdMFCC9,",",minMFCC9,",",maxMFCC9,",",rangeMFCC9,",",meanMFCC10,",",stdMFCC10,",",minMFCC10,",",maxMFCC10,",",rangeMFCC10,",",meanMFCC11,",",stdMFCC11,",",minMFCC11,",",maxMFCC11,",",rangeMFCC11,",",meanMFCC12,",",stdMFCC12,",",minMFCC12,",",maxMFCC12,",",rangeMFCC12,",",minFormant1,",", maxFormant1,",",quantileFormant1,",",meanFormant1,",",stdFormant1,",",rangeFormant1,",",minFormant2,",",maxFormant2,",",quantileFormant2,",",meanFormant2,",",stdFormant2,",",rangeFormant2,",",minFormant3,",",maxFormant3,",",quantileFormant3,",",meanFormant3,",",stdFormant3,",",rangeFormant3,",",minFormant4,",",maxFormant4,",",quantileFormant4,",",meanFormant4,",",stdFormant4,",",rangeFormant4,",",minFormant5,",",maxFormant5,",",quantileFormant5,",",meanFormant5,",",stdFormant5,",",rangeFormant5,",",etiqueta
endfor
select all
Remove
endproc

deleteFile: nameOfResultFile$
appendFileLine:nameOfResultFile$,"meanAmplitude,minAmplitude,maxAmplitude,stdAmplitude,rangeAmplitude,meanPitch,minPitch,maxPitch,stdPitch,rangePitch,meanHarmonicity,minHarmonicity,maxHarmonicity,stdHarmonicity,rangeHarmonicity,minIntensity,maxIntensity,quantileIntensity,meanIntensity,stdIntensity,rangeIntensity,speakingRate,articulationRate,meanEnergy,stdEnergy,minEnergy,maxEnergy,rangeEnergy,meanMFCC1,stdMFCC1,minMFCC1,maxMFCC1,rangeMFCC1,meanMFCC2,stdMFCC2,minMFCC2,maxMFCC2,rangeMFCC2,meanMFCC3,stdMFCC3,minMFCC3,maxMFCC3,rangeMFCC3,meanMFCC4,stdMFCC4,minMFCC4,maxMFCC4,rangeMFCC4,meanMFCC5,stdMFCC5,minMFCC5,maxMFCC5,rangeMFCC5,meanMFCC6,stdMFCC6,minMFCC6,maxMFCC6,rangeMFCC6,meanMFCC7,stdMFCC7,minMFCC7,maxMFCC7,rangeMFCC7,meanMFCC8,stdMFCC8,minMFCC8,maxMFCC8,rangeMFCC8,meanMFCC9,stdMFCC9,minMFCC9,maxMFCC9,rangeMFCC9,meanMFCC10,stdMFCC10,minMFCC10,maxMFCC10,rangeMFCC10,meanMFCC11,stdMFCC11,minMFCC11,maxMFCC11,rangeMFCC11,meanMFCC12,stdMFCC12,minMFCC12,maxMFCC12,rangeMFCC12,minFormant1,maxFormant1,quantileFormant1,meanFormant1,stdFormant1,rangeFormant1,minFormant2,maxFormant2,quantileFormant2,meanFormant2,stdFormant2,rangeFormant2,minFormant3,maxFormant3,quantileFormant3,meanFormant3,stdFormant3,rangeFormant3,minFormant4,maxFormant4,quantileFormant4,meanFormant4,stdFormant4,rangeFormant4,minFormant5,maxFormant5,quantileFormant5,meanFormant5,stdFormant5,rangeFormant5,Result"
@extraerAudios: "Miedo"
@extraerAudios: "Asco"
@extraerAudios: "Ira"
@extraerAudios: "Neutral"
@extraerAudios: "Alegria"
@extraerAudios: "Tristeza"

