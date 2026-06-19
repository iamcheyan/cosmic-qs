import qs.modules.common
import qs.modules.common.widgets
import QtQuick

MouseArea {
    id: root

    property alias text: label.text
    signal triggered()

    property int leadingPadding: 0
    property int trailingPadding: 2
    readonly property int buttonHeight: 28

    implicitWidth: label.implicitWidth + leadingPadding + trailingPadding
    implicitHeight: buttonHeight
    hoverEnabled: true
    cursorShape: Qt.PointingHandCursor

    onClicked: root.triggered()

    Rectangle {
        anchors.fill: parent
        anchors.margins: 2
        radius: 5
        color: root.containsMouse ? "#1cffffff" : "transparent"

        Behavior on color {
            ColorAnimation {
                duration: 120
            }
        }
    }

    StyledText {
        id: label
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: parent.left
        anchors.leftMargin: root.leadingPadding
        font.pixelSize: 12
        font.variableAxes: ({
            "wght": 500,
            "wdth": 100,
        })
        color: Appearance.m3colors.m3onSurface
    }
}