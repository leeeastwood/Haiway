// auto-generated pin info file
// for board ESP32

#ifndef JSPININFO_H
#define JSPININFO_H

#include "jspin.h"

#define JSH_PIN_COUNT 40

#define JSH_PORTA_COUNT 0
#define JSH_PORTB_COUNT 0
#define JSH_PORTC_COUNT 0
#define JSH_PORTD_COUNT 40
#define JSH_PORTE_COUNT 0
#define JSH_PORTF_COUNT 0
#define JSH_PORTG_COUNT 0
#define JSH_PORTH_COUNT 0
#define JSH_PORTI_COUNT 0
#define JSH_PORTV_COUNT 0
#define JSH_PORTA_OFFSET -1
#define JSH_PORTB_OFFSET -1
#define JSH_PORTC_OFFSET -1
#define JSH_PORTD_OFFSET 0
#define JSH_PORTE_OFFSET -1
#define JSH_PORTF_OFFSET -1
#define JSH_PORTG_OFFSET -1
#define JSH_PORTH_OFFSET -1
#define JSH_PORTI_OFFSET -1
#define JSH_PORTV_OFFSET -1

#define JSH_PININFO_FUNCTIONS 1

typedef struct JshPinInfo {
  JsvPinInfoPort port;
  JsvPinInfoPin pin;
  JsvPinInfoAnalog analog; // TODO: maybe we don't need to store analogs separately
  JshPinFunction functions[JSH_PININFO_FUNCTIONS];
} PACKED_FLAGS JshPinInfo;

extern const JshPinInfo pinInfo[JSH_PIN_COUNT];

#endif // JSPININFO_H
