#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlEngine>
#include <QQmlContext>
#include "mousememory.h"
#include <memory>


int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
    auto mouse = std::make_unique<MouseMemory>();
    auto app= QGuiApplication{argc, argv};
    auto engine =QQmlApplicationEngine{};
    const auto url=QUrl{QStringLiteral("qrc:/main.qml")};
    engine.load(url);
    engine.rootContext()->setContextProperty("mouse",mouse.get());
    return app.exec();
}
