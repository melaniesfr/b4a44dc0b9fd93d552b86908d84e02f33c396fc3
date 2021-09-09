part of 'widgets.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({Key? key}) : super(key: key);

  final String apiUrl = 'https://kulina-recruitment.herokuapp.com/products';

  Future<List<dynamic>> fetchProducts() async {
    var result = await http.get(Uri.parse(apiUrl));
    return json.decode(result.body);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FutureBuilder<List<dynamic>>(
        future: fetchProducts(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            return GridView.builder(
              padding: EdgeInsets.only(left: 5, right: 5, bottom: 5),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: MediaQuery.of(context).size.width /
                    (MediaQuery.of(context).size.height - 120),
              ),
              itemCount: snapshot.data.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  width: MediaQuery.of(context).size.width - 50,
                  margin: EdgeInsets.all(10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 120,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(
                                    snapshot.data[index]['image_url']),
                                fit: BoxFit.fill,
                              ),
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          SizedBox(height: 8),
                          Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(3),
                              color: greenColor1,
                            ),
                            child: Text(
                              'BARU',
                              style: whiteTextFont.copyWith(
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1.5,
                              ),
                            ),
                          ),
                          SizedBox(height: 8),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                snapshot.data[index]['name'],
                                style: blackTextFont.copyWith(
                                  fontWeight: FontWeight.w900,
                                ),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                              SizedBox(height: 5),
                              Text(
                                'by ${snapshot.data[index]['brand_name']}',
                                style: greyTextFont.copyWith(
                                  color: greyColor2,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600,
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              SizedBox(height: 5),
                              Text(
                                snapshot.data[index]['name'],
                                style: greyTextFont.copyWith(
                                  color: greyColor2,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w300,
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                NumberFormat.currency(
                                        locale: "id_ID",
                                        decimalDigits: 0,
                                        symbol: "Rp ")
                                    .format(snapshot.data[index]['price']),
                                style: blackTextFont.copyWith(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(width: 5),
                              Text(
                                'termasuk ongkir',
                                style: greyTextFont.copyWith(
                                  fontSize: 11,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 8),
                          Container(
                            width: double.infinity,
                            height: 40,
                            child: OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                side: BorderSide(
                                  color: mainColor,
                                  width: 1.2,
                                ),
                                elevation: 0,
                              ),
                              child: Text(
                                'Tambah ke Keranjang',
                                style: blackTextFont.copyWith(
                                  color: mainColor,
                                  fontWeight: FontWeight.w600,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              onPressed: () {},
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
            );
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
