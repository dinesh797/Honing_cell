import QtQuick 6.2

import QtQuick.Controls 6.2
// import Flexible_robot
import QtQuick 2.15
import QtQuick
import QtQuick.Controls 2.15
import QtQuick.Window
import "./components"
import "./pages"
import "./theme"
import QtQuick.Layouts

Window {
    id: app
    property int numberr
    property var lss
    flags: Qt.Window | Qt.FramelessWindowHint
    visible: true
    property color status_color
    property Window appWindow: app
        x: Screen.width / 2 - width / 2
        y: Screen.height / 2 - height / 2
        width: 1000 / 1.050
        height: 600 / 1.050
        property int windowStatus: 0
            property int windowMargin: 10
                property int mainScreen2Radius: 2
                    color: Style.colorshallow
                    property int number
                    property url source: ""
                        Rectangle {
                            id: hh
                            anchors.fill: parent
                            visible: false
                            color: "red"

                            Text {
                                id: name
                                text: qsTr("text")
                                anchors.verticalCenter: parent.verticalCenter
                                anchors.horizontalCenter: parent.horizontalCenter
                                color: Style.tertiary
                                font.pixelSize: Style.font15 ? Style.font15 : 15
                                verticalAlignment: Text.AlignVCenter
                                fontSizeMode: Text.Fit
                                minimumPixelSize: 2
                            }
                        }

                        function changeView(source)
                        {
                            programsPagestack.push(Qt.resolvedUrl(source))
                        }

                        QtObject {
                            id: internal
                            function maximizeRestore()
                            {
                                if (windowStatus == 0)
                                {
                                    app.showMaximized()
                                    windowStatus = 1
                                    windowMargin = 0
                                    mainScreen2.radius = 0
                                    mainScreen2.border.width = 0
                                    btnMaximizeRestore.buttonIcon = "../images/restore_icon.svg"
                                } else {
                                app.showNormal()
                                windowStatus = 0
                                windowMargin = 10
                                mainScreen2.border.width = 3
                                btnMaximizeRestore.buttonIcon = "../images/maximize_icon.svg"
                            }
                        }

                        function ifMaximizedWindowRestore()
                        {
                            if (windowStatus == 1)
                            {
                                app.showNormal()
                                windowStatus = 0
                                windowMargin = 10
                                internal.resetResizeBorders()
                                mainScreen2.border.width = 3
                                btnMaximizeRestore.buttonIcon = "../images/maximize_icon.svg"
                            }
                        }
                    }

                    Rectangle {
                        id: mainScreen2
                        anchors.fill: parent
                        gradient: Gradient {
                            GradientStop { position: 0; color: "#b3b2b1" }
                            GradientStop { position: 0.09; color: "#ebebea" }
                        }
                        //                            property alias home_button: home_button
                        // color: "#fffffe"//Style.hoverprimary
                        border.color: Style.secondary

                        ButtonGroup {
                            id: group
                        }

                        Column {
                            id: column
                            anchors.fill: parent

                            Rectangle {
                                id: topbar
                                color: "grey"//Style.top_barcolor
                                width: parent.width
                                height: parent.height * 0.05
                                Text {
                                    id: text255
                                    color: Style.tertiary
                                    anchors.left: parent.left
                                    height: parent.height
                                    width: parent.width * 0.2
                                    text: qsTr("HONING CELL")
                                    font.pixelSize: 12
                                    verticalAlignment: Text.AlignVCenter
                                    leftPadding: 5
                                    fontSizeMode: Text.Fit
                                    minimumPixelSize: 2
                                }

                                Row {
                                    id: row3
                                    width: parent.width * 0.28
                                    height: parent.height
                                    anchors.right: parent.right
                                    layoutDirection: Qt.RightToLeft
                                    anchors.rightMargin: 0
                                    TopBarButton {
                                        id: btnClose
                                        visible: true
                                        anchors.verticalCenter: parent.verticalCenter
                                        btnColorDefault: Style.closebtnColor
                                        height: parent.height * 0.90
                                        width: parent.width * 0.12
                                        btnColorClicked: "#55aaff"
                                        btnColorMouseOver: "#ff007f"
                                        buttonIcon: "../images/close_icon_2.svg"
                                        // contentItem: Text {
                                        //     text: "\u2327"
                                        //     font.pixelSize: 21
                                        //     anchors.fill: parent
                                        //     color: Style.menuIcon
                                        //     horizontalAlignment: Text.AlignHCenter
                                        //     verticalAlignment: Text.AlignBottom
                                        //     font.family: Style.fonticon.name
                                        // }
                                        onClicked: {
                                            app.close()
                                            Qt.quit()
                                        }
                                    }
                                    TopBarButton {
                                        id: btnMaximizeRestore
                                        visible: true
                                        height: parent.height * 0.90
                                        anchors.verticalCenter: parent.verticalCenter
                                        width: parent.width * 0.12
                                        btnColorDefault: "#5a5a5a"//Style.expndbtnColor
                                        btnColorMouseOver: "#40405f"
                                        btnColorClicked: "#55aaff"
                                        buttonIcon: "../images/maximize_icon.svg"
                                        onClicked: internal.maximizeRestore()
                                    }
                                    TopBarButton {
                                        id: btnMinimize
                                        visible: true
                                        height: parent.height * 0.90
                                        anchors.verticalCenter: parent.verticalCenter
                                        width: parent.width * 0.12
                                        btnColorDefault: "#5a5a5a"//Style.minibtnColor
                                        btnColorMouseOver: "#40405f"
                                        btnColorClicked: "#55aaff"
                                        buttonIcon: "../images/minimize_icon.svg"

                                        onClicked: {
                                            app.showMinimized()
                                        }
                                    }
                                }

                                Item {
                                    id: item1
                                    width: parent.width - row3.width
                                    height: parent.height
                                    MouseArea {

                                        anchors.fill: parent
                                        property point lastMousePos: Qt.point(0, 0)
                                        onPressed: {
                                            lastMousePos = Qt.point(mouseX, mouseY)
                                        }
                                        onMouseXChanged: app.x += (mouseX - lastMousePos.x)
                                        onMouseYChanged: app.y += (mouseY - lastMousePos.y)
                                    }
                                }
                            }

                            Item {
                                id: mainScreen
                                width: parent.width
                                height: parent.height

                                Column{
                                    anchors.fill: parent
                                    Rectangle{
                                        id: topbar_o
                                        width: parent.width
                                        height: parent.height*0.1
                                        color: "#fffffe"
                                        Row{
                                            anchors.fill: parent
                                            Rectangle{
                                                id: icon
                                                width: parent.width*0.05
                                                height: parent.height
                                                color: "#ebebea"
                                                Image {
                                                    id: rhythmsoft_logo
                                                    smooth: true
                                                    anchors.rightMargin: 10
                                                    anchors.leftMargin: 10
                                                    anchors.bottomMargin: 10
                                                    anchors.topMargin: 10
                                                    anchors.fill: parent
                                                    source: "images/logo.png"
                                                    mipmap: true // gives smooth image despite smooth true
                                                    fillMode: Image.PreserveAspectCrop

                                                }

                                            }
                                            Item{
                                                id: program_name
                                                width: parent.width*0.35
                                                height: parent.height
                                                Rectangle {
                                                    width: parent.width*0.98
                                                    height: parent.height* 0.90
                                                    anchors.verticalCenter: parent.verticalCenter
                                                    anchors.horizontalCenter: parent.horizontalCenter
                                                    color: "transparent"
                                                    border.width: 1
                                                    border.color: "grey"
                                                }

                                            }
                                            Rectangle{
                                                id: speed
                                                width: parent.width*0.2
                                                height: parent.height
                                                color: "transparent"
                                                Row{
                                                    anchors.fill: parent
                                                    Item {

                                                        width: parent.width*0.3
                                                        height: parent.height
                                                        Item {
                                                            id:speed_item
                                                            width: parent.width
                                                            height: parent.height*0.5
                                                            Text {
                                                                id: speed_text_
                                                                text: qsTr("Speed")
                                                                anchors.fill: parent
                                                                color: "grey"//"#c5c5c7"
                                                                font.pixelSize: 15
                                                                horizontalAlignment: Text.AlignLeft
                                                                verticalAlignment: Text.AlignVCenter
                                                                fontSizeMode: Text.Fit
                                                                minimumPixelSize: 2
                                                            }
                                                        }
                                                        Item {
                                                            width: parent.width
                                                            height: parent.height*0.5
                                                            anchors.top: speed_item.bottom
                                                            Text {
                                                                text: qsTr("100%")
                                                                anchors.fill: parent
                                                                color: "grey"//"#c5c5c7"
                                                                font.pixelSize: 15
                                                                horizontalAlignment: Text.AlignLeft
                                                                verticalAlignment: Text.AlignVCenter
                                                                fontSizeMode: Text.Fit
                                                                minimumPixelSize: 2
                                                            }
                                                        }
                                                    }
                                                    Item {
                                                        width: parent.width*0.3
                                                        height: parent.height
                                                        Honing_Button_Logo{
                                                        id:speed_reduce
                                                        width: parent.width*0.85
                                                        icon_text: true
                                                        button_icon: "\u002b"
                                                        height: parent.height*0.75
                                                        anchors.verticalCenter: parent.verticalCenter
                                                        anchors.horizontalCenter: parent.horizontalCenter
                                                        stepcolor: "#647886"
                                                        radiuso: 10
                                                    }
                                                }
                                                Item {
                                                    width: parent.width*0.3
                                                    height: parent.height
                                                    Honing_Button_Logo{
                                                    id: speed_increase
                                                    width: parent.width*0.85
                                                    icon_text: true
                                                    button_icon: "\u0123"
                                                    height: parent.height*0.75
                                                    anchors.verticalCenter: parent.verticalCenter
                                                    anchors.horizontalCenter: parent.horizontalCenter
                                                    stepcolor: "#647886"
                                                    radiuso: 10
                                                }
                                            }
                                        }



                                    }
                                    Item{
                                        width: parent.width*0.001
                                        height: parent.height
                                        Rectangle{
                                            width: parent.width
                                            height: parent.height *0.90
                                            anchors.verticalCenter: parent.verticalCenter
                                            anchors.horizontalCenter: parent.horizontalCenter
                                            color: "grey"
                                        }
                                    }
                                    Rectangle{
                                        id: status
                                        width: parent.width*0.18
                                        height: parent.height
                                        color: "transparent"
                                        Item {
                                            width: parent.width*0.90
                                            height: parent.height*0.90
                                            anchors.verticalCenter: parent.verticalCenter
                                            anchors.horizontalCenter: parent.horizontalCenter
                                            Item {
                                                width: parent.width
                                                height: parent.height*0.5
                                                Text {
                                                    id: status_text_
                                                    text: qsTr("Status")
                                                    anchors.fill: parent
                                                    color: "grey"//"#c5c5c7"
                                                    font.pixelSize: 15
                                                    horizontalAlignment: Text.AlignLeft
                                                    verticalAlignment: Text.AlignVCenter
                                                    fontSizeMode: Text.Fit
                                                    minimumPixelSize: 2
                                                }
                                            }
                                            Row {
                                                id: item11
                                                width: parent.width
                                                height: parent.height*0.5
                                                spacing: 10
                                                anchors.bottom: parent.bottom
                                                Rectangle {
                                                    id: simlation_rect
                                                    width: parent.width*0.5
                                                    height: parent.height*0.6
                                                    color: "orange"//speed_simulation_color
                                                    radius: 4
                                                    anchors.verticalCenter: parent.verticalCenter
                                                    //            anchors.top: speed_item.bottom
                                                    Text {
                                                        text: qsTr("Simulation")
                                                        width: parent.width*0.80
                                                        height: parent.height*0.80
                                                        anchors.verticalCenter: parent.verticalCenter
                                                        anchors.horizontalCenter: parent.horizontalCenter
                                                        color: "white"
                                                        font.pixelSize: 15
                                                        horizontalAlignment: Text.AlignHCenter
                                                        verticalAlignment: Text.AlignVCenter
                                                        fontSizeMode: Text.Fit
                                                        minimumPixelSize: 2
                                                    }
                                                }

                                                Rectangle {
                                                    width: parent.width*0.3
                                                    height: parent.height*0.6
                                                    color: "green"//ready_simulation_color
                                                    radius: 4
                                                    anchors.verticalCenter: parent.verticalCenter
                                                    //            anchors.left: simlation_rect.left
                                                    anchors.leftMargin: 192
                                                    Text {
                                                        text: qsTr("Ready")
                                                        width: parent.width*0.80
                                                        height: parent.height*0.80
                                                        anchors.verticalCenter: parent.verticalCenter
                                                        anchors.horizontalCenter: parent.horizontalCenter
                                                        color: "white"
                                                        font.pixelSize: 15
                                                        horizontalAlignment: Text.AlignHCenter
                                                        verticalAlignment: Text.AlignVCenter
                                                        fontSizeMode: Text.Fit
                                                        minimumPixelSize: 2
                                                    }
                                                }

                                            }

                                        }
                                    }
                                    Item{
                                        width: parent.width*0.0011
                                        height: parent.height
                                        Rectangle{
                                            width: parent.width
                                            height: parent.height *0.90
                                            anchors.verticalCenter: parent.verticalCenter
                                            anchors.horizontalCenter: parent.horizontalCenter
                                            color: "grey"
                                        }
                                    }

                                    Rectangle{
                                        id: control
                                        width: parent.width*0.15
                                        height: parent.height
                                        color: "transparent"
                                        Item {
                                            width: parent.width
                                            height: parent.height
                                            Honing_Button_duo{
                                            id: control_button
                                            width: parent.width*0.80
                                            buttonText: "Control"

                                            // icon_text : true
                                            // text2.horizontalAlignment: Text.AlignLeft
                                            // text2.leftPadding: 10
                                            // text_text: true
                                            // icon_text: true
                                            buttonIcon: "\ue911"
                                            height: parent.height*0.75
                                            anchors.verticalCenter: parent.verticalCenter
                                            anchors.horizontalCenter: parent.horizontalCenter
                                            stepcolor: "#647886"
                                            radiuso: 10
                                        }
                                    }

                                }

                                Rectangle{
                                    id: setting
                                    width: parent.width*0.07
                                    height: parent.height
                                    color: "#fffffe"
                                    Item {
                                        width: parent.width
                                        height: parent.height
                                        Honing_Button_Logo{
                                        id: setting_button
                                        button_icon:"\u0058"
                                        icon_text: true
                                        font.family: Style.fonticon.name
                                        width: parent.width*0.80
                                        height: parent.height *0.75
                                        anchors.verticalCenter: parent.verticalCenter
                                        anchors.horizontalCenter: parent.horizontalCenter
                                        stepcolor: "#647886"
                                        radiuso: 10
                                    }
                                }

                            }

                        }
                    }
                    StackLayout{
                        width: parent.width
                        height: parent.height*0.9
                        currentIndex: 1
                        StackView {
                            id: homePagestack
                            initialItem: "./pages/Honing_home.qml"
                        }
                        StackView {
                            id: programsPagestack
                            initialItem: "./pages/Honing_programs.qml"
                        }
                    }

                }


            }
        }
    }
}
