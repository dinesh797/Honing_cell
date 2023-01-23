import QtQuick 2.15
import QtQuick.Controls 2.15
import "../components"

Rectangle {
    property color ready_simulation_color: "#19b97d"
        property color speed_simulation_color: "orange"
            width: 1920
            height: 1080
            color: "#e1e1df"
            border.color: "#ffffff"
            gradient: Gradient {
                GradientStop { position: 0.02; color: "#e1e1df" }
                GradientStop { position: 0.10; color: "#ebebea" }
                GradientStop { position: 1.3; color: "#cececd" }
            }
            Column{
                anchors.fill: parent

                Rectangle{
                    id: bottombar
                    width: parent.width
                    height: parent.height*0.8
                    gradient: Gradient {
                        GradientStop { position: 0.02; color: "#e1e1df" }
                        GradientStop { position: 0.10; color: "#ebebea" }
                        GradientStop { position: 1.3; color: "#cececd" }
                    }
                    Item {
                        id:program_topbar
                        width: parent.width
                        height: parent.height*0.1
                        Item {
                            id: prog_text
                            width: parent.width*0.3
                            height: parent.height
                            Text {
                                id: pass_text

                                text: qsTr("Programs")
                                anchors.fill: parent
                                color: "red"
                                font.pixelSize: 20
                                horizontalAlignment: Text.AlignLeft
                                verticalAlignment: Text.AlignVCenter
                                fontSizeMode: Text.Fit
                                minimumPixelSize: 2
                            }
                        }
                        Rectangle{
                            id: download
                            width: parent.width*0.05
                            height: parent.height
                            anchors.right: parent.right
                            color: "#fffffe"
                            Item {
                                width: parent.width
                                height: parent.height
                                Honing_button{
                                id: download_button
                                width: parent.width*0.80
                                height: parent.height*0.90
                                anchors.verticalCenter: parent.verticalCenter
                                anchors.horizontalCenter: parent.horizontalCenter
                                stepcolor: "#647886"
                                radiuso: 10
                            }
                        }

                    }

                }

            }
        }
    }

    /*##^##
    Designer {
        D{i:0;formeditorZoom:0.25}
    }
    ##^##*/
