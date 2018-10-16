//Make rolling tif with each z-slice separate, colors composite
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
	Stack.setActiveChannels("111");
	run("Stack to RGB", "slices keep");
	directory = "/Users/Olga/Desktop/Processed/";
	name=getTitle;
	saveAs("Tiff", directory + name);
	close();
}