#ifndef TCPCLIENT_H
#define TCPCLIENT_H

#include <QObject>
#include <QTcpSocket>

class TcpClient : public QObject
{
    Q_OBJECT
public:
    explicit TcpClient(QObject *parent = nullptr){
        Q_UNUSED(parent)
    }

public slots:
    void initialize(){
        m_tcpSocket = new QTcpSocket(this);
        connect(m_tcpSocket, SIGNAL(readyRead()), this, SLOT(receivedData()));
        m_tcpSocket->connectToHost("127.0.0.1", 20000);
    }

    void sendData(const QString &data) {
        m_tcpSocket->write(data.toUtf8() + "\n");
    }

signals:
    void dataReceived(QString data);

private slots:
    void receivedData() {
        QString txt = QString(m_tcpSocket->readAll());
        emit dataReceived(txt);
    }

private:
    QTcpSocket *m_tcpSocket;
};

#endif // TCPCLIENT_H
