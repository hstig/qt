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

    ColumnLayout{
        RowLayout{
            Rectangle{
                color: "lightgray"

                implicitWidth: page_Credentials.width/2
                implicitHeight: lbl_cell_user.implicitHeight
                Label{
                    id: lbl_cell_user
                    text: "user"
                    anchors.centerIn: parent
                }
            }
            Rectangle{
                color: "lightgray"

                implicitWidth: page_Credentials.width/2
                implicitHeight: lbl_cell_password.height
                Label{
                    id: lbl_cell_password
                    text: "pass"
                    anchors.centerIn: parent
                }
            }
        }
        RowLayout{
            CredentialsTableView{
                model: SqlCredentialsModel{}

                implicitWidth: page_Credentials.width
                implicitHeight: page_Credentials.height
            }
        }
    }
}



