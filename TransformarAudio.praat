form Filename and number of songs
	sentence nameOfPath ./Ejemplos/
	sentence nameOfResultFile sonido.csv
endform
deleteFile: nameOfResultFile$
appendFileLine:nameOfResultFile$,"meanAmplitude,minAmplitude,maxAmplitude,stdAmplitude,energy,power,meanPitch,minPitch,maxPitch,stdPitch,meanHarmonicity,minHarmonicity,maxHarmonicity,stdHarmonicity,minIntensity,maxIntensity,quantileIntensity,meanIntensity,stdIntensity,speakingRate,articulationRate,minFormant1,maxFormant1,quantileFormant1,meanFormant1,stdFormant1,minFormant2,maxFormant2,quantileFormant2,meanFormant2,stdFormant2,minFormant3,maxFormant3,quantileFormant3,meanFormant3,stdFormant3"
Create Strings as file list... list 'nameOfPath$'/*.wav
numberOfFiles = Get number of strings
for ifile to numberOfFiles
   select Strings list
   fileName$ = Get string... ifile
   path$ = nameOfPath$ + "/"+ fileName$
   sound = Read from file: (path$)
include ObtenerVariables.praat
appendFileLine:nameOfResultFile$,meanAmplitude,minAmplitude,maxAmplitude,stdAmplitude,energy,power,meanPitch,",",minPitch,",",maxPitch,",",stdPitch,",",meanHarmonicity,",",minHarmonicity,",",maxHarmonicity,",",stdHarmonicity,",",minIntensity,",",maxIntensity,",",quantileIntensity,",",meanIntensity,",",stdIntensity,",",speakingrate,",",articulationrate,",",minFormant1,",", maxFormant1,",",quantileFormant1,",",meanFormant1,",",stdFormant1,",",minFormant2,",",maxFormant2,",",quantileFormant2,",",meanFormant2,",",stdFormant2,",",minFormant3,",",maxFormant3,",",quantileFormant3,",",meanFormant3,",",stdFormant3
endfor
