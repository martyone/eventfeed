include(../../common.pri)

TEMPLATE = lib

TARGET = meegotouchevents$${DASH_QT_VERSION}
isEmpty(PREFIX) {
    PREFIX=/usr
}
target.path = $$INSTALL_ROOT$$PREFIX/lib

system(qdbusxml2cpp -c MEventFeedProxy -p meventfeedproxy ../../org.nemomobile.events.EventFeed.xml)

SOURCES = meventfeedproxy.cpp \
          meventfeed.cpp

HEADERS = meventfeedproxy.h \
          meventfeed.h

headers.files = meventfeedproxy.h \
                meventfeed.h
headers.path = $$INSTALL_ROOT$$PREFIX/include/$$TARGET

prf.path = $$[QT_INSTALL_DATA]/mkspecs/features
prf.files = meegotouchevents$${DASH_QT_VERSION}.prf

INSTALLS += target \
            headers \
            prf
