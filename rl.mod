MODULE rl;

   IMPORT SYSTEM;

   (* Constants *)

   CONST
      keyNull- = 0;   (*  Key: NULL, used for no key pressed *)
      keyApostrophe- = 39;   (*  Key: ' *)
      keyComma- = 44;   (*  Key: , *)
      keyMinus- = 45;   (*  Key: - *)
      keyPeriod- = 46;   (*  Key: . *)
      keySlash- = 47;   (*  Key: / *)
      keyZero- = 48;   (*  Key: 0 *)
      keyOne- = 49;   (*  Key: 1 *)
      keyTwo- = 50;   (*  Key: 2 *)
      keyThree- = 51;   (*  Key: 3 *)
      keyFour- = 52;   (*  Key: 4 *)
      keyFive- = 53;   (*  Key: 5 *)
      keySix- = 54;   (*  Key: 6 *)
      keySeven- = 55;   (*  Key: 7 *)
      keyEight- = 56;   (*  Key: 8 *)
      keyNine- = 57;   (*  Key: 9 *)
      keySemicolon- = 59;   (*  Key: ; *)
      keyEqual- = 61;   (*  Key:- = *)
      keyA- = 65;   (*  Key: A | a *)
      keyB- = 66;   (*  Key: B | b *)
      keyC- = 67;   (*  Key: C | c *)
      keyD- = 68;   (*  Key: D | d *)
      keyE- = 69;   (*  Key: E | e *)
      keyF- = 70;   (*  Key: F | f *)
      keyG- = 71;   (*  Key: G | g *)
      keyH- = 72;   (*  Key: H | h *)
      keyI- = 73;   (*  Key: I | i *)
      keyJ- = 74;   (*  Key: J | j *)
      keyK- = 75;   (*  Key: K | k *)
      keyL- = 76;   (*  Key: L | l *)
      keyM- = 77;   (*  Key: M | m *)
      keyN- = 78;   (*  Key: N | n *)
      keyO- = 79;   (*  Key: O | o *)
      keyP- = 80;   (*  Key: P | p *)
      keyQ- = 81;   (*  Key: Q | q *)
      keyR- = 82;   (*  Key: R | r *)
      keyS- = 83;   (*  Key: S | s *)
      keyT- = 84;   (*  Key: T | t *)
      keyU- = 85;   (*  Key: U | u *)
      keyV- = 86;   (*  Key: V | v *)
      keyW- = 87;   (*  Key: W | w *)
      keyX- = 88;   (*  Key: X | x *)
      keyY- = 89;   (*  Key: Y | y *)
      keyZ- = 90;   (*  Key: Z | z *)
      keyLeftBracket- = 91;   (*  Key: [ *)
      keyBackslash- = 92;   (*  Key: '\' *)
      keyRightBracket- = 93;   (*  Key: ] *)
      keyGrave- = 96;   (*  Key: ` *)
      keySpace- = 32;   (*  Key: Space *)
      keyEscape- = 256;   (*  Key: Esc *)
      keyEnter- = 257;   (*  Key: Enter *)
      keyTab- = 258;   (*  Key: Tab *)
      keyBackspace- = 259;   (*  Key: Backspace *)
      keyInsert- = 260;   (*  Key: Ins *)
      keyDelete- = 261;   (*  Key: Del *)
      keyRight- = 262;   (*  Key: Cursor right *)
      keyLeft- = 263;   (*  Key: Cursor left *)
      keyDown- = 264;   (*  Key: Cursor down *)
      keyUp- = 265;   (*  Key: Cursor up *)
      keyPageUp- = 266;   (*  Key: Page up *)
      keyPageDown- = 267;   (*  Key: Page down *)
      keyHome- = 268;   (*  Key: Home *)
      keyEnd- = 269;   (*  Key: End *)
      keyCapsLock- = 280;   (*  Key: Caps lock *)
      keyScrollLock- = 281;   (*  Key: Scroll down *)
      keyNumLock- = 282;   (*  Key: Num lock *)
      keyPrintScreen- = 283;   (*  Key: Print screen *)
      keyPause- = 284;   (*  Key: Pause *)
      keyF1- = 290;   (*  Key: F1 *)
      keyF2- = 291;   (*  Key: F2 *)
      keyF3- = 292;   (*  Key: F3 *)
      keyF4- = 293;   (*  Key: F4 *)
      keyF5- = 294;   (*  Key: F5 *)
      keyF6- = 295;   (*  Key: F6 *)
      keyF7- = 296;   (*  Key: F7 *)
      keyF8- = 297;   (*  Key: F8 *)
      keyF9- = 298;   (*  Key: F9 *)
      keyF10- = 299;   (*  Key: F10 *)
      keyF11- = 300;   (*  Key: F11 *)
      keyF12- = 301;   (*  Key: F12 *)
      keyLeftShift- = 340;   (*  Key: Shift left *)
      keyLeftControl- = 341;   (*  Key: Control left *)
      keyLeftAlt- = 342;   (*  Key: Alt left *)
      keyLeftSuper- = 343;   (*  Key: Super left *)
      keyRightShift- = 344;   (*  Key: Shift right *)
      keyRightControl- = 345;   (*  Key: Control right *)
      keyRightAlt- = 346;   (*  Key: Alt right *)
      keyRightSuper- = 347;   (*  Key: Super right *)
      keyKbMenu- = 348;   (*  Key: KB menu *)
      keyKp0- = 320;   (*  Key: Keypad 0 *)
      keyKp1- = 321;   (*  Key: Keypad 1 *)
      keyKp2- = 322;   (*  Key: Keypad 2 *)
      keyKp3- = 323;   (*  Key: Keypad 3 *)
      keyKp4- = 324;   (*  Key: Keypad 4 *)
      keyKp5- = 325;   (*  Key: Keypad 5 *)
      keyKp6- = 326;   (*  Key: Keypad 6 *)
      keyKp7- = 327;   (*  Key: Keypad 7 *)
      keyKp8- = 328;   (*  Key: Keypad 8 *)
      keyKp9- = 329;   (*  Key: Keypad 9 *)
      keyKpDecimal- = 330;   (*  Key: Keypad . *)
      keyKpDivide- = 331;   (*  Key: Keypad / *)
      keyKpMultiply- = 332;   (*  Key: Keypad * *)
      keyKpSubtract- = 333;   (*  Key: Keypad - *)
      keyKpAdd- = 334;   (*  Key: Keypad + *)
      keyKpEnter- = 335;   (*  Key: Keypad Enter *)
      keyKpEqual- = 336;   (*  Key: Keypad- = *)
      keyBack- = 4;   (*  Key: Android back button *)
      keyMenu- = 82;   (*  Key: Android menu button *)
      keyVolumeUp- = 24;   (*  Key: Android volume up button *)
      keyVolumeDown- = 25;   (*  Key: Android volume down button *)

      mouseButtonLeft- = 0;   (*  Mouse button left *)
      mouseButtonRight- = 1;   (*  Mouse button right *)
      mouseButtonMiddle- = 2;   (*  Mouse button middle (pressed wheel) *)
      mouseButtonSide- = 3;   (*  Mouse button side (advanced mouse device) *)
      mouseButtonExtra- = 4;   (*  Mouse button extra (advanced mouse device) *)
      mouseButtonForward- = 5;   (*  Mouse button forward (advanced mouse device) *)
      mouseButtonBack- = 6;   (*  Mouse button back (advanced mouse device) *)

   (* Types *)

   TYPE
      Color* = RECORD
         r*, g*, b*, a* : CHAR;
      END;

      Rectangle* = RECORD
         x*, y*, width*, height* : REAL;
      END;

      Vector2* = RECORD
         x*, y* : REAL;
      END;

      Vector3* = RECORD(Vector2)
         z* : REAL;
      END;

      Vector4* = RECORD(Vector3)
         w* : REAL;
      END;

      Texture* = RECORD
         id- : LONGINT;
         width-, height- : LONGINT;
         mipmaps-, format- : LONGINT;
      END;

      Texture2D* = Texture;

      Camera2D* = RECORD
         offset*, target* : Vector2;
         rotation*, zoom* : REAL;
      END;

      Image* = RECORD
         data-           : POINTER TO ARRAY OF SYSTEM.BYTE;
         width-, height- : LONGINT;
         mipmaps-        : LONGINT;
         format-         : LONGINT;
      END;

      GlyphInfo* = RECORD
         value-                        : LONGINT;
         offsetX-, offsetY-, advanceX- : LONGINT;
         image-                        : Image;
      END;

      Font* = RECORD
         baseSize-                  : LONGINT;
         glyphCount-, glyphPadding- : LONGINT;
         texture-                   : Texture2D;
         recs-                      : POINTER TO Rectangle;
         glyphs-                    : POINTER TO GlyphInfo;
      END;


   (* Supporting variables *)

   VAR
      lightgray*, gray*, darkgray*, yellow*, gold*, orange*, pink*, red*,
      maroon*, green*, lime*, darkgreen*, skyblue*, blue*, darkblue*, purple*,
      violet*, darkpurple*, beige*, brown*, darkbrown*, white*, black*, blank*,
      magenta*, raywhite* : Color;

   (* Foreign procedures *)

   PROCEDURE InitWindow*(w, h : INTEGER; title : ARRAY OF CHAR) IS "InitWindow";
   PROCEDURE SetTargetFPS*(fps : INTEGER) IS "SetTargetFPS";
   PROCEDURE WindowShouldClose*() : BOOLEAN IS "WindowShouldClose";
   PROCEDURE CloseWindow* IS "CloseWindow";
   PROCEDURE GetScreenWidth*() : INTEGER IS "GetScreenWidth";
   PROCEDURE GetScreenHeight*() : INTEGER IS "GetScreenHeight";
   PROCEDURE GetMonitorWidth* (monitor : INTEGER) : INTEGER IS "GetMonitorWidth";
   PROCEDURE GetMonitorHeight* (monitor : INTEGER) : INTEGER IS "GetMonitorHeight";
   PROCEDURE GetCurrentMonitor* () : INTEGER IS "GetCurrentMonitor";
   PROCEDURE ToggleFullscreen* IS "ToggleFullscreen";
   PROCEDURE ShowCursor* IS "ShowCursor";
   PROCEDURE HideCursor* IS "HideCursor";

   PROCEDURE PollInputEvents* IS "PollInputEvents";
   PROCEDURE IsKeyDown* (key : INTEGER) : BOOLEAN IS "IsKeyDown";
   PROCEDURE IsKeyPressed* (key : INTEGER) : BOOLEAN IS "IsKeyPressed";
   PROCEDURE GetMouseX*() : INTEGER IS "GetMouseX";
   PROCEDURE GetMouseY*() : INTEGER IS "GetMouseY";
   PROCEDURE GetMousePosition*(VAR vec : Vector2) IS "GetMousePositionWrapper";
   PROCEDURE GetMouseWheelMove* () : REAL IS "GetMouseWheelMove";
   PROCEDURE IsMouseButtonDown* (button : INTEGER) : BOOLEAN IS "IsMouseButtonDown";

   PROCEDURE BeginDrawing* IS "BeginDrawing";
   PROCEDURE EndDrawing* IS "EndDrawing";
   PROCEDURE BeginMode2D*(camera : Camera2D) IS "BeginMode2DWrapper";
   PROCEDURE EndMode2D* IS "EndMode2D";
   PROCEDURE GetScreenToWorld2D*(pos : Vector2; camera : Camera2D; VAR res : Vector2) IS "GetScreenToWorld2DWrapper";
   PROCEDURE GetFrameTime*() : REAL IS "GetFrameTime";
   PROCEDURE GetTime*() : LONGREAL IS "GetTime";

   PROCEDURE ClearBackground* (color : Color) IS "ClearBackgroundWrapper";
   PROCEDURE DrawPixel* (x, y : INTEGER; color : Color) IS "DrawPixelWrapper";
   PROCEDURE DrawPixelV*(pos : Vector2; color : Color) IS "DrawPixelVWrapper";
   PROCEDURE DrawLine* (sx, sy, ex, ey : INTEGER; color : Color) IS "DrawLineWrapper";
   PROCEDURE DrawLineEx*(sv, ev : Vector2; thick : REAL; color : Color) IS "DrawLineExWrapper";
   PROCEDURE DrawCircle* (cx, cy : INTEGER; r : REAL; color : Color) IS "DrawCircleWrapper";
   PROCEDURE DrawCircleV* (c : Vector2; r : REAL; color : Color) IS "DrawCircleVWrapper";
   PROCEDURE DrawCircleLines* (cx, cy : INTEGER; r : REAL; color : Color) IS "DrawCircleLinesWrapper";
   PROCEDURE DrawRectangle* (x, y, w, h : INTEGER; color : Color) IS "DrawRectangleWrapper";
   PROCEDURE DrawRectangleRec* (rec : Rectangle; color : Color) IS "DrawRectangleRecWrapper";
   PROCEDURE DrawRectangleLines*(x, y, w, h : INTEGER; color : Color) IS "DrawRectangleLinesWrapper";
   PROCEDURE DrawRectangleLinesEx*(rec : Rectangle; thick : REAL; color : Color) IS "DrawRectangleLinesExWrapper";

   PROCEDURE LoadFont*(path : ARRAY OF CHAR; VAR res : Font) IS "LoadFontWrapper";
   PROCEDURE UnloadFont*(font : Font) IS "UnloadFontWrapper";
   PROCEDURE IsFontReady*(font : Font) : BOOLEAN IS "IsFontReadyWrapper";
   PROCEDURE DrawFPS*(x, y : INTEGER) IS "DrawFPS";
   PROCEDURE DrawText*(text : ARRAY OF CHAR; x, y, fontSize : INTEGER; color : Color) IS "DrawTextWrapper";
   PROCEDURE DrawTextEx*(font : Font; text : ARRAY OF CHAR; pos : Vector2; fontSize,
                        fontSpacing : REAL; color : Color) IS "DrawTextExWrapper";
   PROCEDURE GetFontDefault*(VAR res : Font) IS "GetFontDefaultWrapper";
   PROCEDURE CheckCollisionPointRec* (point : Vector2; rec : Rectangle) : BOOLEAN IS "CheckCollisionPointRecWrapper";
   PROCEDURE CheckCollisionPointCircle* (point, center : Vector2; radius : REAL) : BOOLEAN IS "CheckCollisionPointCircleWrapper";
   PROCEDURE CheckCollisionRecs* (rec1, rec2 : Rectangle) : BOOLEAN IS "CheckCollisionRecsWrapper";

   PROCEDURE LoadTexture*(fileName : ARRAY OF CHAR; VAR tex : Texture2D) IS "LoadTextureWrapper";
   PROCEDURE UnloadTexture*(VAR tex : Texture2D) IS "UnloadTextureWrapper";
   PROCEDURE DrawTexture*(tex : Texture2D; x, y : INTEGER; tint : Color) IS "DrawTextureWrapper";

   PROCEDURE GetRandomValue*(min, max : INTEGER) : INTEGER IS "GetRandomValue";

   PROCEDURE Fade* (color : Color; alpha : REAL; VAR res : Color) IS "FadeWrapper";
   PROCEDURE ColorToInt* (color : Color) : LONGINT IS "ColorToIntWrapper";
   PROCEDURE GetColor*(hexValue : LONGINT; VAR res : Color) IS "GetColorWrapper";
   PROCEDURE ColorFromNormalized*(rgba : Vector4; VAR res : Color) IS "ColorFromNormalizedWrapper";

   (* Internal service procedures (not exported) *)

   PROCEDURE SetupColorConstants;

      PROCEDURE MakeColor (VAR col : Color; r,g,b,a : SHORTINT);
      BEGIN
         col.r := CHR(r);
         col.g := CHR(g);
         col.b := CHR(b);
         col.a := CHR(a);
      END MakeColor;

   BEGIN

      MakeColor(lightgray  , 200, 200, 200, 255 );   (* Light Gray *)
      MakeColor(gray       , 130, 130, 130, 255 );   (* Gray *)
      MakeColor(darkgray   , 80, 80, 80, 255 );      (* Dark Gray *)
      MakeColor(yellow     , 253, 249, 0, 255 );     (* Yellow *)
      MakeColor(gold       , 255, 203, 0, 255 );     (* Gold *)
      MakeColor(orange     , 255, 161, 0, 255 );     (* Orange *)
      MakeColor(pink       , 255, 109, 194, 255 );   (* Pink *)
      MakeColor(red        , 230, 41, 55, 255 );     (* Red *)
      MakeColor(maroon     , 190, 33, 55, 255 );     (* Maroon *)
      MakeColor(green      , 0, 228, 48, 255 );      (* Green *)
      MakeColor(lime       , 0, 158, 47, 255 );      (* Lime *)
      MakeColor(darkgreen  , 0, 117, 44, 255 );      (* Dark Green *)
      MakeColor(skyblue    , 102, 191, 255, 255 );   (* Sky Blue *)
      MakeColor(blue       , 0, 121, 241, 255 );     (* Blue *)
      MakeColor(darkblue   , 0, 82, 172, 255 );      (* Dark Blue *)
      MakeColor(purple     , 200, 122, 255, 255 );   (* Purple *)
      MakeColor(violet     , 135, 60, 190, 255 );    (* Violet *)
      MakeColor(darkpurple , 112, 31, 126, 255 );    (* Dark Purple *)
      MakeColor(beige      , 211, 176, 131, 255 );   (* Beige *)
      MakeColor(brown      , 127, 106, 79, 255 );    (* Brown *)
      MakeColor(darkbrown  , 76, 63, 47, 255 );      (* Dark Brown *)
      MakeColor(white      , 255, 255, 255, 255 );   (* White *)
      MakeColor(black      , 0, 0, 0, 255 );         (* Black *)
      MakeColor(blank      , 0, 0, 0, 0 );           (* Blank (Transparent) *)
      MakeColor(magenta    , 255, 0, 255, 255 );     (* Magenta *)
      MakeColor(raywhite   , 245, 245, 245, 255 );   (* My own White (raylib logo) *)

   END SetupColorConstants;

BEGIN
   SYSTEM.LOADLIB("./raylib.so");

   SetupColorConstants;
END rl.
