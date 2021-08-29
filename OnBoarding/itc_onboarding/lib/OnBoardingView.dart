
import 'package:flutter/material.dart';


class OnBoardingView extends StatefulWidget {
  @override
  _OnBoardingViewState createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {

  Widget _buildPageContent(
      {String image, String body, String desc, Color color}) {
    return Container(
      decoration: BoxDecoration(color: color),
      // berikan padding kiri dan kanan dari halaman agar rapi
      child: Column(
        // atur konten didalam kolom agar berada di posisi tengah halaman
        children: [
          Column(
            children: [],
          ),
        ],
      ),
    );
  }

  final PageController _kontrolHalaman = PageController(initialPage: 0);
  int _halSekarang;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Stack(
            children: [
              PageView(
                // tambahkan properties controller
                // parameter controller berfungsi sebagai pengontrol page view untuk menampilkan dari apa yang ditampilkan
                onPageChanged: (int halaman) {
                  _halSekarang = halaman;
                  // setState(() {});
                },
                // akan dijalankan ketika kita scroll halaman, set state berfungsi untuk memberi tau bahwa ada state yang berubah
                children: [
                  _buildPageContent(
                    image: '',
                    body: '',
                    desc: "",
                    color: Colors.black,
                  ),
                  _buildPageContent(
                      image: '', 
                      body: '', 
                      desc: "", 
                      color: Colors.blue),
                  _buildPageContent(
                      image: '', 
                      body: '', 
                      desc: "", 
                      color: Colors.red)
                ],
              ),
              Positioned(
                // atur posisi button biar disudut kiri bawah
                child: (_halSekarang != 2)
                    ? InkWell(
                        child: Container(
                          height: 40,
                          width: 60,
                          // buat sebuah text untuk button skip
                        ),
                        onTap: () {},
                      )
                    : InkWell(
                        child: Container(
                          height: 40,
                          width: 60,
                          alignment: Alignment.center,
                          child: Text(
                            'Start',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 20),
                          ),
                        ),
                        onTap: () {},
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
