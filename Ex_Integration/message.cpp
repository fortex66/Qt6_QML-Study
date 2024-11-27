#include "message.h"

Message::Message(QObject *parent)
    : QObject{parent}
{
    m_author = "";
}

void Message::setAuthor(const QString &a)
{
    m_author = QString("%1 world.").arg(a);
    emit authorChanged(); // 업데이트 해야하므로 시그널 호출
}

QString Message::author() const
{
    return m_author;
}
