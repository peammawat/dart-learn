import 'dart:io';
import 'dart:math';

void main() {
  stdout.write('กำนวนค่า taxi ตามจำนวนกิโลที่นั่ง = ');
  double km = double.parse(stdin.readLineSync()!);

  double decimalPart = km - km.floor();

  if (decimalPart < 0.5) {
    km = km.floorToDouble();
  } else {
    km = km.ceilToDouble();
  }

  if (km <= 10) {
    km = km - 1;
    double result = 40 + (6.50 * km);
    stdout.write("ราคา = $result บาท");
  } else if (km <= 20) {
    km = km - 1;
    double result = 40 + (7.00 * km);
    stdout.write("ราคา = $result บาท");
  } else if (km <= 40) {
    km = km - 1;
    double result = 40 + (8.00 * km);
    stdout.write("ราคา = $result บาท");
  } else if (km <= 60) {
    km = km - 1;
    double result = 40 + (8.50 * km);
    stdout.write("ราคา = $result บาท");
  } else if (km <= 80) {
    km = km - 1;
    double result = 40 + (9.00 * km);
    stdout.write("ราคา = $result บาท");
  } else {
    km = km - 1;
    double result = 40 + (10.50 * km);
    stdout.write("ราคา = $result บาท");
  }
}
