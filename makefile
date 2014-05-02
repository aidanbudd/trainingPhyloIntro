all:
	pandoc -i ./homepageInterpretingPhylogeniesCrete2014.md -o ./homepageInterpretingPhylogeniesCrete2014.html
	pandoc -i ./interpretingPhylogeniesCrete2014.md -o ./interpretingPhylogeniesCrete2014.html
	pandoc -i ./usingNJplot.md -o ./usingNJplot.html
	pandoc -i ./usingDendroscope.md -o ./usingDendroscope.html
	pandoc -i ./usingJModelTest.md -o ./usingJModelTest.html
	pandoc -i ./buildingMSAs.md -o ./buildingMSAs.html
	pandoc -i ./usingPhyML.md -o ./usingPhyML.html
	pandoc -i ./changingAlignmentFormats.md -o ./changingAlignmentFormats.html