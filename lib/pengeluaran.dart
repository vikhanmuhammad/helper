import 'package:flutter/material.dart';

class Pengeluaran extends StatelessWidget {
  const Pengeluaran({Key? key}) : super(key: key);

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
          title: Text(
            "Pengeluaran",
            style: TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600,
            ),
          ),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context).pop(); // Kembali ke halaman sebelumnya
            },
          ), // Menggunakan properti title untuk menampilkan teks "Aktivitas"
        ),
        body: buildPageView(context),
        floatingActionButton: buildFloatingActionButton(context),
        ),
      ); // Set AktivitasDetail sebagai home di sini
  }
}

Widget buildPageView(BuildContext context) {
  return Column(
    children: [
      Expanded(
        child: PageView(
          children: [
            buildExpenseContainer(context),
            buildPage(color: Colors.green, text: 'Page 2'),
            buildPage(color: Colors.orange, text: 'Page 3'),
          ],
        ),
      ),
    ],
  );
}

// info penumpang
Widget buildExpenseContainer(BuildContext context) {
  return Expanded(
    child: Container(
      padding: EdgeInsets.all(15.0),
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Jumlah Penumpang',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Poppins',
                    color: Colors.grey,
                  ),
                ),
              ],
            )
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '30',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Poppins',
                    color: Colors.black
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20.0),
          buildExpenseInfo(context),
        ],
      ),
    ),
  );
}

Widget buildExpenseRow({required String label, required String value}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: 15.0,
            fontWeight: FontWeight.bold,
            color: Colors.grey,
            fontFamily: 'Poppins',
          ),
        ),
        Text(
          value,
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'Poppins',
          ),
        ),
      ],
    ),
  );
}

// info pengeluaran
Widget buildExpenseInfo(BuildContext context) {
  return Container(
    width: 320,
    height: 120,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 2,
          blurRadius: 7,
          offset: Offset(0, 3),
        ),
      ],
    ),
    padding: EdgeInsets.all(15.0),
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 1,
              child: Text(
                'Tanggal',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                  fontFamily: 'Poppins',
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Expanded(
              flex: 1,
              child: Text(
                'Jenis',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                  fontFamily: 'Poppins',
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Expanded(
              flex: 1,
              child: Text(
                'Rp.250.000',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 71, 169, 146),
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
        SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 2,
              child: Text(
                '03/05/2024',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 71, 169, 146),
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Expanded(
              flex: 2,
              child: Text(
                'Bensin',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontFamily: 'Poppins',
                ),
                textAlign: TextAlign.center,
              ),
            ),
            buildButtonContainer(context),
          ],
        )
      ],
    ),
  );
}

// button bukti
Widget buildButtonContainer(BuildContext context) {
  return Expanded(
    flex: 2,
    child: Container(
      width: 75,
      height: 50,
      child: FilledButton(
        style: TextButton.styleFrom(
          backgroundColor: Color.fromARGB(255, 71, 169, 146),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) => Container(
              height: 200,
              child: Center(
                child: Text(
                  'Ini adalah modal',
                  style: TextStyle(fontSize: 24.0),
                ),
              ),
            ),
          );
        },

        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 6.0),
          child: Text(
            'Bukti',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
              fontFamily: 'Poppins',
            ),
          ),
        ),
      ),
    ),
  );
}

Widget buildPage({required Color color, required String text}) {
  return Container(
    color: color,
    child: Center(
      child: Text(
        text,
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    ),
  );
}

Widget buildFloatingActionButton(BuildContext context) {
  return FloatingActionButton(
    onPressed: () {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return Theme(
            data: ThemeData(
            // Menyesuaikan tema dialog di sini
            dialogBackgroundColor: Colors.white, // Atur warna latar belakang dialog
          ),
            child: AlertDialog(
              title: Row(
                children: [
                  Text('Tambah Pengeluaran'),
                  Spacer(),
                ],
              ),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextField(
                    decoration: InputDecoration(labelText: 'Jenis Pengeluaran'),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    decoration: InputDecoration(labelText: 'Jumlah Pengeluaran'),
                    keyboardType: TextInputType.number,
                  ),
                  SizedBox(height: 20),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: ElevatedButton(
                      onPressed: () {
                        // Aksi ketika tombol upload bukti ditekan
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        backgroundColor: Color.fromARGB(255, 71, 169, 146),
                      ),
                      child: Text(
                        'Upload Bukti',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          backgroundColor: Colors.red,
                        ),
                        child: Text(
                          'Batal',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      ElevatedButton(
                        onPressed: () {
                          // Aksi ketika tombol kirim ditekan
                        },
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          backgroundColor: Color.fromARGB(255, 71, 169, 146),
                        ),
                        child: Text(
                          'Kirim',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      );
    },
    child: Icon(Icons.add, color: Colors.white),
    backgroundColor: Color.fromARGB(255, 71, 169, 146),
  );
}