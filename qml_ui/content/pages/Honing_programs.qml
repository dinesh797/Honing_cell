import QtQuick
import QtQuick.Controls
import "../components"
import "../pages"
import "../theme"
import "../images"
// import QtQuick.Layouts 1.15

Rectangle {
    id: name
    gradient: Gradient {
        GradientStop { position: 0; color: "#b3b2b1" }
        GradientStop { position: 0.09; color: "#ebebea" }
    }
    anchors.fill: parent
    property alias stackView6: stackView6
        MouseArea{
            anchors.fill: parent
        }

        StackView {
            id: stackView6
            // anchors.fill: parent
            width: parent.width * 0.98
            height: parent.height * 0.98
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
            clip: true
            initialItem: yy
        }
        Component {
            id: yy
            Rectangle {
                id: programpg
                property var lsm2

                property string text1: Qt.formatTime(new Date(), "hh: mm")
                property string text2: Qt.formatTime(new Date(), "hh: mm")
                property string text3: Qt.formatTime(new Date(), "hh: mm")
                property string text11: Qt.formatTime(new Date(), "hh: mm")
                property string text22: Qt.formatTime(new Date(), "hh: mm")
                property string text33: Qt.formatTime(new Date(), "hh: mm")
                property int number: 0
                    property int number1: 0
                        property var ls
                        color: "transparent"//Style.primary

                        border.color: "transparent"

                        Column {
                            id: column
                            anchors.fill: parent
                            spacing: 3

                            Item {
                                id: topbar
                                width: parent.width
                                height: parent.height * 0.10

                                Row {
                                    id: row
                                    anchors.fill: parent

                                    Item {
                                        id: item2
                                        width: parent.width * 0.4
                                        height: parent.height /// 2
                                        anchors.verticalCenter: parent.verticalCenter

                                        Text {
                                            id: rr1text
                                            text: qsTr("Programs")
                                            height: parent.height / 2
                                            width: parent.width
                                            color: "#4d4d4d"//"#5d5d5c"//"#6c757b"//Style.tertiary
                                            font.pixelSize: Style.font17 ? Style.font17 : 17
                                            verticalAlignment: Text.AlignVCenter
                                            fontSizeMode: Text.Fit
                                            minimumPixelSize: 2
                                        }

                                        Text {
                                            id: rr1text2
                                            width: parent.width
                                            height: parent.height / 2
                                            text: qsTr("List of available programs")
                                            color: "#4d4d4d"//"#5d5d5c"//"#6c757b"//Style.tertiary
                                            anchors.top: rr1text.bottom
                                            font.pixelSize: Style.font13 ? Style.font13 : 13
                                            wrapMode: Text.WordWrap
                                            fontSizeMode: Text.Fit
                                            minimumPixelSize: 2
                                        }
                                    }
                                }
                            }
                            Rectangle {
                                width: parent.width
                                height: parent.height* 0.002
                                color: "#707a6d"
                            }
                            Rectangle {
                                id: name
                                color: "transparent"//Style.primary
                                width: parent.width
                                height: parent.height * 0.10

                                Item {
                                    id: itemq
                                    anchors.fill: parent
                                    Row {
                                        anchors.left: parent.left
                                        spacing: 20
                                        width: parent.width * 0.4
                                        height: parent.height * 0.6
                                        anchors.verticalCenter: parent.verticalCenter

                                        HoverButton {
                                            id: addprog
                                            width: parent.width * 0.3
                                            height: parent.height
                                            anchors.verticalCenter: parent.verticalCenter
                                            leftPadding: 18
                                            radiuso: 7
                                            radiusi: 7
                                            stepcolor: "#67839c"//"#7d00ff"
                                            stepcolortext: "white"
                                            steptext: qsTr("New Program")

                                            onClicked: {
                                                pop.open()
                                            }
                                        }
                                        HoverButton {
                                            id: deletearm
                                            visible: false
                                            width: parent.width * 0.20
                                            height: parent.height
                                            anchors.verticalCenter: parent.verticalCenter
                                            radiuso: 7
                                            radiusi: 7
                                            stepcolor: "#ACC6AA"
                                            stepcolortext: "white"
                                            steptext: qsTr("Delete")
                                            ToolTip.delay: 700
                                            ToolTip.timeout: 5000
                                            ToolTip.visible: hovered
                                            ToolTip.text: qsTr("Select the Program name to delete ")
                                        }
                                    }

                                    Item {
                                        id: item1rr
                                        width: parent.width * 0.6
                                        height: parent.height
                                        anchors.right: parent.right
                                        Row {
                                            id: row2
                                            anchors.fill: parent
                                            layoutDirection: Qt.RightToLeft
                                            spacing: 15

                                            Button {
                                                id: sortgrid
                                                checked: true
                                                checkable: true
                                                autoExclusive: true
                                                width: parent.width * 0.065
                                                height: parent.height * 0.65
                                                anchors.verticalCenter: parent.verticalCenter
                                                contentItem: Label {
                                                    text: "\u0129"
                                                    font.pixelSize: 30
                                                    horizontalAlignment: Text.AlignHCenter
                                                    verticalAlignment: Text.AlignVCenter
                                                    font.family: Style.fonticon.name
                                                    color: sortgrid.checked ? "#027fe4" : "#7F8487"//Style.sortcol
                                                }
                                                background: Rectangle {
                                                    color: Style.colorshallow
                                                    anchors.fill: parent
                                                    border.color: sortgrid.checked ? "grey" : "transparent"
                                                    border.width: 1
                                                }
                                                onCheckedChanged: {
                                                    stack.push(prog_grid_comp)
                                                }
                                            }

                                            Button {
                                                id: sortvertical
                                                width: parent.width * 0.065
                                                height: parent.height * 0.65
                                                anchors.verticalCenter: parent.verticalCenter
                                                checkable: true
                                                autoExclusive: true

                                                contentItem: Label {
                                                    text: "\u012a"
                                                    font.pixelSize: 30
                                                    color: sortvertical.checked ? "#027fe4" : "#7F8487"//Style.sortcol
                                                    horizontalAlignment: Text.AlignHCenter
                                                    verticalAlignment: Text.AlignVCenter
                                                    font.family: Style.fonticon.name
                                                }
                                                background: Rectangle {
                                                    color: Style.colorshallow
                                                    anchors.fill: parent
                                                    border.color: sortvertical.checked ? "grey" : "transparent"
                                                }
                                                onCheckedChanged: {
                                                    stack.push(prog_list_comp)
                                                }
                                            }

                                            Item {
                                                id: useritem
                                                width: parent.width * 0.25
                                                height: parent.height * 0.55
                                                anchors.verticalCenter: parent.verticalCenter

                                                TextField {
                                                    id: username_field
                                                    width: parent.width
                                                    height: parent.height
                                                    placeholderText: qsTr("Search by name")
                                                    placeholderTextColor: Style.tertiary
                                                    font.pixelSize: Style.font15 ? Style.font15 : 15 ? Style.font15 : 15
                                                    horizontalAlignment: Text.AlignLeft
                                                    rightInset: 10
                                                    leftPadding: 10
                                                    layer.smooth: true
                                                    layer.wrapMode: ShaderEffectSource.ClampToEdge
                                                    antialiasing: true
                                                    bottomPadding: 0
                                                    topPadding: 0
                                                    renderType: Text.QtRendering
                                                    font.weight: Font.Light
                                                    font.italic: false
                                                    baselineOffset: 33
                                                    background: Rectangle {
                                                        color: "#344D67"//Style.secondary
                                                        border.color: "#dbc282"
                                                        border.width: 0.5
                                                        radius: 10
                                                        anchors.fill: parent
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }

                            Item {
                                id: views
                                height: parent.height * 0.786
                                width: parent.width
                                StackView {
                                    id: stack
                                    initialItem: prog_grid_comp
                                    anchors.fill: parent
                                    clip: true
                                }
                                Component {
                                    id: prog_grid_comp

                                    Rectangle {
                                        id: grid_rect
                                        property ListModel lsm: ListModel { }
                                        color: "transparent"
                                        visible: true
                                        height: parent.height
                                        width: parent.width

                                        ScrollView {
                                            id: frame
                                            clip: true
                                            anchors.fill: parent
                                            ScrollBar.vertical: ScrollBar {
                                                id: sc
                                                parent: frame
                                                x: frame.mirrored ? 0 : frame.width - width
                                                y: frame.topPadding
                                                height: frame.availableHeight
                                                antialiasing: true
                                                wheelEnabled: true
                                                active: frame.ScrollBar.horizontal.active
                                                contentItem: Rectangle {
                                                    width: 14
                                                    opacity: 0
                                                    implicitWidth: 100/9
                                                    implicitHeight: 100/9
                                                    radius: width / 2
                                                    color: sc.pressed ? "orange" : "#686c95"
                                                }
                                            }

                                            GridView {
                                                id: cploader
                                                cellWidth: parent.width / 3
                                                cellHeight: 200
                                                width: parent.width
                                                height: parent.height
                                                add: Transition {
                                                    NumberAnimation {
                                                        properties: "x, y"
                                                        from: 100
                                                        duration: 300
                                                    }
                                                }

                                                delegate: Item {
                                                    id: itemy
                                                    width: cploader.cellWidth - 5
                                                    height: cploader.cellHeight - 5

                                                    Rectangle {
                                                        id: namettt
                                                        // color:"red"
                                                        gradient: Gradient {
                                                            GradientStop { position: 0.0; color: "#F0F0F0" }
                                                            GradientStop { position: 1.0; color: "#A0A0A0" }
                                                        }
                                                        property color checkedcolor: "#1c1c1f"
                                                            property color uncheckedcolor: "red"//"#252529"
                                                                property string progname: "Program 1"
                                                                    width: parent.width * 0.90
                                                                    height: parent.height * 0.90
                                                                    property alias button: button
                                                                        Rectangle {
                                                                            width: parent.width*0.99
                                                                            height: parent.height*0.99
                                                                            anchors.verticalCenter: parent.verticalCenter
                                                                            anchors.horizontalCenter: parent.horizontalCenter
                                                                            // color: "red"
                                                                            gradient: Gradient {
                                                                                GradientStop { position: 0.0; color: "#F0F0F0" }
                                                                                GradientStop { position: 1.0; color: "#A0A0A0" }
                                                                            }


                                                                            Column {
                                                                                id: column6
                                                                                width: parent.width
                                                                                height: parent.height
                                                                                spacing: 10

                                                                                Component {

                                                                                    id: ps_comp
                                                                                    Honing_program {
                                                                                    id: ps

                                                                                }
                                                                            }

                                                                            Button {
                                                                                id: button
                                                                                width: parent.width
                                                                                height: parent.height * 0.8

                                                                                onClicked: {

                                                                                    var get_name = lsm.get(
                                                                                        index).name ? lsm.get(index).name : ""
                                                                                        var get_discp = lsm.get(
                                                                                            index).description ? lsm.get(index).description : ""
                                                                                            var get_id = lsm.get(
                                                                                                index).id
                                                                                                var get_created_by = lsm.get(
                                                                                                    index).created_by
                                                                                                    var get_modifiedOn = lsm.get(
                                                                                                        index).modified_on
                                                                                                        var get_properties = lsm.get(
                                                                                                            index).properties
                                                                                                            stackView6.push(
                                                                                                                ps_comp, {
                                                                                                            })
                                                                                                        }
                                                                                                        Rectangle {
                                                                                                            id: rectangle
                                                                                                            radius: 0
                                                                                                            width: parent.width*0.98
                                                                                                            height: parent.height*0.98
                                                                                                            anchors.verticalCenter: parent.verticalCenter
                                                                                                            anchors.horizontalCenter: parent.horizontalCenter
                                                                                                            color:"#f2f2f1"// get_random_color(
                                                                                                            // )

                                                                                                            function get_random_color()
                                                                                                            {
                                                                                                                var color = ""
                                                                                                                for (var i = 0; i < 3; i++) {
                                                                                                                    var sub = Math.floor(
                                                                                                                        Math.random(
                                                                                                                            ) * 256).toString(
                                                                                                                                16)
                                                                                                                                color += (sub.length
                                                                                                                                == 1 ? "0" + sub : sub)
                                                                                                                            }
                                                                                                                            return '#' + (0x1000000 + Math.random()
                                                                                                                            * 0xffffff).toString(
                                                                                                                                16).substr(
                                                                                                                                    1, 6)
                                                                                                                                }
                                                                                                                                Rectangle{
                                                                                                                                    id:top_rect
                                                                                                                                    color: "#f2f2f1"
                                                                                                                                    width: parent.width
                                                                                                                                    height: parent.height*0.2
                                                                                                                                    Item {
                                                                                                                                        id: prog_item
                                                                                                                                        width: parent.width* 0.6
                                                                                                                                        height: parent.height
                                                                                                                                        Text {
                                                                                                                                            id: prog_text
                                                                                                                                            text: qsTr(name)//("Program name")
                                                                                                                                            anchors.verticalCenter: parent.verticalCenter
                                                                                                                                            width: parent.width* 0.95
                                                                                                                                            height: parent.height*0.95
                                                                                                                                            color:"#353f47"
                                                                                                                                            font.pixelSize: Style.font20 ? Style.font20 : 20
                                                                                                                                            horizontalAlignment: Text.AlignLeft
                                                                                                                                            verticalAlignment: Text.AlignVCenter
                                                                                                                                            anchors.horizontalCenter: parent.horizontalCenter
                                                                                                                                            fontSizeMode: Text.Fit
                                                                                                                                            minimumPixelSize: 2
                                                                                                                                        }
                                                                                                                                    }
                                                                                                                                }
                                                                                                                                Rectangle{
                                                                                                                                    id:bottom_rect
                                                                                                                                    anchors.top: top_rect.bottom
                                                                                                                                    color: "#fffffe"
                                                                                                                                    width: parent.width
                                                                                                                                    height: parent.height*0.8
                                                                                                                                    Item {
                                                                                                                                        id: desc_item
                                                                                                                                        width: parent.width* 0.6
                                                                                                                                        height: parent.height
                                                                                                                                        Text {
                                                                                                                                            id: pass_text
                                                                                                                                            wrapMode: Text.WordWrap
                                                                                                                                            text: qsTr(description)//(ps_prog_disc)//qsTr("Program description")
                                                                                                                                            anchors.verticalCenter: parent.verticalCenter
                                                                                                                                            width: parent.width* 0.95
                                                                                                                                            height: parent.height*0.95
                                                                                                                                            color:"#353f47"
                                                                                                                                            font.pixelSize: Style.font15 ? Style.font15 : 15
                                                                                                                                            horizontalAlignment: Text.AlignLeft
                                                                                                                                            verticalAlignment: Text.AlignTop
                                                                                                                                            anchors.horizontalCenter: parent.horizontalCenter
                                                                                                                                            fontSizeMode: Text.Fit
                                                                                                                                            minimumPixelSize: 2
                                                                                                                                        }
                                                                                                                                    }
                                                                                                                                    Rectangle {
                                                                                                                                        id: desc_img
                                                                                                                                        // color: "red"
                                                                                                                                        anchors.left: desc_item.right
                                                                                                                                        width: parent.width* 0.4
                                                                                                                                        height: parent.height
                                                                                                                                        gradient: Gradient {
                                                                                                                                            GradientStop { position: 0.0; color: "#F0F0F0" }
                                                                                                                                            GradientStop { position: 1.0; color: "#A0A0A0" }
                                                                                                                                        }
                                                                                                                                        function randomUrl()
                                                                                                                                        {
                                                                                                                                            var randomNumber = Math.floor(Math.random() * 3) + 1; // generates a random number between 1 and 3
                                                                                                                                            return "\"../images/arm" + randomNumber + ".png\"";
                                                                                                                                        }
                                                                                                                                        Image{

                                                                                                                                            id: prog_img
                                                                                                                                            width: parent.width * 0.90
                                                                                                                                            height: parent.height * 0.90
                                                                                                                                            anchors.verticalCenter: parent.verticalCenter
                                                                                                                                            anchors.horizontalCenter: parent.horizontalCenter
                                                                                                                                            anchors.top: parent.top
                                                                                                                                            anchors.topMargin: 10
                                                                                                                                            mipmap: true
                                                                                                                                            smooth: true
                                                                                                                                            source: "../images/arm3.png"
                                                                                                                                            fillMode: Image.PreserveAspectFit
                                                                                                                                        }
                                                                                                                                    }
                                                                                                                                }
                                                                                                                            }
                                                                                                                        }
                                                                                                                        Honing_prog_bottom {
                                                                                                                        id: fordeletion
                                                                                                                        visible: true
                                                                                                                        height: parent.height * 0.15
                                                                                                                        width: parent.width
                                                                                                                        checkable: true
                                                                                                                        buttonText: "Delete"
                                                                                                                        stepcolor: "#647886"
                                                                                                                        autoExclusive: false
                                                                                                                        radiusi: 0
                                                                                                                        radiuso: 0
                                                                                                                        custom_icon.width: parent.width * 0.05
                                                                                                                        name.width:parent.width * 0.78
                                                                                                                        text_left.width: parent.width *0.10
                                                                                                                        buttonIcon: "\ue0cf"
                                                                                                                        //     Connections {
                                                                                                                        //         target: fordeletion
                                                                                                                        //         function onClicked()
                                                                                                                        //         {
                                                                                                                        //             if (fordeletion.checked)
                                                                                                                        //             {
                                                                                                                        //                 item1gt.color = rectangle.color
                                                                                                                        //             } else {

                                                                                                                        //             item1gt.color = "transparent"
                                                                                                                        //         }
                                                                                                                        //     }
                                                                                                                        // }

                                                                                                                        Connections {
                                                                                                                            target: fordeletion
                                                                                                                            function onClicked()
                                                                                                                            {
                                                                                                                                if (fordeletion.checked)
                                                                                                                                {

                                                                                                                                    var prg_id = lsm.get(
                                                                                                                                        index).id
                                                                                                                                        program.delete_program(
                                                                                                                                            prg_id)
                                                                                                                                            lsm.remove(index)
                                                                                                                                        }
                                                                                                                                    }
                                                                                                                                }

                                                                                                                                // Rectangle {
                                                                                                                                //     id: item1gt
                                                                                                                                //     // color: "transparent"
                                                                                                                                //     gradient: Gradient {
                                                                                                                                //         GradientStop { position: 0.0; color: "#F0F0F0" }
                                                                                                                                //         GradientStop { position: 1.0; color: "#B2B2B2" }
                                                                                                                                //     }
                                                                                                                                //     width: parent.width
                                                                                                                                //     radius: 2
                                                                                                                                //     border.color: "transparent"//fordeletion.checked ? Style.bord : rectangle.color
                                                                                                                                //     border.width: 1
                                                                                                                                //     height: parent.height
                                                                                                                                //     Text {
                                                                                                                                //         id: programtextgt
                                                                                                                                //         text: qsTr(name)
                                                                                                                                //         anchors.verticalCenter: parent.verticalCenter
                                                                                                                                //         height: parent.height / 2
                                                                                                                                //         width: parent.width
                                                                                                                                //         color: "#353f47"//Style.tertiary
                                                                                                                                //         font.pixelSize: Style.font20 ? Style.font20 : 20
                                                                                                                                //         verticalAlignment: Text.AlignVCenter
                                                                                                                                //         leftPadding: 5
                                                                                                                                //         fontSizeMode: Text.Fit
                                                                                                                                //         minimumPixelSize: 2
                                                                                                                                //     }
                                                                                                                                // }
                                                                                                                            }
                                                                                                                        }
                                                                                                                    }

                                                                                                                }
                                                                                                            }

                                                                                                            model: ListModel {
                                                                                                                id: lsm
                                                                                                            }
                                                                                                        }
                                                                                                    }
                                                                                                    Component.onCompleted: {
                                                                                                        var lss = program.get_programs()
                                                                                                        programpg.lsm2 = lsm

                                                                                                        for (var numberr = 0; numberr < lss.length; numberr++) {
                                                                                                            lsm.append({
                                                                                                            "id": lss[numberr]["id"] ? lss[numberr]["id"] : "",
                                                                                                            "name": lss[numberr]["name"] ? lss[numberr]["name"] : "",
                                                                                                            "description": lss[numberr]["description"] ? lss[numberr]["description"] : "",
                                                                                                        })
                                                                                                    }
                                                                                                }
                                                                                            }
                                                                                        }
                                                                                        Component {
                                                                                            id: prog_list_comp

                                                                                            Rectangle {
                                                                                                id: list_rect
                                                                                                height: parent.height
                                                                                                width: parent.width
                                                                                                color: "#252529"
                                                                                            }
                                                                                        }
                                                                                    }
                                                                                }
                                                                                Popup {
                                                                                    id: pop
                                                                                    width: parent.width * 0.7
                                                                                    height: parent.height * 0.7
                                                                                    anchors.centerIn: parent
                                                                                    modal: true
                                                                                    dim : false
                                                                                    enter: Transition {
                                                                                        NumberAnimation {
                                                                                            property: "opacity"
                                                                                            from: 0.0
                                                                                            to: 1.0
                                                                                        }
                                                                                    }
                                                                                    background: Rectangle {
                                                                                        color: Style.popprimary
                                                                                        border.color: Style.topprimary
                                                                                        opacity: 0.5
                                                                                    }
                                                                                    closePolicy: Popup.CloseOnEscape //| Popup.CloseOnPressOutsideParent
                                                                                    Honing_popup_newprog {
                                                                                    id: adp

                                                                                    Connections {
                                                                                        target: adp.create_prog_btn
                                                                                        function onClicked()
                                                                                        {
                                                                                            var ls = program.get_programs()
                                                                                            var pname =adp.progname_add.text// "Program " + (ls.length + 1)
                                                                                            program.add_program(pname)
                                                                                            lsm2.clear()
                                                                                            var lss = program.get_programs()

                                                                                            for (var numberr = 0; numberr < lss.length; numberr++) {
                                                                                                lsm2.append({
                                                                                                "id": lss[numberr]["id"] ? lss[numberr]["id"] : "",
                                                                                                "name": lss[numberr]["name"] ? lss[numberr]["name"] : "",
                                                                                                "description": lss[numberr]["description"] ? lss[numberr]["description"] : "",
                                                                                            })
                                                                                        }

                                                                                        pop.close()
                                                                                    }
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                }

                                                            }
