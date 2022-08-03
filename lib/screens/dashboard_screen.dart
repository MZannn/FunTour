part of 'screens.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardController>(builder: (controller) {
      final PageController pageController = PageController(initialPage: 0);
      return Scaffold(
        body: Stack(
          children: [
            Container(
              color: const Color(0xFFFAFAFC),
            ),
            SafeArea(
              child: PageView(
                controller: pageController,
                onPageChanged: (index) {
                  controller.setIndex(index);
                },
                children: [
                  const HomeScreen(),
                  const OrderScreen(),
                  ProfileScreen(userModels: mockUser),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          showUnselectedLabels: false,
          type: BottomNavigationBarType.shifting,
          backgroundColor: Colors.white,
          selectedItemColor: mainColor,
          unselectedItemColor: Colors.grey,
          currentIndex: controller.selectIndex,
          items: const [
            BottomNavigationBarItem(
              label: "Home",
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              label: "Order",
              icon: Icon(Icons.local_activity),
            ),
            BottomNavigationBarItem(
              label: "Profile",
              icon: Icon(Icons.person),
            ),
          ],
          onTap: (index) {
            controller.setIndex(index);
            pageController.jumpToPage(index);
          },
        ),
      );
    });
  }
}
