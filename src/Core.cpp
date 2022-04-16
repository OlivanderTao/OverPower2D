#include "game/Core.h"

using namespace Game;

static int WIDTH = 800;
static int HEIGHT = 450;
static double FPS = 60.0;

bool Core::init()
{
    SetWindowState(FLAG_MSAA_4X_HINT);
    InitWindow(WIDTH, HEIGHT, "OP2D.exe");
    SetWindowState(FLAG_WINDOW_RESIZABLE); // | FLAG_WINDOW_UNDECORATED
    SetTargetFPS(FPS);
	return true;
}

bool Core::run()
{
    while (!WindowShouldClose())
    {
        BeginDrawing();
        ClearBackground(BLACK);

        DrawRectangle(0, 0, WIDTH, 100, (Color) { 132, 132, 132, 255 });
        
        EndDrawing();
    }
	return true;
}

void Core::exit()
{
    CloseWindow();
}
