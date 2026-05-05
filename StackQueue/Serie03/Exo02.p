Exercise 2: Basic Operations on Queues
1. Computing the size of a queue of integers without losing its content.
2. Counting the number of odd values in a queue of integers.
3. Replacing all occurrences of a value x by y in a queue.
4. Reversing a queue using one stack.
5. Moving all negative values of a queue to the rear while preserving the relative order of the other elements.



_____________________________________________________________________
1-Computing the size of a queue of integers without losing its content.
_____________________________________________________________________
function Size(Q:Queue):integer;
var l : Queue
    xQ ,xl: integer
begin
    Size <-- 0 ;
    InitQueue(Q);

    while not IsEmptyQueue(Q) Do
        Dequeue(xQ, Q) ;
        Size <-- Size + 1
        Enqueue(l,xQ)
    Done

    while not IsEmptyQueue(l) Do
        Dequeue(xl, l) ;
        Enqueue(S,xl)
    Done

endFunction;

_____________________________________________________________________
2. Counting the number of even values in a queue of integers.
_____________________________________________________________________
function Count(S:Queue , Codd ,Ceven : integer):
var  qdd , qEven: Queue;
    val :integer
begin
    Codd <-- 0 ; Ceven <-- 0 ;
    InitQueue(sEven);
    InitQueue(sOdd);

    while not IsEmptyStack(S) Do 
        Dequeue(val,S)
        if(val mod 2 == 0) then
            Ceven <--Ceven + 1
            Enqueue(qEven ,Val)
        else
            Codd <--Codd + 1
            Enqueue(qOdd,val)
        endIf;
    Deone
EndProcedure
_____________________________________________________________________
3. Removing all occurrences of a given value x from a stack.
_____________________________________________________________________

procedure RemoveOcc(Q:Queue , e : integer ,var NewQueue:Queue);
var QRemove : Queue 
val :integer
begin
    InitQueue(QRemove);
    while not IsEmptyQueue(Q) Do 
        Dequeue(val,Q)
        if(val <> e)  then
            Enqueue(NewQueue ,Val)
        else
            Enqueue(QRemove,val)
        endIf;
    Done
end;


_____________________________________________________________________
    -4- Reversing a queue using one stack.
_____________________________________________________________________
procedure ReverseQueue(Q:Queue , NewQueue :Queue)
var: 
    val : integer
    S:Stack 
begin

    InitQueue(NewQueue);
    InitStack(S);
    while not IsEmptyQueue(Q) Do 
        Dequeue(val,Q)
        Push(val,S);
    Done

    while not IsEmptyStack(S)Do 
        Pop(val, S);
        Enqueue(NewQueue,val)
    Done

EndProcedure

_______________________________________________________________________
-5- Moving all negative values of a queue to the rear while preserving 
    the relative order of the other elements.
_______________________________________________________________________

procedure Move(Q:Queue)
var PQ: Queue , n  :integer
begin
    InitQueue(Q);
    while Not IsEmptyQueue(Q) Do
        Dequeue(n, Q)
        if (n > 0) then Enqueue( PQ,n);
        else 
            Enqueue( Q ,n);
        endIf
    Done
    while Not IsEmptyQueue(PQ) Do
        Dequeue(n,PQ);
        Enqueue(Q, n);
    Done
EndProcedure