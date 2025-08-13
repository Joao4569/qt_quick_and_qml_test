import QtQuick

Window {
  width: 640
  height: 480
  visible: true
  title: qsTr("Hello World")

  Rectangle {
    id: page
    anchors.fill: parent
    color: "#e82727"
  }
}
