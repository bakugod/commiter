#include "pch.h"
#include "windows.h"
#include <cstdlib>
#include <iostream>

int main()
{
	Sleep(1000);
	char command[100] = "cd C:\\Users\\PCUSER\\Desktop\\commiter && node cm.js";
	std::cout << "Compiling file using " << command << std::endl;
	system(command);
	return 0;
}