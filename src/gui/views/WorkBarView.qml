import QtQuick
import QtPositioning
import QtLocation
import QtQuick.Controls

import parsing

Item {
    width: 400
    height: 300

    Button {
        text: "Ping"
        anchors.centerIn: parent
        onClicked: parser.ping()
    }

    Rectangle {
        anchors.fill: parent
        color: "lightgray"
    }
}