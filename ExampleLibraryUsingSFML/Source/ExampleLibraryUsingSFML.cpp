#include "ExampleLibraryUsingSFML.h"
#include <SFML/Graphics.hpp>
#include <SFML/Graphics/RenderStates.hpp>
#include <SFML/Window.hpp>

namespace ExampleLibrary
{
	Application::Application() : 
		m_pWindow(new sf::RenderWindow(sf::VideoMode(200, 200), "SFML works!")),
		m_pShape(new sf::CircleShape(100.f))
	{}

	Application::~Application()
	{}

	void Application::Initialize()
	{
		m_pShape->setFillColor(sf::Color(0, 255, 0));
	}

	void Application::Update()
	{
		while (m_pWindow->isOpen())
		{
			sf::Event event;
			while (m_pWindow->pollEvent(event))
			{
				if (event.type == sf::Event::Closed)
					m_pWindow->close();
			}

			m_pWindow->clear();
			{
				Render();
			}
			m_pWindow->display();
		}
	}

	void Application::Render()
	{
		m_pWindow->draw(*m_pShape);
	}

	void Application::Deinitialize()
	{
		if (m_pWindow)
		{
			delete m_pWindow;
			m_pWindow = nullptr;
		}

		if (m_pShape)
		{
			delete m_pShape;
			m_pShape = nullptr;
		}
	}
}
