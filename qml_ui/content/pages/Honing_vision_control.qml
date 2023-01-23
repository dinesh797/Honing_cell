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
    id: topbar
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

    }
    Rectangle{
    id: program_name
    width: parent.width*0.35
    height: parent.height
    color: "blue"

    }
    Rectangle{
    id: speed
    width: parent.width*0.2
    height: parent.height
    color: "violet"
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
                color: "red"
                font.pixelSize: 20
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
                text: qsTr("Speed")
                anchors.fill: parent
                color: "red"
                font.pixelSize: 20
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
        Honing_button{
            id:speed_reduce
            width: parent.width*0.85
            buttontext: "-"
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
        Honing_button{
            id: speed_increase
            width: parent.width*0.85
            buttontext: "+"
            height: parent.height*0.75
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
            stepcolor: "#647886"
            radiuso: 10
        }
    }
    }



    }
    Rectangle{
    id: status
    width: parent.width*0.2
    height: parent.height
    color: "yellow"
    Item {
        width: parent.width
        height: parent.height*0.5
        Text {
            id: status_text_
            text: qsTr("Status")
            anchors.fill: parent
            color: "red"
            font.pixelSize: 20
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
            fontSizeMode: Text.Fit
            minimumPixelSize: 2
        }
    }
    Row {
        id: item1
        width: parent.width
        height: parent.height*0.5
        spacing: 10
        anchors.bottom: parent.bottom
        Rectangle {
            id: simlation_rect
            width: parent.width*0.5
            height: parent.height*0.5
            color: speed_simulation_color
            radius: 10
            anchors.verticalCenter: parent.verticalCenter
//            anchors.top: speed_item.bottom
            Text {
                text: qsTr("Simulation")
                anchors.fill: parent

                color: "white"
                font.pixelSize: 20
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                fontSizeMode: Text.Fit
                minimumPixelSize: 2
            }
        }

        Rectangle {
            width: parent.width*0.3
            height: parent.height*0.5
            color: ready_simulation_color
            radius: 10
            anchors.verticalCenter: parent.verticalCenter
//            anchors.left: simlation_rect.left
            anchors.leftMargin: 192
            Text {
                text: qsTr("Ready")
                anchors.fill: parent
                color: "white"
                font.pixelSize: 20
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                fontSizeMode: Text.Fit
                minimumPixelSize: 2
            }
        }

    }
    }
    Rectangle{
    id: control
    width: parent.width*0.15
    height: parent.height
    color: "black"
    Item {
        width: parent.width
        height: parent.height
        Honing_button{
            id: control_button
            width: parent.width*0.80
            buttontext: "Control"
            height: parent.height*0.90
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
            stepcolor: "#647886"
            radiuso: 10
        }
    }

    }
    Rectangle{
    id: setting
    width: parent.width*0.05
    height: parent.height
    color: "#fffffe"
    Item {
        width: parent.width
        height: parent.height
        Honing_button{
            id: setting_button
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
    Rectangle{
    id: bottombar
    width: parent.width
    height: parent.height*0.9
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

                text: qsTr("Vision Inspection")
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
        id: vision_play_rect
        width: parent.width*0.10
        height: parent.height
        anchors.right: vision_toggle.left
        color: "black"
        Item {
            width: parent.width
            height: parent.height
            Honing_button{
                id: vision_play_btn
                width: parent.width*0.80
                buttontext: "Control"
                height: parent.height*0.90
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
                stepcolor: "#647886"
                radiuso: 10
            }
        }

        }

        Rectangle{
        id: vision_toggle
        width: parent.width*0.20
        height: parent.height
        anchors.right: vision_menu.left
        color: "black"
        Item {
            width: parent.width
            height: parent.height
            Honing_button{
                id: control_button2
                width: parent.width*0.80
                buttontext: "Control"
                height: parent.height*0.90
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
                stepcolor: "#647886"
                radiuso: 10
            }
        }

        }

        Rectangle{
        id:  vision_menu
        width: parent.width*0.05
        height: parent.height
        anchors.right: parent.right
        color: "#fffffe"
        Item {
            width: parent.width
            height: parent.height
            Honing_button{
                id: vision_menu_button
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
