char *string = "....";
int *s = &string[0];
int   length = 0;
while (*s != '\0') {
   length++;  // increment length
   s++;       // move to next char
}