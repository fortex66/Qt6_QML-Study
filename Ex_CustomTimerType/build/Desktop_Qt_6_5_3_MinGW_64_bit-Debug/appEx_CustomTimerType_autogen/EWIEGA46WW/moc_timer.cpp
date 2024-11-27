/****************************************************************************
** Meta object code from reading C++ file 'timer.h'
**
** Created by: The Qt Meta Object Compiler version 68 (Qt 6.5.3)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../../timer.h"
#include <QtCore/qmetatype.h>

#if __has_include(<QtCore/qtmochelpers.h>)
#include <QtCore/qtmochelpers.h>
#else
QT_BEGIN_MOC_NAMESPACE
#endif


#include <memory>

#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'timer.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 68
#error "This file was generated using the moc from 6.5.3. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

#ifndef Q_CONSTINIT
#define Q_CONSTINIT
#endif

QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
QT_WARNING_DISABLE_GCC("-Wuseless-cast")
namespace {

#ifdef QT_MOC_HAS_STRINGDATA
struct qt_meta_stringdata_CLASSTimerENDCLASS_t {};
static constexpr auto qt_meta_stringdata_CLASSTimerENDCLASS = QtMocHelpers::stringData(
    "Timer",
    "timeout",
    "",
    "intervalChanged",
    "activeChanged",
    "start",
    "stop",
    "interval",
    "active"
);
#else  // !QT_MOC_HAS_STRING_DATA
struct qt_meta_stringdata_CLASSTimerENDCLASS_t {
    uint offsetsAndSizes[18];
    char stringdata0[6];
    char stringdata1[8];
    char stringdata2[1];
    char stringdata3[16];
    char stringdata4[14];
    char stringdata5[6];
    char stringdata6[5];
    char stringdata7[9];
    char stringdata8[7];
};
#define QT_MOC_LITERAL(ofs, len) \
    uint(sizeof(qt_meta_stringdata_CLASSTimerENDCLASS_t::offsetsAndSizes) + ofs), len 
Q_CONSTINIT static const qt_meta_stringdata_CLASSTimerENDCLASS_t qt_meta_stringdata_CLASSTimerENDCLASS = {
    {
        QT_MOC_LITERAL(0, 5),  // "Timer"
        QT_MOC_LITERAL(6, 7),  // "timeout"
        QT_MOC_LITERAL(14, 0),  // ""
        QT_MOC_LITERAL(15, 15),  // "intervalChanged"
        QT_MOC_LITERAL(31, 13),  // "activeChanged"
        QT_MOC_LITERAL(45, 5),  // "start"
        QT_MOC_LITERAL(51, 4),  // "stop"
        QT_MOC_LITERAL(56, 8),  // "interval"
        QT_MOC_LITERAL(65, 6)   // "active"
    },
    "Timer",
    "timeout",
    "",
    "intervalChanged",
    "activeChanged",
    "start",
    "stop",
    "interval",
    "active"
};
#undef QT_MOC_LITERAL
#endif // !QT_MOC_HAS_STRING_DATA
} // unnamed namespace

Q_CONSTINIT static const uint qt_meta_data_CLASSTimerENDCLASS[] = {

 // content:
      11,       // revision
       0,       // classname
       0,    0, // classinfo
       5,   14, // methods
       2,   49, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       3,       // signalCount

 // signals: name, argc, parameters, tag, flags, initial metatype offsets
       1,    0,   44,    2, 0x06,    3 /* Public */,
       3,    0,   45,    2, 0x06,    4 /* Public */,
       4,    0,   46,    2, 0x06,    5 /* Public */,

 // slots: name, argc, parameters, tag, flags, initial metatype offsets
       5,    0,   47,    2, 0x0a,    6 /* Public */,
       6,    0,   48,    2, 0x0a,    7 /* Public */,

 // signals: parameters
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,

 // slots: parameters
    QMetaType::Void,
    QMetaType::Void,

 // properties: name, type, flags
       7, QMetaType::Int, 0x00015103, uint(1), 0,
       8, QMetaType::Bool, 0x00015001, uint(2), 0,

       0        // eod
};

Q_CONSTINIT const QMetaObject Timer::staticMetaObject = { {
    QMetaObject::SuperData::link<QObject::staticMetaObject>(),
    qt_meta_stringdata_CLASSTimerENDCLASS.offsetsAndSizes,
    qt_meta_data_CLASSTimerENDCLASS,
    qt_static_metacall,
    nullptr,
    qt_incomplete_metaTypeArray<qt_meta_stringdata_CLASSTimerENDCLASS_t,
        // property 'interval'
        QtPrivate::TypeAndForceComplete<int, std::true_type>,
        // property 'active'
        QtPrivate::TypeAndForceComplete<bool, std::true_type>,
        // Q_OBJECT / Q_GADGET
        QtPrivate::TypeAndForceComplete<Timer, std::true_type>,
        // method 'timeout'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'intervalChanged'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'activeChanged'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'start'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'stop'
        QtPrivate::TypeAndForceComplete<void, std::false_type>
    >,
    nullptr
} };

void Timer::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        auto *_t = static_cast<Timer *>(_o);
        (void)_t;
        switch (_id) {
        case 0: _t->timeout(); break;
        case 1: _t->intervalChanged(); break;
        case 2: _t->activeChanged(); break;
        case 3: _t->start(); break;
        case 4: _t->stop(); break;
        default: ;
        }
    } else if (_c == QMetaObject::IndexOfMethod) {
        int *result = reinterpret_cast<int *>(_a[0]);
        {
            using _t = void (Timer::*)();
            if (_t _q_method = &Timer::timeout; *reinterpret_cast<_t *>(_a[1]) == _q_method) {
                *result = 0;
                return;
            }
        }
        {
            using _t = void (Timer::*)();
            if (_t _q_method = &Timer::intervalChanged; *reinterpret_cast<_t *>(_a[1]) == _q_method) {
                *result = 1;
                return;
            }
        }
        {
            using _t = void (Timer::*)();
            if (_t _q_method = &Timer::activeChanged; *reinterpret_cast<_t *>(_a[1]) == _q_method) {
                *result = 2;
                return;
            }
        }
    }else if (_c == QMetaObject::ReadProperty) {
        auto *_t = static_cast<Timer *>(_o);
        (void)_t;
        void *_v = _a[0];
        switch (_id) {
        case 0: *reinterpret_cast< int*>(_v) = _t->interval(); break;
        case 1: *reinterpret_cast< bool*>(_v) = _t->isActive(); break;
        default: break;
        }
    } else if (_c == QMetaObject::WriteProperty) {
        auto *_t = static_cast<Timer *>(_o);
        (void)_t;
        void *_v = _a[0];
        switch (_id) {
        case 0: _t->setInterval(*reinterpret_cast< int*>(_v)); break;
        default: break;
        }
    } else if (_c == QMetaObject::ResetProperty) {
    } else if (_c == QMetaObject::BindableProperty) {
    }
    (void)_a;
}

const QMetaObject *Timer::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *Timer::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_CLASSTimerENDCLASS.stringdata0))
        return static_cast<void*>(this);
    return QObject::qt_metacast(_clname);
}

int Timer::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QObject::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 5)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 5;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 5)
            *reinterpret_cast<QMetaType *>(_a[0]) = QMetaType();
        _id -= 5;
    }else if (_c == QMetaObject::ReadProperty || _c == QMetaObject::WriteProperty
            || _c == QMetaObject::ResetProperty || _c == QMetaObject::BindableProperty
            || _c == QMetaObject::RegisterPropertyMetaType) {
        qt_static_metacall(this, _c, _id, _a);
        _id -= 2;
    }
    return _id;
}

// SIGNAL 0
void Timer::timeout()
{
    QMetaObject::activate(this, &staticMetaObject, 0, nullptr);
}

// SIGNAL 1
void Timer::intervalChanged()
{
    QMetaObject::activate(this, &staticMetaObject, 1, nullptr);
}

// SIGNAL 2
void Timer::activeChanged()
{
    QMetaObject::activate(this, &staticMetaObject, 2, nullptr);
}
QT_WARNING_POP
