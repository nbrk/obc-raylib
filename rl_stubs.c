
#include <raylib.h>

void GetMousePositionWrapper(Vector2 *vec)
{
   Vector2 pos;
   pos = GetMousePosition();
   *vec = pos;
}
void ClearBackgroundWrapper(Color *color)
{
   ClearBackground(*color);
}
void DrawLineWrapper(int sx, int sy, int ex, int ey, Color *color)
{
   DrawLine(sx, sy, ex, ey, *color);
}
void DrawCircleWrapper(int cx, int cy, float r, Color *color)
{
   DrawCircle(cx, cy, r, *color);
}
void DrawRectangleWrapper(int x, int y, int w, int h, Color *color)
{
   DrawRectangle(x, y, w, h, *color);
}
void DrawRectangleLinesWrapper(int x, int y, int w, int h, Color *color)
{
   DrawRectangleLines(x, y, w, h, *color);
}
void DrawRectangleRecWrapper(Rectangle *rec, Color *color)
{
   DrawRectangleRec(*rec, *color);
}
void DrawTextWrapper(const char *text, int x, int y, int fontSize, Color *color)
{
   DrawText(text, x, y, fontSize, *color);
}
bool CheckCollisionPointRecWrapper(Vector2 *point, Rectangle *rec)
{
   return CheckCollisionPointRec(*point, *rec);
}
bool CheckCollisionRecsWrapper(Rectangle *rec1, Rectangle *rec2)
{
   return CheckCollisionRecs(*rec1, *rec2);
}
void LoadTextureWrapper(const char *fileName, Texture2D *tex)
{
   *tex = LoadTexture(fileName);
}
void UnloadTextureWrapper(Texture2D *tex)
{
   UnloadTexture(*tex);
}
void DrawTextureWrapper(Texture2D *tex, int x, int y, Color *tint)
{
   DrawTexture(*tex, x, y, *tint);
}
void BeginMode2DWrapper(Camera2D *camera)
{
   BeginMode2D(*camera);
}
void FadeWrapper(Color *color, float alpha, Color *res)
{
   *res = Fade(*color, alpha);
}
