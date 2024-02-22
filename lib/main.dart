import 'package:flutter/material.dart';
import 'package:iteriro/app/auth/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const LoginScreen(),
    );
  }
}

class ProductDetails extends StatefulWidget {
  const ProductDetails({super.key});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  int count = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        toolbarHeight: 100,
        title: const Text("New Deer Upholstered Barrel\nChair"),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        children: [
          const Row(
            children: [
              SizedBox(
                height: 25,
                child: CircleAvatar(
                  backgroundImage: AssetImage("assets/profile.jpg"),
                ),
              ),
              SizedBox(width: 10),
              Text("by Sand and Stable")
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              Card(
                elevation: 0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(2)),
                color: Colors.amber,
                child: const Icon(
                  Icons.star,
                  color: Colors.white,
                ),
              ),
              Card(
                elevation: 0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(2)),
                color: Colors.amber,
                child: const Icon(
                  Icons.star,
                  color: Colors.white,
                ),
              ),
              Card(
                elevation: 0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(2)),
                color: Colors.amber,
                child: const Icon(
                  Icons.star,
                  color: Colors.white,
                ),
              ),
              Card(
                elevation: 0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(2)),
                color: Colors.amber.withOpacity(0.3),
                child: const Icon(
                  Icons.star,
                  color: Colors.white,
                ),
              ),
              Card(
                elevation: 0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(2)),
                color: Colors.amber.withOpacity(0.3),
                child: const Icon(
                  Icons.star,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          SizedBox(
            height: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  margin: const EdgeInsets.all(4),
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.amber),
                    image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/c1.webp'),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(4),
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.amber),
                    image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/c2.webp'),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(4),
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.amber),
                    image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/c3.webp'),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(4),
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.amber),
                    image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/c4.webp'),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "\$ 450.55",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 2),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      border: Border.all(color: Colors.black),
                    ),
                    child: const Text(
                      "Get it by 3rd March *Standard",
                      style: TextStyle(
                        fontSize: 10,
                      ),
                    ),
                  ),
                  const Row(
                    children: [
                      Text(
                        "Deliver to ",
                        style: TextStyle(
                          fontSize: 10,
                        ),
                      ),
                      Text(
                        "Lewes19958",
                        style: TextStyle(
                          fontSize: 10,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.black),
                ),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          count = count + 1;
                        });
                      },
                      icon: const Icon(
                        Icons.add,
                        size: 20,
                      ),
                    ),
                    Text("$count"),
                    IconButton(
                      onPressed: () {
                        if (count > 1) {
                          setState(() {
                            count = count - 1;
                          });
                        }
                      },
                      icon: const Icon(
                        Icons.add,
                        size: 20,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: OutlinedButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8))),
                      fixedSize: MaterialStateProperty.all(
                          Size(Size.infinite.width, 50))),
                  onPressed: () {},
                  child: const Text(
                    "ADD TO CART",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          FilledButton(
            onPressed: () {},
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.amber),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8))),
                fixedSize:
                    MaterialStateProperty.all(Size(Size.infinite.width, 50))),
            child: const Text(
              "BUY NOW",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Divider(),
          const SizedBox(
            height: 10,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.black),
            ),
            child: Column(
              children: [
                Container(
                  height: 50,
                  width: Size.infinite.width,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(8),
                      topRight: Radius.circular(8),
                    ),
                  ),
                  padding: const EdgeInsets.all(7),
                  child: const Text(
                    "  Product Description",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
