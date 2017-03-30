import QtQuick 2.7
import QtQuick.Controls 1.2
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4
import QtQuick.Layouts 1.2
import QtQuick.Window 2.2
import QtQuick.Dialogs 1.2


Component
{
    id: playerStatsDelegate

    Vampchardetails
    {
        labelText: label + ":"
        textfieldplaceholderText: placeholder
    }


}

