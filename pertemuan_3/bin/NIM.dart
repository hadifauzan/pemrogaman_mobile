void main() {
  for (int i = 0; i <= 201; i++) {
    if (isPrime(i)) {
      print('Nama Saya : Fauzan dan NIM saya : 2241760039');
    } else {
      print(i);
    }
  }
}

bool isPrime(int num) {
  if (num < 2) {
    return false;
  }
  for (int i = 2; i <= num ~/ 2; i++) {
    if (num % i == 0) {
      return false;
    }
  }
  return true;
}
