part of 'widgets.dart';

class RatingStars extends StatelessWidget {
  final double rate;
  const RatingStars({Key? key, required this.rate}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int numberOfStars = rate.round();
    return Row(
      children: List<Widget>.generate(
              5,
              (index) => Icon(
                    (index < numberOfStars)
                        ? Icons.star
                        : (index < rate)
                            ? Icons.star_half
                            : Icons.star_border,
                    size: 16,
                    color: Colors.amber,
                  )) +
          [
            const SizedBox(
              width: 4,
            ),
            Text(
              rate.toString(),
              style: secondaryText300.copyWith(fontSize: 12),
            )
          ],
    );
  }
}
