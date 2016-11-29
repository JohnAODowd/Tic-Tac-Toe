#define DF_GUARD
//#define DEBUG

// PIN STATES
#define DDRD_PINS 0xFC
#define DDRB_PINS 0x17
#define CLR 0x0

// LED VALUES
#define ROW1 0x6
#define ROW2 0x5
#define ROW3 0x3
#define YLW1 0x4
#define YLW2 0x8
#define YLW3 0x10
#define RED1 0x20
#define RED2 0x40
#define RED3 0x80
#define LED_CNT 3

// REFRESH VALUE FOR PERSISTANCE OF VISION
#define RFRSH_RT 0

// LED STATES
#define RED -1
#define YLW 1
#define NONE 0
#define OFF 0
#define IR_PIN 11

// IR_REMOTE VALUES
#define ZERO 0xFF6897
#define ONE 0xFF30CF
#define TWO 0xFF18E7
#define THREE 0xFF7A85
#define FOUR 0xFF10EF
#define FIVE 0xFF38C7
#define SIX 0xFF5AA5
#define SEVEN 0xFF42BD
#define EIGHT 0xFF4AB5
#define NINE 0xFF52AD
#define PAUSE 0xFFC23D
#define MUTE 0xFFE21D
#define BACK 0xFFB04F
#define MODE 0xFF629D
#define ON_OFF 0xFFA25D
#define PREV 0xFF22DD
#define NEXT 0xFFA857
#define EQ 0xFF906F
#define HUNDRED_PLUS 0xFF9867

// GAME LOGIC DEFINES
#define YLW_WIN 3
#define RED_WIN -3
#define DRAW 1
#define NOT_STRTD 2
#define NOT_OVER 0
#define GM_LCKD 4
#define GM_RDY 5
#define SND_HRN 6
#define SV_GM 8
#define INVALID_MOVE 7
#define VALID 1
#define INVALID 0
#define TOP_RIGHT board[0][0]
#define MID_RIGHT board[1][0]
#define BOT_RIGHT board[2][0]
#define TOP_LEFT board[0][2]
#define MID_LEFT board[1][2]
#define BOT_LEFT board[2][2]
#define TOP_MID board[0][1]
#define MID_MID board[1][1]
#define BOT_MID board[2][1]
#define WIN_MSK 3
#define WIN_TST 0
#define PLYR_ONE 1
#define PLYR_TWO 0
#define BRD_FULL 9
#define PLYR_TURN 2
#define PLYR_TST 1

//EEPROM definitions
#define SVD 1
#define NTSVD 0
#define TRN_ADDR 0
#define STATE_ADDR 1
#define MOVE_ADDR 2
#define BRD1 3
#define BRD2 4
#define BRD3 5
#define BRD4 6
#define BRD5 7
#define BRD6 8
#define BRD7 9
#define BRD8 10
#define BRD9 11
#define MUTE_ADDR 12
#define SAVE_ADDR 13

// Processing definitions:
#define BAUD 115200
#define EMPTY_ 0
#define SEP ","
#define LD1 0
#define LD2 1
#define LD3 2
#define LD4 3
#define LD5 4
#define LD6 5
#define LD7 6
#define LD8 7
#define LD9 8
