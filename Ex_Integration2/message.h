#ifndef MESSAGE_H
#define MESSAGE_H

#include <QObject>
#include <QDebug>

class Message : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QString author READ author WRITE setAuthor NOTIFY authorChanged)

public:
    explicit Message(QObject *parent = nullptr) {
        qDebug() << "Message 클래스 생성자 호출";
        m_value = 0;
    }

    Q_INVOKABLE int postMessage(const QString &msg) {
        qDebug() << "STR : " << msg;
        return ++m_value;
    }

    void setAuthor(const QString &a) {
        m_author = QString("%1 world").arg(a);
        emit authorChanged();
    }

    QString author() const {
        return m_author;
    }


signals:
    void authorChanged();

private:
    QString m_author;
    int     m_value;

public slots:
    void refresh() {
        qDebug() << "[C++] Slot 함수 호출: " << m_value;
    }
};

#endif // MESSAGE_H
