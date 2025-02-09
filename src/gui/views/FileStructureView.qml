import QtQuick
import QtQuick.Layouts
import QtPositioning
import components 1.0


ColumnLayout {

    id: file_structure_container
    width: parent.width
    spacing: 5
    Layout.alignment: Qt.AlignTop
    
    function loadFileLabels() {
        for(let i = 0; i < 10; i++){
            var component = Qt.createComponent("qrc:/components/src/gui/components/FileLabel.qml");
            if (component.status === Component.Error) {
                console.error("Error:", component.errorString());
            }

            if (component.status == Component.Ready) {
                component.createObject(file_structure_container);
            }
        }
    }

    Component.onCompleted: loadFileLabels()
}
