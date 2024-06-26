import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:tes1/constant.dart';
import 'package:tes1/models/tshirt.dart';
import 'package:tes1/ui/screens/detail_page.dart';

class HomePage extends StatefulWidget{
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    int selectedIndex = 0;
    Size size = MediaQuery.of(context).size;

    //memanggil list dari tshirt model
    List<Tshirt> _tshirtlist = Tshirt.tshirtList;

    //tshirt kategori
    List<String> _tshirtTypes = [
      'Recommended'
      'T-Shirt',
      'Hoodie',
      'Short Pants',
      'Totebag',
      'Shirt',
    ];

    //bagian favorite
    bool toggleIsFavorated(bool isFavorited) {
      return !isFavorited;
    }

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
              ),
              width: size.width * .9,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.search,
                    color: Colors.black54.withOpacity(.6),
                  ),
                  const Expanded(child: TextField(
                    showCursor: false,
                    decoration: InputDecoration(
                      hintText: 'Search Your Outfit',
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                    ),
                  )),
                  Icon(
                    Icons.mic,
                    color: Colors.black54.withOpacity(.6),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                color: Constants.primaryColor.withOpacity(.1),
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              height: 50,
              width: size.width,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: _tshirtTypes.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(padding: const EdgeInsets.all(8),
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          selectedIndex = index;
                        });
                        },
                      child: Text(
                        _tshirtTypes[index],
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: selectedIndex == index ?
                          FontWeight.bold : FontWeight.w300,
                          color: selectedIndex == index ?
                          Constants.primaryColor : Constants.blackColor,
                        ),
                      ),
                    ),
                  );
                }),
            ),
            SizedBox(
              height: size.height * .3,
              child: ListView.builder(
                itemCount: _tshirtlist.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index){
                  return GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,
                          PageTransition(
                            child: DetailPage(
                                tshirtId: _tshirtlist[index].tshirtId),
                              type: PageTransitionType.bottomToTop)
                      );
                      },
                    child: Container(
                      width: 200,
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      child: Stack(
                        children: [
                          Positioned(
                            top: 10,
                            right: 20,
                            child: Container(
                              height: 50,
                              width: 50,
                              child: IconButton(
                                onPressed: (){
                                  setState(() {
                                    bool isFavorited = toggleIsFavorated(
                                        _tshirtlist[index].isFavorated);
                                    _tshirtlist[index].isFavorated = isFavorited;
                                  });
                                  },
                                icon: Icon(_tshirtlist[index].isFavorated == true
                                    ? Icons.favorite
                                    : Icons.favorite_border,
                                  color: Constants.primaryColor,
                                ),
                                iconSize: 30,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(50),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 50,
                            right: 50,
                            top: 50,
                            bottom: 50,
                            child: Image.asset(
                                _tshirtlist[index].imageURL
                            ),
                          ),
                          Positioned(
                            bottom: 15,
                            left: 20,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(_tshirtlist[index].category,
                                  style: const TextStyle(
                                    color: Colors.white70,
                                    fontSize: 16,
                                  ),),
                                Text(
                                  _tshirtlist[index].tshirtName,
                                  style: const TextStyle(
                                    color: Colors.white70,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),),
                              ],
                            ),),
                          Positioned(
                            bottom: 15,
                            right: 20,
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10,
                                  vertical: 2),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Text(
                                r'Rp' + _tshirtlist[index].price.toString(),
                                style: TextStyle(
                                  color: Constants.primaryColor,
                                  fontSize: 16,
                                ),),
                            ),),
                        ],
                      ),
                      decoration: BoxDecoration(
                        color: Constants.primaryColor.withOpacity(.8),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  );
                }),
            ),
            Container(
              padding: const EdgeInsets.only(
                left: 16,
                bottom: 20,
                top: 20
              ),
              child: const Text(
                'New Arrival',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              height: size.height * .5,
              child: ListView.builder(
                  itemCount: _tshirtlist.length,
                  scrollDirection: Axis.vertical,
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (BuildContext context, int index){
                    return GestureDetector(
                      onTap: (){
                        Navigator.push(
                            context,
                            PageTransition(
                                child: DetailPage(tshirtId: _tshirtlist[index].tshirtId),
                                type: PageTransitionType.bottomToTop)
                        );
                        },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Constants.primaryColor.withOpacity(.1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        height: 80,
                        padding: const EdgeInsets.only(left: 10, top: 10),
                        margin: const EdgeInsets.only(bottom: 10, top: 10),
                        width: size.width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Stack(
                              clipBehavior: Clip.none,
                              children: [
                                Container(
                                  width: 60,
                                  height: 60,
                                  decoration: BoxDecoration(
                                    color: Constants.primaryColor.withOpacity(.8),
                                    shape: BoxShape.circle,
                                  ),
                                ),
                                Positioned(
                                  bottom: 5,
                                  left: 0,
                                  right: 0,
                                  child: SizedBox(
                                    height: 80,
                                    child: Image.asset(
                                        _tshirtlist[index].imageURL
                                    ),
                                  ),),
                                Positioned(
                                  bottom: 5,
                                  left: 80,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(_tshirtlist[index].category),
                                      Text(_tshirtlist[index].tshirtName,
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                          color: Constants.blackColor,
                                        ),),
                                    ],
                                  ),),
                              ],
                            ),
                            Container(
                              padding: const EdgeInsets.only(right: 10),
                              child: Text(r'Rp' + _tshirtlist[index].price.toString(),
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Constants.primaryColor,
                                ),),
                            )
                          ],
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ),
      )
    );
  }
}