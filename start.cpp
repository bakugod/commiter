#include "pch.h"
#include "windows.h"
#include <cstdlib>
#include <iostream>

int main()
{
	Sleep(10000);
	char command[11] = "node cm.js";
	std::cout << "Compiling file using " << command << std::endl;
	system(command);
	return 0;
}