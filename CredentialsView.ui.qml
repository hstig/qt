import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3

import credentials 1.0

Page {
    id: page_Credentials
    header: Label {
        text: qsTr("Credentials")
        font.pixelSize: Qt.application.font.pixelSize
        padding: 10
    }

    CredentialsTableView{
        anchors.fill: parent
    }

}
