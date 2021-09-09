part of 'pages.dart';

class EmptyPesananPage extends StatelessWidget {
  const EmptyPesananPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.fromLTRB(15, 20, 15, 15),
          child: Stack(
            children: [
              // Note: Back Button
              Icon(
                Icons.arrow_back,
                color: greyColor1,
              ),

              // Note: Content
              Align(
                alignment: Alignment.topCenter,
                child: Column(
                  children: [
                    Text(
                      'Review Pesanan',
                      style: blackTextFont.copyWith(
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 100),
                    Image.asset(
                      'assets/illustration.png',
                      width: MediaQuery.of(context).size.width - 40,
                    ),
                    SizedBox(height: 50),
                    Text(
                      'Keranjangmu masih kosong, nih.',
                      style: blackTextFont.copyWith(
                        color: blackColor3,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),

      // Note: Bottom Button
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        width: MediaQuery.of(context).size.width - 30,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: mainColor,
        ),
        child: FloatingActionButton(
          backgroundColor: mainColor,
          elevation: 0,
          child: Text(
            'Pesan Sekarang',
            style: whiteTextFont.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(5),
            ),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ProductPage(),
              ),
            );
          },
        ),
      ),
    );
  }
}
