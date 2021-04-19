import QtQuick 2.12
import QtQuick.Controls 2.5

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("Tabs")

    ListModel {
        id: credentialsModel
       ListElement {

            // Thats my goal: I want to get member variables of the ContextProperty myList
            // Why this error?: ListElement: cannot use script for property value
//          UserName: myCredentials.getUser
//          Password: myCredentials.getPassword

            // Works, but is obviously not my goal
            UserName: myCredentials.getUser
            Password: myCredentials.getPassword
        }
    }

    SwipeView {
        id: swipeView
        anchors.fill: parent
        currentIndex: tabBar.currentIndex

        CredentialsView{
            id: dataBasesView

        }
    }

    footer: TabBar {
        id: tabBar
        currentIndex: swipeView.currentIndex

        TabButton {
            text: qsTr("Credentials")
        }
    }
}
