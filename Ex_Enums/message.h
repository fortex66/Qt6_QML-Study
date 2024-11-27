#ifndef MESSAGE_H
#define MESSAGE_H

#include <QObject>

class Message : public QObject
{
    Q_OBJECT
    Q_PROPERTY(int status READ status WRITE setStatus NOTIFY statusChanged)


public:
    explicit Message(QObject *parent = nullptr){}

    int status() const {return m_status;}

    void setStatus(int status) {
        m_status = status;
        emit statusChanged();
    }
    enum Status { Ready = 0, Loading, Error};
    Q_ENUM(Status) // qml에서 사용하기 위해 선언

private:
    int m_status;

signals:
    void statusChanged();
};

#endif // MESSAGE_H
