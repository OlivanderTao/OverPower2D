#pragma once

#include "entt.hpp"

namespace Game
{
	class Simulation
	{
	public:
		using Entity = entt::entity;
		void update();
		void render();

	private:
		Entity player = entt::null;
		entt::registry registry;
		// Environment world;
	};
}
