#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>

#include "mycredentials.h"

int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

    QGuiApplication app(argc, argv);

    std::string* myUser;
    std::string user("usr");
    myUser = &user;

    std::string* myPassword;
    std::string password("psw");
    myPassword = &password;

    MyCredentials myCredentials(myUser, myPassword);

    myCredentials.print();

    QQmlApplicationEngine engine;
    engine.rootContext()->setContextProperty(QStringLiteral("myCredentials"), &myCredentials);

    const QUrl url(QStringLiteral("qrc:/main.qml"));
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
                     &app, [url](QObject *obj, const QUrl &objUrl) {
        if (!obj && url == objUrl)
            QCoreApplication::exit(-1);
    }, Qt::QueuedConnection);
    engine.load(url);

    return app.exec();
}
