Exercise 9: Stable Rearrangement
1.  A queue Q contains integers. Write a parameterized action that rearranges Q so that all even values appear
before odd  values ;                                                                                                                                                                                                                                                                                                                                ore all odd values, while preserving the relative order among even values and among odd values.
2. What auxiliary structures are needed?
3. What is the complexity of your solution?
4. Can this be done using only one additional queue? Justify.


_______________________________________
        Action Sort Queue
_______________________________________

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
            Push(S, Pop(L))
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


_______________________________________
        Reverse__Stack
_______________________________________
Procedure Reverse(S:Stack)
var T :Stack
begin
    InitStack(T)
    While Not IsEmptyStack(S) Do 
        Push(T ,Pop(S));
    Done
EndProcedure
_______________________________________
Action StRearrangement(Q: Queue)
var 
    flag :boolean 
    X , Even , Odd , QueueSize   :integer
    S :stack
begin
    InitStack(S) ;
    
    Even <-- 0 ; Odd  <-- 0 ;
    flag <-- True ; QueueSize <-- Size(Q);

    while Not IsEmptyQueue(Q) And (flag == True) Do
        Dequeue(X , Q)
        if( X mod 2 == 0) Then 
            Push( S , X )
            Even <-- Even +1
        Else
            Enqueue( Q ,X )
            Odd <-- Odd + 1 
        EndIf
        
        if (QueueSize = (Even + Odd ))
            flag <-- False ;
        EndIf
    Done

    Sort(Q , S)
    Reverse(S);

    While Not IsEmptyStack(S) Do 
        Enqueue(Q ,  Pop(S));
    Done

EndAction 

