#include "ellipseitem.h"
#include <QPainter>

EllipseItem::EllipseItem(QQuickItem *parent): QQuickPaintedItem(parent)
{
}

void EllipseItem::paint(QPainter *painter)
{
    QRectF rect = boundingRect();
    rect.adjust(1,1,-1,-1);
    painter->drawEllipse(rect);
}
