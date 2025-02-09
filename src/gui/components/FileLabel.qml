import QtQuick
import QtPositioning
import QtLocation
import QtQuick.Layouts

Item {
    width: parent.width
    height: 50
    Layout.fillWidth: true 


    property string title: "Default Text"

    Text {
        text: "File: "
        anchors.left: parent.left
    }

    Rectangle {
        width: parent.width
        height: parent.height
        color: "gray"
        Text {
            text: "Filename"
            anchors.centerIn: parent
        }
    }
}
