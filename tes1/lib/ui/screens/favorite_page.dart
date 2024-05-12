import 'package:flutter/material.dart';
import 'package:tes1/constant.dart';
import 'package:tes1/models/tshirt.dart';
import 'package:tes1/ui/screens/widgets/tshirt_widget.dart';

class FavoritePage extends StatefulWidget {
  final List<Tshirt> favoritedTshirt;
  const FavoritePage({Key? key, required this.favoritedTshirt})
      : super(key: key);

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: widget.favoritedTshirt.isEmpty
          ? Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 100,
                    child: Image.asset('assets/images/favorite.png'),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Your favorite Outfits',
                    style: TextStyle(
                      color: Constants.primaryColor,
                      fontWeight: FontWeight.w300,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
          )
          : Container(
              padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 30),
              height: size.height * .5,
              child: ListView.builder(
                  itemCount: widget.favoritedTshirt.length, 
                  scrollDirection: Axis.vertical, 
                  physics: const BouncingScrollPhysics(), 
                  itemBuilder: (BuildContext context, int index) {
                    return TshirtWidget(
                        index: index, tshirtlist: widget.favoritedTshirt
                    );
                  }),
          ),
    );
  }
}