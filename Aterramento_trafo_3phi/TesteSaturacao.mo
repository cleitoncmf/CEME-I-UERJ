package TesteSaturacao
  model TrafoSaturado
    Modelica.Electrical.Analog.Ideal.IdealTransformer transformer1(considerMagnetization = false, n = 1) annotation(
      Placement(visible = true, transformation(origin = {60, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Electrical.Analog.Basic.Resistor Req(R = 0.1) annotation(
      Placement(visible = true, transformation(origin = {-76, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Electrical.Analog.Basic.Inductor Leq(L = 1.0e-3) annotation(
      Placement(visible = true, transformation(origin = {-38, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Electrical.Analog.Interfaces.PositivePin p1 annotation(
      Placement(visible = true, transformation(origin = {-96, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-100, 100}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Electrical.Analog.Interfaces.NegativePin n1 annotation(
      Placement(visible = true, transformation(origin = {-96, -40}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-100, -100}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Electrical.Analog.Interfaces.PositivePin p2 annotation(
      Placement(visible = true, transformation(origin = {94, 20}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {100, 98}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Electrical.Analog.Interfaces.NegativePin n2 annotation(
      Placement(visible = true, transformation(origin = {94, -20}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {100, -100}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Electrical.Analog.Basic.Resistor Rc(R = 200) annotation(
      Placement(visible = true, transformation(origin = {22, 0}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
    Modelica.Blocks.Sources.RealExpression realExpression(y = Im) annotation(
      Placement(visible = true, transformation(origin = {30, -40}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
    Real Im;
    Modelica.Electrical.Analog.Sources.SignalCurrent signalCurrent annotation(
      Placement(visible = true, transformation(origin = {-14, -40}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  equation
    Im = Modelica.Math.tan((p1.v - n1.v) * 0.006);
    connect(Req.n, Leq.p) annotation(
      Line(points = {{-66, 10}, {-48, 10}}, color = {0, 0, 255}));
    connect(n1, transformer1.n1) annotation(
      Line(points = {{-96, -40}, {-80, -40}, {-80, -10}, {50, -10}}, color = {0, 0, 255}));
    connect(p1, Req.p) annotation(
      Line(points = {{-96, 40}, {-96, 10}, {-86, 10}}, color = {0, 0, 255}));
    connect(transformer1.p2, p2) annotation(
      Line(points = {{70, 10}, {80, 10}, {80, 20}, {94, 20}}, color = {0, 0, 255}));
    connect(transformer1.n2, n2) annotation(
      Line(points = {{70, -10}, {80, -10}, {80, -20}, {94, -20}}, color = {0, 0, 255}));
    connect(Rc.p, transformer1.p1) annotation(
      Line(points = {{22, 10}, {50, 10}}, color = {0, 0, 255}));
    connect(Rc.n, transformer1.n1) annotation(
      Line(points = {{22, -10}, {50, -10}}, color = {0, 0, 255}));
    connect(Leq.n, transformer1.p1) annotation(
      Line(points = {{-28, 10}, {50, 10}}, color = {0, 0, 255}));
    connect(realExpression.y, signalCurrent.i) annotation(
      Line(points = {{20, -40}, {-2, -40}}, color = {0, 0, 127}));
    connect(signalCurrent.p, Leq.n) annotation(
      Line(points = {{-14, -30}, {-14, 10}, {-28, 10}}, color = {0, 0, 255}));
    connect(signalCurrent.n, n1) annotation(
      Line(points = {{-14, -50}, {-80, -50}, {-80, -40}, {-96, -40}}, color = {0, 0, 255}));
    annotation(
      Diagram(graphics = {Text(origin = {1, 56}, extent = {{-23, 10}, {23, -10}}, textString = "220V:220V
10kVA")}),
      Icon(graphics = {Text(lineColor = {0, 0, 255}, extent = {{-100, 20}, {-60, -20}}, textString = "1"), Line(origin = {33, 45}, rotation = 90, points = {{-15, -7}, {-14, -1}, {-7, 7}, {7, 7}, {14, -1}, {15, -7}}, color = {0, 0, 255}, smooth = Smooth.Bezier), Text(lineColor = {0, 0, 255}, extent = {{60, 20}, {100, -20}}, textString = "2"), Line(points = {{40, 60}, {40, 100}, {90, 100}}, color = {0, 0, 255}), Line(origin = {33, 15}, rotation = 90, points = {{-15, -7}, {-14, -1}, {-7, 7}, {7, 7}, {14, -1}, {15, -7}}, color = {0, 0, 255}, smooth = Smooth.Bezier), Line(origin = {33, -45}, rotation = 90, points = {{-15, -7}, {-14, -1}, {-7, 7}, {7, 7}, {14, -1}, {15, -7}}, color = {0, 0, 255}, smooth = Smooth.Bezier), Line(origin = {-33, -45}, rotation = 270, points = {{-15, -7}, {-14, -1}, {-7, 7}, {7, 7}, {14, -1}, {15, -7}}, color = {0, 0, 255}, smooth = Smooth.Bezier), Line(origin = {-33, 15}, rotation = 270, points = {{-15, -7}, {-14, -1}, {-7, 7}, {7, 7}, {14, -1}, {15, -7}}, color = {0, 0, 255}, smooth = Smooth.Bezier), Line(origin = {-33, -15}, rotation = 270, points = {{-15, -7}, {-14, -1}, {-7, 7}, {7, 7}, {14, -1}, {15, -7}}, color = {0, 0, 255}, smooth = Smooth.Bezier), Line(points = {{-40, -60}, {-40, -100}, {-90, -100}}, color = {0, 0, 255}), Line(points = {{-40, 60}, {-40, 100}, {-90, 100}}, color = {0, 0, 255}), Line(origin = {33, -15}, rotation = 90, points = {{-15, -7}, {-14, -1}, {-7, 7}, {7, 7}, {14, -1}, {15, -7}}, color = {0, 0, 255}, smooth = Smooth.Bezier), Line(points = {{40, -60}, {40, -100}, {90, -100}}, color = {0, 0, 255}), Line(origin = {-33, 45}, rotation = 270, points = {{-15, -7}, {-14, -1}, {-7, 7}, {7, 7}, {14, -1}, {15, -7}}, color = {0, 0, 255}, smooth = Smooth.Bezier)}));
  end TrafoSaturado;

  model TesteSaturacaoSIM
    TrafoSaturado trafoSaturado annotation(
      Placement(visible = true, transformation(origin = {2, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Electrical.Analog.Sources.SineVoltage vs(V = 220, f = 60) annotation(
      Placement(visible = true, transformation(origin = {-80, 0}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
    Modelica.Electrical.Analog.Basic.Resistor R(R = 1000) annotation(
      Placement(visible = true, transformation(origin = {64, 0}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
    Modelica.Electrical.Analog.Basic.Ground ground annotation(
      Placement(visible = true, transformation(origin = {-80, -66}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Electrical.Analog.Basic.Ground ground1 annotation(
      Placement(visible = true, transformation(origin = {62, -62}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  equation
    connect(vs.p, trafoSaturado.p1) annotation(
      Line(points = {{-80, 10}, {-8, 10}}, color = {0, 0, 255}));
    connect(vs.n, trafoSaturado.n1) annotation(
      Line(points = {{-80, -10}, {-8, -10}}, color = {0, 0, 255}));
    connect(trafoSaturado.p2, R.p) annotation(
      Line(points = {{12, 10}, {64, 10}}, color = {0, 0, 255}));
    connect(trafoSaturado.n2, R.n) annotation(
      Line(points = {{12, -10}, {64, -10}}, color = {0, 0, 255}));
    connect(ground.p, vs.n) annotation(
      Line(points = {{-80, -56}, {-80, -10}}, color = {0, 0, 255}));
    connect(R.n, ground1.p) annotation(
      Line(points = {{64, -10}, {62, -10}, {62, -52}}, color = {0, 0, 255}));
  end TesteSaturacaoSIM;

  model Teste_D_Y
    Modelica.Electrical.Analog.Basic.Resistor RG2(R = 1e3) annotation(
      Placement(visible = true, transformation(origin = {130, -80}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Electrical.Analog.Basic.Ground ground annotation(
      Placement(visible = true, transformation(origin = {170, -92}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Electrical.Analog.Basic.Resistor RL2a(R = 500)  annotation(
      Placement(visible = true, transformation(origin = {130, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Electrical.Analog.Basic.Resistor RL2b(R = 500)  annotation(
      Placement(visible = true, transformation(origin = {130, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Electrical.Analog.Basic.Resistor RL2c(R = 500)  annotation(
      Placement(visible = true, transformation(origin = {130, -40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Electrical.Analog.Basic.Resistor RG1(R = 1e3) annotation(
      Placement(visible = true, transformation(origin = {-150, -80}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
    Modelica.Electrical.Analog.Basic.Ground ground1 annotation(
      Placement(visible = true, transformation(origin = {-180, -90}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Electrical.Analog.Sources.SineVoltage vsa(V = 120, f = 60)  annotation(
      Placement(visible = true, transformation(origin = {-110, 60}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
    Modelica.Electrical.Analog.Sources.SineVoltage Vsb(V = 120, f = 60, phase(displayUnit = "deg") = -2.094395102393195)  annotation(
      Placement(visible = true, transformation(origin = {-110, 20}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
    Modelica.Electrical.Analog.Sources.SineVoltage Vsc(V = 120, f = 60, phase = 2.094395102393195)  annotation(
      Placement(visible = true, transformation(origin = {-110, -20}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
    TrafoSaturado Ta annotation(
      Placement(visible = true, transformation(origin = {-16, 50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    TesteSaturacao.TrafoSaturado Tb annotation(
      Placement(visible = true, transformation(origin = {-16, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    TesteSaturacao.TrafoSaturado Tc annotation(
      Placement(visible = true, transformation(origin = {-16, -30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  equation
    connect(RG2.n, ground.p) annotation(
      Line(points = {{140, -80}, {170, -80}, {170, -82}}, color = {0, 0, 255}));
    connect(RL2a.n, RL2c.n) annotation(
      Line(points = {{140, 40}, {150, 40}, {150, -40}, {140, -40}}, color = {0, 0, 255}));
    connect(RL2b.n, RL2a.n) annotation(
      Line(points = {{140, 0}, {150, 0}, {150, 40}, {140, 40}}, color = {0, 0, 255}));
    connect(RG1.n, ground1.p) annotation(
      Line(points = {{-160, -80}, {-180, -80}}, color = {0, 0, 255}));
    connect(Vsc.n, RG1.p) annotation(
      Line(points = {{-120, -20}, {-140, -20}, {-140, -80}}, color = {0, 0, 255}));
    connect(Vsb.n, RG1.p) annotation(
      Line(points = {{-120, 20}, {-140, 20}, {-140, -80}}, color = {0, 0, 255}));
    connect(vsa.n, RG1.p) annotation(
      Line(points = {{-120, 60}, {-140, 60}, {-140, -80}}, color = {0, 0, 255}));
    connect(Ta.n2, RG2.p) annotation(
      Line(points = {{-6, 40}, {40, 40}, {40, -80}, {120, -80}}, color = {0, 0, 255}));
    connect(Tb.n2, RG2.p) annotation(
      Line(points = {{-6, 0}, {40, 0}, {40, -80}, {120, -80}}, color = {0, 0, 255}));
    connect(Tc.n2, RG2.p) annotation(
      Line(points = {{-6, -40}, {40, -40}, {40, -80}, {120, -80}}, color = {0, 0, 255}));
    connect(Ta.p2, RL2a.p) annotation(
      Line(points = {{-6, 60}, {80, 60}, {80, 40}, {120, 40}}, color = {0, 0, 255}));
    connect(Tb.p2, RL2b.p) annotation(
      Line(points = {{-6, 20}, {80, 20}, {80, 0}, {120, 0}}, color = {0, 0, 255}));
    connect(Tc.p2, RL2c.p) annotation(
      Line(points = {{-6, -20}, {80, -20}, {80, -40}, {120, -40}}, color = {0, 0, 255}));
    connect(Ta.n1, Tb.p1) annotation(
      Line(points = {{-26, 40}, {-40, 40}, {-40, 20}, {-26, 20}}, color = {0, 0, 255}));
    connect(Tb.n1, Tc.p1) annotation(
      Line(points = {{-26, 0}, {-40, 0}, {-40, -20}, {-26, -20}}, color = {0, 0, 255}));
    connect(Tc.n1, Ta.p1) annotation(
      Line(points = {{-26, -40}, {-60, -40}, {-60, 60}, {-26, 60}}, color = {0, 0, 255}));
    connect(vsa.p, Ta.p1) annotation(
      Line(points = {{-100, 60}, {-26, 60}}, color = {0, 0, 255}));
    connect(Vsb.p, Tb.p1) annotation(
      Line(points = {{-100, 20}, {-26, 20}}, color = {0, 0, 255}));
    connect(Vsc.p, Tc.p1) annotation(
      Line(points = {{-100, -20}, {-26, -20}}, color = {0, 0, 255}));
    connect(RL2b.n, RG2.p) annotation(
      Line(points = {{140, 0}, {160, 0}, {160, -60}, {120, -60}, {120, -80}}, color = {0, 0, 255}));
    annotation(
      Diagram(coordinateSystem(extent = {{-200, -100}, {200, 100}})),
      Icon(coordinateSystem(extent = {{-200, -100}, {200, 100}})));
  end Teste_D_Y;

  model Teste_Y_Y
    Modelica.Electrical.Analog.Basic.Resistor RG2(R = 1e3) annotation(
      Placement(visible = true, transformation(origin = {130, -80}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Electrical.Analog.Basic.Ground ground annotation(
      Placement(visible = true, transformation(origin = {170, -92}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Electrical.Analog.Basic.Resistor RL2a(R = 5)  annotation(
      Placement(visible = true, transformation(origin = {130, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Electrical.Analog.Basic.Resistor RL2b(R = 5)  annotation(
      Placement(visible = true, transformation(origin = {130, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Electrical.Analog.Basic.Resistor RL2c(R = 5)  annotation(
      Placement(visible = true, transformation(origin = {130, -40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Electrical.Analog.Basic.Resistor RG1(R = 1e3) annotation(
      Placement(visible = true, transformation(origin = {-150, -80}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
    Modelica.Electrical.Analog.Basic.Ground ground1 annotation(
      Placement(visible = true, transformation(origin = {-180, -90}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Electrical.Analog.Sources.SineVoltage vsa(V = 250, f = 60)  annotation(
      Placement(visible = true, transformation(origin = {-110, 60}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
    Modelica.Electrical.Analog.Sources.SineVoltage Vsb(V = 250, f = 60, phase(displayUnit = "deg") = -2.094395102393195)  annotation(
      Placement(visible = true, transformation(origin = {-110, 20}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
    Modelica.Electrical.Analog.Sources.SineVoltage Vsc(V = 250, f = 60, phase = 2.094395102393195)  annotation(
      Placement(visible = true, transformation(origin = {-110, -20}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
    TesteSaturacao.TrafoSaturado Ta annotation(
      Placement(visible = true, transformation(origin = {-16, 50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    TesteSaturacao.TrafoSaturado Tb annotation(
      Placement(visible = true, transformation(origin = {-16, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    TesteSaturacao.TrafoSaturado Tc annotation(
      Placement(visible = true, transformation(origin = {-16, -30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  equation
    connect(RG2.n, ground.p) annotation(
      Line(points = {{140, -80}, {170, -80}, {170, -82}}, color = {0, 0, 255}));
    connect(RL2a.n, RL2c.n) annotation(
      Line(points = {{140, 40}, {150, 40}, {150, -40}, {140, -40}}, color = {0, 0, 255}));
    connect(RL2b.n, RL2a.n) annotation(
      Line(points = {{140, 0}, {150, 0}, {150, 40}, {140, 40}}, color = {0, 0, 255}));
    connect(RG1.n, ground1.p) annotation(
      Line(points = {{-160, -80}, {-180, -80}}, color = {0, 0, 255}));
    connect(Vsc.n, RG1.p) annotation(
      Line(points = {{-120, -20}, {-140, -20}, {-140, -80}}, color = {0, 0, 255}));
    connect(Vsb.n, RG1.p) annotation(
      Line(points = {{-120, 20}, {-140, 20}, {-140, -80}}, color = {0, 0, 255}));
    connect(vsa.n, RG1.p) annotation(
      Line(points = {{-120, 60}, {-140, 60}, {-140, -80}}, color = {0, 0, 255}));
  connect(Ta.n2, RG2.p) annotation(
      Line(points = {{-6, 40}, {40, 40}, {40, -80}, {120, -80}}, color = {0, 0, 255}));
    connect(Tb.n2, RG2.p) annotation(
      Line(points = {{-6, 0}, {40, 0}, {40, -80}, {120, -80}}, color = {0, 0, 255}));
  connect(Tc.n2, RG2.p) annotation(
      Line(points = {{-6, -40}, {40, -40}, {40, -80}, {120, -80}}, color = {0, 0, 255}));
    connect(Ta.p2, RL2a.p) annotation(
      Line(points = {{-6, 60}, {80, 60}, {80, 40}, {120, 40}}, color = {0, 0, 255}));
    connect(Tb.p2, RL2b.p) annotation(
      Line(points = {{-6, 20}, {80, 20}, {80, 0}, {120, 0}}, color = {0, 0, 255}));
  connect(Tc.p2, RL2c.p) annotation(
      Line(points = {{-6, -20}, {80, -20}, {80, -40}, {120, -40}}, color = {0, 0, 255}));
  connect(vsa.p, Ta.p1) annotation(
      Line(points = {{-100, 60}, {-26, 60}}, color = {0, 0, 255}));
    connect(Vsb.p, Tb.p1) annotation(
      Line(points = {{-100, 20}, {-26, 20}}, color = {0, 0, 255}));
  connect(Vsc.p, Tc.p1) annotation(
      Line(points = {{-100, -20}, {-26, -20}}, color = {0, 0, 255}));
    connect(RL2b.n, RG2.p) annotation(
      Line(points = {{140, 0}, {160, 0}, {160, -60}, {120, -60}, {120, -80}}, color = {0, 0, 255}));
  connect(Tc.n1, RG1.p) annotation(
      Line(points = {{-26, -40}, {-56, -40}, {-56, -80}, {-140, -80}}, color = {0, 0, 255}));
  connect(Tb.n1, RG1.p) annotation(
      Line(points = {{-26, 0}, {-56, 0}, {-56, -80}, {-140, -80}}, color = {0, 0, 255}));
  connect(Ta.n1, RG1.p) annotation(
      Line(points = {{-26, 40}, {-56, 40}, {-56, -80}, {-140, -80}}, color = {0, 0, 255}));
    annotation(
      Diagram(coordinateSystem(extent = {{-200, -100}, {200, 100}})),
      Icon(coordinateSystem(extent = {{-200, -100}, {200, 100}})));
  

  end Teste_Y_Y;
  annotation(
    uses(Modelica(version = "4.0.0")));
end TesteSaturacao;
