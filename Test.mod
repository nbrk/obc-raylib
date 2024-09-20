MODULE Test;

   IMPORT Out, rl;

   VAR
      blue : CHAR;

   PROCEDURE Frame;
      VAR
         col : rl.Color;
   BEGIN
      rl.BeginDrawing;

      col.r := CHR(33);
      col.g := CHR(33);
      col.b := CHR(33);
      col.a := CHR(255);
      rl.ClearBackground(rl.DARKGRAY);

      col.r := blue;
      col.g := blue;
      col.b := blue;
      col.a := CHR(255);
      rl.DrawLine (0, 0, 200, 200, rl.SKYBLUE);
      
      rl.EndDrawing;
   END Frame;

   PROCEDURE CheckInputs;
   BEGIN
      IF rl.IsKeyPressed(32) THEN
         Out.String("SPACE pressed"); Out.Ln;
      END;
      IF rl.IsKeyPressed(257) THEN
         Out.String("ENTER pressed"); Out.Ln;
      END;
      IF rl.IsKeyDown(264) THEN
         Out.String("DOWN pressed"); Out.Ln;
         IF ORD(blue) > 0 THEN blue := CHR(ORD(blue) - 10); END;
      END;
      IF rl.IsKeyDown(265) THEN
         Out.String("UP pressed"); Out.Ln;
         IF ORD(blue) < 255 THEN blue := CHR(ORD(blue) + 10); END;
      END;
   END CheckInputs;

   PROCEDURE Do;
   BEGIN
      rl.InitWindow(640, 480, "Testing");
      rl.SetTargetFPS(24);
      WHILE ~rl.WindowShouldClose() DO
         CheckInputs;

         Frame;
      END;
   END Do;

BEGIN
   blue := CHR(0);
   Do;
END Test.