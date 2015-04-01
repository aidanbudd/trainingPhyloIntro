all:
	pandoc -i ./homepageInterpretingPhylogenies.md -o ./homepageInterpretingPhylogenies.html
	pandoc -i ./interpretingPhylogenies.md -o ./interpretingPhylogenies.html
	pandoc -i ./usingNJplot.md -o ./usingNJplot.html
	pandoc -i ./usingDendroscope.md -o ./usingDendroscope.html
	pandoc -i ./usingJModelTest.md -o ./usingJModelTest.html
	pandoc -i ./buildingMSAs.md -o ./buildingMSAs.html
	pandoc -i ./usingPhyML.md -o ./usingPhyML.html
	pandoc -i ./changingAlignmentFormats.md -o ./changingAlignmentFormats.html
