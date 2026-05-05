Exercise 5: Balanced Symbols
1. Using one stack, write an action that checks whether an expression containing only the symbols ( ) [ ] { }
is well balanced.
2. Test your algorithm on the following expressions: [ ( [ ] ) ] ( [ ( ) ( ) ] ); [ ( [ ( ) ) ) ] ); [ ( [ ( ] ) [ ) ( ] ) ]; ) )
) ] ]; ( ( [ ].
3. What is the time complexity of your algorithm?
4. What is the maximum stack size required in the worst case for an expression of length n? 



Type
    Stack = record
        data: array[1..100] of char;
        top: integer;
    End;

Function Match(open, close: char): boolean;
begin
    Match ← ((open = '(') and (close = ')')) or
            ((open = '[') and (close = ']')) or
            ((open = '{') and (close = '}'));
End;

Function CheckBalanced(expr: string): boolean;
var
    S: Stack;
    i: integer;
    c, topChar: char;
begin
    InitStack(S);

    for i ← 1 to length(expr) do
        c ← expr[i];

        if (c = '(') or (c = '[') or (c = '{') then
            Push(S, c)
        Else
            if IsEmpty(S) then
                CheckBalanced ← False;
            end;

            topChar ← Pop(S);

            if not Match(topChar, c) then
                CheckBalanced ← False;
            end;
        end;
    end;

    if IsEmpty(S) then
        CheckBalanced ← True
    else
        CheckBalanced ← False;
End;



1. [ ( [ ] ) ] ( [ ( ) ( ) ] )

✔ Balanced

2. [ ( [ ( ) ) ) ] )

✖ Not Balanced
(extra ))

3. [ ( [ ( ] ) [ ) ( ] ) ]

✖ Not Balanced
(mismatch: ( closed by ])

4. ) )

✖ Not Balanced
(closing without opening)

5. ) ] ]

✖ Not Balanced
(closing without opening)

6. ( ( [ ]

✖ Not Balanced
(missing closing brackets)


3. Time Complexity

The algorithm scans the expression once from left to right, and for each symbol it performs constant-time operations (push, pop, comparison).

T(n)=O(n)

✔ Final Answer: O(n)

4. Maximum Stack Size (Worst Case)

In the worst case, all characters are opening brackets (e.g., "(((([["), so nothing gets popped until the end.

Every symbol is pushed into the stack
Stack grows to its maximum size
Max stack size=n

✔ Final Answer: O(n) (maximum size = n)