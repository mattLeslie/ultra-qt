import QtQuick
import QtQuick.Layouts
import QtPositioning
import components 1.0

import parsing

ColumnLayout {

    id: file_structure_container
    property var files: null
    width: parent.width
    spacing: 5
    Layout.alignment: Qt.AlignTop

    FileParser {
        id: parser
    }

    function loadFiles() {
        // for(let i = 0; i < files.length; i++){
        //     // Extract filename and extension
        //     let file = files[i];

        //     let fileName = new URL(file).pathname.split('/').pop();

        //     console.log(typeof file)
        //     // Create Qt component from template
        //     var fileComponent = Qt.createComponent("qrc:/components/src/gui/components/File.qml");
        //     if (fileComponent.status === Component.Error) {
        //         console.error("Error:", file.errorString());
        //     }

        //     if (fileComponent.status == Component.Ready) {
        //         fileComponent.createObject(file_structure_container, {
        //             "title": fileName
        //         });
        //     }
        // }
    
        parser.parseFiles(files)
    }
}
