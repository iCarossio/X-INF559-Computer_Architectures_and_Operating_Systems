/* 
 * INF559 Data Lab 
 * 
 * Antoine Carossio antoine.carossio
 * 
 * bits.c - Source file with your solutions to the Lab.
 *          This is the file you will hand in to your instructor.
 *
 * WARNING: Do not include the <stdio.h> header; it confuses the dlc
 * compiler. You can still use printf for debugging without including
 * <stdio.h>, although you might get a compiler warning. In general,
 * it's not good practice to ignore compiler warnings, but in this
 * case it's OK.  
 */

#if 0
/*
 * Instructions to Students:
 *
 * STEP 1: Read the following instructions carefully.
 */

You will provide your solution to the Data Lab by
editing the collection of functions in this source file.

INTEGER CODING RULES:
 
  Replace the "return" statement in each function with one
  or more lines of C code that implements the function. Your code 
  must conform to the following style:
 
  int Funct(arg1, arg2, ...) {
      /* brief description of how your implementation works */
      int var1 = Expr1;
      ...
      int varM = ExprM;

      varJ = ExprJ;
      ...
      varN = ExprN;
      return ExprR;
  }

  Each "Expr" is an expression using ONLY the following:
  1. Integer constants 0 through 255 (0xFF), inclusive. You are
      not allowed to use big constants such as 0xffffffff.
  2. Function arguments and local variables (no global variables).
  3. Unary integer operations ! ~
  4. Binary integer operations & ^ | + << >>
    
  Some of the problems restrict the set of allowed operators even further.
  Each "Expr" may consist of multiple operators. You are not restricted to
  one operator per line.

  You are expressly forbidden to:
  1. Use any control constructs such as if, do, while, for, switch, etc.
  2. Define or use any macros.
  3. Define any additional functions in this file.
  4. Call any functions.
  5. Use any other operations, such as &&, ||, -, or ?:
  6. Use any form of casting.
  7. Use any data type other than int.  This implies that you
     cannot use arrays, structs, or unions.

 
  You may assume that your machine:
  1. Uses 2s complement, 32-bit representations of integers.
  2. Performs right shifts arithmetically.
  3. Has unpredictable behavior when shifting an integer by more
     than the word size.

EXAMPLES OF ACCEPTABLE CODING STYLE:
  /*
   * pow2plus1 - returns 2^x + 1, where 0 <= x <= 31
   */
  int pow2plus1(int x) {
     /* exploit ability of shifts to compute powers of 2 */
     return (1 << x) + 1;
  }

  /*
   * pow2plus4 - returns 2^x + 4, where 0 <= x <= 31
   */
  int pow2plus4(int x) {
     /* exploit ability of shifts to compute powers of 2 */
     int result = (1 << x);
     result += 4;
     return result;
  }

NOTES:
  1. Use the dlc (data lab checker) compiler (described in the handout) to 
     check the legality of your solutions.
  2. Each function has a maximum number of operators (! ~ & ^ | + << >>)
     that you are allowed to use for your implementation of the function. 
     The max operator count is checked by dlc. Note that '=' is not 
     counted; you may use as many of these as you want without penalty.
  3. Use the btest test harness to check your functions for correctness.
  4. Use the BDD checker to formally verify your functions
  5. The maximum number of ops for each function is given in the
     header comment for each function. If there are any inconsistencies 
     between the maximum ops in the writeup and in this file, consider
     this file the authoritative source.

/*
 * STEP 2: Modify the following functions according the coding rules.
 * 
 *   IMPORTANT. TO AVOID GRADING SURPRISES:
 *   1. Use the dlc compiler to check that your solutions conform
 *      to the coding rules.
 *   2. Use the BDD checker to formally verify that your solutions produce 
 *      the correct answers.
 */

#endif

/* Copyright (C) 1991-2012 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <http://www.gnu.org/licenses/>.  */
/* This header is separate from features.h so that the compiler can
   include it implicitly at the start of every compilation.  It must
   not itself include <features.h> or any other header that includes
   <features.h> because the implicit include comes before any feature
   test macros that may be defined in a source file before it first
   explicitly includes a system header.  GCC knows the name of this
   header in order to preinclude it.  */
/* We do support the IEC 559 math functionality, real and complex.  */
/* wchar_t uses ISO/IEC 10646 (2nd ed., published 2011-03-15) /
   Unicode 6.0.  */
/* We do not support C11 <threads.h>.  */
/* bit manipulation */


/* 
 * bitAnd - x&y using only ~ and | 
 *   Example: bitAnd(6, 5) = 4
 *   Legal ops: ~ |
 *   Max ops: 8
 *   Rating: 1
 */
int bitAnd(int x, int y) {
  /* Returns x&y using only ~ and | */

  return ~(~x|~y);
}


/* 
 * upperBits - pads n upper bits with 1's
 *  You may assume 0 <= n <= 32
 *  Example: upperBits(4) = 0xF0000000
 *  Legal ops: ! ~ & ^ | + << >>
 *  Max ops: 10
 *  Rating: 1
 */
int upperBits(int n) {
  /* (!!n)     handle the case n=0
     (!!n)<<31 go to the negatives
     (n+~0)    = n-1
   */

  return ((!!n)<<31)>>(n+~0);
}


/* 
 * anyEvenBit - return 1 if any even-numbered bit in word set to 1
 *   Examples anyEvenBit(0xA) = 0, anyEvenBit(0xE) = 1
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 12
 *   Rating: 2
 */
int anyEvenBit(int x) {
  /* Construct the mask using 0x55 = 1010101 */

  int t    = 0x55|(0x55<<8);
  int mask = t|(t<<16);
  return !!(x&mask);
}


/* 
 * byteSwap - swaps the nth byte and the mth byte
 *  Examples: byteSwap(0x12345678, 1, 3) = 0x56341278
 *            byteSwap(0xDEADBEEF, 0, 2) = 0xDEEFBEAD
 *  You may assume that 0 <= n <= 3, 0 <= m <= 3
 *  Legal ops: ! ~ & ^ | + << >>
 *  Max ops: 25
 *  Rating: 2
 */
int byteSwap(int x, int n, int m) { 
  int ones, nMask, mMask, masks, nByte, mByte;
  /* Swipe bites using masks combinations */

   ones = 0xFF; // Bytes of ones

   // <<3 <=> *8
   n = n << 3; 
   m = m << 3;

   // Compute the masks
   nMask = (ones << n);
   mMask = (ones << m);
   masks = ~(nMask | mMask); // 0s only where bytes are swiped

   // Extract the bytes to swap
   nByte = nMask&x;
   mByte = mMask&x;

   // Swipe them
   nByte = ((nByte >> n)&ones) << m;;
   mByte = ((mByte >> m)&ones) << n;
   
   return (masks&x) | mByte | nByte;
}



/* 
 * conditional - same as x ? y : z 
 *   Example: conditional(2,4,5) = 4
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 16
 *   Rating: 3
 */
int conditional(int x, int y, int z) {
  int minusX;
  /* Case separeation between x true and x false */

  x = !x; // =1 <=> x≠0 (convert x to bit)
  minusX = (~x+1); // -x : 32 1s or 32 0s
  return ( (z&minusX) | (y&(~minusX)) );
}

/* 
 * isAsciiDigit - return 1 if 0x30 <= x <= 0x39 (ASCII codes for characters '0' to '9')
 *   Example: isAsciiDigit(0x35) = 1.
 *            isAsciiDigit(0x3a) = 0.
 *            isAsciiDigit(0x05) = 0.
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 15
 *   Rating: 3
 */
int isAsciiDigit(int x) {
  int min, max;
  /* Classically compares the differences x-max and min-x to 0 */

  max = 0x3A; // = - 0x39 + 1
  min = 0x2F; // = - 0x30 - 1
  return ((x+(~max+1)) >> 31)&1 & ((min+(~x+1))>>31);
}


/*
 * bitCount - returns count of number of 1's in word
 *   Examples: bitCount(5) = 2, bitCount(7) = 3
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 40
 *   Rating: 4
 */
int bitCount(int x) {
  int mask, res;
  /* Split the problem into 8 subproblems */

    mask = 0x11|(0x11<<8);   // 0x11 = 00010001
    mask = mask|(mask<<16);      // 00010001000100010001000100010001

    // For each 4-bits, count the number of 1s and store it into itself
    res = x&mask; 
    res += (x>>1)&mask;
    res += (x>>2)&mask;
    res += (x>>3)&mask;

    // Sum everything in the 16 lower bits
    mask = 0xff|(0xff<<8);       // 00000000000000001111111111111111
    res  = (res>>16)+(res&mask);

    // For earch 8-bits in the 16 lower 16 bits, sum everything into the 4 lower bits
    mask = 0xf|(0xf<<8);         // 00000000000000000000111100001111
    res  = ((res>>4)&mask)+(res&mask);

    // Sum everything in the 8 lower bits
    mask = 0xff;
    res  = (res>>8)+(res&mask);
    return res;
}



/* 2's complement */
/* 
 * TMax - return maximum two's complement integer 
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 4
 *   Rating: 1
 */
int tmax(void) {
  /* Shifts 1 to the left and takes the complement */

  return ~(1<<31);
}



/* 
 * negate - return -x 
 *   Example: negate(1) = -1.
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 5
 *   Rating: 2
 */
int negate(int x) {
  /* Uses the same trick as everywhere */

  return (~x+1);
}



/* 
 * fitsBits - return 1 if x can be represented as an 
 *  n-bit, two's complement integer.
 *   1 <= n <= 32
 *   Examples: fitsBits(5,3) = 0, fitsBits(-4,3) = 1
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 15
 *   Rating: 2
 */
int fitsBits(int x, int n) {
  int shift;
  /* n-bit, two's complement : -2^(n-1) <-> 2^(n-1)-1 */

  shift = 0x21+~n; // Ox21 = 33
  return !( ((x<<shift) >> shift) ^ x );
}



/* 
 * addOK - Determine if can compute x+y without overflow
 *   Example: addOK(0x80000000,0x80000000) = 0,
 *            addOK(0x80000000,0x70000000) = 1, 
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 20
 *   Rating: 3
 */
int addOK(int x, int y) {
  int xM, yM, sumM;
  /* Uses approximately the same tricks as below for isGreater */

  // 32 0s (if positive) or 32 1s (if negative) of each numbers
  xM   = (x>>31);
  yM   = (y>>31);
  sumM  = (x+y)>>31;

  // 1 if different signs, else 0
  return !( ~(xM^yM) & (yM^sumM) );
}



/* 
 * isGreater - if x > y  then return 1, else return 0 
 *   Example: isGreater(4,5) = 0, isGreater(5,4) = 1
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 24
 *   Rating: 3
 */
int isGreater(int x, int y) {
  int xM, yM, sign;
  /* Seperate cases same signs or no to avoid overflows */

  // 32 0s (if positive) or 32 1s (if negative) of each numbers
  xM   = (x>>31);
  yM   = (y>>31);
  sign = (xM^yM)&1; // 1 if different signs, else 0

  return ((sign & yM /* y<0 */) | ((!sign) & ((y+(~x+1))>>31) /* y-x < 0 */ ));
}


/* 
 * absVal - absolute value of x
 *   Example: absVal(-1) = 1.
 *   You may assume -TMax <= x <= TMax
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 10
 *   Rating: 4
 */
int absVal(int x) {
  int xM;
  /* No modifiation to positive integers and find complementary for negative ones */

  xM = (x>>31); // 32 0s (if positive) or 32 1s (if negative)
  return (x+xM)^xM;
}
