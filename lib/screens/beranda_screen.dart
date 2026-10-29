import 'package:flutter/material.dart';
import '../models/mata_kuliah.dart';
class BerandaScreen extends StatelessWidget {
  const BerandaScreen({super.key});
  static const _jadwal = [
    MataKuliah(nama: 'Intelegensi Buatan', sks: 3, hari: 'Senin', jam: '10:00:00 - 12:00:00'),
    MataKuliah(nama: 'Sistem Mikroprosessor', sks: 3, hari: 'Selasa', jam: '16:00:00 - 18:00:00'),
    MataKuliah(nama: 'Bahasa Indonesia', sks: 2, hari: 'Rabu', jam: '13:00:00 - 14:20:00'),
    MataKuliah(nama: 'Pengembangan Diri', sks: 2, hari: 'Rabu', jam: '19:00:00 - 20:20:00'),
    MataKuliah(nama: 'Pemograman Web I', sks: 3, hari: 'Kamis', jam: '08:00:00 - 10:00:00'),
    MataKuliah(nama: 'Augmented & Virtual Reality', sks: 3, hari: 'Kamis', jam: '10:00:00 - 12:00:00'),
    MataKuliah(nama: 'Pemograman Mobole II', sks: 3, hari: 'Kamis', jam: '13:00:00 - 10:00:00'),
    MataKuliah(nama: 'Desain Kreatif Aplikasi dan Game', sks: 3, hari: 'Jumat', jam: '10:00:00 - 12:00:00'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('KampusKu')),
      body: ListView(
        children: [
          for (final mk in _jadwal)
            ListTile(
              leading: const Icon(Icons.class_),
              title: Text(mk.nama),
              subtitle: Text('${mk.jam} · ${mk.hari} · ${mk.sks} SKS'),
            ),
        ],
      ),
    );
  }
}