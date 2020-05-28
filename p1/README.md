## Usage
1. Put a for loop inside your `main()` function, but outside your other codes:
    ```cpp
    int main()
    {
        for (int r = 0; r < RUNTIME; r++)
        {
            //CODE BODY HERE
        }
        return 0;
    }
    ```
    Note that `RUNTIME` equals to the number of cases(currently 18).
2. Run in shell:
    ```bash
    $ g++ -Wall -Werror -pedantic --std=c++11 -g p1.cpp -o p1
    $ ./p1 < testcase.in >>t.out
    $ diff t.out testcase.out
    ```
3. For any difference in output located at line 2n, see for the testcase n. To ensure your output aligns with `testcase.out`, do put `endl` after the prompts and the outputs.
