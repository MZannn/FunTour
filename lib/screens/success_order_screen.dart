part of 'screens.dart';

class SuccessOrderScreen extends StatelessWidget {
  const SuccessOrderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 200,
            width: 200,
            margin: const EdgeInsets.only(bottom: 30),
            decoration: const BoxDecoration(
                image: DecorationImage(image: AssetImage("assets/ticket.png"))),
          ),
          Text(
            "Success Booking",
            style: titleText,
          ),
          const SizedBox(height: 6),
          Text(
            "Back to Home Screen",
            style: secondaryText400.copyWith(fontWeight: FontWeight.w300),
            textAlign: TextAlign.center,
          ),
          Container(
            margin: const EdgeInsets.only(top: 30),
            height: 45,
            width: 200,
            child: ElevatedButton(
                onPressed: () {
                  Get.off(() => const DashboardScreen());
                },
                style: ElevatedButton.styleFrom(
                  primary: mainColor,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Text(
                  "Back to Home Screen",
                  style: titleText14.copyWith(
                    fontWeight: FontWeight.w500,
                  ),
                )),
          ),
        ],
      )),
    );
  }
}
