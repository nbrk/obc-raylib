
#include <raylib.h>

// #include <stdio.h>


void ClearBackgroundWrapper (Color* color) {
   // printf("Using the stub %s; %p: r=%d, g=%d, b=%d\n", __FUNCTION__, color,
   //    color->r, color->g, color->b);
   ClearBackground((Color){color->r, color->g, color->b, color->a});
}

void DrawLineWrapper (int sx, int sy, int ex, int ey, Color* color) {
   // printf("Using the stub %s; %p: r=%d, g=%d, b=%d\n", __FUNCTION__, color,
   //    color->r, color->g, color->b);
   DrawLine(sx,sy,ex,ey, (Color){color->r, color->g, color->b, color->a});
}
