#include "FileParser.h"
#include <iostream>
#include <fstream>
#include <QDebug>
#include <QFile>
#include <zlib.h>


FileParser::FileParser(QObject *parent) : QObject{parent}{}

std::vector<ActivityFile*> FileParser::parseFiles(const QStringList &files){

    for (const QString &filePath : files) {
        qDebug() << filePath;
        QUrl url(filePath);

        // Convert to a local file path
        std::string localPath = url.toLocalFile().toStdString();

        this->parseFitArchive(localPath);
        return {};
        // std::ifstream file(localPath); // Open the file

        // if (file.is_open()) {
        //     std::string line;
        //     while (std::getline(file, line)) { // Read line by line
        //         std::cout << line << std::endl; // Print each line
        //     }
        //     file.close(); // Close the file
        // } else {
        //     std::cerr << "Unable to open file" << std::endl;
        //     return {};
        // }

    }

    return {};
}


// Decompresses a .fit.gz archive and individually parses each .fit file inside
ActivityFile* FileParser::parseFitArchive(const std::string& path){

    // Step 1: Decompress archive to get single file

    gzFile gzFile = gzopen(path.c_str(), "rb");
    if (!gzFile) {
        std::cerr << "Failed to open .gz file: " << path << std::endl;
        return nullptr;
    }

    std::string outputFilePath = "tmp";
    std::ofstream outFile(outputFilePath, std::ios::binary);
    if (!outFile) {
        std::cerr << "Failed to create output file: " << outputFilePath << std::endl;
        gzclose(gzFile);
        return nullptr;
    }

    char buffer[4096];
    int bytesRead;
    while ((bytesRead = gzread(gzFile, buffer, sizeof(buffer))) > 0) {
        outFile.write(buffer, bytesRead);
    }

    gzclose(gzFile);
    outFile.close();
    std::cout << "Decompressed to: " << outputFilePath << std::endl;

    // Step 2: Parse file using parseFitFile method
    ActivityFile* parsedFile = this->parseFitFile(outputFilePath);

    if (std::remove(outputFilePath.c_str()) == 0) {
        std::cout << "Deleted file: " << outputFilePath << std::endl;
    } else {
        std::cerr << "Failed to delete file: " << outputFilePath << std::endl;
    }
    return parsedFile;
}

// Parse an individual .fit file (binary encoded)
ActivityFile* FileParser::parseFitFile(const std::string& path){

    return nullptr;

}

// Parse a Gpx file (XML encoded)
ActivityFile* FileParser::parseGpxFile(const std::string& path){

    return nullptr;

}