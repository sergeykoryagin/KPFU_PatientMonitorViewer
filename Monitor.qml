import QtQuick 2.12
import QtGraphicalEffects 1.0
import QtQuick.Layouts 1.11


Item{
    id: root
    width: monitor.width
    height: monitor.height


    property alias monitorWidth: monitor.width
    property alias monitorHeight: monitor.height

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
                            id: text1ecgValue
                            x: 212
                            y: 103
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
                            x: 29
                            y: 17
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
                            y: 7
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
                            x: 21
                            y: 15
                            color: "#07f702"
                            text: qsTr("80")
                            anchors.right: parent.right
                            anchors.top: parent.top
                            anchors.rightMargin: 8
                            font.weight: Font.Bold
                            font.pointSize: fontSize * 5
                            anchors.topMargin: 33
                        }

                        Text {
                            id: spo2
                            x: 37
                            y: 10
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
                            x: 40
                            y: 8
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
                            x: 21
                            y: 8
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
                            x: 22
                            y: 3
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
                            Layout.fillHeight: true
                        }

                        Text {
                            id: t1Value
                            x: 139
                            color: "#07f702"
                            text: qsTr("36.5°C")
                            anchors.right: parent.right
                            anchors.top: parent.top
                            anchors.rightMargin: 8
                            anchors.topMargin: 8
                            font.weight: Font.Bold
                            font.pointSize: fontSize * 5/3
                            Layout.fillHeight: true
                        }

                        Text {
                            id: t2Range
                            y: 92
                            color: "#0a7908"
                            text: qsTr("30.0/42.0")
                            anchors.left: parent.left
                            anchors.bottom: parent.bottom
                            anchors.bottomMargin: 14
                            anchors.leftMargin: 8
                            font.pointSize: fontSize * 3/4
                            Layout.fillHeight: true
                        }

                        Text {
                            id: t2Value1
                            x: 139
                            y: 79
                            color: "#07f702"
                            text: qsTr("37.5°C")
                            anchors.right: parent.right
                            anchors.bottom: parent.bottom
                            anchors.rightMargin: 8
                            anchors.bottomMargin: 8
                            font.pointSize: fontSize * 5/3
                            font.weight: Font.Bold
                            Layout.fillHeight: true
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
                            x: 196
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
                            x: 112
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
                            x: 210
                            y: 99
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
                            x: 314
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
                            y: 43
                            color: "#000000"
                            text: qsTr("NEO")
                            anchors.left: parent.left
                            anchors.bottom: parent.bottom
                            anchors.leftMargin: 8
                            anchors.bottomMargin: 48
                            font.pointSize: fontSize * 3/4
                        }

                        Text {
                            id: nibpValue
                            x: 264
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
                            x: 318
                            y: 93
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
                            y: 62
                            color: "#000000"
                            text: qsTr("00:00")
                            anchors.left: parent.left
                            anchors.bottom: parent.bottom
                            anchors.leftMargin: 8
                            anchors.bottomMargin: 36
                            font.pointSize: fontSize * 2/3
                        }

                        Image {
                            id: repeat1
                            y: 80
                            anchors.left: parent.left
                            anchors.bottom: parent.bottom
                            source: "images/repeat 1.svg"
                            anchors.leftMargin: 8
                            anchors.bottomMargin: 22
                            fillMode: Image.PreserveAspectFit

                        }

                        Text {
                            id: text1
                            y: 81
                            text: qsTr("OFF")
                            anchors.left: parent.left
                            anchors.bottom: parent.bottom
                            anchors.bottomMargin: 22
                            anchors.leftMargin: 26
                            font.pointSize: fontSize * 2/3
                        }

                        Image {
                            id: clock1
                            y: 100
                            anchors.left: parent.left
                            anchors.bottom: parent.bottom
                            source: "images/clock 1.svg"
                            anchors.bottomMargin: 8
                            anchors.leftMargin: 8
                            fillMode: Image.PreserveAspectFit
                        }

                        Text {
                            id: neo2
                            y: 99
                            color: "#000000"
                            text: qsTr("00:00")
                            anchors.left: parent.left
                            anchors.bottom: parent.bottom
                            anchors.bottomMargin: 8
                            anchors.leftMargin: 26
                            font.pointSize: fontSize * 2/3
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
                            y: 64
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
                            x: 308
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
                            x: 308
                            y: 73
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
                            y: 73
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
                            x: 247
                            y: 64
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
                            x: 196
                            color: "#950000"
                            text: qsTr("80/200")
                            anchors.right: parent.right
                            anchors.top: parent.top
                            anchors.topMargin: 8
                            anchors.rightMargin: 8
                            font.pointSize: fontSize * 2/3
                        }

                        Text {
                            id: ibp2Value
                            x: 112
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
                            x: 210
                            y: 99
                            color: "#ff0000"
                            text: qsTr("(93)")
                            anchors.right: parent.right
                            anchors.bottom: parent.bottom
                            anchors.bottomMargin: 8
                            anchors.rightMargin: 8
                            font.pointSize: fontSize * 2/3
                        }
                    }
                }
            }
        }
    }
}
/*##^##
Designer {
    D{i:0;formeditorZoom:1.33}D{i:18}
}
##^##*/
