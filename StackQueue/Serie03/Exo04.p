Exercise 4: Splitting and Merging
1. Splitting a stack P of integers into two stacks P1 and P2, where P1 contains the even values and P2
    contains the odd values.
2. Splitting a queue Q into two queues Q1 and Q2, where Q1 contains the positive values and Q2 contains
the negative values.
3. Merging two sorted queues into one sorted queue.
4. Merging two stacks by alternating their elements into a new stack.

_____________________________________________________________________________
1. Splitting a stack P of integers into two stacks P1 and P2, 
    where P1 contains the even values and P2
    contains the odd values.
_____________________________________________________________________________
Action SplitSatack(S : Stack)
var :P1 , P2 : Stack
        val : integer
begin
    InitStack(P1)
    InitStack(P2)

    while Not IsEmptyStack(S) Do 
        Pop(val , S)
        if(val mod 2 == 0) then
            Push(P1)  // it means push val directly in  P1
        Else 
            Push(P2) // it means push val directly in  P2
        EndIF
    Done

EndAction
{we can use P1 |  P2 As parameters But I prrefered Them As VAR's }

_____________________________________________________________________________
2. Splitting a queue Q into two queues Q1 and Q2,
    where Q1 contains the positive values and Q2 contains
    the negative values.
_____________________________________________________________________________
Action SplitQueue(Q : Queue)
var :Q1 , Q2 : Queue
        val : integer
begin
    InitQueue(Q1)
    InitQueue(Q2)

    while Not IsEmptyQueue(q) Do 
        Pop(val , Q)
        if(val >= 0) then
            Enqueue(Q1)  // it means enqueue positive val directly in  Q1
        Else
            Enqueue(Q2) //  it means enqueue negative val directly in  Q2
        EndIF
    Done

EndAction
_____________________________________________________________________________
3. Merging two sorted queues into one sorted queue.
_____________________________________________________________________________

TIf Front(Q1) ≤ Front(Q2)  →  take from Q1
Else                       →  take from Q2
            -----------------                            -----------------
                | P | Q |               OR                 | Q | P |
            -----------------                            -----------------

Procedure MergeQueues( Q1, Q2 var Q:Queue )
Begin
    InitQueue(Q3)

    While NOT IsEmpty(Q1) AND NOT IsEmpty(Q2) do
        If Front(Q1) <= Front(Q2) then
            Enqueue(Q, Dequeue(Q1))
        else
            Enqueue(Q, Dequeue(Q2))
        EndIF
    Done

    While NOT IsEmpty(Q1) do
        Enqueue(Q, Dequeue(Q1))
    Done
    While NOT IsEmpty(Q2) do
        Enqueue(Q, Dequeue(Q2))
    Done
End


_____________________________________________________________________________
4. Merging two stacks by alternating their elements into a new stack.
_____________________________________________________________________________
    Tow Sort Stack thats means If top(L) > Top(T) 

                S1              S2
            -------          -------
            |     |          |     |
            |     |          |     |
            |_____|          |_____|
Procedure MergeStacksAlternate(S1, S2, var S :Stack)
Var
    T1, T2 : Stack
Begin
    InitStack(S)
    InitStack(T1)
    InitStack(T2)

    // Reverse S1 into T1
    While NOT IsEmpty(S1) do
        Push(T1, Pop(S1))
    Done
    // Reverse S2 into T2
    While NOT IsEmpty(S2) do
        Push(T2, Pop(S2))
    Done

    // Alternate merge
    While NOT IsEmpty(T1) OR NOT IsEmpty(T2) do
        If NOT IsEmpty(T1) then
            Push(S, Pop(T1))
        EndIF
        If NOT IsEmpty(T2) then
            Push(S, Pop(T2))
        EndIF
    Done
EndProcedure