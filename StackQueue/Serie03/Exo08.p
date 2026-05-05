Exercise 8: Transfer Between Structures
1. Let S be a stack of integers and Q be a queue of integers.
2. Write the parameterized actions that allow transferring all elements of S into Q; 
    transferring all elements
of Q into S; explaining in each case whether the order of the elements is preserved or reversed; 
    and deducing an algorithm to reverse a queue using one stack.



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


_______________________________________
The Main  Idea
_______________________________________

Computing Queue size 
Save it 
Set All Element Of stack Into Queue
Set Element from  i = 1 to size(Q) into  
Stack 
EndFunction
_______________________________________


Procedure Transferring(Q: Queue ,  S: Stack)
var 
    count , QueueSize , :  integer 
begin
    count <-- 0 ;
    QueueSize <-- Size(Q);

    while Not IsEmptyQueue(Q) Do
        Enqueue(S , Dequeue(Q));
    Done

    while Not IsEmptyQueue(Q) Do
        Enqueue(S , Dequeue(Q));
    Done

    if Not  IsEmptyQueue(Q) Then

        repeat
            Push(S , Dequeue(Q));
            count <-- count + 1 
        until (Not IsEmptyQueue(Q) And count <= QueueSize) ;

    EndIf

EndProcedure


_______________________________________
        Algorithm Manipulating 
_______________________________________

Algorithm ReverseQueueByStack

var Q:Queue
    #Initialization of function And Procedure
        Procedure ReverseQ(T :Queue )
            var S : Stack 
        begin

            InitStack(S)
            While Not IsEmptyQueue(T) Do 
                Push(S ,Dequeue(T))
            Done

            While Not IsEmptyStack(S) Do 
                Enqueue(T ,Pop(S))
            Done

        End

begin /Main Algorithm/

    ReverseQ(Q)

EndAlgorithm

_______________________________________
