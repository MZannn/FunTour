part of 'widgets.dart';

class TourListItem extends StatelessWidget {
  final TourModels tourModels;
  final double itemWidth;
  const TourListItem(
      {Key? key, required this.tourModels, required this.itemWidth})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 60,
          width: 60,
          margin: const EdgeInsets.only(right: 12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            image: DecorationImage(
              image: NetworkImage(tourModels.picturePath),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(
          width: itemWidth - 182,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                tourModels.name,
                style: titleText16,
                maxLines: 1,
                overflow: TextOverflow.clip,
              ),
              Text(
                tourModels.locationOn,
                style: secondaryText300,
              ),
            ],
          ),
        ),
        RatingStars(rate: tourModels.rate),
      ],
    );
  }
}
