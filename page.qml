import QtQuick

Rectangle {
  id: page
  anchors.fill: parent
  color: "#55f349"

  Image {
    id: icon
    x: 20
    y: 20
    source: "bahadir-sahinoglu-K2RdHxBZsz0-unsplash.jpg"
  }

  Rectangle {
    id: topLeftRec
    width: 55
    height: 41
    color: "#0f7cf9"
    border.color: "#c10ef3"

    anchors.left: parent.left
    anchors.top: parent.top

    anchors.leftMargin: 20
    anchors.topMargin: 20
  }

  Rectangle {
    id: botLeftRec
    width: 55
    height: 41
    color: "#fbec1e"
    border.color: "#f15b10"

    anchors.left: parent.left
    anchors.bottom: parent.top

    anchors.leftMargin: 20
    anchors.bottomMargin: 20
  }

  Rectangle {
    id: centreRightRec
    width: 55
    height: 41
    color: "#fbec1e"
    border.color: "#f15b10"

    anchors.right: parent.right
    anchors.verticalCenter: parent.verticalCenter

    anchors.rightMargin: 20
    anchors.bottomMargin: 20
  }

  MouseArea {
    id: mouseArea
    anchors.fill: parent
  }
}
