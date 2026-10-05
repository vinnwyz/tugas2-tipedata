import 'dart:io';
import 'dart:math';


void main() {

  var jalan=true;
void tampilmenu(){
  print('===================================');
  print('              TUGAS 1');
  print('===================================');
  print('1.Menghitung penjumlahan 5 variabel dengan tipe data yang berbeda\n2.menghitung luas dan keliling lingkaran dengan tipe data final atau const\n3.manipulasi string dengan membuat paragraf sederhana\n4.tentang pembuat program\n5.keluar');
}
void nama(){
  print('NAMA  : Kevin\nNPM   : 25421879\nKELAS : 3A');
}  
void hitung5var(){
  var a = 1;
  int b = 2;
  String c = '2.5';
  double d = 4.5;
  num e = 10;
  num hasil;
  hasil = a + b + double.parse(c) + d + e;

  print ('Hasil dari $a + $b + ${double.parse(c)} + $d + $e = $hasil');
}
void lingkaran(){
  const double jr = 21;
  final double luas;
  final double keliling;
    
  luas = pi * jr * jr;
  keliling = 2 * pi * jr;

  print('diketahui jari-jari = 21, maka:\nluas lingkaran = $luas\nkeliling lingkaran = $keliling');
}
void BMI(){
  String a = 'Peter Parker'; //Nama
  int b = 32; //umur
  double c = 78.5;  //berat badan (dlm kg)
  double d = 181;   //tinggi badan (dlm cm)
  num e;  //hasil BMI
  String f; //status berat badan
  double tgbdn=d/100; //tinggi badan (dlm meter)

  e = c /(tgbdn*tgbdn);
    
  if(e > 29.9){
    f='Kegemukan (obesitas)';
  } else if(e > 24.9){
    f='Kelebihan berat badan';
  }else if(e > 18.4){
    f='normal (ideal)';
  } else if(e > 0) {
    f='Kekurangan berat badan';
  } else {
    f='INVALID !';
  }
  print ('Nama $a, berusia $b tahun, dengan berat badan $c kg dan tinggi badan $d cm, setelah dihitung hasil BMI diperoleh nilai $e yang masuk kategori status $f');


}
void keluar(){
exit(0);
}
void validasi(){
  while (jalan==false) {
    stdout.write('apakah anda ingin melanjutkan program ? Y/N :');
    var inputval = stdin.readLineSync()?? '';
    if (inputval == 'Y') {
      jalan = true;
    }else if(inputval == 'N'){
      exit(0);
    }
  }
}

  while (jalan==true) {
    tampilmenu();
    stdout.write('Tampilkan hasil program :');
    var input = int.parse(stdin.readLineSync()!);
    switch (input) {
      case 1:
        hitung5var();
        jalan=false;
        validasi();
        break;
      case 2:
        lingkaran();
        jalan=false;
        validasi();
        break;
      case 3:
        BMI();
        jalan=false;
        validasi();
        break;
      case 4:
        nama();
        jalan=false;
        validasi();
      case 5:
        keluar();
        break;
      default:
    }
  }
 
}