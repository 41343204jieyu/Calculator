QT += core gui widgets qml

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets qml

CONFIG += c++17

# 禁用過時 API（可選）
# DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000

SOURCES += \
    main.cpp \
    calculatordig.cpp

HEADERS += \
    calculatordig.h

# ---- 如果還是找不到 QJSEngine，可加上這一行 ----
INCLUDEPATH += $$[QT_INSTALL_HEADERS]/QtQml

# Default rules for deployment
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target
