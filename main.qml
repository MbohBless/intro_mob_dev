import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12
import QtQuick.Shapes 1.0

Window {
    width: 450
    height: 800
    visible: true
    color: "#82fefb"

    Column {
        id: column
        anchors.fill: parent
        topPadding: 32

        Image {
            id: image
            width: 100
            height: 100
            anchors.left: parent.left
            anchors.top: parent.top
            source: "qrc:/img/images/2.png"
            anchors.topMargin: 54
            anchors.leftMargin: 153
            fillMode: Image.PreserveAspectFit
        }

        Rectangle {
            id: rectangle
            width: 356
            height: 200
            radius: 13
            anchors.left: parent.left
            anchors.top: parent.top
            gradient: RadialGradient {
                centerRadius: 100
                focalX: 178
                centerY: 100
                focalY: 100
                focalRadius: 0
                centerX: 178

                GradientStop {
                    position: 0
                    color: "#9ad0ff"
                }

                GradientStop {
                    position: 1
                    color: "#010e1b"
                }
            }
            anchors.topMargin: 161
            anchors.leftMargin: 33
            clip: false

            Text {
                id: head
                x: 144
                y: 24
                width: 69
                height: 26
                text: qsTr("Login")
                font.pixelSize: 20
                horizontalAlignment: Text.AlignLeft
                font.capitalization: Font.AllUppercase
                font.family: "Times New Roman"
            }

            Column {
                id: column1
                x: 8
                y: 56
                width: 340
                height: 110

                Rectangle {
                    id: rectangle1
                    width: 350
                    height: 50
                    color: "#00ffffff"
                    anchors.right: parent.right
                    anchors.rightMargin: -6
                    enabled: false

                    Row {
                        id: row
                        y: 0
                        height: 50
                        anchors.left: parent.left
                        anchors.right: parent.right
                        anchors.rightMargin: 8
                        anchors.leftMargin: 0
                        layer.enabled: false
                        spacing: 4
                        topPadding: 12
                        leftPadding: 10
                        layoutDirection: Qt.LeftToRight

                        Text {
                            id: text1
                            width: 92
                            height: 50
                            text: "Username"
                            anchors.left: parent.left
                            anchors.top: parent.top
                            font.pixelSize: 18
                            horizontalAlignment: Text.AlignHCenter
                            verticalAlignment: Text.AlignVCenter
                            anchors.topMargin: 0
                            anchors.leftMargin: 0
                            minimumPixelSize: 10
                        }
                        Rectangle {
                            height: 40
                            color: "#e4e4e4"
                            radius: 12
                            border.width: 0
                            width: 250
                            anchors.right: parent.right
                            anchors.bottom: parent.bottom
                            layer.samples: 4
                            layer.enabled: false
                            enabled: true
                            anchors.bottomMargin: 0
                            anchors.rightMargin: 0
                            TextEdit {
                                id: textEdit
                                width: 250
                                height: 40
                                anchors.right: parent.right
                                anchors.bottom: parent.bottom
                                font.pixelSize: 15
                                horizontalAlignment: Text.AlignRight
                                verticalAlignment: Text.AlignVCenter
                                layer.samples: 4
                                layer.enabled: false
                                enabled: true
                                leftPadding: 5
                                anchors.bottomMargin: 0
                                anchors.rightMargin: 0
                                textMargin: 3
                                font.weight: Font.Normal
                                property string placeholderText: "Enter text here..."
                            }
                        }
                    }
                }

                Rectangle {
                    id: rectangle2
                    width: 350
                    height: 50
                    opacity: 1
                    color: "#00ffffff"
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.rightMargin: -6
                    anchors.topMargin: 58

                    Row {
                        id: row1
                        anchors.fill: parent
                        anchors.rightMargin: 8
                        spacing: 6
                        layoutDirection: Qt.LeftToRight

                        Text {
                            id: text2
                            width: 90
                            text: qsTr("Password")
                            anchors.left: parent.left
                            anchors.top: parent.top
                            anchors.bottom: parent.bottom
                            font.pixelSize: 18
                            horizontalAlignment: Text.AlignHCenter
                            verticalAlignment: Text.AlignVCenter
                            wrapMode: Text.WrapAnywhere
                            layer.smooth: false
                            font.styleName: "Regular"
                            font.weight: Font.Light
                            anchors.bottomMargin: 1
                            fontSizeMode: Text.FixedSize
                        }
                        Rectangle {
                            height: 40
                            color: "#e4e4e4"
                            radius: 12
                            border.width: 0
                            width: 250
                            anchors.right: parent.right
                            anchors.bottom: parent.bottom
                            anchors.rightMargin: 0
                            anchors.bottomMargin: 0
                            TextEdit {
                                id: textEdit1
                                width: 250
                                height: 50
                                anchors.right: parent.right
                                anchors.bottom: parent.bottom
                                font.pixelSize: 12
                                horizontalAlignment: Text.AlignLeft
                                verticalAlignment: Text.AlignVCenter
                                selectionColor: "#000000"
                                mouseSelectionMode: TextInput.SelectCharacters
                                property string placeholder: "Enter password"
                                leftPadding: 6
                                font.strikeout: false
                                padding: 0

                                anchors.rightMargin: 0
                                anchors.bottomMargin: 0
                            }
                        }
                    }
                }
            }

            Text {
                id: text3
                x: 220
                y: 165
                width: 128
                height: 27
                color: "#487688"
                text: qsTr("forgot password?")
                anchors.right: parent.right
                anchors.bottom: parent.bottom
                font.pixelSize: 15
                anchors.rightMargin: 8
                anchors.bottomMargin: 8
            }
        }

        Button {
            id: button
            width: 88
            height: 39
            text: qsTr("Button")
            anchors.right: rectangle.left
            anchors.bottom: rectangle.top
            highlighted: true
            flat: true
            anchors.rightMargin: -220
            anchors.bottomMargin: -248
        }

        Text {
            id: text4
            width: 162
            color: "#000000"
            text: qsTr("Do not have account? Sign up")
            anchors.right: button.left
            anchors.bottom: button.top
            font.pixelSize: 12
            verticalAlignment: Text.AlignVCenter
            anchors.rightMargin: -126
            anchors.leftMargin: -117
            anchors.bottomMargin: -73
        }
    }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.66}D{i:2}D{i:7}D{i:11}D{i:13}D{i:12}D{i:10}D{i:9}D{i:16}D{i:18}
D{i:17}D{i:15}D{i:14}D{i:8}D{i:19}D{i:3}D{i:20}D{i:21}D{i:1}
}
##^##*/

