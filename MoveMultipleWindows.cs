using System;
using System.Drawing;

// Moves all listed windows to specific position and monitor
public static class DisplayFusionFunction
{
	public static void Run()
	{
        // Loop for each monitor and if current monitor matches listed
        // name, move the window to specified spot
		foreach(IntPtr window in BFS.Window.GetAllWindowHandles())
		{
            if(BFS.Window.GetText(window).Contains("Steam") &&
                !BFS.Window.GetText(window).Contains("DisplayFusion"))
            {
                BFS.Window.SetSizeAndLocation(window, 250, 250, 900, 600);
                BFS.Window.MoveToMonitor(1, window);
                BFS.Window.Minimize(window);
            }

            if(BFS.Window.GetText(window).Contains("Friends"))
            {
                BFS.Window.SetSizeAndLocation(window, 1150, 350, 200, 400);
                BFS.Window.MoveToMonitor(1, window);
                BFS.Window.Minimize(window);                
            }
            
            if(BFS.Window.GetText(window).Contains("Google Play Music"))
            {
                BFS.Window.SetSizeAndLocation(window, 0, 0, 1280, 700);
                BFS.Window.MoveToMonitor(2, window);
            }
            
            if(BFS.Window.GetText(window).Contains("Chrome"))
            {
                BFS.Window.SetSizeAndLocation(window, 1280, 0, 1280, 1400);
                BFS.Window.MoveToMonitor(2, window);
            }                      
            
            if(BFS.Window.GetText(window).Contains("Discord"))
            {
                BFS.Window.SetSizeAndLocation(window, 0, 700, 1280, 700);
                BFS.Window.MoveToMonitor(2, window);
            }     
            
            /*
            // Template to add new windows
            if(BFS.Window.GetText(window).Contains("WINDOW NAME"))
            {
                BFS.Window.SetSizeAndLocation(window, X, Y, WIDTH, HEIGHT);
                BFS.Window.MoveToMonitor(MONITOR NUMBER, window);
            }  
            */                             
		}
	}
}
