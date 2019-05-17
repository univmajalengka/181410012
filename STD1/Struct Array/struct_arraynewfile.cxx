// array of structures

#include <iostream>

#include <string>

#include <sstream>

using namespace std;

struct penduduk {

string Nama;
string alamat;
string usia;
string nohp;

} nab [4];

void printdata (penduduk data);

int main ()

{


int n;

for (n=0; n<4; n++) {

cout << "Masukan Nama : ";

getline (cin,nab[n].Nama);

cout << "usia: ";

getline (cin,nab[n].usia);

cout << "No HP : ";

getline (cin,nab[n].nohp);


cout << "\n";
cout << "##### Data Sudah Di Masukan #####\n";

}

cout << "\nData - Data penduduk Yang Sudah Anda Masukan:\n";

for (n=0; n<4; n++)

printdata (nab[n]);

return 0;

}

void printdata (penduduk data)

{
cout << "#########################################\n";
cout << "\n";
cout <<  data.Nama <<"\t";
cout <<  data.usia<< "\t";
cout <<  data.nohp << "\n";
cout << "\n";

}