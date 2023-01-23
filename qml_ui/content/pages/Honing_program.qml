import QtQuick 2.15
import QtQuick.Controls 2.15
import "../components"
import "../theme"

Rectangle {
    // width: 700
    // height: 800
    //  anchors.fill: parent
    Row{
        spacing: 50
    anchors.fill: parent
    Rectangle {
        id: threeD_view_content
        width: parent.width*0.48
        color: "white"
        border.color: "red"
        border.width: 2
        height: parent.height
    }
    Rectangle {
        id: program_edit_view_content
        width: parent.width*0.48
        color: "yellow"
        height: parent.height
        Item {
            width: parent.width
            height: parent.height*0.1
                Text {
                    id: pass_text
                    text: qsTr("Program")
                    anchors.fill: parent
                    color: "#8f9499"
                    font.pixelSize: Style.font20 ? Style.font20 : 20
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignVCenter
                    fontSizeMode: Text.Fit
                    minimumPixelSize: 2
                }
        }
        Item {
            id: item1
            width: parent.width
            height: parent.height*0.9
            anchors.bottom: parent.bottom
            Item {
                width: parent.width*0.90
                height: parent.height*0.95
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
                Column{
                    spacing: 5
                anchors.fill: parent

                Honing_prog_button{
                    id: moveto_btn
                width: parent.width
                righttext: "Linear"
                lefttext: "Move to"
                height: parent.height*0.12
//                color: "red"
                }
                Honing_prog_button{
                id: toolcmd_btn
                width: parent.width
                righttext: "Close"
                lefttext: "Tool command"
                height: parent.height*0.12
//                color: "#55ff7f"
                }
                Honing_prog_button{
                id: moveto2_btn
                width: parent.width
                lefttext: "Move to"
                righttext: "Linear"
                height: parent.height*0.12
//                color: "#00aaff"
                }
                Honing_prog_button{
                id: moveto3_btn
                width: parent.width
                lefttext: "Move to"
                righttext: "Point to point"
                height: parent.height*0.12
//                color: "#aa557f"
                }
                Honing_prog_button{
                id: moveto4_btn
                righttext: "Linear"
                lefttext: "Move to"
                width: parent.width
                height: parent.height*0.12
//                color: "#0000ff"
                }
                Honing_prog_button{
                id: toolcmd2_btn
                righttext: "Open"
                lefttext: "Tool command"
                width: parent.width
                height: parent.height*0.12
//                color: "#aaff7f"
                }
                Honing_prog_button{
                id: moveto5_btn
                righttext: "Linear"
                lefttext: "Move to"
                width: parent.width
                height: parent.height*0.12
//                color: "#00ff00"
                }
                Honing_prog_button{
                id: moveto6_btn
                lefttext: "Move to"
                righttext: "Point to point"
                width: parent.width
                height: parent.height*0.12
//                color: "#aa0000"
                }
                }
            }
        }
    }
    }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.33}
}
##^##*/
