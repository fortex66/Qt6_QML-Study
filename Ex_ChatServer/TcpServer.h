#ifndef TCPSERVER_H
#define TCPSERVER_H

#include <QObject>
#include <QTcpServer>
#include <QTcpSocket>

class TcpServer : public QObject
{
    Q_OBJECT
public:
    explicit TcpServer(QObject *parent = nullptr){
        Q_UNUSED(parent)
    }

public slots:
    void initialize() {
        m_tcpServer = new QTcpServer;
        connect(m_tcpServer, SIGNAL(newConnection()), this, SLOT(slotConnection()));
        m_tcpServer->listen(QHostAddress("127.0.0.1"), 20000);
    }

    void sendData(QString data) {
        m_tcpSocket->write(data.toUtf8());
    }

signals:
    void dataReceived(QString data);

private slots:
    // 메시지를 받으면 호출
    void receievedData() {
        QString txt = QString(m_tcpSocket->readAll()); // QbyteArray를 QString으로 변환
        emit dataReceived(txt);
    }
    // 클라이언트가 들어오면 호출
    void slotConnection() {
        m_tcpSocket = m_tcpServer->nextPendingConnection();
        connect(m_tcpSocket, SIGNAL(readyRead()), this, SLOT(receievedData()));
        sendData("Server> 서버에 접속하였습니다.");
    }

private:
    QTcpServer *m_tcpServer;
    QTcpSocket *m_tcpSocket;
};

#endif // TCPSERVER_H
