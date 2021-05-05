import QtQuick 2.12
import QtQuick.Controls 2.12

import credentials 1.0

TableView {
    id: dbTableView
    columnSpacing: 5
    rowSpacing: 1
    clip: true

    delegate: Rectangle{
    implicitWidth: dbTableView.width/2;
    implicitHeight: lb_cell.height;
        color: "lightblue"
        Label {
            id: lb_cell
            text: display
            anchors.centerIn: parent
        }
    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
##^##*/
