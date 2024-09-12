import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:card_screen/core/helper/sixbox.dart';
import 'package:card_screen/core/theme/colors.dart';
import 'package:card_screen/core/theme/style.dart';
import 'package:card_screen/fetuers/card_screen/ui/widget/card_custom.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatefulWidget {
  const CardScreen({super.key});

  @override
  State<CardScreen> createState() => _CardScreenState();
}

class _CardScreenState extends State<CardScreen> {
  int _selectedIndex = 0;
  final PageController _pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      ///////////////
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: _selectedIndex,
        // showElevation: true,
        onItemSelected: (index) => setState(() {
          _selectedIndex = index;
          _pageController.animateToPage(index,
              duration: const Duration(milliseconds: 2), curve: Curves.ease);
        }),
        items: [
          BottomNavyBarItem(
            icon: const Icon(Icons.home),
            title: const Text(''),
            activeColor: ColorsApp.brown,
          ),
          BottomNavyBarItem(
            icon: const Icon(Icons.favorite),
            title: const Text('Users'),
            activeColor: ColorsApp.brown,
          ),
          BottomNavyBarItem(
            icon: const Icon(Icons.shop),
            title: const Text(''),
            activeColor: ColorsApp.brown,
          ),
          BottomNavyBarItem(
            icon: const Icon(Icons.notification_add_sharp),
            title: const Text(''),
            activeColor: ColorsApp.brown,
          ),
          BottomNavyBarItem(
            icon: const Icon(Icons.people_alt),
            title: const Text(''),
            activeColor: ColorsApp.brown,
          ),
        ],
      ),
      //////////////
      appBar: AppBar(
        centerTitle: true,
        leading: Icon(
          Icons.arrow_back,
          color: ColorsApp.wightblack,
        ),
        title: Text(
          'Card',
          style: TextStyles.font18Black700Wight,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.delete_outline_outlined,
              color: ColorsApp.mainorange,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 10,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Items (20)',
              style: TextStyles.font18Black700Wight,
            ),
            virticalspace(25),
            const CardCustom(
              image: 'assets/images/Image.png',
              title: 'Espresso with oat milk',
              price: r'US $10.00',
            ),
            virticalspace(15),
            const CardCustom(
              image: 'assets/images/Place image.png',
              title: 'Cappucinno with\nmilk',
              price: r'US $10.00',
            ),
            virticalspace(15),
            const CardCustom(
              image: 'assets/images/Place image here.png',
              title: 'Cappucinno with\nchocolate',
              price: r'US $10.00',
            ),
          ],
        ),
      ),
    );
  }
}
