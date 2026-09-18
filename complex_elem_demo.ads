--  Ada 2022 topic: Ada.Numerics.Complex_Elementary_Functions.
pragma Ada_2022;

with Ada.Numerics.Complex_Types;
with Ada.Numerics.Complex_Elementary_Functions;

package Complex_Elem_Demo is

   package CT  renames Ada.Numerics.Complex_Types;
   package CEF renames Ada.Numerics.Complex_Elementary_Functions;

   function Imaginary_Unit return CT.Complex;
   --  0 + 1i

   function Exp_I_Pi return CT.Complex;
   --  e^(i*pi) ≈ -1

   function Log_Of_E return CT.Complex;
   --  Log(e + 0i) ≈ 1

   function Sqrt_Of_Neg_One return CT.Complex;
   --  Sqrt(-1) ≈ i

   function Near (A, B : CT.Complex; Eps : Float := 1.0E-5) return Boolean;

end Complex_Elem_Demo;
