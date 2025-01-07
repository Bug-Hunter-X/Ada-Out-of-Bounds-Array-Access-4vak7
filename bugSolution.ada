```ada
procedure Example is
   type My_Array is array (1..10) of Integer;
   A : My_Array := (others => 0); -- Initialize the array
begin
   if A'Range.Last >= 11 then -- Check if accessing is within bounds
       A(11) := 5; -- Accessing an element (if within bounds)
   else
       Put_Line("Array access out of bounds");
   end if;
   -- Alternatively, use a safer container like a bounded vector 
   -- to prevent out-of-bounds access completely
end Example;
```