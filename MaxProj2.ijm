TitleList = getList("image.titles");

for(i = 0; i < TitleList.length; i++){
	Title = TitleList[i];
	selectWindow(Title);
	Stack.setDisplayMode("composite");
	Stack.setChannel(1)
	run("Green");
	Stack.setChannel(2)
	run("Red");
	Stack.setChannel(3)
	run("Magenta");
	Stack.setChannel(4)
	run("Cyan");
	Stack.setActiveChannels("1000");
	run("Z Project...", "projection=[Max Intensity]");
	run("Stack to RGB");
	directory = "/Users/Olga/Desktop/Processed/";
	name=getTitle;
	saveAs("Tiff", directory + name);
	close();
}