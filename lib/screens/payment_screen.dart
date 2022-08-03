part of 'screens.dart';

class PaymentScreen extends StatelessWidget {
  final TransactionModels transactionModels;
  final int quantity;
  const PaymentScreen(
      {Key? key, required this.transactionModels, required this.quantity})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var tax = transactionModels.tourModels.price * quantity * 0.1;
    var totalPrice = transactionModels.tourModels.price * quantity + tax;
    return Scaffold(
      body: ListView(
        children: [
          Container(
            height: 100,
            width: double.infinity,
            color: Colors.white,
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: Container(
                    margin:
                        const EdgeInsets.only(left: defaultMargin, right: 12),
                    height: 30,
                    width: 30,
                    child: const Icon(Icons.arrow_back_ios),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Payment",
                      style: titleText,
                    ),
                    Text(
                      "You deserve a vacation",
                      style: secondaryText300,
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
            color: Colors.white,
            margin: const EdgeInsets.only(top: defaultMargin),
            padding: const EdgeInsets.symmetric(
                horizontal: defaultMargin, vertical: 16),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                "Ticket Booking",
                style: titleText400,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 8, right: 12),
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                                image: NetworkImage(
                                  transactionModels.tourModels.picturePath,
                                ),
                                fit: BoxFit.cover)),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            transactionModels.tourModels.name,
                            style: titleText400,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width -
                                2 * defaultMargin -
                                182,
                            child: Text(
                              NumberFormat.currency(
                                      locale: 'id-ID',
                                      decimalDigits: 0,
                                      symbol: 'Rp. ')
                                  .format(transactionModels.tourModels.price),
                              style: secondaryText400,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  Text(
                    "$quantity Ticket",
                    style: secondaryText400,
                  ),
                ],
              ),
              const SizedBox(
                height: defaultMargin,
              ),
              Text(
                "Detail Transaction",
                style: titleText400,
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    transactionModels.tourModels.name,
                    style: secondaryText400,
                  ),
                  Text(
                    NumberFormat.currency(
                            locale: 'id-ID', decimalDigits: 0, symbol: 'Rp. ')
                        .format(transactionModels.tourModels.price * quantity),
                    style: titleText14,
                  ),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Tax 10%",
                    style: secondaryText400,
                  ),
                  Text(
                    NumberFormat.currency(
                            locale: 'id-ID', decimalDigits: 0, symbol: 'Rp. ')
                        .format(transactionModels.tourModels.price *
                            quantity *
                            0.1),
                    style: titleText14,
                  ),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Total Price",
                    style: secondaryText400,
                  ),
                  Text(
                    NumberFormat.currency(
                            locale: 'id-ID', decimalDigits: 0, symbol: 'Rp. ')
                        .format(totalPrice),
                    style: titleText14.copyWith(
                        color: const Color(0xFF1ABC9C),
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ]),
          ),
          Container(
            color: Colors.white,
            margin: const EdgeInsets.only(top: defaultMargin),
            padding: const EdgeInsets.symmetric(
                horizontal: defaultMargin, vertical: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Ordered By :", style: titleText400),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Name",
                      style: secondaryText400,
                    ),
                    Text(
                      mockUser.name,
                      style: titleText14,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Phone No.",
                      style: secondaryText400,
                    ),
                    Text(
                      mockUser.phoneNumber,
                      style: titleText14,
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: defaultMargin),
            height: 45,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  primary: mainColor,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  )),
              child: const Text("Booking Now"),
            ),
          ),
        ],
      ),
    );
  }
}
