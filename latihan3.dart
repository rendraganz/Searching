void sequentialSearch(List<int> arr, int key) {
  List<int> elemenDitemukanPada = [];
  for (int i = 0; i < arr.length; i++) {
    if (arr[i] == key) elemenDitemukanPada.add(i);
  }
  if (elemenDitemukanPada.isEmpty) {
    print("Elemen tidak dapat ditemukan");
  } else {
    for (int x in elemenDitemukanPada) {
      print("Elemen ${key} ditemukan pada index : ${x}");
    }
  }
}

void main() {
  List<int> arr = [2, 3, 10, 4, 10, 40, 10, 5];
  int key = 10;

  print("Data : ${arr}");
  sequentialSearch(arr, key);
}