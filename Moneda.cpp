#include <iostream>
#include <ctime>
#include <stdlib.h>

using namespace std;

int moneda(){
	return (rand()%2);
}

int main(){
	
	int v;
	char a;
	
	do{
		srand((unsigned) time (NULL));
		
		int moneda ();
		v=moneda();
		
		if(v==0){
			cout<<"\nAguila\n";
		}
		else{
			cout<<"\nSol\n";
		}
		
		cout<<"Desea repetir el lanzamiento? [y/n]:";
		cin>>a;				
	}while(a=='y');
	
	return 0;
}


