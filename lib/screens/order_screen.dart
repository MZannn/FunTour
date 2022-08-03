part of 'screens.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double itemWidth =
        MediaQuery.of(context).size.width - 2 * defaultMargin;
    return Scaffold(
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.all(defaultMargin),
            height: 110,
            color: Colors.white,
            width: double.infinity,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                "Your Orders",
                style: titleText,
              ),
              Text(
                "Your order history",
                style: secondaryText300,
              ),
            ]),
          ),
          Container(
            margin: const EdgeInsets.only(top: defaultMargin),
            color: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: defaultMargin),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Orders Transaction",
                  style: titleText16,
                ),
                const SizedBox(
                  height: 16,
                ),
                Column(
                  children: mockTransaction
                      .map((e) => Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: OrderListItem(
                                transactionModels: e, itemWidth: itemWidth),
                          ))
                      .toList(),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
