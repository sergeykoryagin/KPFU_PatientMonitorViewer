import QtQuick 2.12
import QtGraphicalEffects 1.0
import QtQuick.Layouts 1.11


Item{
    id: root
    width: monitor.width
    height: monitor.height


    property alias monitorWidth: monitor.width
    property alias monitorHeight: monitor.height


    property alias ecg: ecgValue.text
    property alias pvc: pvcValue.text
    property alias pr: prValue.text
    property alias spo2: spo2Value.text
    property alias t1: t1Value.text
    property alias t2: t2Value.text
    property alias ibp1: ibp1Value.text
    property alias ibp2: ibp2Value.text
    property alias etco2: etco2Value.text
    property alias fico2: fico2Value.text
    property alias awpr: awprValue.text
    property alias nibp: nibpValue.text

    property int fontSize: 12




    Rectangle {
        id: monitor
        color: "#aaaaaa"
        width: 1900
        height: 400
        MonitorMenu {
            id: monitorMenu
            height: 40
            width: parent.width
        }

        Rectangle {
            id: display
            width: parent.width
            height: parent.height - monitorMenu.height
            color: "#ffffff"
            border.color: "#015793"
            anchors.left: parent.left
            anchors.top: monitorMenu.bottom
            anchors.topMargin: 0
            anchors.leftMargin: 0

            Image {
                id: displaywaveform
                width: parent.width / 2
                height: parent.height
                source: "images/display-waveform.png"
                fillMode: Image.Stretch
            }

            Rectangle {
                id: parametres
                width: parent.width / 2
                height: parent.height
                color: "#979797"
                anchors.left: displaywaveform.right
                GridLayout {
                    id: grid
                    anchors.fill: parametres

                    columnSpacing: -1
                    rowSpacing: 0
                    rows: 3
                    columns: 3

                    Rectangle {
                        id: params1

                        Layout.rowSpan: 2
                        Layout.preferredWidth: parametres.width * 3/8
                        Layout.preferredHeight: parametres.height * 2/3

                        color: "#979797"
                        border.color: "#015793"

                        Text {
                            id: ecg
                            color: "#07f702"
                            text: qsTr("ECG")
                            anchors.left: parent.left
                            anchors.top: parent.top
                            anchors.leftMargin: 8
                            anchors.topMargin: 8
                            font.pointSize: fontSize
                        }

                        Text {
                            id: pvc
                            text: qsTr("PVC:")
                            anchors.left: parent.left
                            anchors.top: parent.top
                            anchors.leftMargin: 8
                            anchors.topMargin: 28
                            font.pointSize: fontSize
                        }

                        Text {
                            id: ecgRange
                            color: "#0a7908"
                            text: qsTr("50/150")
                            anchors.right: parent.right
                            anchors.top: parent.top
                            anchors.rightMargin: 8
                            font.pointSize: fontSize
                            anchors.topMargin: 8
                        }

                        Text {
                            id: ecgValue
                            color: "#07f702"
                            text: qsTr("79")
                            anchors.right: parent.right
                            anchors.bottom: parent.bottom
                            anchors.rightMargin: 8
                            anchors.bottomMargin: 8
                            font.weight: Font.Bold
                            font.pointSize: fontSize * 8
                        }

                        Text {
                            id: pvcValue
                            text: qsTr("3")
                            anchors.left: parent.left
                            anchors.top: parent.top
                            font.pointSize: fontSize
                            anchors.topMargin: 28
                            anchors.leftMargin: 44
                        }
                    }

                    Rectangle {
                        id: params2

                        Layout.rowSpan: 2
                        Layout.preferredWidth: parametres.width * 3/8
                        Layout.preferredHeight: parametres.height * 2/3

                        color: "#979797"
                        border.color: "#015793"
                        Text {
                            id: pr
                            color: "#07f702"
                            text: qsTr("PR")
                            anchors.left: parent.left
                            anchors.top: parent.top
                            font.pointSize: fontSize
                            anchors.topMargin: 8
                            anchors.leftMargin: 8
                        }

                        Text {
                            id: prRange
                            color: "#0a7908"
                            text: qsTr("50/150")
                            anchors.left: parent.left
                            anchors.top: parent.top
                            anchors.leftMargin: 90
                            font.pointSize: fontSize
                            anchors.topMargin: 8
                        }

                        Text {
                            id: prValue
                            color: "#07f702"
                            text: qsTr("80")
                            anchors.right: parent.right
                            anchors.top: parent.top
                            anchors.rightMargin: 8
                            font.weight: Font.Bold
                            font.pointSize: fontSize * 4
                            anchors.topMargin: 33
                        }

                        Text {
                            id: spo2
                            color: "#05e6fd"
                            text: qsTr("SpO2 %")
                            anchors.left: parent.left
                            anchors.top: parent.top
                            font.pointSize: fontSize
                            anchors.topMargin: 103
                            anchors.leftMargin: 8
                        }

                        Text {
                            id: spo2range
                            color: "#05d2e7"
                            text: qsTr("90/100")
                            anchors.left: parent.left
                            anchors.top: parent.top
                            anchors.topMargin: 103
                            anchors.leftMargin: 90
                            font.pointSize: fontSize
                        }

                        Text {
                            id: spo2Value
                            color: "#05e6fd"
                            text: qsTr("98")
                            anchors.right: parent.right
                            anchors.bottom: parent.bottom
                            anchors.bottomMargin: 8
                            anchors.rightMargin: 8
                            font.weight: Font.Bold
                            font.pointSize: fontSize * 5
                        }
                    }

                    Rectangle {
                        id: params3

                        Layout.rowSpan: 1
                        Layout.preferredWidth: parametres.width * 2/8
                        Layout.preferredHeight: parametres.height * 1/3

                        color: "#979797"
                        border.color: "#015793"

                        Text {
                            id: t1
                            visible: true
                            color: "#07f702"
                            text: qsTr("T1")
                            anchors.left: parent.left
                            anchors.top: parent.top
                            font.pointSize: fontSize
                            anchors.topMargin: 8
                            anchors.leftMargin: 8
                        }

                        Text {
                            id: t2
                            color: "#07f702"
                            text: qsTr("T2")
                            anchors.left: parent.left
                            anchors.bottom: parent.bottom
                            anchors.bottomMargin: 34
                            font.pointSize: fontSize
                            anchors.leftMargin: 8
                        }


                        Text {
                            id: t1Range
                            color: "#0a7908"
                            text: qsTr("30.0/42.0")
                            anchors.left: parent.left
                            anchors.top: parent.top
                            anchors.leftMargin: 8
                            anchors.topMargin: 27
                            font.pointSize: fontSize * 3/4
                        }

                        Text {
                            id: t1Value
                            color: "#07f702"
                            text: qsTr("36.5°C")
                            anchors.right: parent.right
                            anchors.top: parent.top
                            anchors.rightMargin: 8
                            anchors.topMargin: 8
                            font.weight: Font.Bold
                            font.pointSize: fontSize * 5/3
                        }

                        Text {
                            id: t2Range
                            color: "#0a7908"
                            text: qsTr("30.0/42.0")
                            anchors.left: parent.left
                            anchors.bottom: parent.bottom
                            anchors.bottomMargin: 14
                            anchors.leftMargin: 8
                            font.pointSize: fontSize * 3/4
                        }

                        Text {
                            id: t2Value
                            color: "#07f702"
                            text: qsTr("37.5°C")
                            anchors.right: parent.right
                            anchors.bottom: parent.bottom
                            anchors.rightMargin: 8
                            anchors.bottomMargin: 8
                            font.pointSize: fontSize * 5/3
                            font.weight: Font.Bold
                        }

                    }

                    Rectangle {
                        id: params4

                        Layout.rowSpan: 1
                        Layout.preferredWidth: parametres.width * 2/8
                        Layout.preferredHeight: parametres.height * 1/3

                        color: "#979797"
                        border.color: "#015793"

                        Text {
                            id: ibp1
                            color: "#ff0000"
                            text: qsTr("IBP1(ART)")
                            anchors.left: parent.left
                            anchors.top: parent.top
                            anchors.leftMargin: 8
                            anchors.topMargin: 8
                            font.pointSize: fontSize
                        }

                        Text {
                            id: ibp1Range
                            color: "#950000"
                            text: qsTr("80/200")
                            anchors.right: parent.right
                            anchors.top: parent.top
                            anchors.rightMargin: 8
                            anchors.topMargin: 8
                            font.pointSize: fontSize * 3/4

                        }

                        Text {
                            id: ibp1Value
                            color: "#ff0000"
                            text: qsTr("120/80")
                            anchors.right: parent.right
                            anchors.top: parent.top
                            anchors.rightMargin: 8
                            anchors.topMargin: 27
                            font.weight: Font.Bold
                            font.pointSize: fontSize * 2
                        }

                        Text {
                            id: t93
                            color: "#ff0000"
                            text: qsTr("(93)")
                            anchors.right: parent.right
                            anchors.bottom: parent.bottom
                            anchors.rightMargin: 8
                            anchors.bottomMargin: 8
                            font.pointSize: fontSize * 3/4
                        }
                    }

                    Rectangle {
                        id: params5

                        Layout.preferredWidth: parametres.width * 3/8
                        Layout.preferredHeight: parametres.height * 1/3

                        color: "#979797"
                        border.color: "#015793"

                        Text {
                            id: nibp
                            color: "#fd0303"
                            text: qsTr("NIBP")
                            anchors.left: parent.left
                            anchors.top: parent.top
                            anchors.leftMargin: 8
                            anchors.topMargin: 8
                            font.pointSize: fontSize
                        }

                        Text {
                            id: nibpRange
                            color: "#950000"
                            text: qsTr("80/200")
                            anchors.right: parent.right
                            anchors.top: parent.top
                            anchors.rightMargin: 8
                            anchors.topMargin: 8
                            font.pointSize: fontSize * 3/4
                        }

                        Text {
                            id: neo
                            y: 50
                            color: "#000000"
                            text: qsTr("NEO")
                            anchors.left: parent.left
                            anchors.bottom: parent.bottom
                            anchors.leftMargin: 8
                            anchors.bottomMargin: 51
                            font.pointSize: fontSize
                        }

                        Text {
                            id: nibpValue
                            color: "#fd0303"
                            text: qsTr("---/---")
                            anchors.right: parent.right
                            anchors.top: parent.top
                            anchors.rightMargin: 8
                            anchors.topMargin: 27
                            font.pointSize: fontSize * 2
                        }

                        Text {
                            id: t___
                            color: "#fd0303"
                            text: qsTr("(---)")
                            anchors.right: parent.right
                            anchors.bottom: parent.bottom
                            anchors.rightMargin: 8
                            anchors.bottomMargin: 8
                            font.pointSize: fontSize
                        }

                        Text {
                            id: neoTime
                            color: "#000000"
                            text: qsTr("00:00")
                            anchors.left: parent.left
                            anchors.bottom: parent.bottom
                            anchors.leftMargin: 8
                            anchors.bottomMargin: 36
                            font.pointSize: fontSize
                        }

                        Image {
                            id: repeat1
                            anchors.left: parent.left
                            anchors.bottom: parent.bottom
                            source: "images/repeat 1.svg"
                            anchors.leftMargin: 8
                            anchors.bottomMargin: 22
                            fillMode: Image.PreserveAspectFit

                        }

                        Text {
                            id: off
                            text: qsTr("OFF")
                            anchors.left: parent.left
                            anchors.bottom: parent.bottom
                            anchors.bottomMargin: 22
                            anchors.leftMargin: 26
                            font.pointSize: fontSize
                        }

                        Image {
                            id: clock1
                            anchors.left: parent.left
                            anchors.bottom: parent.bottom
                            source: "images/clock 1.svg"
                            anchors.bottomMargin: 8
                            anchors.leftMargin: 8
                            fillMode: Image.PreserveAspectFit
                        }

                        Text {
                            id: neo2
                            color: "#000000"
                            text: qsTr("00:00")
                            anchors.left: parent.left
                            anchors.bottom: parent.bottom
                            anchors.bottomMargin: 8
                            anchors.leftMargin: 26
                            font.pointSize: fontSize
                        }



                    }

                    Rectangle {
                        id: params6

                        Layout.preferredWidth: parametres.width * 3/8
                        Layout.preferredHeight: parametres.height * 1/3

                        color: "#979797"
                        border.color: "#015793"

                        Text {
                            id: etco2
                            color: "#b900d8"
                            text: qsTr("EtCO2")
                            anchors.left: parent.left
                            anchors.top: parent.top
                            anchors.leftMargin: 8
                            anchors.topMargin: 8
                            font.pointSize: fontSize
                        }

                        Text {
                            id: fico2
                            color: "#07f702"
                            text: qsTr("FiCO2")
                            anchors.left: parent.left
                            anchors.bottom: parent.bottom
                            anchors.leftMargin: 10
                            anchors.bottomMargin: 37
                            font.pointSize: fontSize
                        }

                        Text {
                            id: etco2Value
                            color: "#b900d8"
                            text: qsTr("32")
                            anchors.right: parent.right
                            anchors.top: parent.top
                            anchors.rightMargin: 8
                            anchors.topMargin: 8
                            font.weight: Font.Bold
                            font.pointSize: fontSize * 2
                        }

                        Text {
                            id: awprValue
                            color: "#000000"
                            text: qsTr("32")
                            anchors.right: parent.right
                            anchors.bottom: parent.bottom
                            anchors.rightMargin: 8
                            anchors.bottomMargin: 8
                            font.weight: Font.Bold
                            font.pointSize: fontSize * 2
                        }

                        Text {
                            id: fico2Value
                            color: "#07f702"
                            text: qsTr("32")
                            anchors.left: parent.left
                            anchors.bottom: parent.bottom
                            anchors.leftMargin: 83
                            anchors.bottomMargin: 8
                            font.weight: Font.Bold
                            font.pointSize: fontSize * 2
                        }

                        Text {
                            id: awpr
                            color: "#000000"
                            text: qsTr("AWPR")
                            anchors.right: parent.right
                            anchors.bottom: parent.bottom
                            anchors.bottomMargin: 37
                            anchors.rightMargin: 66
                            font.pointSize: fontSize
                        }
                    }

                    Rectangle {
                        id: params7

                        Layout.preferredWidth: parametres.width * 2/8
                        Layout.preferredHeight: parametres.height * 1/3

                        color: "#979797"
                        border.color: "#015793"

                        Text {
                            id: ibp2
                            color: "#ff0000"
                            text: qsTr("IBP2(ART)")
                            anchors.left: parent.left
                            anchors.top: parent.top
                            anchors.leftMargin: 8
                            anchors.topMargin: 6
                            font.pointSize: fontSize
                        }

                        Text {
                            id: ibp2Range
                            color: "#950000"
                            text: qsTr("80/200")
                            anchors.right: parent.right
                            anchors.top: parent.top
                            anchors.topMargin: 8
                            anchors.rightMargin: 8
                            font.pointSize: fontSize
                        }

                        Text {
                            id: ibp2Value
                            color: "#ff0000"
                            text: qsTr("120/80")
                            anchors.right: parent.right
                            anchors.top: parent.top
                            anchors.rightMargin: 8
                            anchors.topMargin: 27
                            font.pointSize: fontSize * 2
                            font.weight: Font.Bold
                        }

                        Text {
                            id: t9_2
                            color: "#ff0000"
                            text: qsTr("(93)")
                            anchors.right: parent.right
                            anchors.bottom: parent.bottom
                            anchors.bottomMargin: 8
                            anchors.rightMargin: 8
                            font.pointSize: fontSize
                        }
                    }
                }
            }
        }
    }
}
/*##^##
Designer {
    D{i:0;formeditorZoom:1.75}D{i:18}
}
##^##*/
