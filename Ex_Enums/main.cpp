#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include "message.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;

    qmlRegisterType<Message>("MyTypes", 1, 0, "Msg");

    engine.loadFromModule("Ex_Enums", "Main");

    return app.exec();
}
