import 'package:flutter/material.dart';
import 'package:grocery_app/ui/shared/widgets/add_item_widget.dart';

class ProductDetail extends StatefulWidget {
  const ProductDetail({Key? key}) : super(key: key);

  @override
  _ProductDetailState createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  bool active = false;
  bool activeNutrition = false;
  bool activeReview = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(
            Icons.keyboard_arrow_left,
            color: Colors.black,
          ),
          onPressed: () {
            print("pressed");
          },
        ),
        actions: [
          Icon(
            Icons.open_in_browser_rounded,
            color: Colors.black,
          ),
        ],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(16),
          ),
        ),
      ),
      extendBodyBehindAppBar: true,
      body: ListView(
        children: [
          Container(
            child: Center(
              child: Image.asset(
                'assets/images/apple2.png',
                width: 300,
                height: 300,
              ),
            ),
            decoration: BoxDecoration(
              color: Color.fromRGBO(242, 243, 242, 1),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(35),
                bottomRight: Radius.circular(35),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "Naturel Red Apple",
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              IconButton(
                  icon: Icon(Icons.favorite_border_outlined),
                  onPressed: () {
                    print("favorited");
                  })
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              children: [
                Text(
                  "1kg, Price",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              AddItemCartWidget(),
              SizedBox(
                height: 30,
              ),
              Text(
                "R\$10.00",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
            ],
          ),
          Column(children: [
            ListTile(
              title: Text(
                "Product Detail",
                style: TextStyle(
                  fontFamily: "Roboto",
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              subtitle: !active
                  ? Text("")
                  : Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Text(
                          "Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                            fontFamily: 'Roboto',
                          )),
                    ),
              trailing: !active
                  ? Icon(Icons.keyboard_arrow_right)
                  : Icon(Icons.keyboard_arrow_down),
              contentPadding: EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 10,
              ),
              onTap: () {
                setState(() {
                  active = !active;
                });
              },
            ),
            ListTile(
              title: Text(
                "Nutritions",
                style: TextStyle(
                  fontFamily: "Roboto",
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              subtitle: !activeNutrition
                  ? Text("")
                  : Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Text(
                          "Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                            fontFamily: 'Roboto',
                          )),
                    ),
              trailing: !activeNutrition
                  ? Wrap(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 5),
                          child: Text(
                            "100gr",
                            style: TextStyle(
                              fontSize: 11,
                              fontFamily: 'Roboto',
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        Icon(Icons.keyboard_arrow_right)
                      ],
                    )
                  : Icon(Icons.keyboard_arrow_down),
              contentPadding: EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 10,
              ),
              onTap: () {
                setState(() {
                  activeNutrition = !activeNutrition;
                });
              },
            ),
            ListTile(
              title: Text(
                "Review",
                style: TextStyle(
                  fontFamily: "Roboto",
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              subtitle: !activeReview
                  ? Text("")
                  : Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Text(
                          "Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                            fontFamily: 'Roboto',
                          )),
                    ),
              trailing: Icon(Icons.star_border_outlined),
              contentPadding: EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 10,
              ),
              onTap: () {
                setState(() {
                  activeReview = !activeReview;
                });
              },
            ),
            SizedBox(
              width: 300,
              height: 67,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Color.fromRGBO(83, 177, 117, 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(19),
                    )),
                onPressed: () {
                  print("carrinho");
                },
                child: Text(
                  "Add to Basket",
                ),
              ),
            )
          ]),
        ],
      ),
    );
  }
}
