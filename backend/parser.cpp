#include "parser.h"
#include <iostream>

Parser::Parser(QObject *parent)
    : QObject{parent}
{
    std::cout << "hello" << std::endl;

}
