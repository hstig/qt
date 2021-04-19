#ifndef MYLISTMODEL_H
#define MYLISTMODEL_H

#pragma once

#include <iostream>
#include <QObject>

class MyListModel: public QObject
{
    Q_OBJECT
    Q_PROPERTY(std::string getUser READ getUser)

        public:
        explicit MyListModel(QObject *parent = nullptr) {
                        user = "";
                        password = "";

                };

                std::string user;
                std::string password;


        void setConnectionDetails()
                {
                         user = "testUser";		// the root user of mysql
                         password = "test123"; // the password of the root user in mysql
                }

        void setConnectionDetails(std::string ser, std::string usr, std::string passwd, std::string db)
                {
                        user = usr;
                        password = passwd;
                }


        void print() const{
                        std::cout<<"user "<<user<<std::endl;
                }

        std::string getUser() const
        {
            return user;
        }

        void setUser(const std::string &value)
        {
            user = value;
        }
};

#endif // MYLISTMODEL_H
