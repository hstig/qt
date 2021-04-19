import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3

Page {
    id: page
    width: 600
    height: 400

    header: Label {
        text: qsTr("Databases")
        font.pixelSize: Qt.application.font.pixelSize * 2
        padding: 10
    }

    DBTableView{
        anchors.fill: parent
        model: dbConfigModel



    }

}
