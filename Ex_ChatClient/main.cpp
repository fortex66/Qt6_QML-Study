#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include "TcpClient.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;

    qmlRegisterType<TcpClient>("TCP", 1, 0, "TcpClient");

    engine.loadFromModule("Ex_ChatClient", "Main");

    return app.exec();
}
