import QtQuick
import QtQuick.Controls
import QtQuick.Controls 2.3
import "../components"
import "../pages"
import "../theme"
import QtQuick.Layouts 6.0

Button {
    width: 700
    height: 200
    id: customButton
    property string buttonIcon
    property string lefttext
    property string righttext
    property string icontext
    property int iconleftmargin : 0
//    checked: false
//    checkable: false
    onClicked: {
     widthAnimation.start()
    }
    property int iconmarginleft: 0
        property int textpadding: 0
            background: Rectangle {
                anchors.fill: customButton
                radius: 2
                border.width: 2
                border.color: "#b1b3b3"
                color: "#f9f8f7"//parent.checked ? Style.top_barcolor : (parent.hovered ? Style.top_barcolor : Style.primary)
            }
            Rectangle {
                id: status_line
//                visible: customButton.checked? true : false
                height: parent.height * 0.05
                width: 0
                color: "#9fc44a"
                anchors.bottom: parent.bottom
                PropertyAnimation {
                    id: widthAnimation
                    target: status_line
                    property: "width"
                    from: 0
                    to: parent.width
                    duration: 1000
                }
//                gradient: Gradient {
//                    orientation: Gradient.Horizontal
//                    GradientStop {
//                        position: 0.005
//                        color: "transparent"
//                    }
//                    GradientStop {
//                        position: 0.19
//                        color: "#0fd77b"
//                    }
//                    GradientStop {
//                        position: 0.53
//                        color: "#0d99a9"
//                    }
//                    GradientStop {
//                        position: 0.83
//                        color: "#f879b4b9"
//                    }
//                    GradientStop {
//                        position: 0.99
//                        color: "transparent"
//                    }
//                }
            }
            Item {
                id: contenthold
                width: parent.width * 0.92
                height: parent.height * 0.80
                anchors.left: parent.left
                anchors.leftMargin: iconleftmargin
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
                Item {
                    id: name
                    height: parent.height  *0.5// 5
                    anchors.verticalCenter: parent.verticalCenter
                    width: parent.width * 0.6
                    anchors.left: custom_icon_left.right

                    Text {
                        id: text_in
                        text: qsTr(lefttext)
                        anchors.fill: parent
                        leftPadding: textpadding
                        color:  Style.textColBlack
                        font.pixelSize: Style.font20 ? Style.font20 : 20
                        verticalAlignment: Text.AlignVCenter
                        fontSizeMode: Text.Fit
                        minimumPixelSize: 2
                    }
                }

                Text {
                    id: custom_icon_left
                    text: qsTr(icontext)
                    font.family: Style.fonticon.name
                    color: Style.textColBlack
                    width: parent.width * 0.2
                    height: parent.height * 0.70
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.left: parent.left
                    font.pixelSize: Style.font20 ? Style.font20 : 20
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    fontSizeMode: Text.Fit
                    minimumPixelSize: 2
                }

                Text {
                    id: custom_icon_right
                    text: qsTr(righttext)
                    font.family: Style.fonticon.name
                    color: Style.textColBlack
                    width: parent.width * 0.2
                    height: parent.height //* 0.70
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.left:name.right
                    font.pixelSize: Style.font20 ? Style.font20 : 20
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    fontSizeMode: Text.Fit
                    minimumPixelSize: 2
                }
            }
        }
