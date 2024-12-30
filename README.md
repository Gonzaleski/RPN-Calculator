# RPN-Calculator
This repository contains two Reverse Polish Notation (RPN) calculators implemented in C: one for boolean algebra expressions and the other for arithmetic expressions.

### RPN Boolean Calculator

The RPN Boolean Calculator evaluates Boolean expressions in postfix notation. It supports input values TRUE and FALSE, along with the operators AND (&), OR (|), and NOT (!). The calculator handles both uppercase and lowercase input values and accepts 0 for FALSE and 1 for TRUE. Calculations occur whenever a newline character is read, and the program exits on the end-of-file character (Ctrl+d). In case of errors, a generic error message is displayed. The output is either TRUE or FALSE, presented in capital letters.

#### Files Included

- `boolcalc.l`: Lexical analyzer (Flex) source file.
- `boolcalc.y`: Parser (Bison) source file.
- `boolcalc.tab.h`: Header file generated by Bison.
- `boolcalc.tab.c`: Parser file generated by Bison.
- `lex.yy.c`: Lexical analyzer file generated by Flex.
- `boolcalc`: Executable file generated after compiling the code.

#### Usage

Follow the instructions provided in the README file specific to the RPN Boolean Calculator to compile and run the program.

### RPN Calculator

The RPN Calculator evaluates arithmetic expressions in postfix notation. It supports the following arithmetic operations: addition (+), subtraction (-), multiplication (*), division (/), power (^), squar root (sqrt), and negative (n). Calculations occur whenever a newline character is read, and the program exits on the end-of-file character (Ctrl+d). In case of errors, the program displays a generic error message. The output is the result of the evaluated expression.

#### Files Included

- `rpcalc.l`: Lexical analyzer (Flex) source file.
- `rpcalc.y`: Parser (Bison) source file.
- `rpcalc.tab.h`: Header file generated by Bison.
- `rpcalc.tab.c`: Parser file generated by Bison.
- `lex.yy.c`: Lexical analyzer file generated by Flex.
- `rpcalc`: Executable file generated after compiling the code.

#### Usage

Follow the instructions provided in the README file specific to the RPN Calculator to compile and run the program.
