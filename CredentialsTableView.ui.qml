import QtQuick 2.9
import QtQuick.Controls 1.4
import QtQuick.Layouts 1.3

TableView {
    id: credentialsTableView
    TableViewColumn {
        role: "UserName"
        title: "User Name"
        width: credentialsTableView.width / 2
    }
    TableViewColumn {
        role: "Password"
        title: "Password"
        width: credentialsTableView.width / 2
    }
}
