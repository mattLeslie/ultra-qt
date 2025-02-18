import QtQuick
import QtQuick.Layouts
import QtPositioning
import components 1.0

ColumnLayout {

    id: file_structure_container
    property var files: null
    width: parent.width
    spacing: 5
    Layout.alignment: Qt.AlignTop


    // Accepts a list of one or more files 
    function loadFiles(){

    }

    function loadFileLabels() {
        for(let i = 0; i < files.length; i++){
            // Extract filename and extension
            let fileName = new URL(files[i]).pathname.split('/').pop();
            // Create Qt component from template
            var component = Qt.createComponent("qrc:/components/src/gui/components/FileLabel.qml");
            if (component.status === Component.Error) {
                console.error("Error:", component.errorString());
            }

            if (component.status == Component.Ready) {
                component.createObject(file_structure_container, {
                    "title": fileName
                });
            }
        }
    }
}
