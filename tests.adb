pragma Ada_2022;

with Ada.Assertions; use Ada.Assertions;
with Ada.Text_IO; use Ada.Text_IO;
with Complex_Elem_Demo; use Complex_Elem_Demo;
with Ada.Numerics.Complex_Types;

procedure Tests is
   use Ada.Numerics.Complex_Types;
begin
   Assert (Near (Exp_I_Pi, Compose_From_Cartesian (-1.0, 0.0), 1.0E-4));
   Put_Line ("PASS Exp(i*Pi) ≈ -1");

   Assert (Near (Log_Of_E, Compose_From_Cartesian (1.0, 0.0), 1.0E-4));
   Put_Line ("PASS Log(e) ≈ 1");

   Assert (Near (Sqrt_Of_Neg_One, Imaginary_Unit, 1.0E-4));
   Put_Line ("PASS Sqrt(-1) ≈ i");

   Put_Line ("All Complex Elementary topic tests passed.");
end Tests;
