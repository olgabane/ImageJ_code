//Max projection, each color separate
TitleList = getList("image.titles");

for(i = 0; i < TitleList.length; i++){
	Title = TitleList[i];
	selectWindow(Title);
	Stack.setDisplayMode("composite");
	Stack.setChannel(1)
	run("Green");
	Stack.setChannel(2)
	run("Magenta");
	Stack.setChannel(3)
	run("Cyan");
	
	Stack.setActiveChannels("100");
	run("Z Project...", "projection=[Max Intensity]");
	run("Stack to RGB");
	directory = "/Users/Olga/Desktop/Processed/";
	color = "MaxProj_GFP";
	saveAs("Tiff", directory + Title + color);
	close();

	selectWindow(Title);
	Stack.setActiveChannels("010");
	run("Z Project...", "projection=[Max Intensity]");
	run("Stack to RGB");
	color = "MaxProj_repo";
	saveAs("Tiff", directory + Title + color);
	close();

	selectWindow(Title);
	Stack.setActiveChannels("001");
	run("Z Project...", "projection=[Max Intensity]");
	run("Stack to RGB");
	color = "MaxProj_HRP";
	saveAs("Tiff", directory + Title + color);
	close();
}
