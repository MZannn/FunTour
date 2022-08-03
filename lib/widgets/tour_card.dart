part of 'widgets.dart';

class TourCard extends StatelessWidget {
  final TourModels tourModels;
  const TourCard({Key? key, required this.tourModels}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 230,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            spreadRadius: 3,
            blurRadius: 15,
            color: Colors.black12,
          ),
        ],
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Builder(
            builder: (context) {
              return Container(
                height: 230,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(8),
                    topRight: Radius.circular(8),
                  ),
                  image: DecorationImage(
                      image: NetworkImage(tourModels.picturePath),
                      fit: BoxFit.cover),
                ),
              );
            },
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(12, 12, 12, 6),
            width: 210,
            child: Text(tourModels.name),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12),
            child: RatingStars(rate: tourModels.rate),
          ),
        ],
      ),
    );
  }
}
