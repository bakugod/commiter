using System;
using System.Diagnostics;
...

// Configure the process using the StartInfo properties.
process.StartInfo.FileName = "process.exe";
process.StartInfo.Arguments = "-n";
process.StartInfo.WindowStyle = ProcessWindowStyle.Maximized;
process.Start();
process.WaitForExit();// Waits here for the process to exit.

class Main
{
    static void Main(string[] args)
    {
        Process process = new Process();
        process.Start("node cm.js");
    }
}