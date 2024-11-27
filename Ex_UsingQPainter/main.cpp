#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include "ellipseitem.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;

    qmlRegisterType<EllipseItem>("Shape", 1, 0, "Ellipse");

    engine.loadFromModule("Ex_UsingQPainter", "Main");

    return app.exec();
}
