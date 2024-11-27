#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include "timer.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;

    qmlRegisterType<Timer>("MyCustomTimer", 1, 0, "MyTimer");

    engine.loadFromModule("Ex_CustomTimerType", "Main");

    return app.exec();
}
