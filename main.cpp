#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQuickView>


int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);
    QQuickView view;
    view.setSource(QUrl(QStringLiteral("qrc:/MainForm.ui.qml")));

    view.show();

    return app.exec();
}
