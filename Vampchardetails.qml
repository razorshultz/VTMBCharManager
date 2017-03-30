import QtQuick 2.7
import QtQuick.Controls 1.2
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4
import QtQuick.Layouts 1.2
import QtQuick.Window 2.2
import QtQuick.Dialogs 1.2
import QtQuick.Controls.Styles.Desktop 1.0

import QtQuick.Controls.Material 2.0



Item {
    id: vampchardetails
    width: 297
    height: 57
    FontLoader { id: vtmbFont; source: "PERCTEXT.TTF" }

    property  string labelText: "Default"
    property string textfieldText: ""
    property string textfieldplaceholderText: "placeme"
    property int leftmargin: vampchardetailtextfield.anchors.leftMargin
   // property int textlabelwidth: 153

    Text
    {
        id: vampchardetailtextlabel
        x: 0
        y: 0
        width: contentWidth //make text label width expand to the text content
        text: labelText
        horizontalAlignment: Text.AlignHCenter

        font.family: vtmbFont.name
        font.pointSize: 36


    }

    TextField {

        id: vampchardetailtextfield
        width: 136
        text: textfieldText
        placeholderText: textfieldplaceholderText
        anchors.left: vampchardetailtextlabel.right
        anchors.leftMargin: leftmargin
        anchors.bottom: vampchardetailtextlabel.top
        anchors.bottomMargin: -48
        anchors.top: vampchardetailtextlabel.bottom
        anchors.topMargin: -36
        z: 1
        font.pointSize: 12
        opacity: 1
        readOnly: false
        horizontalAlignment: Text.AlignHCenter

        font.bold: false
        font.family: vtmbFont.name



            style: TextFieldStyle {
            textColor: "black"
            background: Rectangle {
                radius: 2

                border.color: "black"
                border.width: 1
                color: "darkgrey"
               }
            }


    }


}
