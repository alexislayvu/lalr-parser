# LALR Parser
Built a LALR Parser in C for parsing and analyzing input source code. The parser, implemented to adhere to the Look-Ahead LR parsing algorithm, processes the input according to specified grammar rules and generates a parse tree.

# Usage
Please ensure you have Flex and Bison installed on your system.

1. Clone the repository

   - `git clone https://github.com/alexislayvu/LALR-Parser.git`

2. Go into the directory

   - `cd LALR-Parser`

3. Generate parser code

   - `bison -d calc.y`

4. Generate lexer code

   - `flex calc.lex`
  
5. Compile the lexer and parser
   - `gcc lex.yy.c calc.tab.c -w`
  
6. Execute the parser and enter an arithmetic expression
   - `a.exe`

# Example
![test_runs](https://user-images.githubusercontent.com/54639928/208363902-b64f7c4d-068a-4fa2-b5f1-3469b75fd679.png)
