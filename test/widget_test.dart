import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Art Exhibition Widget Test', (WidgetTester tester) async {
    // Membangun aplikasi dan memicu frame
    await tester.pumpWidget(const MyApp() as Widget);

    // Memastikan bahwa daftar karya seni ditampilkan
    expect(find.byType(Image),
        findsWidgets); // Menyaring apakah gambar (karya seni) ada
    expect(
        find.byType(Text), findsWidgets); // Menyaring apakah teks deskripsi ada

    // Memastikan ada beberapa teks, misalnya deskripsi seni yang ditampilkan
    expect(find.text('Deskripsi Karya Seni'), findsWidgets);

    // Memastikan gambar pertama dapat ditekan
    final firstImage = find.byType(Image).first;
    await tester.tap(firstImage); // Mengirimkan ketukan pada gambar pertama
    await tester.pump(); // Memicu perubahan tampilan setelah ketukan

    // Memastikan detail karya seni ditampilkan setelah gambar ditekan (misalnya, membuka detail)
    expect(find.text('Detail Karya Seni'),
        findsOneWidget); // Ganti dengan teks yang relevan jika ada
  });
}

class MyApp {
  const MyApp();
}
