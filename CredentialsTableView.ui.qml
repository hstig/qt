import QtQuick 2.12
import QtQuick.Controls 2.12

import credentials 1.0

TableView {
    id: credentialsTableView
    property alias credentialsTableView: credentialsTableView
    anchors.fill: parent
    columnSpacing: 2
    rowSpacing: 2
    clip: true

    model: SqlCredentialsModel{}
    delegate: Rectangle {
        color: "lightblue"
        implicitWidth: lbl_tableCell.width
        implicitHeight: lbl_tableCell.height
        Label {
            id: lbl_tableCell
            text: display
        }
    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
##^##*/
