#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include "patientsparams.h"


int main(int argc, char *argv[])
{
#if QT_VERSION < QT_VERSION_CHECK(6, 0, 0)
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
#endif

    QGuiApplication app(argc, argv);

    PatientsParams params1;
    PatientsParams params2;

    QQmlApplicationEngine engine;

    engine.rootContext()->setContextProperty("Params1", &params1);
    engine.rootContext()->setContextProperty("Params2", &params2);

    const QUrl url(QStringLiteral("qrc:/main.qml"));
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
                     &app, [url](QObject *obj, const QUrl &objUrl) {
        if (!obj && url == objUrl)
            QCoreApplication::exit(-1);
    }, Qt::QueuedConnection);
    engine.load(url);

    return app.exec();
}
