part of 'widgets.dart';

class OrderListItem extends StatelessWidget {
  final TransactionModels transactionModels;
  final double itemWidth;
  const OrderListItem(
      {Key? key, required this.transactionModels, required this.itemWidth})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              height: 60,
              width: 60,
              margin: const EdgeInsets.only(right: 12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                image: DecorationImage(
                  image: NetworkImage(transactionModels.tourModels.picturePath),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: itemWidth - 152,
                  child: Text(
                    transactionModels.tourModels.name,
                    style: titleText16,
                    overflow: TextOverflow.clip,
                    maxLines: 1,
                  ),
                ),
                // ignore: prefer_interpolation_to_compose_strings
                Text(
                  "${transactionModels.quantity} Tickets • ${NumberFormat.currency(locale: 'id-ID', symbol: 'Rp. ', decimalDigits: 0).format(transactionModels.total)}",
                  style: secondaryText400.copyWith(fontSize: 13),
                ),
              ],
            ),
          ],
        ),
        SizedBox(
          width: 80,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                DateFormat('MMM d, H:m')
                    .format(transactionModels.dateTime!)
                    .toString(),
                style: secondaryText400.copyWith(fontSize: 10),
              ),
              (transactionModels.status == TransactionStatus.cancelled)
                  ? Text(
                      "Cancelled",
                      style: secondaryText400.copyWith(
                          fontSize: 10, color: const Color(0xFFD9435E)),
                    )
                  : (transactionModels.status == TransactionStatus.pending)
                      ? Text(
                          "Pending",
                          style: secondaryText400.copyWith(
                              fontSize: 10, color: const Color(0xFFD9435E)),
                        )
                      : const SizedBox(),
            ],
          ),
        )
      ],
    );
  }
}
