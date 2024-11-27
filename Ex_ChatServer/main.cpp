#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include "TcpServer.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;

    qmlRegisterType<TcpServer>("TCP", 1, 0, "TcpServer");

    engine.loadFromModule("Ex_ChatServer", "Main");

    return app.exec();
}
