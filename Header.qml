import QtQuick 2.15
import QtQuick.Window 2.15
import QtGraphicalEffects 1.0
import QtQuick.Layouts 1.11

Rectangle {
    id: header
    width: 1900
    height: 100
    color: "#015793"


    property alias headerSpacing: rowHeader.spacing

    RowLayout {
        id: rowHeader
        width: implicitWidth
        height: implicitHeight
        anchors.verticalCenter: parent.verticalCenter
        spacing: 150
        anchors.horizontalCenter: parent.horizontalCenter
        Image {
            id: logo
            source: "images/logo.svg"
            fillMode: Image.PreserveAspectFit
        }

        Row {
            id: btnsSwitch
            width: 200
            height: 400
            spacing: 15
            Image {
                id: buttonprev
                x: 0
                y: 0
                source: "images/button-prev.svg"
                fillMode: Image.PreserveAspectFit
            }

            Image {
                id: buttonnext
                x: 0
                y: 0
                source: "images/button-next.svg"
                fillMode: Image.PreserveAspectFit
            }
        }

        Row {
            id: btnsScreens
            width: 200
            height: 400
            spacing: 10
            Image {
                id: button2active
                x: 0
                y: 0
                source: "images/button-2-active.svg"
                fillMode: Image.PreserveAspectFit
            }

            Image {
                id: button4
                x: 0
                y: 0
                source: "images/button-4.svg"
                fillMode: Image.PreserveAspectFit
            }

            Image {
                id: button8
                x: 0
                y: 0
                source: "images/button-8.svg"
                fillMode: Image.PreserveAspectFit
            }

            Image {
                id: button16
                x: 0
                y: 0
                source: "images/button-16.svg"
                fillMode: Image.PreserveAspectFit
            }

            Image {
                id: button32
                x: 0
                y: 0
                source: "images/button-32.svg"
                fillMode: Image.PreserveAspectFit
            }
        }

        Row {
            id: btnsMain
            width: 200
            height: 400
            spacing: 15
            Image {
                id: patientmanager
                x: 0
                y: 0
                source: "images/patient-manager.svg"
                fillMode: Image.PreserveAspectFit
            }

            Image {
                id: mainmenu
                x: 0
                y: 0
                source: "images/main-menu.svg"
                fillMode: Image.PreserveAspectFit
            }

            Image {
                id: settings
                x: 0
                y: 0
                width: implicitWidth
                height: implicitHeight
                source: "images/settings.svg"
                fillMode: Image.PreserveAspectFit
            }
        }
        Text {
            id: date
            text: "15:01\n23.03.2021"
            font.pixelSize: 16
            horizontalAlignment: Text.AlignHCenter
            color: Qt.rgba(1, 1, 1, 0.65)
        }
    }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.66}
}
##^##*/
