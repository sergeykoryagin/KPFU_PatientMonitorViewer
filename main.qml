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

    property int monitorFontSize: height / 70
    Header {
        id: header
        anchors.left: parent.left
        anchors.top: parent.top
        height: 100
        width: parent.width
        headerSpacing: Math.min(100, root.width / 16)
    }

    Rectangle {
        id: monitors

        anchors.top: header.bottom
        width: parent.width
        height: parent.height - header.height

        Grid {
            id: monitorsGrid

            anchors.fill: monitors

            width: monitors.width
            height: monitors.height

            columns: 1
            rows: 2


            Monitor {
                id: monitor1

                monitorHeight: monitors.height / 2
                monitorWidth:  monitors.width

                fontSize: monitorFontSize

            }


            Monitor {
                id: monitor2

                monitorHeight: monitors.height / 2
                monitorWidth:  monitors.width

                fontSize: monitorFontSize
            }

        }


    }


}



/*##^##
Designer {
    D{i:0;formeditorZoom:0.2}
}
##^##*/
