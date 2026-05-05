Exercise n°1. (Stack)
Write the parameterized actions that:
1. Calculate the number of even occurrences in a given stack P of integers.
2. Remove all occurrences of a given value x from a stack P;
3. Sort a Stack
_________________________________________________________________________
    1 Calculate the number of even occurrences in a given stack P of integers
_________________________________________________________________________
procedure occurrences(S:Stack ,  Q: Queue ,  E_OccS , E_OccQ : intger)
var: P : Queue , L :Stack;
    count , XQ , XS : integer 
begin 
    count <--0
    E_OccQ <-- count
    E_OccS <-- count
    InitStack(L);
    InitQueue(Q);

    While Not IsEmptyStack(S) And Not IsEmptyQueue(Q) Do
        Dequeue(XQ, Q);
        Pop(XS ,S);
        if (XQ mod 2 = 0) then
            E_OccQ <-- E_OccQ +1
        EndIf

        f (XS mod 2 = 0)then
            E_OccS <-- E_OccS +1
        EndIf
    Done

End



_________________________________________________________________________
    -2- Remove all occurrences of a given value x from a stack P 
__________________________________________________________________________

type 
    { A Stack is a pointer to the first node of a linked list }
    Stack = ^node; 
    node = record
        data : integer;
        next : ^node;
    end;

{ This procedure implements Exercise 1.2 from your series }
procedure RemoveOccurrences(var P: Stack; x: integer);
var 
    TempStack: Stack;
    val: integer;
begin
    { Initialize a temporary stack to store non-x elements }
    InitStack(TempStack);

    { Step 1: Pop everything from P. If it's not x, push it to TempStack }
    while not IsEmptyStack(P) do
        pop(P, val);
        if val <> x then
        begin
            push(TempStack, val);
        end;
    Done

    { Step 2: Push elements back to P to restore the original order }
    { (Since TempStack is also LIFO, pushing back to P flips them back correctly) }
    while not IsEmptyStack(TempStack) do
        pop(TempStack, val);
        push(P, val);
    Done
EndProcedure ; 

_________________________________________________________________________
    -3-Sort Stack  
_________________________________________________________________________

procedure SortStack()
var : Tmp : integer
      T   : Stack
begin
    InitStack(T)
    while Not IsEmptyStack(S) Do
        Tmp <-- Pop(s)
        while Not IsEmptyStack(T) Do 
            Push(S,  Pop(T));
        Done
        push(T ,Temp);
    Done

    while Not IsEmptyStack(T) Do 
        push(S, Pop(T))
    Done 

EndProcedure