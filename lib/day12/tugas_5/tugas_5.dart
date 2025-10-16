import 'package:flutter/material.dart';

class Tugas5Flutter extends StatefulWidget {
  const Tugas5Flutter({super.key});

  @override
  State<Tugas5Flutter> createState() => _Tugas5FlutterState();
}

class _Tugas5FlutterState extends State<Tugas5Flutter> {
  bool showNama = false;
  bool clickFav = false;
  bool showMore = false;
  int counter = 0;
  bool pressBox = false;
  int angka = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tuga 5 Flutter")
      ),
      

      body: Column(
        children: [
          //Soal No.1
          if (showNama) ...[
            Container(
            height: 100,
            width: double.infinity,
            decoration: BoxDecoration(color: const Color.fromARGB(255, 230, 191, 189)),
            child: Center(
              child: Text(
                "Nama saya Windu Wulandari",
              ),
            ),
          ),
          ] else ...[],
          
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blueAccent),
              onPressed: (){
                print("Tampilkan nama : $showNama");
                showNama = !showNama;
                setState(() {});
              }, 
              child: Text(showNama ? "Sembunyikan Nama" : "Tampilkan Nama", style: TextStyle(color: Colors.white))),
          ),

          //Soal No.2
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 50,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: IconButton(
                  onPressed: (){
                    clickFav = !clickFav;
                    setState(() {});
                  }, 
                  icon: Icon(clickFav ? Icons.favorite : Icons.favorite_border ),
                  color: clickFav ? Colors.red : const Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
            ),
          ),
          Center(child: clickFav ? Text("Disukai") : Text("")),

          //Soal No.3
          if (showMore) ...[
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
              height: 150,
              width: double.infinity,
              decoration: BoxDecoration(color: Color(0xff9ECAD6),
                borderRadius: BorderRadius.circular(10)
              ),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    "Saya adalah seorang freshgraduate dari Universitas Negeri Jakarta Program Studi Pendidikan Teknik Informatika dan Komputer. Saya lahir pada tanggal 15 September 1999 di Jakarta. Saya merupakan anak ke delapan dari delapan bersaudara.",
                  ),
                ),
              ),
                        ),
            ),
          ] else ...[],

          SizedBox(
            height: 50,
            width: double.infinity,
            child: TextButton(
              onPressed: (){
                showMore = !showMore;
                setState(() {});
              }, 
              child: Text(showMore ? "Sembunyikan" : "Lihat Selengkapnya")),
          ),

          //Soal No.4
          Text("Hitung mundur: "),
          Text(
            counter.toString()
          ),
          FloatingActionButton(
            onPressed: (){
              counter--;
              setState(() {});
            },
          child: Icon(Icons.add),
          ),

          //Soal No.5
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xff9ECAD6),
                borderRadius: BorderRadius.circular(12)
              ),
              child: InkWell(
                splashColor: Color(0xffF5CBCB),
                onTap: () {
                  print("Kotak disentuh");
                  pressBox = !pressBox;
                  setState(() {});
                },
                child: Center(child: pressBox ? Text("") : Text("Sentuh Kotak")),
              )
            ),
          ),

          //Soal No.6
          Container(
            height: 50,
            width: 100,
            decoration: BoxDecoration(
              color: Color(0xffF5CBCB),
              borderRadius: BorderRadius.circular(12)
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: SizedBox(
                height: 50,
                width: 100,
                child: GestureDetector(
                  onTap: () {
                    angka++;
                    setState(() {});
                    print("Ditekan sekali = $angka");

                  },
                  onDoubleTap: () {
                    angka += 2;
                    setState(() {});
                    print("Ditekan dua kali = $angka");

                  },
                  onLongPress: () {
                    angka += 3;
                    setState(() {});
                    print("Tekan lama = $angka");
                  },
                  child: Text("Tekan aku"),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}