import QtQuick 2.6
import QtQuick.Controls 1.2
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4
import QtQuick.Layouts 1.2
import QtQuick.Window 2.2
import QtQuick.Dialogs 1.2
import QtQuick.Controls.Styles.Desktop 1.0
import QtQuick.Controls.Material 2.0

ScrollView {

    style: ScrollViewStyle {
        handle: Rectangle {
            implicitWidth: 15
            implicitHeight: 20
            color: styleData.pressed ? "white" : "lightgray"
        }

        scrollBarBackground: Rectangle {
            implicitWidth: 12
            implicitHeight: 12
            color: "darkgray"
        }

        // handleOverlap: 30
    }

    id: scrollbars
    x: 0
    y: 0
    width: 1600
    height: 900
    highlightOnFocus: true
    horizontalScrollBarPolicy: Qt.ScrollBarAsNeeded
    verticalScrollBarPolicy: Qt.ScrollBarAsNeeded

    Rectangle {
        FontLoader {
            id: vtmbIcons
            source: "wod3.TTF"
        }
        Text {
            id: title
            x: 566
            y: 15
            color: "#000000"
            // text: qsTr("Vampire The Masquerade")
            text: qsTr("/")
            transformOrigin: Item.Top
            verticalAlignment: Text.AlignTop
            horizontalAlignment: Text.AlignHCenter
            font.bold: false
            font.pointSize: 120
            font.family: vtmbIcons.name
            Layout.row: 1
            Layout.column: 1
            Layout.preferredWidth: 1280

            Layout.fillWidth: true
            Layout.fillHeight: true
        }
        width: 1600
        height: 900
        FontLoader {
            id: vtmbFont
            source: "PERCTEXT.TTF"
        }

        GridView {
            x: 125
            y: 203
            width: 1352
            height: 309
            boundsBehavior: Flickable.StopAtBounds
            cacheBuffer: 400
            snapMode: GridView.NoSnap
            keyNavigationWraps: true
            cellHeight: 100
            cellWidth: 450
            layoutDirection: Qt.LeftToRight
            flow: GridView.FlowTopToBottom
            contentWidth: 34

            model: ListModel {
                ListElement {
                    label: "Name"
                    placeholder: "Char name"
                }
                ListElement {
                    label: "Player"
                    placeholder: "Player name"
                }
                ListElement {
                    label: "Chronicle"
                    placeholder: "Chronicle"
                }
                ListElement {
                    label: "Nature"
                    placeholder: "Nature"
                }
                ListElement {
                    label: "Demeanor"
                    placeholder: "Demeanor"
                }
                ListElement {
                    label: "Concept"
                    placeholder: "Concept"
                }
                ListElement {
                    label: "Clan"
                    placeholder: "Clan"
                }
                ListElement {
                    label: "Generation"
                    placeholder: "Generation"
                }
                ListElement {
                    label: "Sire"
                    placeholder: "Sire"
                }
            }

            // delegate: PlayerStatsDelegate
            delegate: Vampchardetails {
                leftmargin: 10
                labelText: label + ":"
                textfieldplaceholderText: placeholder
            }
        }
    }
}
