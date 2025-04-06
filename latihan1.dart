String sequentialSearch(List<int> arr, int x) {
  int jumlahPerbandingan = 0;
  for (int i = 0; i < arr.length; i++) {
    jumlahPerbandingan++;
    if (arr[i] == x) {
      return "Elemen ditemukan pada index : ${i}, dengan jumlah perbandingan : ${jumlahPerbandingan}";
    }
  }
  return "Data tidak ada, atau tidak ditemukan";
}

String binarySearch(List<int> arr, int l, int r, int x) {
  int jumlahPerbandingan = 0;
  while (l <= r) {
    int mid = (l + r) ~/ 2;
    jumlahPerbandingan++;
    if (arr[mid] == x) {
      return "Elemen ditemukan pada index: ${mid}, dengan jumlah perbandingan: ${jumlahPerbandingan}";
    } else if (arr[mid] < x) {
      l = mid + 1;
    } else {
      r = mid - 1;
    }
  }
  return "Tidak ditemukan sama sekali";
}

void main() {
  List<int> arr = [2, 3, 4, 10, 40];
  int x = 10;
  
  print("Sequential Search");
  print("${sequentialSearch(arr, x)}");
  print("Binary Search");
  print("${binarySearch(arr, 0, arr.length - 1, x)}");
}