## Building

Simply build with `make` on a linux machine to build a program for both variations of the issue.

## Experienced behavior

#### Without pthread_exit

After running the program and closing the window, the program exits with an abort trap

#### Without pthread_exit

After running the program and closing the window, the main function is finished but a thread somewhere appears to stay running causing the program to not finish.

## Expected behavior

In both cases, the program simply exits without issue.
