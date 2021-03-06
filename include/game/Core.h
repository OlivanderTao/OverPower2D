#pragma once

#include "raylib.h"

#include "game/Simulation.h"

namespace Game
{
	class Core
	{
	public:
		bool init();
		bool run();
		void exit();

	private:
		Simulation simulation;
	};
}
