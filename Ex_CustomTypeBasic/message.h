#ifndef MESSAGE_H
#define MESSAGE_H

#include <QObject>
#include <QDebug>
#include <QTimer>

class Message : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QString author READ author WRITE setAuthor NOTIFY authorChanged)
public:
    explicit Message(QObject *parent = nullptr){
        qDebug() << "Message() 생성자";
        QTimer::singleShot(3000, this, SLOT(timerTimeout()));
    }

    void setAuthor(const QString &a){
        m_author = QString("%1 World.").arg(a);
        emit authorChanged();
    }

    QString author() const {
        return m_author;
    }

private:
    QString m_author;

public slots:
    void timerTimeout(){
        emit newMessagePosted("New QML Type");
    }

signals:
    void authorChanged();
    void newMessagePosted(const QString &subject);
};

#endif // MESSAGE_H
