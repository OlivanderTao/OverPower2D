
#include <iostream>

#include "game/Core.h"

int main(void)
{
    std::cout << "Game started!\n\n";

    Game::Core game;

    if(!game.init())
        return EXIT_FAILURE;
    
    bool EXIT_STATUS = game.run();

    game.exit();

    return EXIT_STATUS;
}
