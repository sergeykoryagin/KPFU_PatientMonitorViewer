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

    property int monitorFontSize: Math.min(height / 70, width / 110)
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


                ecg: Params1.ecgV
                pr: Params1.prV
                spo2: Params1.spo2V
                t1: Params1.t1V + "°C"
                t2: Params1.t2V + "°C"
                ibp1: Params1.ibp1V
                ibp2: Params1.ibp2V
                etco2: Params1.etco2V
                fico2: Params1.fico2V
                awpr: Params1.awprV
                nibp: Params1.nibpV

            }


            Monitor {
                id: monitor2

                monitorHeight: monitors.height / 2
                monitorWidth:  monitors.width

                ecg: Params2.ecgV
                pr: Params2.prV
                spo2: Params2.spo2V
                t1: Params2.t1V + "°C"
                t2: Params2.t2V + "°C"
                ibp1: Params2.ibp1V
                ibp2: Params2.ibp2V
                etco2: Params2.etco2V
                fico2: Params2.fico2V
                awpr: Params2.awprV
                nibp: Params2.nibpV


                fontSize: monitorFontSize
            }

        }


    }


}



/*##^##
Designer {
    D{i:0;formeditorZoom:0.5}
}
##^##*/
