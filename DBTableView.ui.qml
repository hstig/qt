import QtQuick 2.9
import QtQuick.Controls 1.4
import QtQuick.Layouts 1.3

TableView {
    id: dbTableView
    TableViewColumn {
      role: "m_dbHost"
      title: "Host"
      width: dbTableView.width/4
    }
    TableViewColumn {
      role: "m_dbName"
      title: "DB Name"
      width: dbTableView.width/4
    }
    TableViewColumn {
      role: "m_dbUserName"
      title: "User Name"
      width: dbTableView.width/4
    }
    TableViewColumn {
      role: "m_dbPassword"
      title: "Password"
      width: dbTableView.width/4
    }
}
