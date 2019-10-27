#include "mousememory.h"

MouseMemory::MouseMemory(QObject *parent) : QObject(parent)
{

}

void MouseMemory::test()
{
    qDebug() << "test()";

}

void MouseMemory::clear()
{
    qDebug() << "clear()";

}

void MouseMemory::save()
{
    qDebug() << "save()";

}

void MouseMemory::add(double x, double y)
{
    qDebug() << "add(double x = " <<x <<" double y = "<<y<<" )";
}

void MouseMemory::add(QPointF point)
{
    qDebug() << "add(QPointF point)";

}
