/****************************************************************************
** Meta object code from reading C++ file 'testclassfirst.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.4.2)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../WeldingMonitor/testclassfirst.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'testclassfirst.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.4.2. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
struct qt_meta_stringdata_TestClassFirst_t {
    QByteArrayData data[6];
    char stringdata[54];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_TestClassFirst_t, stringdata) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_TestClassFirst_t qt_meta_stringdata_TestClassFirst = {
    {
QT_MOC_LITERAL(0, 0, 14), // "TestClassFirst"
QT_MOC_LITERAL(1, 15, 7), // "cppSlot"
QT_MOC_LITERAL(2, 23, 0), // ""
QT_MOC_LITERAL(3, 24, 3), // "msg"
QT_MOC_LITERAL(4, 28, 14), // "GetTheResponse"
QT_MOC_LITERAL(5, 43, 10) // "GetTheList"

    },
    "TestClassFirst\0cppSlot\0\0msg\0GetTheResponse\0"
    "GetTheList"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_TestClassFirst[] = {

 // content:
       7,       // revision
       0,       // classname
       0,    0, // classinfo
       3,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: name, argc, parameters, tag, flags
       1,    1,   29,    2, 0x0a /* Public */,

 // methods: name, argc, parameters, tag, flags
       4,    0,   32,    2, 0x02 /* Public */,
       5,    0,   33,    2, 0x02 /* Public */,

 // slots: parameters
    QMetaType::Void, QMetaType::QString,    3,

 // methods: parameters
    QMetaType::QString,
    QMetaType::QStringList,

       0        // eod
};

void TestClassFirst::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        TestClassFirst *_t = static_cast<TestClassFirst *>(_o);
        switch (_id) {
        case 0: _t->cppSlot((*reinterpret_cast< const QString(*)>(_a[1]))); break;
        case 1: { QString _r = _t->GetTheResponse();
            if (_a[0]) *reinterpret_cast< QString*>(_a[0]) = _r; }  break;
        case 2: { QStringList _r = _t->GetTheList();
            if (_a[0]) *reinterpret_cast< QStringList*>(_a[0]) = _r; }  break;
        default: ;
        }
    }
}

const QMetaObject TestClassFirst::staticMetaObject = {
    { &QObject::staticMetaObject, qt_meta_stringdata_TestClassFirst.data,
      qt_meta_data_TestClassFirst,  qt_static_metacall, Q_NULLPTR, Q_NULLPTR}
};


const QMetaObject *TestClassFirst::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *TestClassFirst::qt_metacast(const char *_clname)
{
    if (!_clname) return Q_NULLPTR;
    if (!strcmp(_clname, qt_meta_stringdata_TestClassFirst.stringdata))
        return static_cast<void*>(const_cast< TestClassFirst*>(this));
    return QObject::qt_metacast(_clname);
}

int TestClassFirst::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QObject::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 3)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 3;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 3)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 3;
    }
    return _id;
}
QT_END_MOC_NAMESPACE
