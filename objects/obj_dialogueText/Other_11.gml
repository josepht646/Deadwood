/// @description Break Text Into Lines
// You can write your code in this editor

if(linesInitialized) {
	ds_list_destroy(lines);
}

lines = ds_list_create();

i = 0;
nextLine = "";
while(i < string_length(text)){
	nextWord = "";
	j = i;
	while(j < string_length(text) && string_char_at(text, j+1) != " " && j-i < lineChars){
		nextWord += string_char_at(text, j+1);
		j++;
	}
	if(string_length(nextLine) + string_length(nextWord) <= lineChars){
		nextLine += nextWord + " ";
		i = j+1;
		if(string_length(nextWord) == lineChars){
			i--;
		}
	} else {
		ds_list_add(lines,nextLine);
		nextLine = "";
	}
}

if(string_length(nextLine) > 0){
	ds_list_add(lines,nextLine);
}
linesInitialized = true;