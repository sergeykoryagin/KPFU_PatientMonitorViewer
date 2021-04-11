import QtQuick 2.12
import QtGraphicalEffects 1.0
import QtQuick.Layouts 1.11

Rectangle {
    id: monitorMenu
    width: 1900
    height: 40
    color: "#ffffff"
    border.color: "#015793"

    Image {
        id: patientmonitoricon
        anchors.left: parent.left
        source: "images/patient-monitor-icon.svg"
        anchors.leftMargin: 10
        fillMode: Image.PreserveAspectFit
    }

    Row {
        id: btnsMonitorMenu
        anchors.right: parent.right
        layer.enabled: true
        anchors.verticalCenter: parent.verticalCenter
        anchors.rightMargin: 10
        spacing: 5

        Image {
            id: stoprecordbutton
            source: "images/stop-record-button.svg"
            fillMode: Image.PreserveAspectFit
        }

        Image {
            id: alarmbutton
            source: "images/alarm-button.svg"
            fillMode: Image.PreserveAspectFit
        }

        Image {
            id: admitinfobutton
            source: "images/admit-info-button.svg"
            fillMode: Image.PreserveAspectFit
        }

        Image {
            id: setupclientenv
            source: "images/setup-client-env.svg"
            fillMode: Image.PreserveAspectFit
        }

    }
    DropShadow {
        id: btnsMonitorMenuShadow
        source: btnsMonitorMenu
        anchors.fill: source
        horizontalOffset: 1
        verticalOffset: 1
        radius: 2
    }

    Text {
        id: patientName
        text: qsTr("B:01: TEST, SERGEY")
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: patientmonitoricon.right
        anchors.leftMargin: 6
        font.weight: Font.Normal
        font.pointSize: 12
    }

    Rectangle {
        id: alarmInfo
        width: warningText.implicitWidth + 20
        height: warningText.implicitHeight + 10

        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter


        color: "#ffffff"
        radius: 10
        border.color: "#ff0000"
        border.width: 2

        Text {
            id: warningText
            text: qsTr("IBP2: IBP imbalance")

            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter

            color: "#ff0000"

            font.pointSize: 12
        }
    }

    Text {
        id: recordingTime
        text: qsTr("00h:00m:15s")

        anchors.verticalCenter: parent.verticalCenter
        anchors.right: btnsMonitorMenu.left
        anchors.rightMargin: 10

        font.pointSize: 12
    }
}



/*##^##
Designer {
    D{i:0;formeditorZoom:6}
}
##^##*/
