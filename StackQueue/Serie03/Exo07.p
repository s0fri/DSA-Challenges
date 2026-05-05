Exercise 7: Advanced Applications
1. Checking whether a word stored in a queue of characters is a palindrome.
2. Duplicating every element of a stack.
Example: top -> 5 2 7 becomes top -> 5 5 2 2 7 7.
___________________________________________________________________________
1. Checking whether a word stored in a queue of characters is a palindrome.
___________________________________________________________________________


function  size ( Q: Queue) :integer
var  TQueue :  Queue 
begin
    size <-- 0 ;
    InitQueue(TQueue);
    while Not IsEmptyQueue(Q) Do
        Enqueue(TQueue ,Dequeue(Q)) 
        size <-- Size  + 1 ; 
    Done
    while Not IsEmptyQueue(Q) Do
        Enqueue(Q ,Dequeue(TQueue)) ; 
    Done

Endfunmction 

function  Ispalindrome(Q:  Queue) : boolean
var 
    TQueue : Queue 
    s: stack
    count , i , midQueue : integer ;
begin
    Ispalindrome <-- False ;
    InitQueue(TQueue);
    count <-- 0 ;
    midQueue <-- Size(Q) div 2 ;

    while  Not IsEmptyQueue(Q) Do 
        for i from 1 upto midQueue Do
            Enqueue(TQueue ,Dequeue(Q)) ;
        Done
    Done
    {Test Equality Between stack  and Queue }
    {
        the idea is  that  :  the queue  is the reverse of the stack so if we found the top  of stack 
        and the front  of the queue matches (the same value (same character) 
        and applied it  for all element that's means the queue (containers) Ispalindrome 
        else is not 
    }
    while Not IsEmptyQueue(Q) and Not IsEmptyStack(s) Do
        if(front(Q) = Top(S)) then 
            count <-- count + 1 ;
            Enqueue(TQueue , Dequeue(Q)) ;
            Enqueue(TQueue , pop(s)) ;

        else
            Ispalindrome <-- False;
        EndIf
    Done

    if count == midQueue then 
        Ispalindrome <-- True ;
    EndIf
EndFunction

___________________________________________________________________________
2. Duplicating every element of a stack.
Example: top -> 5 2 7 becomes top -> 5 5 2 2 7 7.
___________________________________________________________________________



procedure X_2_time(S:Stack ,e: integer)
var  i : integer
begin
    Push(S,e)
    Push(S,e)
end

procedure ReverseStack(S :Stack)
var Ts : Stack ;
begin
    InitStack(Ts);
    while Not IsEmptyStack(S) Do
        Push(Ts , Pop(S));
    Done
Done


procedure Duplicating(Q : Queue)
var  X: integer, S:Stack;
begin
    InitStack(S);
    while Not IsEmptyQueue(Q) Do
        Dequeue(X, Q)
        X_2_time(S , X)
    Done
    ReverseStack(S);
    while Not IsEmptyStack(S)DO
        Enqueue(Q , Pop(S))
    Done
EndProcedure
