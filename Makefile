CFLAGS?=
CFLAGS+=`pkg-config --cflags --libs gtk+-3.0 webkit2gtk-4.0 glib-2.0`
CFLAGS+=-pthread

borked: main.c webview.cc webview.h
	g++ ${CFLAGS} -I. webview.cc main.c -o borked
