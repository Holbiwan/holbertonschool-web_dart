int add(int a, int b) {
  return a + b;
}

int sub(int a, int b) {
  return a - b;
}

String showFunc(int a, int b) {
  String sAdd = 'Add ${a} + ${b} = ${add(a, b)}';
  String sSub = 'Sub ${a} - ${b} = ${sub(a, b)}';

  return '${sAdd}\n${sSub}';
}
