form Filename and number of songs
	sentence nameOfResultFile sonidosNuevos.csv
	sentence audiosPath ./
	integer numberSongsAlegria 1
	integer numberSongsTristeza 0
	integer numberSongsMiedo 0
	integer numberSongsAsco 0
	integer numberSongsIra 0
	integer numberSongsNeutral 0
endform

procedure extraerAudios: nameOfPath$, numberSongs
if nameOfPath$ = "Alegria/AudioAlegria"
	etiqueta = 0
elsif nameOfPath$ = "Tristeza/AudioTristeza"
	etiqueta = 1
elsif nameOfPath$ = "Miedo/AudioMiedo"
	etiqueta = 2
elsif nameOfPath$ = "Asco/AudioAsco"
	etiqueta = 3
elsif nameOfPath$ = "Ira/AudioIra"
	etiqueta = 4
elsif nameOfPath$ = "Neutral/AudioNeutral"
	etiqueta = 5
endif
for counter from 1 to numberSongs
	name$= audiosPath$+ nameOfPath$ + string$(counter) + ".wav"
	sound=Read from file: (name$)
include ObtenerVariables.praat
appendFileLine:nameOfResultFile$,meanAmplitude,minAmplitude,maxAmplitude,stdAmplitude,energy,power,meanPitch,",",minPitch,",",maxPitch,",",stdPitch,",",meanHarmonicity,",",minHarmonicity,",",maxHarmonicity,",",stdHarmonicity,",",minIntensity,",",maxIntensity,",",quantileIntensity,",",meanIntensity,",",stdIntensity,",",speakingrate,",",articulationrate,",",minFormant1,",", maxFormant1,",",quantileFormant1,",",meanFormant1,",",stdFormant1,",",minFormant2,",",maxFormant2,",",quantileFormant2,",",meanFormant2,",",stdFormant2,",",minFormant3,",",maxFormant3,",",quantileFormant3,",",meanFormant3,",",stdFormant3,",",etiqueta
endfor
endproc

deleteFile: nameOfResultFile$
appendFileLine:nameOfResultFile$,"meanAmplitude,minAmplitude,maxAmplitude,stdAmplitude,energy,power,meanPitch,minPitch,maxPitch,stdPitch,meanHarmonicity,minHarmonicity,maxHarmonicity,stdHarmonicity,minIntensity,maxIntensity,quantileIntensity,meanIntensity,stdIntensity,speakingRate,articulationRate,minFormant1,maxFormant1,quantileFormant1,meanFormant1,stdFormant1,minFormant2,maxFormant2,quantileFormant2,meanFormant2,stdFormant2,minFormant3,maxFormant3,quantileFormant3,meanFormant3,stdFormant3,Result"
@extraerAudios: "Neutral/AudioNeutral", numberSongsNeutral
@extraerAudios: "Alegria/AudioAlegria", numberSongsAlegria
@extraerAudios: "Tristeza/AudioTristeza", numberSongsTristeza
@extraerAudios: "Miedo/AudioMiedo", numberSongsMiedo
@extraerAudios: "Asco/AudioAsco", numberSongsAsco
@extraerAudios: "Ira/AudioIra", numberSongsIra
