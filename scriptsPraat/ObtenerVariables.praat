meanAmplitude = Get mean: 0, 0.0, 0.0
minAmplitude = Get minimum: 0.0, 0.0, "Sinc70"
maxAmplitude = Get maximum: 0.0, 0.0, "Sinc70"
stdAmplitude = Get standard deviation: 0, 0.0, 0.0
rangeAmplitude = maxAmplitude - minAmplitude
select sound
To Pitch: 0.0, 75.0, 600.0
meanPitch = Get mean: 0.0, 0.0, "Hertz"
minPitch = Get minimum: 0.0, 0.0, "Hertz", "Parabolic"
maxPitch = Get maximum: 0.0, 0.0, "Hertz", "Parabolic"
stdPitch = Get standard deviation: 0.0, 0.0, "Hertz"
rangePitch = maxPitch - minPitch
select sound
To Harmonicity (ac): 0.01,75.0,0.1,4.5
meanHarmonicity = Get mean: 0.0, 0.0
minHarmonicity = Get minimum: 0.0, 0.0, "Parabolic"
maxHarmonicity = Get maximum: 0.0, 0.0, "Parabolic"
stdHarmonicity = Get standard deviation: 0.0, 0.0
rangeHarmonicity = maxHarmonicity - minHarmonicity
select sound
To Intensity: 100.0, 0.0, 1
minIntensity = Get minimum: 0.0, 0.0, "Parabolic"
maxIntensity = Get maximum: 0.0, 0.0, "Parabolic"
quantileIntensity = Get quantile: 0.0, 0.0, 0.5
meanIntensity = Get mean: 0.0, 0.0, "dB"
stdIntensity = Get standard deviation: 0.0, 0.0
rangeIntensity = maxIntensity - minIntensity
select sound
include CalculoSpeechRate.praat
select sound
To MFCC: 12, 0.015, 0.005, 100.0, 100.0, 0.0
To TableOfReal: 1
meanEnergy = Get column mean (label): "c0"
stdEnergy = Get column stdev (label): "c0"
meanMFCC1 = Get column mean (label): "c1"
stdMFCC1 = Get column stdev (label): "c1"
meanMFCC2 = Get column mean (label): "c2"
stdMFCC2 = Get column stdev (label): "c2"
meanMFCC3 = Get column mean (label): "c3"
stdMFCC3 = Get column stdev (label): "c3"
meanMFCC4 = Get column mean (label): "c4"
stdMFCC4 = Get column stdev (label): "c4"
meanMFCC5 = Get column mean (label): "c5"
stdMFCC5 = Get column stdev (label): "c5"
meanMFCC6 = Get column mean (label): "c6"
stdMFCC6 = Get column stdev (label): "c6"
meanMFCC7 = Get column mean (label): "c7"
stdMFCC7 = Get column stdev (label): "c7"
meanMFCC8 = Get column mean (label): "c8"
stdMFCC8 = Get column stdev (label): "c8"
meanMFCC9 = Get column mean (label): "c9"
stdMFCC9 = Get column stdev (label): "c9"
meanMFCC10 = Get column mean (label): "c10"
stdMFCC10 = Get column stdev (label): "c10"
meanMFCC11 = Get column mean (label): "c11"
stdMFCC11 = Get column stdev (label): "c11"
meanMFCC12 = Get column mean (label): "c12"
stdMFCC12 = Get column stdev (label): "c12"
To Table: "rowLabel"
maxEnergy = Get maximum: "c0"
minEnergy = Get minimum: "c0"
rangeEnergy = maxEnergy - minEnergy
maxMFCC1 = Get maximum: "c1"
minMFCC1 = Get minimum: "c1"
rangeMFCC1 = maxMFCC1 - minMFCC1
maxMFCC2 = Get maximum: "c2"
minMFCC2 = Get minimum: "c2"
rangeMFCC2 = maxMFCC2 - minMFCC2
maxMFCC3 = Get maximum: "c3"
minMFCC3 = Get minimum: "c3"
rangeMFCC3 = maxMFCC3 - minMFCC3
maxMFCC4 = Get maximum: "c4"
minMFCC4 = Get minimum: "c4"
rangeMFCC4 = maxMFCC4 - minMFCC4
maxMFCC5 = Get maximum: "c5"
minMFCC5 = Get minimum: "c5"
rangeMFCC5 = maxMFCC5 - minMFCC5
maxMFCC6 = Get maximum: "c6"
minMFCC6 = Get minimum: "c6"
rangeMFCC6 = maxMFCC6 - minMFCC6
maxMFCC7 = Get maximum: "c7"
minMFCC7 = Get minimum: "c7"
rangeMFCC7 = maxMFCC7 - minMFCC7
maxMFCC8 = Get maximum: "c8"
minMFCC8 = Get minimum: "c8"
rangeMFCC8 = maxMFCC8 - minMFCC8
maxMFCC9 = Get maximum: "c9"
minMFCC9 = Get minimum: "c9"
rangeMFCC9 = maxMFCC9 - minMFCC9
maxMFCC10 = Get maximum: "c10"
minMFCC10 = Get minimum: "c10"
rangeMFCC10 = maxMFCC10 - minMFCC10
maxMFCC11 = Get maximum: "c11"
minMFCC11 = Get minimum: "c11"
rangeMFCC11 = maxMFCC11 - minMFCC11
maxMFCC12 = Get maximum: "c12"
minMFCC12 = Get minimum: "c12"
rangeMFCC12 = maxMFCC12 - minMFCC12
select sound	
To Formant (burg): 0.0, 5.0, 5500.0, 0.025, 50.0
minFormant1 = Get minimum: 1, 0.0, 0.0, "hertz", "Parabolic"
maxFormant1 = Get maximum: 1, 0.0, 0.0, "hertz", "Parabolic"
quantileFormant1 = Get quantile: 1, 0.0, 0.0, "hertz", 0.5
meanFormant1 = Get mean: 1, 0.0, 0.0, "hertz"
rangeFormant1 = maxFormant1 - minFormant1
stdFormant1 = Get standard deviation: 1, 0.0, 0.0, "hertz"
minFormant2 = Get minimum: 2, 0.0, 0.0, "hertz", "Parabolic"
maxFormant2 = Get maximum: 2, 0.0, 0.0, "hertz", "Parabolic"
quantileFormant2 = Get quantile: 2, 0.0, 0.0, "hertz", 0.5
meanFormant2 = Get mean: 2, 0.0, 0.0, "hertz"
stdFormant2 = Get standard deviation: 2, 0.0, 0.0, "hertz"
rangeFormant2 = maxFormant2 - minFormant2
minFormant3 = Get minimum: 3, 0.0, 0.0, "hertz", "Parabolic"
maxFormant3 = Get maximum: 3, 0.0, 0.0, "hertz", "Parabolic"
quantileFormant3 = Get quantile: 3, 0.0, 0.0, "hertz", 0.5
meanFormant3 = Get mean: 3, 0.0, 0.0, "hertz"
stdFormant3 = Get standard deviation: 3, 0.0, 0.0, "hertz"
rangeFormant3 = maxFormant3 - minFormant3
minFormant4 = Get minimum: 4, 0.0, 0.0, "hertz", "Parabolic"
maxFormant4 = Get maximum: 4, 0.0, 0.0, "hertz", "Parabolic"
quantileFormant4 = Get quantile: 4, 0.0, 0.0, "hertz", 0.5
meanFormant4 = Get mean: 4, 0.0, 0.0, "hertz"
stdFormant4 = Get standard deviation: 4, 0.0, 0.0, "hertz"
rangeFormant4 = maxFormant4 - minFormant4
minFormant5 = Get minimum: 5, 0.0, 0.0, "hertz", "Parabolic"
maxFormant5 = Get maximum: 5, 0.0, 0.0, "hertz", "Parabolic"
quantileFormant5 = Get quantile: 5, 0.0, 0.0, "hertz", 0.5
meanFormant5 = Get mean: 5, 0.0, 0.0, "hertz"
stdFormant5 = Get standard deviation: 5, 0.0, 0.0, "hertz"
rangeFormant5 = maxFormant5 - minFormant5
