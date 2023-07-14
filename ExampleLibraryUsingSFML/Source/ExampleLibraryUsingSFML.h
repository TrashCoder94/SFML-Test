#pragma once

#include <chrono>

#include <SFML/Graphics/RenderWindow.hpp>
#include <SFML/Graphics/CircleShape.hpp>

namespace ExampleLibrary
{
	class Application
	{
	public:
		Application();
		~Application();
		
		void Initialize();
		void Update();
		void Render();
		void Deinitialize();
		
	private:
		sf::RenderWindow* m_pWindow;
		sf::CircleShape* m_pShape;
		
		std::chrono::high_resolution_clock m_Clock;
		std::chrono::steady_clock::time_point m_PreviousTime;
		float m_ElapsedSeconds;
		float m_AutoQuitTime;
	};
}