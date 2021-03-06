import "dart:io";
import "dart:core";

int isPrime(int n) {
  if (n <= 1) return 0;

  for (int i = 2; i < n; i++) {
    if (n % i == 0) {
      return 0;
    }
  }

  return 1;
}

void main() {
  // Reversing a String
  String str = "Flutter";
  String rev = str.split("").reversed.join();
  print(rev);

  //Finding vowels
  var list = new List(10);
  list = str.split("");
  print("Vowels are : ");
  for (String i in list) {
    if (i == "a" || i == "A") {
      print(i);
    } else if (i == "e" || i == "E") {
      print(i);
    } else if (i == "i" || i == "I") {
      print(i);
    } else if (i == "o" || i == "O") {
      print(i);
    } else if (i == "u" || i == "U") {
      print(i);
    }
  }
  //Segregating Even,Odd and Prime in different list

  var number = "123456789";
  var li = new List(10);
  li = number.split("");
  List<int> even = List<int>();
  List<int> odd = List<int>();
  List<int> prime = List<int>();
  for (var i in li) {
    if (int.parse(i) % 2 == 0) {
      even.add(int.parse(i));
    }
    if (int.parse(i) % 2 != 0) {
      odd.add(int.parse(i));
    }
    if (isPrime(int.parse(i)) == 1) {
      prime.add(int.parse(i));
    }
  }
  print("Even list :$even");
  print("Odd list :$odd");
  print("Prime list :$prime");
}
