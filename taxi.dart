import 'dart:io';
import 'dart:math';

void main() {
  stdout.write('คำนวนค่า taxi ตามจำนวนกิโลที่นั่ง = ');
  double km = double.parse(stdin.readLineSync()!);

  double decimalPart = km - km.floor();

  if (decimalPart < 0.5) {
    km = km.floorToDouble();
    print(km);
  } else {
    km = km.ceilToDouble();
    print(km);
  }

  if (km <= 10) {
    km = km - 1;
    double result = 40 + (6.50 * km);
    stdout.write("ราคา = $result บาท");
  } else if (km <= 20) {
    double result = 98.5 + (7.00 * (km - 10));
    stdout.write("ราคา = $result บาท");
  } else if (km <= 40) {
    double result = 238.5 + (8.00 * (km - 20));
    stdout.write("ราคา = $result บาท");
  } else if (km <= 60) {
    double result = 398.5 + (8.50 * (km - 40));
    stdout.write("ราคา = $result บาท");
  } else if (km <= 80) {
    double result = 568.5 + (9.00 * (km - 60));
    stdout.write("ราคา = $result บาท");
  } else {
    double result = 748.5 + (10.50 * (km - 80));
    stdout.write("ราคา = $result บาท");
  }
}
