import QtQuick 2.15
import QtQuick.Window 2.15
import QtGraphicalEffects 1.0
import QtQuick.Layouts 1.11

Window {
    id: root
    width: 1600
    height: 900
    visible: true
    title: qsTr("Hello World")

    Header {
        id: header
        anchors.left: parent.left
        anchors.top: parent.top
        height: 100
        width: parent.width
        headerSpacing: Math.min(100, root.width / 16)
    }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.5}
}
##^##*/
