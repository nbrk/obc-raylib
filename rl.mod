MODULE rl;

   IMPORT SYSTEM;

   (* Constants *)

   CONST


   (* Types *)
   
   TYPE
      Color* = RECORD
         r*, g*, b*, a* : CHAR;
   END;

   (* Supporting variables *)

   VAR
      LIGHTGRAY*, GRAY*, DARKGRAY*, YELLOW*, GOLD*, ORANGE*, PINK*, RED*, 
      MAROON*, GREEN*, LIME*, DARKGREEN*, SKYBLUE*, BLUE*, DARKBLUE*, PURPLE*,
      VIOLET*, DARKPURPLE*, BEIGE*, BROWN*, DARKBROWN*, WHITE*, BLACK*, BLANK*,
      MAGENTA*, RAYWHITE* : Color;

   (* Procedurs *)

   PROCEDURE InitWindow*(w, h : INTEGER; title : ARRAY OF CHAR) IS "InitWindow";
   PROCEDURE SetTargetFPS*(fps : INTEGER) IS "SetTargetFPS";
   PROCEDURE WindowShouldClose*() : BOOLEAN IS "WindowShouldClose";
   PROCEDURE BeginDrawing* IS "BeginDrawing";
   PROCEDURE EndDrawing* IS "EndDrawing";
   PROCEDURE ClearBackground* (VAR color : Color) IS "ClearBackgroundWrapper";
   PROCEDURE PollInputEvents* IS "PollInputEvents";
   PROCEDURE IsKeyDown* (key : INTEGER) : BOOLEAN IS "IsKeyDown";
   PROCEDURE IsKeyPressed* (key : INTEGER) : BOOLEAN IS "IsKeyPressed";
   PROCEDURE DrawLine* (sx, sy, ex, ey : INTEGER; color : Color) IS "DrawLineWrapper";



   PROCEDURE SetupConstants;

      PROCEDURE MakeColor (VAR col : Color; r,g,b,a : SHORTINT);
      BEGIN
         col.r := CHR(r);
         col.g := CHR(g);
         col.b := CHR(b);
         col.a := CHR(a);
      END MakeColor;

   BEGIN

      MakeColor(LIGHTGRAY  , 200, 200, 200, 255 );   (* Light Gray *)
      MakeColor(GRAY       , 130, 130, 130, 255 );   (* Gray *)
      MakeColor(DARKGRAY   , 80, 80, 80, 255 );      (* Dark Gray *)
      MakeColor(YELLOW     , 253, 249, 0, 255 );     (* Yellow *)
      MakeColor(GOLD       , 255, 203, 0, 255 );     (* Gold *)
      MakeColor(ORANGE     , 255, 161, 0, 255 );     (* Orange *)
      MakeColor(PINK       , 255, 109, 194, 255 );   (* Pink *)
      MakeColor(RED        , 230, 41, 55, 255 );     (* Red *)
      MakeColor(MAROON     , 190, 33, 55, 255 );     (* Maroon *)
      MakeColor(GREEN      , 0, 228, 48, 255 );      (* Green *)
      MakeColor(LIME       , 0, 158, 47, 255 );      (* Lime *)
      MakeColor(DARKGREEN  , 0, 117, 44, 255 );      (* Dark Green *)
      MakeColor(SKYBLUE    , 102, 191, 255, 255 );   (* Sky Blue *)
      MakeColor(BLUE       , 0, 121, 241, 255 );     (* Blue *)
      MakeColor(DARKBLUE   , 0, 82, 172, 255 );      (* Dark Blue *)
      MakeColor(PURPLE     , 200, 122, 255, 255 );   (* Purple *)
      MakeColor(VIOLET     , 135, 60, 190, 255 );    (* Violet *)
      MakeColor(DARKPURPLE , 112, 31, 126, 255 );    (* Dark Purple *)
      MakeColor(BEIGE      , 211, 176, 131, 255 );   (* Beige *)
      MakeColor(BROWN      , 127, 106, 79, 255 );    (* Brown *)
      MakeColor(DARKBROWN  , 76, 63, 47, 255 );      (* Dark Brown *)
      MakeColor(WHITE      , 255, 255, 255, 255 );   (* White *)
      MakeColor(BLACK      , 0, 0, 0, 255 );         (* Black *)
      MakeColor(BLANK      , 0, 0, 0, 0 );           (* Blank (Transparent) *)
      MakeColor(MAGENTA    , 255, 0, 255, 255 );     (* Magenta *)
      MakeColor(RAYWHITE   , 245, 245, 245, 255 );   (* My own White (raylib logo) *)

   END SetupConstants;

BEGIN
   SYSTEM.LOADLIB("./raylib.so");

   SetupConstants;
END rl.
