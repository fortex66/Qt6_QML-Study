#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include "message.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;

    Message msg;
    engine.rootContext()->setContextProperty("msg", &msg);

    engine.loadFromModule("Ex_Integration2", "Main");

    return app.exec();
}
