#ifndef SQLCREDENTIALSMODEL_H
#define SQLCREDENTIALSMODEL_H

#include <QSqlQueryModel>

class SqlCredentialsModel : public QSqlQueryModel
{
public:
    SqlCredentialsModel(QObject *parent = 0);
};

#endif // SQLCREDENTIALSMODEL_H
