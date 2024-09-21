MODULE Test;

   IMPORT Out, rl;

   VAR
      blue : CHAR;
      tex : rl.Texture2D;
      texOn : BOOLEAN;

   PROCEDURE Frame;
      VAR
         col : rl.Color;
         rec : rl.Rectangle;
         vec : rl.Vector2;
   BEGIN
      rl.BeginDrawing;

      col.r := CHR(33);
      col.g := CHR(33);
      col.b := CHR(33);
      col.a := CHR(255);
      rl.ClearBackground(rl.darkgray);

      IF texOn THEN rl.DrawTexture(tex, 0, 0, rl.white); END;

      col.r := blue;
      col.g := blue;
      col.b := blue;
      col.a := CHR(255);

      rl.DrawLine (0, 0, 200, 200, col);

      rec.x := 100.0;
      rec.y := 100.0;
      rec.width := 100.0;
      rec.height := 100.0;
      rl.GetMousePosition(vec);
      IF rl.CheckCollisionPointRec(vec, rec) THEN
         rl.DrawRectangleRec(rec, rl.brown);
      ELSE
         rl.DrawRectangleRec(rec, rl.darkbrown);
      END;


      rl.DrawCircle(rl.GetMouseX(), rl.GetMouseY(), 30.0, rl.red);
      
      rl.DrawText("Hello, world!", 300, 400, 20, rl.raywhite);

      rl.DrawFPS(500, 460);
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

      texOn := rl.IsKeyDown(84); (* key T *)

   END CheckInputs;

   PROCEDURE Do;
   BEGIN
      rl.InitWindow(640, 480, "Testing");
      rl.SetTargetFPS(60);
      rl.LoadTexture("tex.png", tex);
      
      WHILE ~rl.WindowShouldClose() DO
         CheckInputs;

         Frame;
      END;

      rl.UnloadTexture(tex);
   END Do;

BEGIN
   blue := CHR(0);
   Do;
END Test.