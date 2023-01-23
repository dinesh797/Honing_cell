import QtQuick
import QtQuick.Controls 2.15
import QtQuick.Controls 2.3
import "../components"
import "../pages"
import "../theme"
import QtQuick.Layouts 6.0

Rectangle {
    id: rectangle1
    //    width: 500
    //    height: 300
    width: parent.width
    height: parent.height
    color: Style.hoverprimary
    Material.theme: Material.Dark
    Material.accent: Material.Purple
    property alias discard_add: discard_add
        property alias create_add: create_add
            property alias ethnicity_add: ethnicity_add
                property alias weight_add: weight_add
                    property alias feet_add: feet_add
                        property alias height_add: height_add
                            property alias dob_add: dob_add
                                property alias gender_add: gender_add
                                    property alias contact_add: contact_add
                                        property alias email_add: email_add
                                            property alias lastname_add: lastname_add
                                                transformOrigin: Item.Center

                                                border.color: "transparent"
                                                property string lastname_col: lastname_required.color
                                                    property string name_color: name_required.color
                                                        property alias firstname_add: firstname_add

                                                            Column {
                                                                id: column
                                                                width: parent.width * 0.97
                                                                height: parent.height * 0.97
                                                                anchors.verticalCenter: parent.verticalCenter
                                                                anchors.horizontalCenter: parent.horizontalCenter

                                                                Item {
                                                                    id: item3
                                                                    width: parent.width
                                                                    height: parent.height * 0.1

                                                                    Text {
                                                                        id: text1
                                                                        color: Style.tertiary
                                                                        text: qsTr("New Program")
                                                                        anchors.verticalCenter: parent.verticalCenter
                                                                        font.pixelSize: Style.font16 ? Style.font16 : 16
                                                                    }
                                                                }

                                                                Rectangle {
                                                                    id: rectangle
                                                                    width: parent.width * 0.97
                                                                    height: parent.height * 0.88
                                                                    color: Style.secondary
                                                                    anchors.horizontalCenter: parent.horizontalCenter

                                                                    Column {
                                                                        id: column1
                                                                        width: parent.width * 0.97
                                                                        height: parent.height * 0.95
                                                                        anchors.verticalCenter: parent.verticalCenter
                                                                        anchors.horizontalCenter: parent.horizontalCenter
                                                                        spacing: 5

                                                                        Row {
                                                                            id: row2
                                                                            width: parent.width
                                                                            height: parent.height * 0.12
                                                                            Item {
                                                                                id: name2
                                                                                width: parent.width * 0.22
                                                                                height: parent.height * 0.90
                                                                                anchors.verticalCenter: parent.verticalCenter
                                                                                Text {
                                                                                    id: lastnametext

                                                                                    color: Style.tertiary
                                                                                    text: qsTr(" Program Name: ")
                                                                                    anchors.verticalCenter: parent.verticalCenter
                                                                                    font.pixelSize: Style.font12 ? Style.font12 : 12
                                                                                }
                                                                            }

                                                                            TextField {
                                                                                id: lastname_add
                                                                                leftPadding: 10
                                                                                maximumLength: 20
                                                                                validator: RegularExpressionValidator {
                                                                                    regularExpression: /^[A-z/]+$/
                                                                                }
                                                                                width: parent.width * 0.55
                                                                                height: parent.height * 0.92
                                                                                color: Style.tertiary
                                                                                text: qsTr("")
                                                                                anchors.verticalCenter: parent.verticalCenter
                                                                                font.pixelSize: Style.font13 ? Style.font13 : 13

                                                                                topPadding: 0
                                                                                bottomPadding: 0
                                                                                background: Rectangle {
                                                                                    color: Style.secondary
                                                                                    radius: 5
                                                                                    border.color: "black"
                                                                                    border.width: 0.5
                                                                                }
                                                                                Connections {
                                                                                    target: lastname_add
                                                                                    function onTextChanged()
                                                                                    {
                                                                                        if (!lastname_add.text == "")
                                                                                        {
                                                                                            lastname_required.color = "transparent"
                                                                                        } else {
                                                                                        lastname_required.color = "red"
                                                                                    }
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                    Column {
                                                                        width: parent.width
                                                                        spacing: 0
                                                                        height: parent.height * 0.70
                                                                        Item {
                                                                            width: parent.width
                                                                            height: parent.height*0.2
                                                                            Text {
                                                                                text: qsTr("Description : ")
                                                                                width: parent.width * 0.98
                                                                                height: parent.height * 0.98
                                                                                anchors.verticalCenter: parent.verticalCenter
                                                                                color: Style.tertiary
                                                                                font.pixelSize: Style.font16 ? Style.font16 : 16
                                                                                verticalAlignment: Text.AlignVCenter
                                                                                fontSizeMode: Text.Fit
                                                                                minimumPixelSize: 2
                                                                                leftPadding: 5
                                                                            }
                                                                        }

                                                                        Rectangle {
                                                                            id: item1gt22
                                                                            color: Style.secondary
                                                                            width: parent.width
                                                                            border.color: "black"
                                                                            border.width: 0.5
                                                                            height: parent.height* 0.80
                                                                            Item {
                                                                                id: descitem
                                                                                width: parent.width * 0.98
                                                                                height: parent.height * 0.95
                                                                                anchors.verticalCenter: parent.verticalCenter
                                                                                anchors.horizontalCenter: parent.horizontalCenter
                                                                                ScrollView {
                                                                                    id: view
                                                                                    anchors.fill: parent
                                                                                    ScrollBar.vertical: ScrollBar {
                                                                                        id: sc
                                                                                        parent: view
                                                                                        x: view.mirrored ? 0 : view.width - width
                                                                                        y: view.topPadding
                                                                                        height: view.availableHeight
                                                                                        antialiasing: true
                                                                                        wheelEnabled: true
                                                                                        active: view.ScrollBar.horizontal.active
                                                                                        contentItem: Rectangle {
                                                                                            width: 5
                                                                                            opacity: 0
                                                                                            implicitWidth: 5
                                                                                            implicitHeight: 100
                                                                                            radius: width / 2
                                                                                            anchors.right: parent.right
                                                                                            anchors.rightMargin: 0
                                                                                            color: sc.pressed ? "orange" : "#686c95"
                                                                                        }
                                                                                    }
                                                                                    TextArea {
                                                                                        id: prg_disc
                                                                                        KeyNavigation.priority: KeyNavigation.BeforeItem
                                                                                        hoverEnabled: true
                                                                                        width: descitem.width
                                                                                        height: descitem.height
                                                                                        focus: true
                                                                                        text: qsTr(ps_prog_disc)
                                                                                        wrapMode: TextEdit.Wrap
                                                                                        antialiasing: true
                                                                                        bottomPadding: 5
                                                                                        topPadding: 5
                                                                                        leftPadding: 0
                                                                                        rightPadding:5
                                                                                        color: Style.tertiary
                                                                                        font.pixelSize: Style.font16 ? Style.font16 : 16
                                                                                        placeholderText: qsTr("Enter Description for program")
                                                                                        background: Rectangle {
                                                                                            radius: 0
                                                                                            color: Style.secondary
                                                                                        }
                                                                                    }
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                    Item{
                                                                        width: parent.width
                                                                        height: parent.height*0.15
                                                                        Item {
                                                                            width: parent.width*0.6
                                                                            height: parent.height
                                                                            Item {
                                                                                id: deletebtn
                                                                                width: parent.width*0.3
                                                                                height: parent.height
                                                                                Honing_button{
                                                                                id: vision_play_btn
                                                                                width: parent.width*0.80
                                                                                buttontext: "Delete"
                                                                                height: parent.height*0.90
                                                                                anchors.verticalCenter: parent.verticalCenter
                                                                                anchors.horizontalCenter: parent.horizontalCenter
                                                                                stepcolor: "#647886"
                                                                                radiuso: 10
                                                                            }
                                                                        }
                                                                        Item {
                                                                            id: duplicatebtn
                                                                            width: parent.width*0.3
                                                                            height: parent.height
                                                                            anchors.left: deletebtn.right
                                                                            Honing_button{
                                                                            id: duplicate_btn
                                                                            width: parent.width*0.80
                                                                            buttontext: "Duplicate"
                                                                            height: parent.height*0.90
                                                                            anchors.verticalCenter: parent.verticalCenter
                                                                            anchors.horizontalCenter: parent.horizontalCenter
                                                                            stepcolor: "#647886"
                                                                            radiuso: 10
                                                                        }
                                                                    }
                                                                    Item {
                                                                        id: exportbtn
                                                                        width: parent.width*0.3
                                                                        height: parent.height
                                                                        anchors.left: duplicatebtn.right
                                                                        Honing_button{
                                                                        id: export_btn
                                                                        width: parent.width*0.80
                                                                        buttontext: "Export"
                                                                        height: parent.height*0.90
                                                                        anchors.verticalCenter: parent.verticalCenter
                                                                        anchors.horizontalCenter: parent.horizontalCenter
                                                                        stepcolor: "#647886"
                                                                        radiuso: 10
                                                                    }
                                                                }

                                                            }
                                                            Item {
                                                                id: load_item
                                                                width: parent.width*0.3
                                                                height: parent.height
                                                                anchors.right: parent.right
                                                                Honing_button{
                                                                id: load_prog_btn
                                                                width: parent.width*0.80
                                                                buttontext: "Load Program"
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
