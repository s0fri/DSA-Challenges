Exercise 3: Sorting
1. Sorting a stack of integers in ascending order.
2. Sorting a queue of integers in ascending order.
3. What is the time complexity of each algorithm?
_____________________________________________________________________
1. Sorting a stack of integers in ascending order.
2. Sorting a queue of integers in ascending order.
Tow In One Parametrized Action  {May be it Complex But Let him coock }
_____________________________________________________________________

Action Sort( Q: Queue , S: Stack)
var
    P : Queue 
    L : Stack
    TemS , TemQ : integer
begin
    InitQueue(P)
    InitStack(L)
    {Empty Then Sort }
    while Not IsEmptyQueue(Q) And Not IsEmptyStack(S) Done
        {For Queue}
        Dequeue(TemQ,Q)

        While NOT IsEmpty(P) AND Front(P) > TemQ do
            Enqueue(Q, Dequeue(P))
        End
        Enqueue(P, TemQ)

        {For Stack}
        Pop(TemS,S)
        While NOT IsEmpty(L) AND Top(L) > TemS do
            Push(S, Pop(TemS))
        End
        Push(L, TemS)
    Done
    {Full}

    While NOT Ismpty(P) do
        Enqueue(Q, Dequeue(P))
    End

    While NOT IsEmpty(L) do
        Push(S, Pop(L))
    End

EndAction

_________________________________________________________________________________
3. What is the time complexity of each algorithm?
_________________________________________________________________________________
In best Case 
Sort Stack O(n)
Sort Queue O(n)
In Worst Case 
O(n*n)
_________________________________________________________________________________
Explantion:
_________________________________________________________________________________

1. Sorting a Queue
For each element (n elements), you may compare it with all elements already in Temp
In the worst case (reverse order), each insertion scans almost the whole structure

Total operations:

1+2+3+⋯+(n−1)=n(n-1)/2
So Time Complexity: O(n²)
_____________________________________________________________________________

2. Sorting a Stack
Same reasoning: each element can be moved back and forth between S and Temp
Worst case: maximum comparisons and movements

Total operations:

1+2+3+⋯+(n−1)

So Time Complexity: O(n²)
_____________________________________________________________________________
