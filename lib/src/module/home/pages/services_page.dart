import 'package:allpay/src/widget/home/service_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ServicePage extends StatelessWidget {
  const ServicePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text("All services",
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .copyWith(fontWeight: FontWeight.w700)),
        leading: IconButton(
            onPressed: () {},
            icon: SvgPicture.asset("assets/svg/arrowBack.svg")),
        actions: [
          SvgPicture.asset(
            "assets/svg/More Circle.svg",
            height: 30,
            width: 30,
          ),
          const SizedBox(
            width: 20,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Bill",
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(fontWeight: FontWeight.w700),
            ),
            const SizedBox(
              height: 20,
            ),
            GridView(
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 2,
              ),
              shrinkWrap: true,
              children: [
                ServicesCard(
                  icon: 'assets/svg/services/Component 44.png',
                  title: 'Electricity',
                  route: '',
                  onTab: () {},
                ),
                ServicesCard(
                  icon: 'assets/svg/services/Component 45.png',
                  title: 'Internet',
                  route: '',
                  onTab: () {},
                ),
                const ServicesCard(
                  icon: 'assets/svg/services/Component 46.png',
                  title: 'Water',
                  route: '',
                ),
                ServicesCard(
                  icon: 'assets/svg/services/Component 47.png',
                  title: 'E_wallet',
                  route: '',
                  onTab: () {},
                ),
                ServicesCard(
                  icon: 'assets/svg/services/Component 59.png',
                  title: 'Games',
                  route: '',
                  onTab: () {},
                ),
                ServicesCard(
                  icon: 'assets/svg/services/Component 48.png',
                  title: 'Television',
                  route: '',
                  onTab: () {},
                ),
                ServicesCard(
                  icon: 'assets/svg/services/Component 49.png',
                  title: 'Merchant',
                  route: '',
                  onTab: () {},
                ),
                ServicesCard(
                  icon: 'assets/svg/services/Component 50.png',
                  title: 'Install',
                  route: '',
                  onTab: () {},
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Divider(
              thickness: 2,
              color: Colors.grey.shade100,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Insurance",
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(fontWeight: FontWeight.w700),
            ),
            const SizedBox(
              height: 20,
            ),
            GridView(
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                mainAxisSpacing: 20,
              ),
              shrinkWrap: true,
              children: [
                ServicesCard(
                  icon: 'assets/svg/services/Component 60.png',
                  title: 'Health',
                  route: '',
                  onTab: () {},
                ),
                ServicesCard(
                  icon: 'assets/svg/services/Component 53.png',
                  title: 'Mobile',
                  route: '',
                  onTab: () {},
                ),
                ServicesCard(
                  icon: 'assets/svg/services/Component 54.png',
                  title: 'Motor',
                  route: '',
                  onTab: () {},
                ),
                ServicesCard(
                  icon: 'assets/svg/services/Component 55.png',
                  title: 'Car',
                  route: '',
                  onTab: () {},
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Divider(
              thickness: 2,
              color: Colors.grey.shade100,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Option",
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(fontWeight: FontWeight.w700),
            ),
            const SizedBox(
              height: 20,
            ),
            GridView(
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                mainAxisSpacing: 20,
              ),
              shrinkWrap: true,
              children: [
                ServicesCard(
                  icon: 'assets/svg/services/Component 61.png',
                  title: 'Assurance',
                  route: '',
                  onTab: () {},
                ),
                ServicesCard(
                  icon: 'assets/svg/services/Component 56.png',
                  title: 'Shopping',
                  route: '',
                  onTab: () {},
                ),
                ServicesCard(
                  icon: 'assets/svg/services/Component 57.png',
                  title: 'Deals',
                  route: '',
                  onTab: () {},
                ),
                ServicesCard(
                  icon: 'assets/svg/services/Component 58.png',
                  title: 'Invest',
                  route: '',
                  onTab: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
