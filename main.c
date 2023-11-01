#include <stdio.h>
#include <pthread.h>
#include "webview.h"

#define UNUSED(x) (void)x

void * thread_window(void *arg) {
  UNUSED(arg);

  webview_t w = webview_create(0, NULL);
  webview_set_title(w, "Basic Example");
  webview_set_size(w, 480, 320, WEBVIEW_HINT_NONE);
  webview_set_html(w, "Hello World");
  webview_run(w);
  webview_destroy(w);
  printf("thread_window finished\n");
  return NULL;
}

int main() {
  pthread_t pt_window;
  pthread_create(&pt_window, 0, thread_window, NULL);
  pthread_join(pt_window, NULL);

#ifdef WITH_EXIT
  printf("thread_main finished\n");
  pthread_exit(NULL);
#endif

  printf("thread_main finished\n");
  return 0;
}
