#ifndef MYCREDENTIALS_H
#define MYCREDENTIALS_H

#pragma once

#include <iostream>
#include <QObject>

class MyCredentials: public QObject
{
    Q_OBJECT
    Q_PROPERTY(std::string* getUser READ getUser WRITE setUser)
    Q_PROPERTY(std::string* getUser READ getPassword WRITE setPassword)

        public:
        explicit MyCredentials(std::string* user, std::string* password, QObject *parent = nullptr): m_user(user),m_password(password) {};

        void print() const{
            std::cout<<"user "<<*m_user<<std::endl;
            std::cout<<"password "<<*m_password<<std::endl;
            std::cout.flush();
        }

        std::string* getUser() const
        {
            return m_user;
        }

        void setUser(std::string* value)
        {
            m_user = value;
        }

        std::string* getPassword() const
        {
            return m_password;
        }

        void setPassword(std::string* value)
        {
            m_password = value;
        }

        private:
            std::string* m_user;
            std::string* m_password;
};

#endif // MYCREDENTIALS_H
