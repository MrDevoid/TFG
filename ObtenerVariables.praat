To Pitch: 0.0, 75.0, 600.0
meanPitch = Get mean: 0.0, 0.0, "Hertz"
minPitch = Get minimum: 0.0, 0.0, "Hertz", "Parabolic"
maxPitch = Get maximum: 0.0, 0.0, "Hertz", "Parabolic"
stdPitch = Get standard deviation: 0.0, 0.0, "Hertz"
select sound
To Harmonicity (ac): 0.01,75.0,0.1,4.5
meanHarmonicity = Get mean: 0.0, 0.0
minHarmonicity = Get minimum: 0.0, 0.0, "Parabolic"
maxHarmonicity = Get maximum: 0.0, 0.0, "Parabolic"
stdHarmonicity = Get standard deviation: 0.0, 0.0
select sound
To Intensity: 100.0, 0.0, 1
minIntensity = Get minimum: 0.0, 0.0, "Parabolic"
maxIntensity = Get maximum: 0.0, 0.0, "Parabolic"
quantileIntensity = Get quantile: 0.0, 0.0, 0.5
meanIntensity = Get mean: 0.0, 0.0, "dB"
stdIntensity = Get standard deviation: 0.0, 0.0
select sound
include CalculoSpeechRate.praat
select sound	
To Formant (burg): 0.0, 5.0, 5500.0, 0.025, 50.0
minFormant1 = Get minimum: 1, 0.0, 0.0, "hertz", "Parabolic"
maxFormant1 = Get maximum: 1, 0.0, 0.0, "hertz", "Parabolic"
quantileFormant1 = Get quantile: 1, 0.0, 0.0, "hertz", 0.5
meanFormant1 = Get mean: 1, 0.0, 0.0, "hertz"
stdFormant1 = Get standard deviation: 1, 0.0, 0.0, "hertz"
minFormant2 = Get minimum: 2, 0.0, 0.0, "hertz", "Parabolic"
maxFormant2 = Get maximum: 2, 0.0, 0.0, "hertz", "Parabolic"
quantileFormant2 = Get quantile: 2, 0.0, 0.0, "hertz", 0.5
meanFormant2 = Get mean: 2, 0.0, 0.0, "hertz"
stdFormant2 = Get standard deviation: 2, 0.0, 0.0, "hertz"
minFormant3 = Get minimum: 3, 0.0, 0.0, "hertz", "Parabolic"
maxFormant3 = Get maximum: 3, 0.0, 0.0, "hertz", "Parabolic"
quantileFormant3 = Get quantile: 3, 0.0, 0.0, "hertz", 0.5
meanFormant3 = Get mean: 3, 0.0, 0.0, "hertz"
stdFormant3 = Get standard deviation: 3, 0.0, 0.0, "hertz"

