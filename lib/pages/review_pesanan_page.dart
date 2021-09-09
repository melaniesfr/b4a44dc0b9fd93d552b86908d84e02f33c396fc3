part of 'pages.dart';

DateTime date = DateTime.now();

class ReviewPesananPage extends StatelessWidget {
  const ReviewPesananPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(15, 20, 15, 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Note: Header
              Container(
                margin: EdgeInsets.only(bottom: 20),
                child: GestureDetector(
                  child: Icon(
                    Icons.arrow_back,
                    color: blackColor1,
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              Text(
                'Review Pesanan',
                style: blackTextFont.copyWith(
                  fontSize: 30,
                ),
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Daftar Pesanan',
                    style: blackTextFont.copyWith(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => EmptyPesananPage(),
                        ),
                      );
                    },
                    child: Text(
                      'Hapus Pesanan',
                      style: greyTextFont.copyWith(
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                        color: greyColor2,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),

              // Note: Content
              Text(
                date.shortDayAndDate,
                style: greyTextFont.copyWith(
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                  color: greyColor1,
                ),
              ),
              SizedBox(height: 25),

              // Note: Product 1
              Row(
                children: [
                  Container(
                    width: 130,
                    height: 90,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                            'https://www.themealdb.com/images/media/meals/uuyrrx1487327597.jpg'),
                        fit: BoxFit.fill,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  SizedBox(width: 15),
                  Container(
                    height: 90,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width - 175,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Poutine',
                                style: blackTextFont.copyWith(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Icon(
                                Icons.delete,
                                color: greyColor1,
                              ),
                            ],
                          ),
                        ),
                        Text(
                          "Antoine's",
                          style: greyTextFont.copyWith(
                            fontSize: 12,
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width - 175,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Rp 15.852',
                                style: blackTextFont.copyWith(
                                  color: blackColor3,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Container(
                                width: 90,
                                height: 30,
                                padding: EdgeInsets.only(left: 5, right: 5),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    width: 1,
                                    color: greyColor1,
                                  ),
                                  borderRadius: BorderRadius.circular(3),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(
                                      Icons.remove,
                                      color: greyColor1,
                                    ),
                                    Text(
                                      '1',
                                    ),
                                    Icon(
                                      Icons.add,
                                      color: blackColor2,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              // Note: Content 2
              SizedBox(height: 30),
              Row(
                children: [
                  Container(
                    width: 130,
                    height: 90,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                            'https://www.themealdb.com/images/media/meals/1550440197.jpg'),
                        fit: BoxFit.fill,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  SizedBox(width: 15),
                  Container(
                    height: 90,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width - 175,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Salmon Eggs Eggs\nBenedict',
                                style: blackTextFont.copyWith(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Icon(
                                Icons.delete,
                                color: greyColor1,
                              ),
                            ],
                          ),
                        ),
                        Text(
                          "Berowra Waters Inn",
                          style: greyTextFont.copyWith(
                            fontSize: 12,
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width - 175,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Rp 75.195',
                                style: blackTextFont.copyWith(
                                  color: blackColor3,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Container(
                                width: 90,
                                height: 30,
                                padding: EdgeInsets.only(left: 5, right: 5),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    width: 1,
                                    color: greyColor1,
                                  ),
                                  borderRadius: BorderRadius.circular(3),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(
                                      Icons.remove,
                                      color: greyColor1,
                                    ),
                                    Text(
                                      '1',
                                    ),
                                    Icon(
                                      Icons.add,
                                      color: blackColor2,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),

              // Note: Divider
              Divider(
                height: 3,
                color: greyColor1,
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
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10),
                  Text(
                    '   2 Item | Rp 91.047',
                    style: whiteTextFont.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    '   Termasuk ongkos kirim',
                    style: whiteTextFont.copyWith(
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(height: 10),
                ],
              ),
              Row(
                children: [
                  Text(
                    'CHECKOUT',
                    style: whiteTextFont.copyWith(
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(width: 3),
                  Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: whiteColor1,
                    size: 15,
                  ),
                  Text('   '),
                ],
              ),
            ],
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(5),
            ),
          ),
          onPressed: () {},
        ),
      ),
    );
  }
}
