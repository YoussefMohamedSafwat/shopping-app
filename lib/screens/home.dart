import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:shopping/models/dummy.dart';
import 'package:shopping/widget/offer_card.dart';
import 'package:shopping/widget/pagview_Card.dart';
import 'package:shopping/widget/shopping_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final PageController controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          DropdownMenu(
            initialSelection: Locale('en', 'US'),
            onSelected: (locale) {
              context.setLocale(locale!);
            },
            dropdownMenuEntries: [
              DropdownMenuEntry(value: Locale('en', 'US'), label: "English"),
              DropdownMenuEntry(value: Locale('ar', 'EG'), label: "Arabic"),
            ],
          ),
        ],
        scrolledUnderElevation: 0,
        title: Text(tr("Our products")),
        centerTitle: true,
      ),

      body: Padding(
        padding: const EdgeInsets.all(10.0),

        child: SingleChildScrollView(
          child: Column(
            children: [
              PagviewCard(),
              const SizedBox(height: 20),
              Text(
                tr("Our offers"),
                style: TextStyle(fontSize: 30),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              GridView.builder(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  mainAxisExtent: 600,
                ),
                itemCount: itemlist.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ShoppingCard(
                      imageUrl: itemlist[index]["image"],
                      title: itemlist[index]["title"],
                      price: itemlist[index]["price"],
                      onAddToCart: () {},
                    ),
                  );
                },
              ),
              const SizedBox(height: 15),
              Text(
                tr("Hot offers"),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 35,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 15),
              const OfferCard(),
            ],
          ),
        ),
      ),
    );
  }
}
