Exercise n°2. (Queue)
Write the parameterized actions that:
1. Calculate the number of even occurrences in a given queue Q of integers; Solved in the 1st Exo 
2. Replace all occurrences of a given value x by the value y in queue Q;
3. Sort a queue;
4. Calculate the number of occurrences of the substring "be" in a queue of characters;

_____________________________________________________________________________
    -2- Replace all occurrences of a given value x by the value y in queue Q;
_____________________________________________________________________________

Function Replace(Q:Queue): Queue
var :   newQ: Queue;
        T,X, Y :  integer
begin
    Replace <--InitQueue(Replace);
    Input(X ,Y)
    Input
    InitQueue(newQ);
    while Not IsEmptyQueue(Q) Do 
        Dequeue(Q ,T);
        if X = T then
            T <-- Y;
            Enqueue(newQ , T);
        else
            Enqueue(newQ , T);
        EndIf;
    Done
    Replace <-- newQ;
EndFunction


_________________________________________________________________________
    -3-Sort Queue
_________________________________________________________________________

procedure SortQueue(var Q: Queue);
var 
    TempQ: Queue;
    Current, NextVal: integer;
    Size, i: integer;
begin
    InitQueue(TempQ);

    while not IsEmptyQueue(Q) do
        Current <-- Dequeue(Q);

        { Find the correct position in TempQ }
        Size <-- LengthQueue(TempQ); { You can use a counter if Length is not provided }
        
        { Rotate TempQ to place 'Current' in the sorted position }
        for i <-- 1 to Size do
            NextVal <-- Dequeue(TempQ);
            if NextVal < Current then
                Enqueue(TempQ, NextVal)
            else
                { Put Current back and then the NextVal }
                Enqueue(TempQ, Current);
                Current <-- NextVal;
            end;
        end;
        Enqueue(TempQ, Current);
    end;

    { Move everything back to the original Queue }
    while not IsEmptyQueue(TempQ) do
        Enqueue(Q, Dequeue(TempQ));
    end;
end;