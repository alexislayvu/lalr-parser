# LALR Parser
Built a LALR Parser in C

# How to run
Note: Make sure you have Flex and Bison installed on your system!

1. Open `Command Prompt`.
2. Navigate to the directory where the files have been downloaded using `cd`.
3. In the `Command Prompt` type `bison -d calc.y`.
4. Then, type `flex calc.lex`.
5. Next, type `gcc lex.yy.c calc.tab.c -w`.
6. Finally, type `a.exe` and enter an arithmetic expression.

# Test Runs
![test_runs](https://user-images.githubusercontent.com/54639928/208363902-b64f7c4d-068a-4fa2-b5f1-3469b75fd679.png)
