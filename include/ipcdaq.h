#ifndef IPCDAQ_H
#define IPCDAQ_H

#include <netinet/in.h>
#include <semaphore.h>
#include <mutex>
#include <vector>
#include <string>
#include <iostream>
#include <fstream>
#include <thread>


enum  eCmd {IPCNONE=0,IPCDAQ=1,IPCSTOP=2,IPCINTERVAL=3,IPCRECORD=4};

typedef struct _MESSAGE  {
    long nMsgType;
    eCmd cmd;
    union {
		long val;
		char sText[50];
	} arg;
} MESSAGE, *PMESSAGE;

#define MAX_MESSAGE	sizeof( MESSAGE ) 
#define KEYREQUEST		0x00012345
#define KEYANSWER			0x00012346

#endif
