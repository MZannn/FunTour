part of 'screens.dart';

class TourDetailScreen extends StatelessWidget {
  final TransactionModels transactionModels;
  final Function onBackPressButton;
  const TourDetailScreen(
      {Key? key,
      required this.transactionModels,
      required this.onBackPressButton})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Stack(
          children: [
            SafeArea(
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        left: defaultMargin, top: defaultMargin),
                    child: SafeArea(
                      child: GestureDetector(
                        onTap: () {
                          Get.find<TourDetailController>().quantity = 1;
                          onBackPressButton();
                        },
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            width: 30,
                            height: 30,
                            padding: const EdgeInsets.only(left: 7),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.white,
                              border: Border.all(
                                width: 1,
                                color: Colors.black,
                              ),
                              boxShadow: const [
                                BoxShadow(spreadRadius: 0.2, blurRadius: 1),
                              ],
                            ),
                            child: const Icon(Icons.arrow_back_ios),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: defaultMargin),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 200,
                          margin: const EdgeInsets.only(top: defaultMargin),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              image: DecorationImage(
                                image: NetworkImage(
                                    transactionModels.tourModels.picturePath),
                                fit: BoxFit.cover,
                              )),
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        Text(
                          transactionModels.tourModels.name,
                          style: titleText,
                        ),
                        Text(
                          transactionModels.tourModels.locationOn,
                          style: secondaryText300,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                const Icon(
                                  Icons.location_on,
                                  color: Colors.red,
                                ),
                                Text(transactionModels.tourModels.locationOn),
                              ],
                            ),
                            Row(
                              children: [
                                const Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                Text(transactionModels.tourModels.rate
                                    .toString()),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  NumberFormat.currency(
                                          locale: 'id-ID',
                                          symbol: 'Rp. ',
                                          decimalDigits: 0)
                                      .format(
                                          transactionModels.tourModels.price),
                                  style: secondaryText300.copyWith(
                                    color: mainColor,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                const Text("/Person"),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 34,
                        ),
                        Text(
                          "About",
                          style: titleText.copyWith(fontSize: 20),
                        ),
                        Text(
                          transactionModels.tourModels.description,
                          style: secondaryText300.copyWith(fontSize: 12),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 16),
                          height: 100,
                          width: double.infinity,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              Row(
                                children: transactionModels
                                            .tourModels.imagePath !=
                                        []
                                    ? transactionModels.tourModels.imagePath!
                                        .map((e) => Container(
                                              height: 80,
                                              width: 100,
                                              margin: const EdgeInsets.only(
                                                  right: 16),
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                                image: DecorationImage(
                                                    image: NetworkImage(e),
                                                    fit: BoxFit.cover),
                                              ),
                                            ))
                                        .toList()
                                    : [],
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        SizedBox(
                          height: 45,
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {
                              Get.bottomSheet(Container(
                                height: 300,
                                width: double.infinity,
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10),
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: GetBuilder<TourDetailController>(
                                    builder: (controller) {
                                      return Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        SizedBox(
                                                          width: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width -
                                                              2 * defaultMargin -
                                                              80,
                                                          child: Text(
                                                            ("${transactionModels.tourModels.name} Ticket"),
                                                            style: titleText16,
                                                            overflow:
                                                                TextOverflow
                                                                    .clip,
                                                            maxLines: 1,
                                                          ),
                                                        ),
                                                        RatingStars(
                                                            rate:
                                                                transactionModels
                                                                    .tourModels
                                                                    .rate)
                                                      ]),
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceEvenly,
                                                    children: [
                                                      GestureDetector(
                                                        onTap: () {
                                                          controller
                                                              .minQuantity();
                                                        },
                                                        child: Container(
                                                          height: 30,
                                                          width: 30,
                                                          decoration: BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8),
                                                              image: const DecorationImage(
                                                                  image: AssetImage(
                                                                      "assets/btn_min.png"))),
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        width: 30,
                                                        child: Text(
                                                          controller.quantity
                                                              .toString(),
                                                          textAlign:
                                                              TextAlign.center,
                                                        ),
                                                      ),
                                                      GestureDetector(
                                                        onTap: () {
                                                          controller
                                                              .addQuantity();
                                                        },
                                                        child: Container(
                                                          height: 30,
                                                          width: 30,
                                                          decoration: BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8),
                                                              image: const DecorationImage(
                                                                  image: AssetImage(
                                                                      "assets/btn_add.png"))),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 170,
                                                child: Text(
                                                  transactionModels
                                                      .tourModels.description,
                                                  style: secondaryText300,
                                                  overflow: TextOverflow.clip,
                                                  maxLines: 10,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "Total Price: ",
                                                    style: secondaryText400
                                                        .copyWith(
                                                            fontWeight:
                                                                FontWeight
                                                                    .w600),
                                                  ),
                                                  Text(
                                                    NumberFormat.currency(
                                                            locale: 'id-ID',
                                                            decimalDigits: 0,
                                                            symbol: 'Rp. ')
                                                        .format(
                                                      transactionModels
                                                              .tourModels
                                                              .price *
                                                          controller.quantity,
                                                    ),
                                                    style: titleText16.copyWith(
                                                      fontSize: 18,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 45,
                                                width: 150,
                                                child: ElevatedButton(
                                                  onPressed: () {
                                                    Get.to(() => PaymentScreen(
                                                        transactionModels:
                                                            transactionModels,
                                                        quantity: controller
                                                            .quantity));
                                                  },
                                                  style:
                                                      ElevatedButton.styleFrom(
                                                    primary: mainColor,
                                                    elevation: 0,
                                                  ),
                                                  child: Text(
                                                    "Book",
                                                    style: titleText.copyWith(
                                                        fontSize: 16),
                                                  ),
                                                ),
                                              )
                                            ],
                                          )
                                        ],
                                      );
                                    },
                                  ),
                                ),
                              ));
                            },
                            style: ElevatedButton.styleFrom(
                                primary: mainColor,
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                )),
                            child: Text(
                              "Book Now",
                              style: titleText.copyWith(fontSize: 16),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 30,
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
    );
  }
}
