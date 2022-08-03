part of 'screens.dart';

class ProfileScreen extends StatelessWidget {
  final UserModels userModels;
  const ProfileScreen({Key? key, required this.userModels}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SafeArea(
            child: ListView(
              children: [
                Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 24),
                      height: 110,
                      width: 110,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: NetworkImage(
                              mockUser.picturePath),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    Text(
                      mockUser.name,
                      style: titleText,
                    ),
                    Text(
                      mockUser.email,
                      style: secondaryText400.copyWith(),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
