int fib(int i) {
  if (i == 0)
    return 0;
  if (i <= 2)
    return 1;
  return fib(i - 1) + fib(i - 2);
}
int main(int argc, char *argv[]) {
  int result = fib(10);
  return 0;
}
