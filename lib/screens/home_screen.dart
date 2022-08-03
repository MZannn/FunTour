part of 'screens.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final itemWidth = MediaQuery.of(context).size.width - 2 * defaultMargin;
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: SafeArea(
          child: Stack(
            children: [
              ListView(
                children: [
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: defaultMargin),
                    height: 100,
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "FunTour",
                              style: titleText.copyWith(
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              "Let's go tour and travel",
                              style: secondaryText300,
                            ),
                          ],
                        ),
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                                image: NetworkImage(mockUser.picturePath),
                                fit: BoxFit.cover),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 358,
                    width: double.infinity,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Row(
                          children: mockTour
                              .map(
                                (e) => Padding(
                                  padding: EdgeInsets.only(
                                    left:
                                        e == mockTour.first ? defaultMargin : 0,
                                    right: defaultMargin,
                                  ),
                                  child: GestureDetector(
                                      onTap: () => Get.to(() =>
                                          TourDetailScreen(
                                              transactionModels:
                                                  TransactionModels(
                                                      tourModels: e),
                                              onBackPressButton: () =>
                                                  Get.back())),
                                      child: TourCard(tourModels: e)),
                                ),
                              )
                              .toList(),
                        )
                      ],
                    ),
                  ),
                  Column(
                    children: mockTour
                        .map((e) => Padding(
                              padding: const EdgeInsets.fromLTRB(
                                  defaultMargin, 0, defaultMargin, 16),
                              child: GestureDetector(
                                onTap: () => Get.to(() => TourDetailScreen(
                                    transactionModels:
                                        TransactionModels(tourModels: e),
                                    onBackPressButton: () => Get.back())),
                                child: TourListItem(
                                    tourModels: e, itemWidth: itemWidth),
                              ),
                            ))
                        .toList(),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
