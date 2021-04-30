#include "sqlcredentialsmodel.h"

#include <QDebug>
#include <QSqlError>
#include <QSqlQuery>

static void createTable()
{
    for (auto table: QSqlDatabase::database().tables()){
        qDebug()<<"table "<<table;
    }

    if (QSqlDatabase::database().tables().contains(QStringLiteral("Credentials"))) {
        // The table already exists; we don't need to do anything.
        return;
    }

    QSqlQuery query;
    if (!query.exec(
        "CREATE TABLE IF NOT EXISTS 'Credentials' ("
        "   'username', 'password' TEXT NOT NULL,"
        "   PRIMARY KEY(username)"
        ")")) {
        qFatal("Failed to query database: %s", qPrintable(query.lastError().text()));
    }

    query.exec("INSERT INTO Credentials VALUES('bert', 'b&c' )");
    query.exec("INSERT INTO Credentials VALUES('emmy', 'e&c' )");
    query.exec("INSERT INTO Credentials VALUES('hans', 'h&c' )");
}

SqlCredentialsModel::SqlCredentialsModel(QObject *parent) :
    QSqlQueryModel(parent)
{
    createTable();

    QSqlQuery query;

    if (!query.exec("SELECT * FROM Credentials"))
        qFatal("Contacts SELECT query failed: %s", qPrintable(query.lastError().text()));

    setQuery(query);
    if (lastError().isValid())
        qFatal("Cannot set query on SqlCredentialsModel: %s", qPrintable(lastError().text()));
}
