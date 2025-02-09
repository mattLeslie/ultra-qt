//import related modules
import QtQuick
import QtQuick.Layouts
import QtQuick.Controls
import QtQuick.Controls.Universal 2.12
import views 1.0
 
ApplicationWindow {

    visible: true
    Universal.theme: Universal.Dark
    Universal.accent: Universal.Violet

    title: qsTr("UltraQT")
    width: 1280
    height: 960

    menuBar: MenuBar {
        Menu {
            title: qsTr("File")
            MenuItem {
                text: qsTr("&Open")
                onTriggered: console.log("Open action triggered");
            }
            MenuItem {
                text: qsTr("Exit")
                onTriggered: Qt.quit();
            }
        }
    }

    ColumnLayout {

        anchors.fill: parent
        spacing: 2
        Universal.theme: Universal.Dark


        RowLayout {
            spacing: 2

            FileStructureView {
                Layout.minimumWidth: 150
                Layout.preferredWidth: 250
                Layout.maximumWidth: 300
                Layout.fillWidth: true
                Layout.fillHeight: true
            }

            MapView{
                Layout.fillWidth: true
                Layout.fillHeight: true
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter 
            }
        }

        WorkBarView {
            Layout.preferredWidth: parent.width
            Layout.maximumHeight: 500
            Layout.preferredHeight: 400
            Layout.minimumHeight: 200
            Layout.fillWidth: true
            Layout.fillHeight: true
        }
    }
}