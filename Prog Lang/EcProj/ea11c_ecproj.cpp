#include <iostream>
#include <string>
#include <stdio.h>
#include <fstream>
#include <stdlib.h>
using namespace std;

int lex();
void emit_LET();
void emit_VAR();
void emit_DO();
void emit_DONE();
void emit_IF();
void emit_ELSE();
void emit_ENDIF();
void emit_FOR();
void emit_TO();
void emit_UNTIL();
void emit_LOOP();
void emit_TRUE();
void emit_FALSE();
void emit_EQUAL();
void emit_MARK();
void emit_name(string);
void emit_number(float);
void emit_string(string);
void emit_operator(string);
ifstream in_file;
string str;
float number;	
int indent = 0;
int var = 0;
string tab = "&nbsp;";
int flag = 0;

int main(int argc, char **argv)
{
//... open file argv[1] and init the lexer to read it...
	if(argc != 2){
		cout << "Incorrect format, run program with a.out input_file.\n";
		exit(0);
	}
	in_file.open(argv[1]);
	if(!in_file){
		exit(0);
	}
	printf("<html>\n<body>");
	while (true) {
		str = "";
		number = 0;
		int token = lex(); // get next token (or use Lexer.lex() in C++)
		if (token == -1){
			break;
		}
		if(token == -2)
			continue;
		switch (token) {
			case 1: emit_LET(); break;
			case 2: emit_VAR(); break;
			case 3: emit_DO(); break;
			case 4: emit_DONE(); break;
			case 5: emit_IF(); break;
			case 6: emit_ELSE(); break;
			case 7: emit_ENDIF(); break;
			case 8: emit_FOR(); break;
			case 9: emit_TO(); break;
			case 10: emit_UNTIL(); break;
			case 11: emit_LOOP(); break;
			case 12: emit_TRUE(); break;
			case 13: emit_FALSE(); break;
			case 14: emit_EQUAL(); break;
			case 15: emit_MARK(); break;
			case 16: emit_name(str); break;
			case 17: emit_number(number); break;
			case 18: emit_string(str); break;
			case 19: emit_operator(str); break;
		}
/*	cout << token;
	if(token == 17)
		cout << "\"" << number << "\"";
	else if(token >= 16)
		cout << "\"" << str << "\"";
	cout << endl;
*/	}
	printf("\n</body>\n</html>\n");
	in_file.close();
	return 1;
}


int lex() {
	int token = -2;
	string tok;
	char temp;
	int num = 0;

	do{
		in_file.get(temp);
		if(in_file.eof()){
			token = -1;
			break;
		}
		if(isspace(temp))
			break;
		tok += temp;
		//check what temp is and handle accordingly
		if(temp == 'L' && token == -2){ //possibly LET or LOOP token
			in_file.get(temp);
			if(!isspace(temp))
				tok += temp;
			if(temp == 'E'){ //possibly LET
				in_file.get(temp);
				if(!isspace(temp))
					tok += temp;
				if(temp == 'T'){ //LET token
					token = 1;
				}
				else{ //name token
					token = 19;
				}
			}
			else if(temp == 'O'){ //possibly LOOP
				in_file.get(temp);
				if(!isspace(temp))
					tok += temp;
				if(temp == 'O'){ //possibly LOOP
					in_file.get(temp);
					if(!isspace(temp))
						tok += temp;
					if(temp == 'P'){ //loop token
						token = 11;
					}
					else{ //name token
						token = 19;
					}
				}
				else{ //name token
					token = 19;
				}
			}
			else{ //name token that starts with L
				token = 19;
			}
		
		}
		else if(temp =='V' && token == -2){ //possibly VAR
			in_file.get(temp);
			if(!isspace(temp))
				tok += temp;
			if(temp == 'A'){
				in_file.get(temp);
				if(!isspace(temp))
					tok += temp;
				if(temp == 'R') //VAR token
					token = 2;
				else //name
					token = 19;
			}
			else{ //name token
				token = 19;
			}
		}
		else if(temp == 'D' && token == -2){ //possibly DO or DONE
			in_file.get(temp);
			if(!isspace(temp))
				tok += temp;
			if(temp == 'O'){
				in_file.get(temp);
				if(!isspace(temp))
					tok += temp;
				else // DO
					token = 3;
				if(temp == 'N'){
					in_file.get(temp);
					if(!isspace(temp))
						tok += temp;
					if(temp == 'E') // DONE
						token = 4;
					else
						token = 19;
				}
				else
					token = 3;
			}
			else
				token = 19;
		}
		else if(temp == 'I' && token == -2){ //possibly IF
			in_file.get(temp);
			if(!isspace(temp))
				tok += temp;
			if(temp == 'F') //IF
				token = 5;
			else //name
				token = 19;
		}
		else if(temp == 'E' && token == -2){ //possibly ELSE or ENDIF
			in_file.get(temp);
			if(!isspace(temp))
				tok += temp;
			if(temp == 'L'){ //checking for ELSE
				in_file.get(temp);
				if(!isspace(temp))
					tok += temp;
				if(temp == 'S'){
					in_file.get(temp);
					if(!isspace(temp))
						tok += temp;
					if(temp == 'E') //ELSE
						token = 6;
					else //name
						token = 19;
				}
				else //name
					token = 19;
			}
			else if(temp == 'N'){ //checking for ENDIF
				in_file.get(temp);
				if(!isspace(temp))
					tok += temp;
				if(temp == 'D'){
					in_file.get(temp);
					if(!isspace(temp))
						tok += temp;
					if(temp == 'I'){
						in_file.get(temp);
						if(!isspace(temp))
							tok += temp;
						if(temp == 'F') //ENDIF
							token = 7;
						else //name
							token = 19;
					}
					else //name
						token = 19;
				}
				else //name
					token = 19;
			}
			else //name
				token = 19;
		}
		else if(temp == 'F' && token == -2){ //possibly FOR or FALSE
			in_file.get(temp);
			if(!isspace(temp))
				tok += temp;
			if(temp == 'O'){ //checking FOR
				in_file.get(temp);
				if(!isspace(temp))
					tok += temp;
				if(temp == 'R') //FOR
					token = 8;
				else //name
					token = 19;
			}
			else if(temp == 'A'){ //checking FALSE
				in_file.get(temp);
				if(!isspace(temp))
					tok += temp;
				if(temp == 'L'){
					in_file.get(temp);
					if(!isspace(temp))
						tok += temp;
					if(temp == 'S'){
						in_file.get(temp);
						if(!isspace(temp))
							tok += temp;
						if(temp == 'E') //FALSE
							token = 13;
						else //name
							token = 19;
					}
					else //name
						token = 19;
				}
				else //name
					token = 19;
			}
			else //name
				token = 19;
		}
		else if(temp == 'T' && token == -2){ //possibly TO or TRUE
			in_file.get(temp);
			if(!isspace(temp))
				tok += temp;
			if(temp == 'O') //TO
				token = 9;
			else if(temp == 'R'){ //checking TRUE
				in_file.get(temp);
				if(!isspace(temp))
					tok += temp;
				if(temp == 'U'){
					in_file.get(temp);
					if(!isspace(temp))
						tok += temp;
					if(temp == 'E') //TRUE
						token = 12;
					else //name
						token = 19;
				}
				else //name
					token == 19;
			}
			else //name
				token = 19;
		}
		else if(temp == 'U' && token == -2){ //possibly UNTIL
			in_file.get(temp);
			if(!isspace(temp))
				tok += temp;
			if(temp == 'N'){
				in_file.get(temp);
				if(!isspace(temp))
					tok += temp;
				if(temp == 'T'){
					in_file.get(temp);
					if(!isspace(temp))
						tok += temp;
					if(temp == 'I'){
						in_file.get(temp);
						if(!isspace(temp))
							tok += temp;
						if(temp == 'L') //UNTIL
							token = 10;
						else //name
							token = 19;
					}
					else //name
						token = 19;
				}
				else //name
					token = 19;
			}
			else //name
				token = 19;
		}
		else if(temp == '=' && token == -2){ // = token
			token = 14;
			in_file.get(temp);
			if(!isspace(temp)){ //operator
				token = 19;
				tok += temp;
			}
		}
		else if(temp == '!' && token == -2){ // ! token
			token = 15;
			in_file.get(temp);
		}
		else if(temp == '$' && token == -2){ // $name token
			token = 16;
		}
		else if(temp == '"' && token == -2){ //string token
			token = 18;
		}
		else if(temp >= '0' && temp <= '9' && token == -2){ //number
			token = 17;
		}
		else if(token == -2){ //name or operator token
			token = 19;
		}
	}while(!isspace(temp));
	if(token == 17)
		num = atoi(tok.c_str());
	number = num;	
	str = tok;
	return token;
}
void emit_LET(){
	cout << endl << "<br>";
	for(int i = 0; i < indent; i++)
		cout << tab << tab;
	printf("<b>LET</b> ");
}
void emit_VAR(){
	cout << endl << "<br>";
	for(int i = 0; i < indent; i++)
		cout << tab << tab;
	indent++;
	var = 1;
	flag = 1;
	printf("<b>VAR</b> ");
}
void emit_DO(){
	cout << endl << "<br>";
	if(var){
		indent--;
		var = 0;
	}
	else
		indent++;
	flag = 1;
	for(int i = 0; i< indent; i++)
		cout << tab << tab;
	printf("<b>DO</b> ");
}
void emit_DONE(){
	cout << endl << "<br>";
	indent--;
	flag = 1;
	for(int i = 0; i < indent; i++)
		cout << tab << tab;
	printf("<b>DONE</b> ");
}
void emit_IF(){
	cout << endl << "<br>";
	for(int i = 0; i < indent; i++)
		cout << tab << tab;
	indent++;
	printf("<b>IF</b> ");
}
void emit_ELSE(){
	cout << endl << "<br>";
	flag = 1;
	for(int i = 0; i < indent; i++)
		cout << tab << tab;
	indent++;
	printf("<b>ELSE</b> ");
}
void emit_ENDIF(){
	cout << endl << "<br>";
	indent--;
	flag = 1;
	for(int i = 0; i < indent; i++)
		cout << tab << tab;
	printf("<b>ENDIF</b> ");
}
void emit_FOR(){
	cout << endl << "<br>";
        if(flag == 1){
                cout << "\n<br>";
                flag = 0;
        }
	for(int i = 0; i < indent; i++)
		cout << tab << tab;
	indent++;
	printf("<b>FOR</b> ");
}
void emit_TO(){
        if(flag == 1){
                cout << "\n<br>";
                flag = 0;
        }
        for(int i = 0; i < indent; i++)
                cout << tab << tab;
	printf("<b>TO</b> ");
}
void emit_UNTIL(){
	cout << endl << "<br>";
	flag = 0;
	for(int i = 0; i < indent; i++)
		cout << tab << tab;
	indent++;
	printf("<b>UNTIL</b> ");
}
void emit_LOOP(){
	cout << endl << "<br>";
	indent--;
	flag = 1;
	for(int i = 0; i < indent; i++)
		cout << tab << tab;
	printf("<b>LOOP</b> ");
}
void emit_TRUE(){
        if(flag == 1){
                cout << "\n<br>";
                flag = 0;
        }
        for(int i = 0; i < indent; i++)
                cout << tab << tab;
	printf("<b>TRUE</b> ");
}
void emit_FALSE(){
        if(flag == 1){
                cout << "\n<br>";
                flag = 0;
        }
        for(int i = 0; i < indent; i++)
                cout << tab << tab;
	printf("<b>FALSE</b> ");
}
void emit_EQUAL(){
        if(flag == 1){
                cout << "\n<br>";
                flag = 0;
        }
	printf("<b>=</b> ");
}
void emit_MARK(){
        if(flag == 1){
                cout << "\n<br>";
                flag = 0;
        }
	printf("<b>!</b> ");
}
void emit_name(string str){
        if(flag == 1){
                cout << endl << "<br>";
	        for(int i = 0; i < indent; i++)
        	        cout << tab << tab;
                flag = 0;
        }
	printf("%s ", str.c_str());
}
void emit_number(float number){
        if(flag == 1){
                cout << endl << "<br>";
	        for(int i = 0; i < indent; i++)
        	        cout << tab << tab;
                flag = 0;
        }
	printf("<i>%g</i> ", number);
}
void emit_string(string str){
        if(flag == 1){
                cout << endl << "<br>";
	        for(int i = 0; i < indent; i++)
        	        cout << tab << tab;
                flag = 0;
        }
	printf("<i>%s</i> ", str.c_str());
}
void emit_operator(string str){
        if(flag == 1){
                cout << endl << "<br>";
	        for(int i = 0; i < indent; i++)
        	        cout << tab << tab;
                flag = 0;
        }
	printf("<i>%s</i> ", str.c_str());
}
