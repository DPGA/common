#ifndef COLOR_H
#define COLOR_H
/*
 *********************************************************************
 *
 * Identification	:	Color.h
 *	Contents			:	Header file
 *	Author			:	Daniel Lambert
 *	Created on		:	07/11/2017
 *	Last Update 	:
 *********************************************************************
 */
 
/**
 * /class CtColor
 * /brief Permet de d'afficher les caractères
 * /brief de differentes manières
 */  
class CtColor
{
  public:
	//!/brief Caratère normale
	static const char * none() {return "\033[00m";};
	//!/brief Caratère gras 			
	static const char * bold() {return "\033[01m";};
	//!/brief Caractère souligné 			
	static const char * underscore() {return "\033[04m";};
	//!/brief Caractère clignotant 	
	static const char * blink() {return "\033[05m";};
	//!/brief Caractère inversé  
	static const char * reverse() {return "\033[07m";};
	//!/brief je sais pas
	static const char * cancel() {return "\033[08m";};
};

/**
 * /class FgColor
 * /brief Permet de d'afficher les caractères
 * /brief avec une certaine de couleur
 */  
class FgColor
{
  public:
	//!/brief couleur du caractère noir
	static const char * black() {return "\033[30m";};
	//!/brief couleur du caractère rouge
	static const char * red() {return "\033[31m";};
	//!/brief couleur du caractère vert
	static const char * green() {return "\033[32m";};	
	//!/brief couleur du caractère jaune
	static const char * yellow() {return "\033[33m";};
	//!/brief couleur du caractère bleu
	static const char * blue() {return "\033[34m";};
	//!/brief couleur du caractère magenta
	static const char * magenta() {return "\033[35m";};
	//!/brief couleur du caractère cyan
	static const char * cyan() {return "\033[36m";};
	//!/brief couleur du caractère blanc
	static const char * white() {return "\033[37m";};
	//!/brief couleur du caractère ???
	static const char * test1() {return "\033[38m";};
	//!/brief couleur du caractère ???
	static const char * test2() {return "\033[39m";};
};
/**
 * /class FgColor
 * /brief Permet de changer la couleur de fond
 */ 
class BgColor
{
  public:
	//!/brief couleur du fond vert  
	static const char * green() {return "\033[42m";};
	//!/brief couleur du fond vert  	
	static const char * white() {return "\033[47m";};
	//!/brief couleur du fond blanc  
	static const char * cyan() {return "\033[46m";};
	//!/brief couleur du fond cyan  
	static const char * yellow() {return "\033[43m";};
	//!/brief couleur du fond rouge  	
	static const char * red() {return "\033[41m";};
	//!/brief couleur du fond noir  	
	static const char * black() {return "\033[40m";};
	//!/brief couleur du fond bleu  	
	static const char * blue() {return"\033[44m";};
	//!/brief couleur du fond magenta  	
	static const char * magenta() {return "\033[45m";};
	//!/brief couleur du fond ???  	
	static const char * test1() {return "\033[48m";};
	//!/brief couleur du fond ???  
	static const char * test2() {return "\033[49m";};
}; 

#endif
