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

    function loadFileLabels() {
        for(let i = 0; i < files.length; i++){
            // Extract filename and extension
            let fileName = new URL(files[i]).pathname.split('/').pop();
            console.log("Extracted filename:", fileName);
            // Create Qt component from template
            var component = Qt.createComponent("qrc:/components/src/gui/components/FileLabel.qml");
            if (component.status === Component.Error) {
                console.error("Error:", component.errorString());
            }

            if (component.status == Component.Ready) {
                component.title = filename;
                component.createObject(file_structure_container);
            }
        }
    }
}
