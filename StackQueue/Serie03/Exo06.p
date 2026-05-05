Exercise 6: Sub-Stack and Subsequence
1. Checking whether a stack B is a sub-stack of a stack A.
2. Checking whether a queue Q2 is a subsequence of a queue Q1.
3. Counting the number of occurrences of the substring “be” in a queue of characters.

Function IsSubstack(A , B : Stack) : boolean
var
    TempStack , Del , S : Stack;
    count : integer;
    Match : boolean;
    x , y : integer;
begin
    IsSubstack ← False;
    InitStack(TempStack);
    InitStack(Del);
    InitStack(S);

    while (not IsEmptyStack(A)) do
        x ← Top(A);

        if (not IsEmptyStack(B)) and (x = Top(B)) then
            Match ← True;
            count ← 0;

            while (not IsEmptyStack(A)) and (not IsEmptyStack(B)) and (Top(A) = Top(B)) do
        
                y ← Pop(A);
                Push(S , y);
                Pop(B);
                count ← count + 1;
            
            end;

            if IsEmptyStack(B) then
                IsSubstack ← True;
            else
    
                while count > 0 do
                    Push(A , Pop(S));
                    count ← count - 1;
                Done;
            endIf;
        end;

        Push(Del , Pop(A));
    end;

    while not IsEmptyStack(Del) do
        Push(A , Pop(Del));

end;


________________________________________
    Solution  Of Queue subsequence 
_______________________________________

function IsSubsequence(var Q1, Q2: Queue): boolean;
var
    X: Stack  ;
    Y : Queue ;
    
begin
    InitStack(X);
    InitQueue(Y);

    while Not IsEmptyQueue (Q1) and  Not IsEmptyQueue(Q2) Do  
        
        if (front(Q1) == front(Q2)) then 
            Push(X, Dequeue(Q1))
            Push(X, Dequeue(Q2))
            match <-- True
        else
            Enqueue(Y , Dequeue(Q1)); 
            match <-- !match ;      
        endIf
    Done 

    if IsEmptyQueue(Q2) then and match  = True
        
        IsSubsequence ← True

    else
        
        IsSubsequence ← False;

    EndIf

EndFunction 

________________________________________________________
    Solution  of occurrences of substring "be" in  Queue 
________________________________________________________

Function  occurrence(Q : Queue) : integer
var  TQueue ;  Queue ; 
        X ,  Y  : char
begin 

    occurrence <-- 0 ; 
    InitQueue(TQueue);

    while Not IsEmptyQueue(Q) Do 
        Dequeue(X , Q)
        Dequeue(Y , Q)

        if (X == b ) and ( Y == e) then  
            Count <-- Count + 1 ;        
        Else
            Enqueue(TQueue ,X);
            Enqueue(TQueue ,Y);
    EndIf

    if IsEmptyQueue(Q) then
        occurrence <--count ;
EndFunction