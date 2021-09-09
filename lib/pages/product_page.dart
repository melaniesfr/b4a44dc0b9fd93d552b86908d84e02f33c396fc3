part of 'pages.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  List<DateTime>? dates;
  DateTime? selectedDate;

  @override
  void initState() {
    super.initState();

    dates = List.generate(
        224, (index) => DateTime.now().add(Duration(days: index)));
    selectedDate = dates![0];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Note: Header
            Container(
              margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: Row(
                children: [
                  Icon(
                    Icons.arrow_back,
                    color: greyColor1,
                  ),
                  SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Alamat Pengantaran',
                            style: greyTextFont,
                          ),
                          Icon(
                            Icons.keyboard_arrow_down,
                            color: orangeColor1,
                            size: 18,
                          ),
                        ],
                      ),
                      Text(
                        'Kulina',
                        style: blackTextFont.copyWith(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: blackColor3,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // Note: Date Picker
            Container(
              margin: EdgeInsets.only(top: 5),
              padding: EdgeInsets.only(left: 10, right: 10, top: 5),
              width: MediaQuery.of(context).size.width,
              height: 70,
              color: datePickerBg,
              child: Row(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      width: 25,
                      height: 25,
                      margin: EdgeInsets.only(right: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30 / 2),
                        border: Border.all(
                          width: 1,
                          color: greyColor1,
                        ),
                        color: whiteColor1,
                      ),
                      child: Icon(
                        Icons.keyboard_arrow_left_rounded,
                        color: orangeColor1,
                        size: 23,
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width - 80,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: dates!.length,
                      itemBuilder: (_, index) => Container(
                        margin: EdgeInsets.all(0),
                        child: DatePickerCard(
                          dates![index],
                          isSelected: selectedDate == dates![index],
                          isEnabled: selectedDate!.weekday <= 5,
                          onTap: () {
                            setState(() {
                              selectedDate = dates![index];
                            });
                          },
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      width: 25,
                      height: 25,
                      margin: EdgeInsets.only(left: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30 / 2),
                        border: Border.all(
                          width: 1,
                          color: greyColor1,
                        ),
                        color: whiteColor1,
                      ),
                      child: Icon(
                        Icons.keyboard_arrow_right_rounded,
                        color: orangeColor1,
                        size: 23,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Note: Content
            Container(
              margin: EdgeInsets.only(top: 15, left: 15, right: 15, bottom: 10),
              child: Text(
                selectedDate!.longDayAndDate,
                style: blackTextFont.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            Expanded(
              child: ProductCard(),
            ),
          ],
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
                  Icon(
                    Icons.shopping_cart,
                    color: whiteColor1,
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
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ReviewPesananPage(),
              ),
            );
          },
        ),
      ),
    );
  }
}
