#ifndef SHDMEM_H
#define SHDMEM_H

#include "frame.h"
#include <string.h>
#include "GenericTypeDefs.h"

#define NB_SAMPLES  1025*2
#define NB_CHANNELS 4
#define CAPACITY 	5000
#define MAX_CHANNEL 240

#define SHM_ASM_DATA "/shm_asm_data"
#define SHM_NETWORK "/shm_net_stats"
#define SHM_SROUT "/shm_srout"

const int MAX_ASM = 16;

struct sStatFrame {
  u64 NbFrameRec;
  u64 NbFrameRecPrev;
  u64 NbFrameAsm;
  u64 NbFrameAsmLost;
  u64 NbFrameAsmOld;
  u32 NbFrameAmc;
  u_int8_t MemFeId;
  u32 MemLen;
  u64 ErrId;
  u64 UnderSize;
  u64 OverSize;
  double deltaMillisec;
  double delta;
  //std::string DeviceName="abcdefghijklmnopqrstuvwxyz";  // Reserve 26 octets pour le devicename
	
  u64 NumBytes;
  double thpt;
  u64 lastByte;
  u64 DropsPkts;
  u64 LastTriggerCount;
  u64 TriggerCount;
  bool LastTriggerCountOrig;
  bool TriggerCountOrig;
  u64 NumTriggerCountsFromASM;
  u64 LastTrigTimestamp;
  u64 TrigTimestamp;

  u64 NumFrameOk;
};



struct SharedMemory {
  u_char  raw[sizeof(S_HeaderFrame) +(NB_SAMPLES+4)*NB_CHANNELS+4];
};

struct sHistoSrout {
  u_char noBoard;
  u_char nohalfDrs;
  long HistoSrout [6][1024];
}; 


struct sOneChannelEvent {
    u_char raw[sizeof(S_HeaderFrame) + (NB_SAMPLES+4)];
};

struct sEvent {
    u_int16_t nbChannel;
    sOneChannelEvent *event[MAX_CHANNEL];
};
#endif // SHDMEM_H
