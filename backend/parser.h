#ifndef PARSER_H
#define PARSER_H

#include <QObject>
#include <QQmlEngine>

class Parser : public QObject
{
    Q_OBJECT
    QML_ELEMENT
public:
    explicit Parser(QObject *parent = nullptr);

signals:
};

#endif // PARSER_H
