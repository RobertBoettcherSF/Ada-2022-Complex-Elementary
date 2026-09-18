pragma Ada_2022;

with Ada.Numerics;

package body Complex_Elem_Demo is
   use CT;
   use CEF;

   function Imaginary_Unit return Complex is
   begin
      return Compose_From_Cartesian (0.0, 1.0);
   end Imaginary_Unit;

   function Exp_I_Pi return Complex is
   begin
      return Exp (Compose_From_Cartesian (0.0, Float (Ada.Numerics.Pi)));
   end Exp_I_Pi;

   function Log_Of_E return Complex is
   begin
      return Log (Compose_From_Cartesian (Float (Ada.Numerics.e), 0.0));
   end Log_Of_E;

   function Sqrt_Of_Neg_One return Complex is
   begin
      return Sqrt (Compose_From_Cartesian (-1.0, 0.0));
   end Sqrt_Of_Neg_One;

   function Near (A, B : Complex; Eps : Float := 1.0E-5) return Boolean is
   begin
      return abs (A.Re - B.Re) <= Eps and then abs (A.Im - B.Im) <= Eps;
   end Near;

end Complex_Elem_Demo;
