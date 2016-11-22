#ifndef TESTCLASSFIRST_H
#define TESTCLASSFIRST_H

#include <QObject>
#include <QStringList>

class TestClassFirst : public QObject
{
    Q_OBJECT
public:
    explicit TestClassFirst(QObject *parent = 0);
    Q_INVOKABLE QString GetTheResponse() {return "Eren";}
    Q_INVOKABLE QStringList GetTheList(){QStringList fonts; fonts << "1" << "2" << "20" << "50" <<  "10" << "900"; return fonts;}


signals:

public slots:
    void cppSlot(const QString &msg);
};

#endif // TESTCLASSFIRST_H
