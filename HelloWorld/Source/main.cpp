#include <ExampleLibrary.h>

int main(int argc, char** argv)
{
    ExampleLibrary::Application app = ExampleLibrary::Application();
    
    app.Initialize();
    app.Update();
    app.Deinitialize();

    return 0;
}
