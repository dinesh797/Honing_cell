import QtQuick
import QtQuick.Controls
import QtQuick.Controls 2.3
import "../components"
import "../pages"
import "../theme"
import QtQuick.Layouts 6.0

Button {
    id: customButton

    property int radiuso: 5

        // property int radiuso: 5
        property int radiusi : 5
            property color stepcolor: "white"
                // property int radiusi : 5
                property string buttonIcon
                property alias custom_icon: custom_icon

                    property alias text_left:text_left

                        property alias text_in:text_in

                            property alias name: name


                                property int textpadding : textpadding

                                    property color inerbord: "#8204e4"
                                        property color hovercol: "#4286fb"
                                            property color clickcol: "#1277ee"
                                                property string buttonText
                                                property int iconleftmargin : 0
                                                    checked: false
                                                    checkable: true


                                                    Item {
                                                        id: contenthold
                                                        width: parent.width * 0.92
                                                        height: parent.height * 0.90
                                                        anchors.verticalCenter: parent.verticalCenter
                                                        anchors.horizontalCenter: parent.horizontalCenter
                                                        Item {
                                                            id:text_left
                                                            anchors.left: parent.left
                                                            width: parent.width * 0.25
                                                            height: parent.height //* 0.70
                                                            anchors.verticalCenter: parent.verticalCenter

                                                            Text {
                                                                id: custom_icon
                                                                text: buttonIcon
                                                                font.family: Style.fonticon.name
                                                                color: Style.tertiary
                                                                width: parent.width
                                                                height: parent.height
                                                                topPadding: 2
                                                                horizontalAlignment: Text.AlignRight
                                                                font.pixelSize: Style.font20 ? Style.font20 : 20
                                                                // horizontalAlignment: Text.AlignHCenter
                                                                verticalAlignment: Text.AlignVCenter
                                                                fontSizeMode: Text.Fit
                                                                minimumPixelSize: 2
                                                            }

                                                        }

                                                        Item {
                                                            id: name
                                                            height: parent.height *0.70
                                                            anchors.verticalCenter: parent.verticalCenter
                                                            width: parent.width * 0.80
                                                            anchors.left: text_left.right

                                                            Text {
                                                                id: text_in
                                                                text: qsTr(buttonText)
                                                                anchors.fill: parent
                                                                color: Style.tertiary
                                                                anchors.verticalCenter: parent.verticalCenter
                                                                anchors.horizontalCenter: parent.horizontalCenter
                                                                font.pixelSize: Style.font20 ? Style.font20 : 20
                                                                verticalAlignment: Text.AlignVCenter
                                                                anchors.verticalCenterOffset: 0
                                                                anchors.horizontalCenterOffset: 0
                                                                anchors.rightMargin: 0
                                                                anchors.bottomMargin: 0
                                                                anchors.leftMargin: 0
                                                                anchors.topMargin: 0
                                                                fontSizeMode: Text.Fit
                                                                minimumPixelSize: 2
                                                            }
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
                                                        if (customButton.pressed)
                                                        {
                                                            iner.visible = true
                                                        } else {
                                                        iner.visible = false
                                                    }
                                                }

                                                onHoveredChanged: {
                                                    if (customButton.hovered)
                                                    {

                                                        outer.color = hovercol
                                                    } else {
                                                    outer.color = stepcolor
                                                }
                                            }
                                        }
