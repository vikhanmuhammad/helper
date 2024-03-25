import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'pengeluaran.dart';

class Aktivitas extends StatelessWidget {
  const Aktivitas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 255, 255, 255),
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF47A992),
          title: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              "Aktivitas",
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
              ),
            ),
          ), // Menggunakan properti title untuk menampilkan teks "Aktivitas"
        ),
        body: Stack(
          children: [
            AktivitasDetail(),
          ],
        ),
      ), // Set AktivitasDetail sebagai home di sini
    );
  }
}

class AktivitasDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Pengeluaran()),
              );
            },
            child: Container(
              child: Positioned.fill(
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    margin: EdgeInsets.only(top: 80),
                    width: 340,
                    height: 95,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          spreadRadius: 3,
                          blurRadius: 7,
                          offset: Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 42.0, top: 6.0),
                              child: Text('07.30', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.grey)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 42.0, top: 6.0),
                              child: Text('08.00', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.grey)),
                            ),
                          ],
                        ),
                        SizedBox(height: 4), // Tambahkan spasi antara baris 1 dan 2
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 30.0),
                              child: Text('Bandung', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 71, 169, 146))),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 0.0),
                              child: Text('>>', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 71, 169, 146))),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 30.0),
                              child: Text('Jakarta', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 71, 169, 146))),
                            ),
                          ],
                        ),
                        SizedBox(height: 4), // Tambahkan spasi antara baris 2 dan 3
                        Padding(
                          padding: const EdgeInsets.only(left: 22.0, bottom: 6.0),
                          child: Text('07 Jan 2024', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 128, 128, 128))),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 15,
            left: MediaQuery.of(context).size.width / 2 - 180,
            child: Row(
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Aksi ketika tombol pertama ditekan
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 12.0),
                    minimumSize: Size(100, 20),
                    backgroundColor: Color.fromARGB(255, 235, 235, 235),
                  ),
                  child: Text(
                    'Selanjutnya',
                    style: TextStyle(color: Color.fromARGB(255, 66, 66, 66), fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () {
                    // Aksi ketika tombol kedua ditekan
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 12.0),
                    minimumSize: Size(115, 20),
                    backgroundColor: Color.fromARGB(255, 235, 235, 235),
                  ),
                  child: Text(
                    'Proses',
                    style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () {
                    // Aksi ketika tombol ketiga ditekan
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 12.0),
                    minimumSize: Size(115, 20),
                    backgroundColor: Color.fromARGB(255, 235, 235, 235),
                  ),
                  child: Text(
                    'Selesai',
                    style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
