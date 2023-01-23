import QtQuick 2.9
import QtQuick.Controls 2.3
//import QtQuick. 2.15
import QtQuick.Timeline 1.0

Rectangle {
    width: 300
    height: 500
    id: root
    property int type: 0
    property int targetWidth: 100
    property int animationDuration: 1000
    Column {
          spacing: 10
          width: 300/6
          height: 500 /6
          Rectangle {
              id: rect1
              width: parent.width
              height: parent.height
              color: "red"
          }
          PropertyAnimation {
              id: widthAnimation
              target: rect1
              property: "width"
              from: 0
              to: 100
              duration: 1000
          }
          Button {
               text: "Expand Rectangle"
               onClicked: {
          onClicked: widthAnimation.start()
               }
           }
    }
    ////////////////////////////////////
    Button {
        anchors.horizontalCenter: parent.horizontalCenter
        width: 0//parent.width
        height: parent.height*0.1
        Rectangle {
            id:status_bar
            width: 110/2
            height: parent.height*0.1
            anchors.bottom: parent.bottom
            color: "blue"
        }

        onClicked: {
            stG.state="width"
            root.type = !root.type
//            stG.state = root.type ? "right" : "left"  // uncomment to the second case
        }
    }
    Rectangle{

    }

    Rectangle {
        id: switcher1
        width: 50
        height: 50
        color: "red"
        anchors.verticalCenter: parent.verticalCenter
    }
    Rectangle {
        id: switcher2
        width: 50
        height: 50
        color: "green"
        anchors.top: switcher1.bottom
        anchors.topMargin: 10
    }

    StateGroup {
        id: stG
        states: [
//            State {
//                name: "left"
//                when: type === 0 // comment to the second case
//                PropertyChanges {
//                    target: switcher1
//                    x: 0
//                }
//                PropertyChanges {
//                    target: switcher2
//                    x: 0
//                }
//            },
            State {
                name: "width"
//                when: type === 1 // comment to the second case
                PropertyChanges {
                    target: status_bar
                    x: parent.width
                }
//                PropertyChanges {
//                    target: switcher2
//                    x: root.width - switcher2.width
//                }
            }
        ]
        transitions: [
            Transition {
                to: "left"
                SequentialAnimation {
                    NumberAnimation {
                        target: status_bar
                        property: "x"
                        duration: 500
                    }
//                    NumberAnimation {
//                        target: switcher1
//                        property: "x"
//                        duration: 500
//                    }
                }
            },
            Transition {
                to: "right"
                SequentialAnimation {
                    NumberAnimation {
                        target: status_bar
                        property: "x"
                        duration: 500
                    }
                    NumberAnimation {
                        target: switcher2
                        property: "x"
                        duration: 500
                    }
                }
            }
        ]
    }



//    Timeline {
//        id: timeline
//        animations: [
//            TimelineAnimation {
//                id: timelineAnimation
//                loops: 1
//                duration: 1000
//                running: true
//                to: 1000
//                from: 0
//            }
//        ]
//        endFrame: 1000
//        enabled: true
//        startFrame: 0
//    }


}
