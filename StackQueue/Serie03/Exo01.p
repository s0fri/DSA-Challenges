Exercise 1: Basic Operations on Stacks
1. Computing the size of a stack of integers without losing its content.
2. Counting the number of even values in a stack of integers.
3. Removing all occurrences of a given value x from a stack.
4. Inserting an element x at the bottom of a stack.
5. Reversing a stack using an auxiliary stack.


_____________________________________________________________________
1-Computing the size of a stack of integers without losing its content.
_____________________________________________________________________
function Size(S:Stack):integer;
var l : Stack
    xS ,xl: integer
begin
    Size <-- 0 ;
    InitStack(S);

    while not IsEmptyStack(S) Do
        Pop(xS, S) ;
        Size <-- Size + 1
        Push(l,xS)
    Done

    while not IsEmptyStack(l) Do
        Pop(xl, l) ;
        Push(S,xl)
    Done

endFunction;

_____________________________________________________________________
2. Counting the number of even values in a stack of integers.
_____________________________________________________________________
function Count(S:Stack , Codd ,Ceven : integer):
var  sOdd , sEven: Stack;
    val :integer
begin
    Codd <-- 0 ; Ceven <-- 0 ;
    InitStack(sEven);
    InitStack(sOdd);

    while not IsEmptyStack(S) Do 
        Pop(val,S)
        if(val mod 2 == 0) then
            Ceven <--Ceven + 1
            Push(sEven ,Val)
        else
            Codd <--Codd + 1
            Push(sOdd,val)
        endIf;
    Deone
EndProcedure
_____________________________________________________________________
3. Removing all occurrences of a given value x from a stack.
_____________________________________________________________________

procedure RemoveOcc(S:Stack , e : integer ,var NewStack:Stack);
var SRemove : stack 
val :integer
begin
    InitStack(SRemove);
    while not IsEmptyStack(S) Do 
        Pop(val,S)
        if(val <> e)  then
            Push(NewStack ,Val)
        else
            Push(SRemove,val)
        endIf;
    Done
end;
_____________________________________________________________________
4. Inserting an element x at the bottom of a stack.
_____________________________________________________________________
procedure InsertAtBottom(S:Stack , e : integer ,var NewStack:Stack);
var STemp : stack 
val :integer
begin
    InitStack(STemp);
    while not IsEmptyStack(S) Do 
        Pop(val,S)
        Push(STemp ,Val)
    Done
    if IsEmptyStack(S) then
        InitStack(S);  { InitStack(NewStack)}
        Push(S,e);     {or Push(NewSatck,e) }
        while not IsEmptyStack(STemp) Do  
        Pop(val,STemp) 
        Push(S,Val) {Push(NewStack,Val)}
        Done
    endIf  
end;
_____________________________________________________________________
5. Reversing a stack using an auxiliary stack.
_____________________________________________________________________

procedure ReverseSatck(S:Stack ,var NewStack:Stack){: Stack};
var
    val :integer
begin
    InitStack(NewSatck);
    while not IsEmptyStack(S) Do 
        Pop(val,S)
        Push(NewSatck ,Val)
    Done
    {ReverseSatck <---NewSatck}
end;
____________________________________
Stack 
____________________________________
Type
Stack :record
    TopOfStack: integer
end
____________________________________
Stack Using Linked List
____________________________________
Type
Stack :^ Node
    Node = record
    Val : Any type (according to needs)
    Succ : Stack
end
____________________________________
Stack Using Arrays
____________________________________
Type

Stack = record
    stack_array: array [1.. Max_size] of element
    TopOfStack : integer
end