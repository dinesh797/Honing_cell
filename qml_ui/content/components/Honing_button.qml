import QtQuick
import QtQuick.Controls
import QtQuick.Controls 2.3
import "../components"
import "../pages"
import "../theme"
import QtQuick.Layouts 6.0
Button {
    id: addstep
    property string buttontext
    property color hovercol: "#4286fb"
        property color stepcolor
        // property alias text1 : text1
        // property alias text2 : text2
        property color inerbord: "#8204e4"
            property int radiuso: 5
                property int radiusi : 5
                    width: parent.width * 0.5
                    height: parent.height * 0.5
                    property string button_text
                    property string button_icon
                    property bool icon_text : false
                        property bool text_text : false
                            property color stepcolortext: "#ffffff"
                                property color clickcol: "#1277ee"
                                    property bool downarrow

                                    Item {
                                        id: contenthold
                                        width: parent.width * 0.92
                                        height: parent.height * 0.90
                                        anchors.left: parent.left
                                        // anchors.leftMargin: iconleftmargin
                                        anchors.verticalCenter: parent.verticalCenter
                                        anchors.horizontalCenter: parent.horizontalCenter
                                        Text {
                                            id: text_in
                                            text: qsTr(buttontext)
                                            width: parent.width * 0.92
                                            height: parent.height * 0.90
                                            // leftPadding: textpadding
                                            color: Style.tertiary
                                            anchors.verticalCenter: parent.verticalCenter
                                            anchors.horizontalCenter: parent.horizontalCenter
                                            font.pixelSize: Style.font16 ? Style.font16 : 16
                                            horizontalAlignment: Text.AlignHCenter
                                            verticalAlignment: Text.AlignVCenter
                                            fontSizeMode: Text.Fit
                                            minimumPixelSize: 2
                                        }

                                    }

                                    background: Rectangle {
                                        id: outer
                                        anchors.fill: parent
                                        color: stepcolor
                                        radius: radiuso

                                        Rectangle {
                                            id: iner
                                            anchors.fill: parent
                                            border.color: inerbord
                                            border.width: 2
                                            color: clickcol
                                            visible: false
                                            radius: radiusi
                                        }
                                    }

                                    onPressedChanged: {
                                        if (addstep.pressed)
                                        {
                                            iner.visible = true
                                        } else {
                                        iner.visible = false
                                    }
                                }

                                onHoveredChanged: {
                                    if (addstep.hovered)
                                    {

                                        outer.color = hovercol
                                    } else {
                                    outer.color = stepcolor
                                }
                            }
                        }
