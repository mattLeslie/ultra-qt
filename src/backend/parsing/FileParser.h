#ifndef PARSER_H
#define PARSER_H

#include <QObject>
#include <QQmlEngine>
#include <QStringList>
#include "ActivityFile.h"
#include <string>
#include <vector>


class FileParser : public QObject
{
    Q_OBJECT
    QML_ELEMENT
public:
    explicit FileParser(QObject *parent = nullptr);

    Q_INVOKABLE std::vector<ActivityFile*> parseFiles(const QStringList &files);

private:
    ActivityFile* parseFitArchive(const std::string& path);
    ActivityFile* parseFitFile(const std::string& path);
    ActivityFile* parseGpxFile(const std::string& path);

signals:
};

#endif // PARSER_H
