#include <iostream>
#include <cstdlib>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <vector>
using namespace std;

/* define keyword tokens recognized by the scanner */
#define LET 256
#define IN 257
#define END 258
#define ID 259
#define NUM 260
int current = 0;
int number;
string name;
vector< pair<string, int> > parse_stack;

void getnext();
int lookahead();
void match(int);
int expr();
void push(string, int);
void pop();
string id();
int term();
int term_tail(int);
int factor();
int factor_tail(int);
int stack_search(string);

int main(){

/*	while (lookahead() != EOF)
	{
		switch (lookahead())
		{
			case ID:
				printf("ID=%s\n", name);
				break;
			case NUM:
				printf("NUM=%d\n", number);
				break;
			default:
				printf("%c\n", lookahead());
		}
	getnext();
	}
*/
	cout << "evaluates to: " << expr() << endl;
	return 1;
}

void getnext()
{
	int c;
	do
		c = getchar();
	while (isspace(c));
	if (c == 108 || c == 105 || c == 101)
	{
		if(c == 108){
			c = getchar();
			c = getchar();
			current = LET;
		}
		else if(c == 105){
			c = getchar();
			current = IN;
		}
		else{
			c = getchar();
			c = getchar();
			current = END;
		}
	}
	else if ( (c >= 65 && c <= 90) || (c >= 97 && c <= 122)  )
	{
		current = ID;
//		... fill name[] with id name
		name = "";
		do{
			name += static_cast<char>(c);
			c = getchar();
		}while(isalnum(c));
		ungetc(c, stdin);
	}
	else if ( (c >= 48 && c <=57)  )
	{
		int i = 0;
		current = NUM;
		number = 0;
		char temp[100];
		do{
			temp[i] = static_cast<char>(c);
			c = getchar();
			i++;
		}while(isdigit(c));
		ungetc(c, stdin);
		number = atoi(temp);
//		... number = decoded value
	}
	else
	{
		current = c;
	}
}

int lookahead()
{
	if (current == 0)
		getnext();
	return current;
}
/* the <expr> parser */

int expr()
{
	int result;
	if (lookahead() == LET)
	{
		string _name;
		int value;
		match(LET); // let
		_name = id(); // id
		match('='); // =
		value = expr(); // <expr>
		match(IN); // in
		push(_name, value); // <push>
		result = expr(); // <expr>
		match(END); // end
		pop(); // <pop>
	}
	else
	{
		int value = term(); // <term>
		result = term_tail(value); // <term_tail>
	}
	return result;
}

/*
You need to complete the recursive descent parser implementation for the augmented
grammar. For this assignment you can write the code in C or C++.
The match() function can be written based on these:
*/

void match(int token)
{
	if (lookahead() == token)
		getnext();
	else{
		cout << "Syntax error, couldn't match " << token << endl;
		exit(0);
	}
}

void push(string name, int value){
	parse_stack.push_back(make_pair(name, value));
}

void pop(){
	parse_stack.pop_back();
}

string id(){
	string result(name);
	getnext();
	return result;
}

int term(){
	int fac = factor();
	int result = factor_tail(fac);
	return result;
}

int term_tail(int value){
	int result;
//do '+' or '-'
	int op = 0;
	string temp(name);
	if(current == 43){
		getnext();
		result = term_tail(term()) + value;
	}
	else if(current == 45){
		getnext();
		result = value - term_tail(term());
	}
	else
		return value;
	
	return result;
}

int factor(){
	int result = 0;
	if(current == NUM){
		int num = number;
		getnext();
		return num;
	}
	else if(current == ID){
		//find value for ID in stack?
		string temp(name);
		result = stack_search(temp);
		getnext();
	}
	else if(current == 40){
		//nested let, call expr()
		getnext();
		result = expr();
		getnext();
	}
	else if(current == 45){
		getnext();
		result = -factor();
	} 
	else
		return 0;
	return result;
}

int factor_tail(int value){
	string temp(name);
	int result = 0;
	if(current == 42){
		getnext();
                result = factor_tail(factor()) * value;
	}
	else if(current == 47){
		getnext();
		result = value / factor_tail(factor());
	}
	else
		return value;

	return result;
}

int stack_search(string var_name){
	for(int i = parse_stack.size()-1; i >= 0; i--){
		if(parse_stack[i].first == var_name)
			return parse_stack[i].second;
	}
	cout << "syntax error, variable does not exist" << endl;
	exit(0);
}
