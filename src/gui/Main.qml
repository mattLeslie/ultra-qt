//import related modules
import QtQuick
import QtQuick.Layouts
import QtQuick.Controls
import QtQuick.Controls.Universal 2.12
import QtQuick.Dialogs
import views 1.0
 
ApplicationWindow {

    visible: true
    Universal.theme: Universal.Dark
    Universal.accent: Universal.Violet

    title: qsTr("UltraQT")
    width: 1280
    height: 960

    signal filenamesUpdated()


    menuBar: MenuBar {
        Menu {
            title: qsTr("File")
            MenuItem {
                text: qsTr("Add Activity Files")
                onTriggered: fileDialog.open();
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
                id: file_structure
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

    FileDialog {
        id: fileDialog
        fileMode: FileDialog.OpenFiles
        nameFilters: ["Fit files (*.fit)", "Fit file archives (*.fit.gz)", "Gpx files (*.gpx)"]
        onAccepted: {
            file_structure.files = selectedFiles; 
            file_structure.loadFileLabels();
        }
    }
}