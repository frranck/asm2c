#include <stdint.h>
#include <stdlib.h>
#include <stdarg.h>
#include <string.h>
#include <math.h>
#include <setjmp.h>
#include <stddef.h>
#include <stdio.h>
#ifdef __LIBRETRO__
#include <retro_endianness.h>
#ifndef FALCON
#include <boolean.h>
#endif
#else
#include <stdbool.h>
#endif

#ifdef __cplusplus
extern "C" {
#endif

#if defined(_WIN32) || defined(__INTEL_COMPILER)
#define INLINE    __inline
#elif defined(__STDC_VERSION__) && __STDC_VERSION__ >= 199901L
#define INLINE    inline
#elif defined(__GNUC__)
#define INLINE    __inline__
#else
#define INLINE
#endif

#define realAddress(offset, segment)    ((db *)&m + (dd)offset + m.selectors[m.segment.dw.val])

#define db    uint8_t
#define dw    uint16_t
#define dd    uint32_t

#if defined(_MSC_VER)

#pragma pack(push, 1)
struct unaligned_dw {
  dw value;
};

struct unaligned_dd {
  dd value;
};
#pragma pack(pop)

#else

struct unaligned_dw {
  dw value;
} __attribute__ ((__packed__));

struct unaligned_dd {
  dd value;
} __attribute__ ((__packed__));

#endif

typedef struct unaligned_dw unaligned_dw_t;
typedef struct unaligned_dd unaligned_dd_t;

#define read_dd(p) (((struct unaligned_dd *)(p))->value)

#define read_dw(p) (((struct unaligned_dw *)(p))->value)

#ifdef MSB_FIRST
typedef struct dblReg
{
   db v0;
   db v1;
   db v2;
   db val;
} dblReg;
typedef struct dbhReg
{
   db v0;
   db v1;
   db val;
   db v2;
} dbhReg;
typedef struct dwReg
{
   dw v0;
   dw val;
} dwReg;
typedef struct dblReg16
{
   db v0;
   db val;
} dblReg16;
typedef struct dbhReg16
{
   db val;
   db v0;
} dbhReg16;
#else
typedef struct dblReg
{
   db val;
   db v0;
   db v1;
   db v2;
} dblReg;
typedef struct dbhReg
{
   db v0;
   db val;
   db v1;
   db v2;
} dbhReg;
typedef struct dwReg
{
   dw val;
   dw v0;
} dwReg;
typedef struct dblReg16
{
   db val;
   db v0;
} dblReg16;
typedef struct dbhReg16
{
   db v0;
   db val;
} dbhReg16;
#endif

typedef struct ddReg
{
   dd val;
} ddReg;


typedef union registry32Bits
{
   struct dblReg dbl;
   struct dbhReg dbh;
   struct dwReg  dw;
   struct ddReg  dd;
} registry32Bits;


typedef struct dwReg16
{
   dw val;
} dwReg16;



typedef union registry16Bits
{
   struct dblReg16 dbl;
   struct dbhReg16 dbh;
   struct dwReg16  dw;
} registry16Bits;


#define VGARAM_SIZE     320 * 200
#define STACK_SIZE      1024 * sizeof(dd)
#define HEAP_SIZE       1024 * 1024 * 4
#define NB_SELECTORS    128

#ifdef FALCON
#define COPYBLOCK       asm volatile ("move.l   %1,a0\n\t"                                  \
                                      "move.l   %0,a1\n\t"                                  \
                                      "moveq   #41-1,d0\n\t"                                \
                                      "loop%=:\n\t"                                         \
                                      "move16   (a0)+,(a1)+ \n\t"                           \
                                      "move16   (a0)+,(a1)+ \n\t"                           \
                                      "move16   (a0)+,(a1)+ \n\t"                           \
                                      "move16   (a0)+,(a1)+ \n\t"                           \
                                      "move16   (a0)+,(a1)+ \n\t"                           \
                                      "move16   (a0)+,(a1)+ \n\t"                           \
                                      "move16   (a0)+,(a1)+ \n\t"                           \
                                      "move16   (a0)+,(a1)+ \n\t"                           \
                                      "move16   (a0)+,(a1)+ \n\t"                           \
                                      "move16   (a0)+,(a1)+ \n\t"                           \
                                      "move16   (a0)+,(a1)+ \n\t"                           \
                                      "move16   (a0)+,(a1)+ \n\t"                           \
                                      "move16   (a0)+,(a1)+ \n\t"                           \
                                      "move16   (a0)+,(a1)+ \n\t"                           \
                                      "move16   (a0)+,(a1)+ \n\t"                           \
                                      "move16   (a0)+,(a1)+ \n\t"                           \
                                      "move16   (a0)+,(a1)+ \n\t"                           \
                                      "move16   (a0)+,(a1)+ \n\t"                           \
                                      "move16   (a0)+,(a1)+ \n\t"                           \
                                      "move16   (a0)+,(a1)+ \n\t"                           \
                                      "move16   (a0)+,(a1)+ \n\t"                           \
                                      "move16   (a0)+,(a1)+ \n\t"                           \
                                      "move16   (a0)+,(a1)+ \n\t"                           \
                                      "move16   (a0)+,(a1)+ \n\t"                           \
                                      "move16   (a0)+,(a1)+ \n\t"                           \
                                      "move16   (a0)+,(a1)+ \n\t"                           \
                                      "move16   (a0)+,(a1)+ \n\t"                           \
                                      "move16   (a0)+,(a1)+ \n\t"                           \
                                      "move16   (a0)+,(a1)+ \n\t"                           \
                                      "move16   (a0)+,(a1)+ \n\t"                           \
                                      "move16   (a0)+,(a1)+ \n\t"                           \
                                      "move16   (a0)+,(a1)+ \n\t"                           \
                                      "move16   (a0)+,(a1)+ \n\t"                           \
                                      "move16   (a0)+,(a1)+ \n\t"                           \
                                      "move16   (a0)+,(a1)+ \n\t"                           \
                                      "move16   (a0)+,(a1)+ \n\t"                           \
                                      "move16   (a0)+,(a1)+ \n\t"                           \
                                      "move16   (a0)+,(a1)+ \n\t"                           \
                                      "move16   (a0)+,(a1)+ \n\t"                           \
                                      "move16   (a0)+,(a1)+ \n\t"                           \
                                      "move16   (a0)+,(a1)+ \n\t"                           \
                                      "move16   (a0)+,(a1)+ \n\t"                           \
                                      "move16   (a0)+,(a1)+ \n\t"                           \
                                      "move16   (a0)+,(a1)+ \n\t"                           \
                                      "move16   (a0)+,(a1)+ \n\t"                           \
                                      "move16   (a0)+,(a1)+ \n\t"                           \
                                      "move16   (a0)+,(a1)+ \n\t"                           \
                                      "move16   (a0)+,(a1)+ \n\t"                           \
                                      "move16   (a0)+,(a1)+ \n\t"                           \
                                      "move16   (a0)+,(a1)+ \n\t"                           \
                                      "move16   (a0)+,(a1)+ \n\t"                           \
                                      "move16   (a0)+,(a1)+ \n\t"                           \
                                      "move16   (a0)+,(a1)+ \n\t"                           \
                                      "move16   (a0)+,(a1)+ \n\t"                           \
                                      "move16   (a0)+,(a1)+ \n\t"                           \
                                      "move16   (a0)+,(a1)+ \n\t"                           \
                                      "move16   (a0)+,(a1)+ \n\t"                           \
                                      "move16   (a0)+,(a1)+ \n\t"                           \
                                      "move16   (a0)+,(a1)+ \n\t"                           \
                                      "move16   (a0)+,(a1)+ \n\t"                           \
                                      "move16   (a0)+,(a1)+ \n\t"                           \
                                      "move16   (a0)+,(a1)+ \n\t"                           \
                                      "move16   (a0)+,(a1)+ \n\t"                           \
                                      "move16   (a0)+,(a1)+ \n\t"                           \
                                      "move16   (a0)+,(a1)+ \n\t"                           \
                                      "move16   (a0)+,(a1)+ \n\t"                           \
                                      "move16   (a0)+,(a1)+ \n\t"                           \
                                      "move16   (a0)+,(a1)+ \n\t"                           \
                                      "move16   (a0)+,(a1)+ \n\t"                           \
                                      "move16   (a0)+,(a1)+ \n\t"                           \
                                      "move16   (a0)+,(a1)+ \n\t"                           \
                                      "move16   (a0)+,(a1)+ \n\t"                           \
                                      "move16   (a0)+,(a1)+ \n\t"                           \
                                      "move16   (a0)+,(a1)+ \n\t"                           \
                                      "move16   (a0)+,(a1)+ \n\t"                           \
                                      "move16   (a0)+,(a1)+ \n\t"                           \
                                      "move16   (a0)+,(a1)+ \n\t"                           \
                                      "move16   (a0)+,(a1)+ \n\t"                           \
                                      "move16   (a0)+,(a1)+ \n\t"                           \
                                      "move16   (a0)+,(a1)+ \n\t"                           \
                                      "move16   (a0)+,(a1)+ \n\t"                           \
                                      "move16   (a0)+,(a1)+ \n\t"                           \
                                      "move16   (a0)+,(a1)+ \n\t"                           \
                                      "move16   (a0)+,(a1)+ \n\t"                           \
                                      "move16   (a0)+,(a1)+ \n\t"                           \
                                      "move16   (a0)+,(a1)+ \n\t"                           \
                                      "move16   (a0)+,(a1)+ \n\t"                           \
                                      "move16   (a0)+,(a1)+ \n\t"                           \
                                      "move16   (a0)+,(a1)+ \n\t"                           \
                                      "move16   (a0)+,(a1)+ \n\t"                           \
                                      "move16   (a0)+,(a1)+ \n\t"                           \
                                      "move16   (a0)+,(a1)+ \n\t"                           \
                                      "move16   (a0)+,(a1)+ \n\t"                           \
                                      "move16   (a0)+,(a1)+ \n\t"                           \
                                      "move16   (a0)+,(a1)+ \n\t"                           \
                                      "move16   (a0)+,(a1)+ \n\t"                           \
                                      "move16   (a0)+,(a1)+ \n\t"                           \
                                      "move16   (a0)+,(a1)+ \n\t"                           \
                                      "move16   (a0)+,(a1)+ \n\t"                           \
                                      "move16   (a0)+,(a1)+ \n\t"                           \
                                      "dbra   d0,loop%=\n\t"                                \
                                      :                                                     \
                                      : "r" (m.buffer), "r" (realAddress(m.esi.dd.val, fs)) \
                                      :                                                     \
                                      );
#else
#define COPYBLOCK       MEMCPY(m.buffer, realAddress(m.esi.dd.val, fs), 64000);
#endif

#define RAMESI          m.ramVideoPointer = m.ramCopyPointer = realAddress(m.esi.dd.val, fs);
#define RAMBUFFER       m.ramVideoPointer = &m.buffer;


#define PUSHAD          MEMCPY(&m.stack[m.stackPointer], &m.eax.dd.val, sizeof(dd) * 8); m.stackPointer += sizeof(dd) * 8

#define POPAD           m.stackPointer -= sizeof(dd) * 8; MEMCPY(&m.eax.dd.val, &m.stack[m.stackPointer], sizeof(dd) * 8)

#define PUSH(nbBits, a)                        MEMCPY(&m.stack[m.stackPointer], &a, sizeof(a)); m.stackPointer += sizeof(a)

#define POP(nbBits, a)                         m.stackPointer -= sizeof(a); MEMCPY(&a, &m.stack[m.stackPointer], sizeof(a))

#define AFFECT_ZF(a)                           m.ZF = (a == 0)
#define AFFECT_CF(a)                           m.CF = a
#define AFFECT_SF(nbBits, a)                   m.SF = (a >> (nbBits - 1))
#define ISNEGATIVE(nbBits, a)                  (a & (1 << (nbBits - 1)))

// TODO: add missings affected flags on CMP
#define CMP(nbBits, a, nbBitsSrc, b)           AFFECT_ZF(a - b); AFFECT_CF(a < b); AFFECT_SF(nbBits, (a - b));
#define OR(nbBits, a, nbBitsSrc, b)            a = a | b; AFFECT_ZF(a); AFFECT_SF(nbBits, a)
#define XOR(nbBits, a, nbBitsSrc, b)           a = a ^ b; AFFECT_ZF(a); AFFECT_SF(nbBits, a)
#define AND(nbBits, a, nbBitsSrc, b)           a = a & b; AFFECT_ZF(a); AFFECT_SF(nbBits, a)
#define NEG(nbBits, a)                         AFFECT_CF(a != 0); a = -a;
#define TEST(nbBits, a, nbBitsSrc, b)          AFFECT_ZF((a & b)); AFFECT_CF(b < a); AFFECT_SF(nbBits, (a & b))

#define SHR(nbBits, a, nbBitsSrc, b)           a = a >> b
#define SHL(nbBits, a, nbBitsSrc, b)           a = a << b
#define ROR(nbBits, a, nbBitsSrc, b)           a = (a >> b | a << (nbBits - b))
#define ROL(nbBits, a, nbBitsSrc, b)           a = (a << b | a >> (nbBits - b))

#define READDDp(a)                             ((dd *)&m.a)
#define READDWp(a)                             ((dw *)&m.a)
#define READDBp(a)                             ((db *)&m.a)

#define READDD(a)                              (m.a.dd.val)

#ifdef MSB_FIRST
#define READDBhW(a)                            (*(((db *)&m.a) + 0))
#define READDBhD(a)                            (*(((db *)&m.a) + 2))
#define READDBlW(a)                            (*(((db *)&m.a) + 1))
#define READDBlD(a)                            (*(((db *)&m.a) + 3))
#else
#define READDBhW(a)                            (*(((db *)&m.a) + 1))
#define READDBhD(a)                            (*(((db *)&m.a) + 1))
#define READDBlW(a)                            (*(((db *)&m.a)))
#define READDBlD(a)                            (*(((db *)&m.a)))
#endif

#define READDW(a)                              (*((dw *)&m.a.dw.val))
#define READDBh(a)                             (*((db *)&m.a.dbh.val))
#define READDBl(a)                             (*((db *)&m.a.dbl.val))

#define ADD(nbBits, a, nbBitsSrc, b)           a = a + b; AFFECT_ZF(a); AFFECT_CF(a < b); AFFECT_SF(nbBits, a);
#define SUB(nbBits, a, nbBitsSrc, b)           a = a - b; AFFECT_ZF(a); AFFECT_CF(b < a); AFFECT_SF(nbBits, a);

// TODO: should affects OF, SF, ZF, AF, and PF
#define INC(nbBits, a)                         a = a + 1; AFFECT_ZF(a)
#define DEC(nbBits, a)                         a = a - 1; AFFECT_ZF(a)

#define JE(label)                              if (m.ZF) GOTOLABEL(label)
#define JZ(label)                              JE(label)

#define JNE(label)                             if (!m.ZF) GOTOLABEL(label)
#define JNZ(label)                             JNE(label)

#define JNB(label)                             if (!m.CF) GOTOLABEL(label)
#define JAE(label)                             JNB(label)
#define JNC(label)                             JNB(label)

#define JB(label)                              if (m.CF) GOTOLABEL(label)
#define JC(label)                              JB(label)
#define JNAE(label)                            JB(label)

#define JA(label)                              if (!m.CF && !m.ZF) GOTOLABEL(label)
#define JNBE(label)                            JA(label)

#define JS(label)                              if (m.SF) GOTOLABEL(label)
#define JNS(label)                             if (!m.SF) GOTOLABEL(label)

#define JNA(label)                             if (m.CF || m.ZF) GOTOLABEL(label)
#define JBE(label)                             JNA(label)

#define MOV(nbBits, dest, nbBitsSrc, src)      dest = src
#define MOVZX(nbBits, dest, nbBitsSrc, src)    dest = src
#define MOVSX(nbBits, dest, nbBitsSrc, src)    if (ISNEGATIVE(nbBitsSrc, src)) { dest = ((-1 ^ ((1 << nbBitsSrc) - 1)) | src); } else { dest = src; }

// LEA - Load Effective Address
#define LEA(nbBits, dest, nbBitsSrc, src)      dest = src

// MOVSx (DF FLAG not implemented)
#define MOVS(a, ecx)                           src = realAddress(m.esi.dd.val, ds); dest = realAddress(m.edi.dd.val, es); \
   if (labs(((char *)dest) - ((char *)src)) <= a) {                                                                       \
      for (i = 0; i < ecx; i++) {                                                                                         \
         src = realAddress(m.esi.dd.val, ds); dest = realAddress(m.edi.dd.val, es);                                       \
         memmove(dest, src, a); m.edi.dd.val += a; m.esi.dd.val += a; }                                                   \
   } else {                                                                                                               \
      memmove(dest, src, a * ecx); m.edi.dd.val += a * ecx; m.esi.dd.val += a * ecx;                                      \
   }

#define MOVSB        MOVS(1, 1)
#define MOVSW        MOVS(2, 1)
#define MOVSD        MOVS(4, 1)

#define REP_MOVS(b)    MOVS(b, m.ecx.dd.val)
#define REP_MOVSB    REP_MOVS(1)
#define REP_MOVSW    REP_MOVS(2)
#define REP_MOVSD    REP_MOVS(4)

#define STOS(a, b)    MEMCPY(realAddress(m.edi.dd.val, es), ((db *)&m.eax.dd.val) + b, a); m.edi.dd.val += a

#ifdef MSB_FIRST
#define STOSB        STOS(1, 3)
#define STOSW        STOS(2, 2)
#else
#define STOSB        STOS(1, 0)
#define STOSW        STOS(2, 0)
#endif

#define STOSD        STOS(4, 0)

#define REP_STOSB    for (i = 0; i < m.ecx.dd.val; i++) { STOSB; }
#define REP_STOSW    for (i = 0; i < m.ecx.dd.val; i++) { STOSW; }
#define REP_STOSD    for (i = 0; i < m.ecx.dd.val; i++) { STOSD; }

#define LODS(a, b)          MEMCPY(((db *)&m.eax.dd.val) + b, realAddress(m.esi.dd.val, ds), a); m.esi.dd.val += a

#ifdef FALCON
#define MEMCPY(d, s, l)     if (l == 1) {      \
      asm volatile ("move.l   %1,a0\n\t"       \
                    "move.l   %0,a1\n\t"       \
                    "move.b   (a0),(a1)\n\t"   \
                    :                          \
                    : "r" (d), "r" (s)         \
                    :                          \
                    );                         \
} else if (l == 2) {                           \
      asm volatile ("move.l   %1,a0\n\t"       \
                    "move.l   %0,a1\n\t"       \
                    "move.w   (a0),(a1)\n\t"   \
                    :                          \
                    : "r" (d), "r" (s)         \
                    :                          \
                    );                         \
} else if (l == 4) {                           \
      asm volatile ("move.l   %1,a0\n\t"       \
                    "move.l   %0,a1\n\t"       \
                    "move.l   (a0),(a1)\n\t"   \
                    :                          \
                    : "r" (d), "r" (s)         \
                    :                          \
                    );                         \
} else if (l == 32) {                          \
      asm volatile ("move.l   %1,a0\n\t"       \
                    "move.l   %0,a1\n\t"       \
                    "move.l   (a0)+,(a1)+\n\t" \
                    "move.l   (a0)+,(a1)+\n\t" \
                    "move.l   (a0)+,(a1)+\n\t" \
                    "move.l   (a0)+,(a1)+\n\t" \
                    "move.l   (a0)+,(a1)+\n\t" \
                    "move.l   (a0)+,(a1)+\n\t" \
                    "move.l   (a0)+,(a1)+\n\t" \
                    "move.l   (a0)+,(a1)+\n\t" \
                    :                          \
                    : "r" (d), "r" (s)         \
                    :                          \
                    );                         \
} else {                                       \
      memcpy(d, s, l);                         \
}
#else
 #define MEMCPY(d, s, l)    memcpy(d, s, l);
#endif


//#define LODS2(a, b)    MEMCPY(((db *)&m.eax.dd.val) + b, realAddress(m.esi.dd.val, ds), a); m.esi.dd.val += a

#ifdef MSB_FIRST
#define LODSB    LODS(1, 3)
#define LODSW    LODS(2, 2)
#else
#define LODSB    LODS(1, 0)
#define LODSW    LODS(2, 0)
#endif

#define LODSD    LODS(4, 0)

#define REP_LODS(a, b)    for (i = 0; i < m.ecx.dd.val; i++) { LODS(a, b); }

#ifdef MSB_FIRST
#define REP_LODSB    REP_LODS(1, 3)
#define REP_LODSW    REP_LODS(2, 2)
#else
#define REP_LODSB    REP_LODS(1, 0)
#define REP_LODSW    REP_LODS(2, 0)
#endif

#define REP_LODSD    REP_LODS(4, 0)

// JMP - Unconditional Jump
#define JMP(label)      GOTOLABEL(label)
#define GOTOLABEL(a)    goto a

#define LOOP(label)     DEC(32, m.ecx.dd.val); JNZ(label)

#define CLD    m.DF = 0
#define STD    m.DF = 1

void stackDump();
void hexDump(void *addr, int len);
void asm2C_INT(int a);
void asm2C_init();
void asm2C_printOffsets(unsigned int offset);

// directjeu nosetjmp,2
// directmenu
#define INT(a)    asm2C_INT(a); TESTJUMPTOBACKGROUND

#define TESTJUMPTOBACKGROUND    if (m.jumpToBackGround) { CALL(moveToBackGround); }

void asm2C_OUT(int16_t address, int data);

#define OUT(a, b)    asm2C_OUT(a, b)
int8_t asm2C_IN(int16_t data);

#define IN(a, b)     a = asm2C_IN(b); TESTJUMPTOBACKGROUND

#define STI    // TODO: STI not implemented
#define PUSHF
#define POPF
#define NOP

#ifdef FALCON
#define CALL(label)    asm goto ("JSR %l0\n\t" : :   :  : label);
#define RET    asm ("RTS");
#else
#define CALL(label)              \
   if (setjmp(jmpbuffer) == 0) { \
      PUSH(?, jmpbuffer);        \
      JMP(label);                \
   }
#define RET    POP(x, jmpbuffer); longjmp(jmpbuffer, 0);
#endif

#define SPRITE(yy,xx) \
{ \
db * src = realAddress(m.esi.dd.val, ds); \
db * dst = realAddress(m.edi.dd.val, es); \
int x,y; \
for (y=0;y<yy;y++) { \
for (x=0;x<xx;x++) { \
  if (*src != 0) { \
     *dst = *src; \
  } \
  dst++;src++; \
} dst+=320-xx;src+=320-xx; \
} \
}

#define SPRITE_WITH_BREAK(xx) \
{ \
int x; \
for (x=0;x<xx;x++) { \
  if (*src != 0) { \
     *dst = *src; \
  } \
  dst++;src++; \
} dst+=320-xx;src+=320-xx;if (*src == 248) {break;} \
}

#define SPRITE_WITH_BREAK_W(xx) \
{ \
int x; \
for (x=0;x<xx;x++) { \
  if (*src != 0) { \
     *dst = 255; \
  } \
  dst++;src++; \
} dst+=320-xx;src+=320-xx;if (*src == 248) {break;} \
}

#define SPRITE_BN \
{ \
dw yy = m.ebx.dw.val; \
dw xx = m.ecx.dw.val; \
db * src = realAddress(m.esi.dd.val, ds); \
db * dst = realAddress(m.edi.dd.val, es); \
int x,y; \
switch(xx) { \
   case 23: for (y=0;y<yy;y++) { SPRITE_WITH_BREAK(23); } break; \
   case 26: for (y=0;y<yy;y++) { SPRITE_WITH_BREAK(26); } break; \
   case 32: for (y=0;y<yy;y++) { SPRITE_WITH_BREAK(32); } break; \
   case 38: for (y=0;y<yy;y++) { SPRITE_WITH_BREAK(38); } break; \
   case 16: for (y=0;y<yy;y++) { SPRITE_WITH_BREAK(16); } break; \
   case 17: for (y=0;y<yy;y++) { SPRITE_WITH_BREAK(17); } break; \
   default: \
for (y=0;y<yy;y++) { \
for (x=0;x<xx;x++) { \
  if (*src != 0) { \
     *dst = *src; \
  } \
  dst++;src++; \
} dst+=320-xx;src+=320-xx;if (*src == 248) {break;} \
} \
} \
}

#define SPRITE_BW \
{ \
dw yy = m.ebx.dw.val; \
dw xx = m.ecx.dw.val; \
db * src = realAddress(m.esi.dd.val, ds); \
db * dst = realAddress(m.edi.dd.val, es); \
int x,y; \
switch(xx) { \
   case 23: for (y=0;y<yy;y++) { SPRITE_WITH_BREAK_W(23); } break; \
   case 26: for (y=0;y<yy;y++) { SPRITE_WITH_BREAK_W(26); } break; \
   case 32: for (y=0;y<yy;y++) { SPRITE_WITH_BREAK_W(32); } break; \
   case 38: for (y=0;y<yy;y++) { SPRITE_WITH_BREAK_W(38); } break; \
   case 16: for (y=0;y<yy;y++) { SPRITE_WITH_BREAK_W(16); } break; \
   case 17: for (y=0;y<yy;y++) { SPRITE_WITH_BREAK_W(17); } break; \
   default: \
for (y=0;y<yy;y++) { \
for (x=0;x<xx;x++) { \
  if (*src != 0) { \
     *dst = 255; \
  } \
  dst++;src++; \
} dst+=320-xx;src+=320-xx;if (*src == 248) {break;} \
}} \
}

#define SPRITE_TIMEOUT SPRITE(43,87)

#define SPRITE_CLOUD \
{ \
db * src = realAddress(m.esi.dd.val, ds); \
db * dst = realAddress(m.edi.dd.val, es); \
int x,y; \
for (y=0;y<22;y++) { \
for (x=0;x<48;x++) { \
  db s = *src; \
  db d = *dst; \
  if (d == 103) { \
     if (s != 131) { *dst = s - 4; } \
  } else if (d == 131) { \
     *dst = s;  \
  } \
  dst++;src++; \
} dst+=320-48;src+=320-48; \
} \
}


#define EAX_X_320 m.eax.dd.val = m.eax.dd.val * 320
#define EDX_X_320 m.edx.dd.val = m.edx.dd.val * 320

#define SPRITE_8_16 SPRITE(8,16)
#define SPRITE_16_16 SPRITE(16,16)
#define SPRITE_16_11 SPRITE(16,11)
#define SPRITE_16_187 SPRITE(16,187)
#define SPRITE_16_263 SPRITE(16,263)
#define SPRITE_16_5 SPRITE(16,5)
#define SPRITE_191_16 SPRITE(191,16)
#define SPRITE_192_21 SPRITE(192,21)
#define SPRITE_19_23 SPRITE(19,23)
#define SPRITE_23_21 SPRITE(23,21)
#define SPRITE_26_206 SPRITE(26,206)
#define SPRITE_30_48 SPRITE(30,48)
#define SPRITE_32_32 SPRITE(32,32)
#define SPRITE_36_88 SPRITE(36,88)
#define SPRITE_64_46 SPRITE(64,46)
#define SPRITE_77_12 SPRITE(77,12)
#define SPRITE_85_17 SPRITE(85,17)
#define SPRITE_92_17 SPRITE(92,17)
#define SPRITE_27_31 SPRITE(27,31)

#ifdef __LIBRETRO__
#include "libretro.h"
extern retro_log_printf_t log_cb;
#else
extern FILE *logDebug;
#endif

void log_error(const char *fmt, ...);
void log_debug(const char *fmt, ...);
void log_info(const char *fmt, ...);
void log_debug2(const char *fmt, ...);

#if DEBUG == 2
    #define R(a)    log_debug("l:%d:%s\n", __LINE__,#a); a
#else
    #define R(a)    a
#endif

#ifndef __LIBRETRO__
bool is_little_endian();
#endif

#if defined(_MSC_VER)
#define SWAP16    _byteswap_ushort
#define SWAP32    _byteswap_ulong
#else
#define SWAP16(x)    ((uint16_t)(                          \
                         (((uint16_t)(x) & 0x00ff) << 8) | \
                         (((uint16_t)(x) & 0xff00) >> 8)   \
                         ))
#define SWAP32(x)    ((uint32_t)(                               \
                         (((uint32_t)(x) & 0x000000ff) << 24) | \
                         (((uint32_t)(x) & 0x0000ff00) << 8) |  \
                         (((uint32_t)(x) & 0x00ff0000) >> 8) |  \
                         (((uint32_t)(x) & 0xff000000) >> 24)   \
                         ))
#endif

#ifdef __cplusplus
}
#endif
