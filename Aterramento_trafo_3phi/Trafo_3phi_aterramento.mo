model Trafo_3phi_aterramento
  Modelica.Electrical.Analog.Basic.Transformer transformer annotation(
    Placement(visible = true, transformation(origin = {0, 20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.SaturatingInductor inductor annotation(
    Placement(visible = true, transformation(origin = {62, 20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation

annotation(
    uses(Modelica(version = "4.0.0")));
end Trafo_3phi_aterramento;
