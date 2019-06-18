// -3, -2, -1, 1, 2, 3
#ifndef random()
#define random() j=1+(rand8()%3); rand8()&1?-j:j;
#endif

