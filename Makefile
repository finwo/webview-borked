CFLAGS?=
CFLAGS+=`pkg-config --cflags --libs gtk+-3.0 webkit2gtk-4.0 glib-2.0`
CFLAGS+=-pthread

default: with_exit without_exit on_main

with_exit: main.c webview.cc webview.h
	g++ ${CFLAGS} -D WITH_EXIT -I. webview.cc main.c -o $@

without_exit: main.c webview.cc webview.h
	g++ ${CFLAGS} -I. webview.cc main.c -o $@

on_main: main.c webview.cc webview.h
	g++ ${CFLAGS} -D ON_MAIN -I. webview.cc main.c -o $@
