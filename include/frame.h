#ifndef FRAME_H
#define FRAME_H
#include <netinet/ip.h>
#include <netinet/udp.h>
#define MAX_NB_CH 4

#define SOF				(0x1230)				//! \brief Start Of Frame 
#define K28_0			(0X1C)				//! \brief Acknowledge Frame
#define K28_1			(0X3C)				//! \brief Write Register Command Frame
#define K28_2			(0X5C)				//! \brief Read Register Command Frame
#define K28_3			(0X7C)				//! \brief Special Command Frame
#define K28_4			(0X9C)				//! \brief Monitoring Frame
#define K28_5			(0XBC)				//! \brief Synchronization Word
#define K28_6			(0XDC)				//! \brief IDLE Word
#define K28_7			(0XFC)				//! \brief PreTrigger Frame
#define K23_7			(0XF7)				//! \brief Trigger Frame
#define K27_7			(0XFB)				//! \brief End Data Frame
#define K29_7			(0XFD)				//! \brief Data Sub-frame
#define K30_7			(0XFE)				//! \brief Data Frame

#define BROADCAST_FE	(0X7F)				//! \brief Broadcast Front End Number

/**
 * \enum eModefile
 * \brief Pemet de definir le mode d'enregistrement des données dans le fichier
 * \brief HEADER 	=> seulement le header est enregistré
 * \brief RAWDATA => Header + Rawdata
 * \brief ALL		=> Header + Rawdata + header ethernet
 */
 enum eModefile  {HEADER=0,RAWDATA=1,ALL=2};

/**
 * \struct S_HeaderFile
 * \brief Structure des informations presentes dans l'entête du fichier
 */

/* // TODO 
			A reimplémenter dans le headerfile si possible (origine VME)
                        32 bits -> RunNumber          // Run number

                        32 bits -> StartTime          // start of run time
                        32 bits -> StopTime           // end of run time
                        
                        32 bits -> NoASMCards         // number of ASM cards (12) 

                        
                        32 bits -> TriggerEq          // trigger equation // TriggerType ???
                        32 bits -> TriggerDelay       // trigger delay
                        32 bits -> ChanUsedForTrigger // channels used for trigger || canaux autorisé à declencher un trigger 
                        
                        32 bits -> LowHighThres       // low and high trigger thresholds
                        32 bits -> TrigSigShapingHigh // trigger signal shaping for high threshold
                        32 bits -> TrigSigShapingLow  // trigger signal shaping for low threshold
                                                
*/


struct S_HeaderFile {
	//! \brief Permet de connaitre la structure des datas enregistrées
	eModefile ModeFile;
	//! \brief Frontend Id du premier fragment reçu
	uint8_t FrontEndId;
	//! \brief nombre de sample du premier fragment reçu
	uint16_t NbSamples;
	//! \brief date de creation du fichier
	struct timeval CreateTime;
};

/**
 * \struct S_HeaderFrame
 * \brief Structure des informations presentes dans l'entête de la trame
 */
struct  __attribute__((__packed__)) S_HeaderFrame {
	//! \brief debut du fragment 0x1230
	uint16_t		StartOfFrame;   				//0x1230 0
	//! \brief Msb du nombre de trame AMC
	uint16_t		NbFrameAmcMsb;					// 2
	//! \brief Lsb du nombre de trame AMC
	uint16_t		NbFrameAmcLsb;					// 4
	//! \brief FeId & K30_7
	uint16_t		FeIdK30;							// 6
	//! Mode d'acquisition à définir
	uint16_t		Mode;								// 8
	//! \brief Trigger Type , Equation de trigger 
	uint16_t		TriggerType;					// 10
	//! \brief bit 63..48 du nombre de trame ASM
	uint16_t		NbFrameAsmMsb;
	//! \brief bit 47..32 du nombre de trame ASM
	uint16_t		NbFrameAsmOsb;
	//! \brief bit 31..16 du nombre de trame ASM
	uint16_t		NbFrameAsmUsb;
	//! \brief bit 15..0  du nombre de trame ASM
	uint16_t		NbFrameAsmLsb;
	//! \brief Constante = 0xcafe
	uint16_t		Cafe;								// 20
	//! \brief Constante = 0xdeca
	uint16_t		Deca;								// 22
	//! \brief Constante = 0x0123
	uint16_t		undefinedMsb;
	//! \brief Constante = 0x4567
	uint16_t		undefinedOsb;
	//! \brief Constante = 0x89ab
	uint16_t		undefinedUsb;
	//! \brief Constante = 0xcdef
	uint16_t		undefinedLsb;
	//!\brief TimeStamp Fourni par la carte Asm quand trigger hard arrive de thor
	uint16_t		TimeStampAsmMsb;					
	uint16_t		TimeStampAsmOsb;
	uint16_t		TimeStampAsmUsb;
	uint16_t		TimeStampAsmLsb;
	//!\brief TimeStamp Asm After Frame trigger AMC
	// Nombre de clock entre le trigger hard et la trame trigger de l'AMC soit 
	// 6.66 ns * ce nombre
	// ! Possible de le reduire la taille  à un nombre u16
	uint16_t		TimeStampTrigThorAsmMsb;
	uint16_t		TimeStampTrigThorAsmOsb;
	uint16_t		TimeStampTrigThorAsmUsb;
	uint16_t		TimeStampTrigThorAsmLsb;

	uint16_t		ThorTT;								// 48
	uint16_t		PatternMsb;							// 50
	uint16_t		PatternOsb;							// 52
	uint16_t		PatternLsb;							//	54
	uint16_t		Bobo;									//	56
//TimeStamp Thor 	
	uint16_t		ThorTrigTimeStampMsb;			//	58
	uint16_t		ThorTrigTimeStampOsb;			//	60
	uint16_t		ThorTrigTimeStampLsb;			//	62
	uint16_t		CptTriggerThorMsb;
	uint16_t		CptTriggerThorLsb;
	uint16_t		CptTriggerAsmMsb;
	uint16_t		CptTriggerAsmLsb;
	uint16_t		NbSample;							//	64
};
typedef uint16_t T_ip_hdr[29];

struct sPacketFile {
	T_ip_hdr			ip_hdr;
	S_HeaderFrame	FrameHeader;
};

struct S_Channel {
	uint16_t		StartOfChannel;
	uint16_t		*Samples;
};

typedef struct{
	unsigned long 			index;
	struct S_HeaderFrame	HeaderFrame;
	struct S_Channel		Channel[MAX_NB_CH];
	uint16_t					Crc;
	uint16_t					FeidK27_7;
}structure_partagee;

#endif
