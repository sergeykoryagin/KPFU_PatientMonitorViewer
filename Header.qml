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
        anchors.verticalCenter: parent.verticalCenter
        spacing: 150
        anchors.horizontalCenter: parent.horizontalCenter
        Image {
            id: logo
            source: "images/logo.svg"
            fillMode: Image.PreserveAspectFit
        }

        Rectangle {
            id: btnsSwitch

            color: "transparent"
            Layout.preferredWidth: btnsSwitchRow.width
            Layout.preferredHeight: btnsSwitchRow.height
            Row {
                id: btnsSwitchRow
                spacing: 15
                Image {
                    id: buttonprev
                    source: "images/button-prev.svg"
                    fillMode: Image.PreserveAspectFit
                }

                Image {
                    id: buttonnext
                    source: "images/button-next.svg"
                    fillMode: Image.PreserveAspectFit
                }
            }
            DropShadow {
                id: shadowBtnsSwitch
                source: btnsSwitchRow
                anchors.fill: source
                horizontalOffset: 3
                verticalOffset: 3
                radius: 3
                color: Qt.rgba(0,0,0, 0.6)
            }

        }



        Rectangle {
            id: btnsScreens
            Layout.preferredWidth: btnsScreensRow.width
            Layout.preferredHeight: btnsScreensRow.height
            color: "transparent"
            Row {
                id: btnsScreensRow
                spacing: 10
                Image {
                    id: button2active
                    source: "images/button-2-active.svg"
                    fillMode: Image.PreserveAspectFit
                }

                Image {
                    id: button4
                    source: "images/button-4.svg"
                    fillMode: Image.PreserveAspectFit
                }

                Image {
                    id: button8
                    source: "images/button-8.svg"
                    fillMode: Image.PreserveAspectFit
                }

                Image {
                    id: button16
                    source: "images/button-16.svg"
                    fillMode: Image.PreserveAspectFit
                }

                Image {
                    id: button32
                    source: "images/button-32.svg"
                    fillMode: Image.PreserveAspectFit
                }
                Component.onCompleted: {
                    console.log(width)
                }
            }

            DropShadow {
                id: shadowBtnsScreen
                source: btnsScreensRow
                anchors.fill: source
                horizontalOffset: 3
                verticalOffset: 3
                radius: 3
                color: Qt.rgba(0,0,0, 0.6)
            }
        }

        Rectangle {
            id: btnsMain
            Layout.preferredWidth: btnsMainRow.width
            Layout.preferredHeight: btnsMainRow.height
            color: "transparent"
            Row {
                id: btnsMainRow
                spacing: 15
                Image {
                    id: patientmanager
                    source: "images/patient-manager.svg"
                    fillMode: Image.PreserveAspectFit
                }

                Image {
                    id: mainmenu
                    source: "images/main-menu.svg"
                    fillMode: Image.PreserveAspectFit
                }

                Image {
                    id: settings
                    source: "images/settings.svg"
                    fillMode: Image.PreserveAspectFit
                }
            }

            DropShadow {
                id: shadowBtnsMain
                source: btnsMainRow
                anchors.fill: source
                horizontalOffset: 3
                verticalOffset: 3
                radius: 3
                color: Qt.rgba(0,0,0, 0.6)
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
    D{i:0;formeditorZoom:1.25}
}
##^##*/
