import 'dart:io';

void main() {
  print("==============================================");
  print(" Program Menghitung IPK Mahasiswa");
  print("==============================================");

  // Meminta input jumlah semester
  int jumlahSemester = 0;
  while (jumlahSemester < 2 || jumlahSemester > 14) {
    stdout.write("Masukkan jumlah semester (2-14): ");
    jumlahSemester = int.parse(stdin.readLineSync()!);
    if (jumlahSemester < 2 || jumlahSemester > 14) {
      print("Jumlah semester harus antara 2 hingga 14.");
    }
  }

  List<List<Map<String, dynamic>>> transkrip = [];
  double totalNilai = 0;
  int totalSKS = 0;

  // Input untuk setiap semester
  for (int i = 0; i < jumlahSemester; i++) {
    stdout.write("Masukkan jumlah mata kuliah semester ${i + 1}: ");
    int jumlahMatkul = int.parse(stdin.readLineSync()!);
    while (jumlahMatkul < 2) {
      print("Minimal harus ada 2 mata kuliah.");
      stdout.write("Masukkan jumlah mata kuliah semester ${i + 1}: ");
      jumlahMatkul = int.parse(stdin.readLineSync()!);
    }

    List<Map<String, dynamic>> semesterData = [];
    int totalSKSSemester = 0;
    double totalNilaiSemester = 0;

    // Input untuk setiap mata kuliah
    for (int j = 0; j < jumlahMatkul; j++) {
      stdout.write("Masukkan nama matkul ke-${j + 1}: ");
      String namaMatkul = stdin.readLineSync()!;

      stdout.write("Masukkan jumlah SKS matkul: ");
      int sks = int.parse(stdin.readLineSync()!);
      while (sks < 1 || sks > 24) {
        print("Jumlah SKS tidak valid. SKS harus antara 1 hingga 24.");
        stdout.write("Masukkan jumlah SKS matkul: ");
        sks = int.parse(stdin.readLineSync()!);
      }

      String? nilaiHuruf = null;
      double nilaiAngka = 0;
      bool validHuruf = false;
      while (!validHuruf) {
        stdout.write("Masukkan nilai matkul (A/B/C/D/E): ");
        String? input = stdin.readLineSync();

        // Pastikan input tidak null dan tidak kosong
        if (input != null && input.isNotEmpty) {
          nilaiHuruf = input.toUpperCase().trim();

          switch (nilaiHuruf) {
            case 'A':
              nilaiAngka = 4;
              validHuruf = true;
              break;
            case 'B':
              nilaiAngka = 3;
              validHuruf = true;
              break;
            case 'C':
              nilaiAngka = 2;
              validHuruf = true;
              break;
            case 'D':
              nilaiAngka = 1;
              validHuruf = true;
              break;
            case 'E':
              nilaiAngka = 0;
              validHuruf = true;
              break;
            default:
              print("Nilai huruf tidak valid. Masukkan antara A-E.");
          }
        } else {
          print("Input tidak boleh kosong. Masukkan antara A-E.");
        }
      }

      // Menambahkan data mata kuliah
      semesterData.add({
        'namaMatkul': namaMatkul,
        'sks': sks,
        'nilaiHuruf': nilaiHuruf,
        'nilaiAngka': nilaiAngka
      });


      totalSKSSemester += sks;
      totalNilaiSemester += nilaiAngka * sks;
    }

    // Menghitung Nilai Rata-rata Semester (NR)
    double nrSemester = totalNilaiSemester / totalSKSSemester;
    totalSKS += totalSKSSemester;
    totalNilai += totalNilaiSemester;

    // Menambahkan data semester ke dalam transkrip
    transkrip.add(semesterData);

    // Menampilkan hasil untuk semester ini
    print("--------------------------------------------");
    print("Hasil Semester ${i + 1}:");
    print("Mata Kuliah        SKS     Nilai");
    for (var matkul in semesterData) {
      print(
          "${matkul['namaMatkul']}      ${matkul['sks']}       ${matkul['nilaiHuruf']}");
    }
    print("SKS : $totalSKSSemester");
    print("NR  : ${nrSemester.toStringAsFixed(2)}");
    print("--------------------------------------------");
  }

  // Menghitung IPK
  double ipk = totalNilai / totalSKS;

  // Menampilkan hasil akhir
  print("==============================================");
  print(" Total SKS : $totalSKS");
  print(" IPK : ${ipk.toStringAsFixed(2)}");
  print("==============================================");
}
