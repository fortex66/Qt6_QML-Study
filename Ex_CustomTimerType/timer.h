#ifndef TIMER_H
#define TIMER_H

#include <QObject>
#include <QTimer>
#include <QDebug>

class Timer : public QObject
{
    Q_OBJECT
    Q_PROPERTY(int interval READ interval WRITE setInterval NOTIFY intervalChanged )
    Q_PROPERTY(bool active READ isActive NOTIFY activeChanged )
public:
    explicit Timer(QObject *parent = nullptr){
        m_timer = new QTimer(this);
        connect(m_timer, SIGNAL(timeout()),this, SIGNAL(timeout()));
    }

    void setInterval(int msec) {
        if( m_timer->interval() == msec)
            return
        m_timer->setInterval(msec);
        emit intervalChanged();
    }

    int interval() {return m_timer->interval();}
    bool isActive() {return m_timer->isActive();}

public slots:
    void start() {
        if(m_timer->isActive()) return;
        m_timer->start();
        emit activeChanged();
    }
    void stop() {
        if(!m_timer->isActive()) return;
        m_timer->stop();
        emit activeChanged();
    }
signals:
    void timeout();
    void intervalChanged();
    void activeChanged();

private:
    QTimer* m_timer;
};

#endif // TIMER_H
