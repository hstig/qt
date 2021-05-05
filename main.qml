import QtQuick 2.12
import QtQuick.Controls 2.5

ApplicationWindow {
    visible: true
    width: 100
    height: 120
    title: qsTr("Credentials")

    SwipeView {
        id: swipeView

        CredentialsView{
            id: credentialsView
        }
    }
}
