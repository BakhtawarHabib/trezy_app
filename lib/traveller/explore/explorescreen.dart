import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:trezy_app/constants/colors.dart';
import 'package:trezy_app/constants/strings.dart';
import 'package:trezy_app/constants/styles.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({Key? key}) : super(key: key);

  @override
  _ExploreScreenState createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: whitecolor,
        appBar: AppBar(
          backgroundColor: whitecolor,
          elevation: 0.0,
          centerTitle: true,
          title: Text(
            "Meet the whole world ",
            style: black17regular,
          ),
        ),
        body: Column(
          children: [
            Container(
              height: 400.h,
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemBuilder: (_, index) => InkWell(
                  onTap: () {
                    // Get.to(() => const PlacesScreen());
                  },
                  child: FittedBox(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        // height: 22.h,
                        width: 180.w,
                        decoration: BoxDecoration(
                          color: whitecolor,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [kDefaultShadow],
                        ),
                        child: Column(
                          children: [
                            Container(
                              height: 100,
                              decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      topRight: Radius.circular(10)),
                                  boxShadow: [kDefaultShadow],
                                  image: DecorationImage(
                                      image: AssetImage(exploresimgs[index]),
                                      fit: BoxFit.cover)),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              exploresnames[index],
                              style: black17regular,
                            ),
                            Container(
                              height: 80,
                              child: Stack(
                                children: <Widget>[
                                  const Positioned(
                                      top: 20,
                                      left: 50,
                                      height: 36,
                                      width: 36,
                                      child: CircleAvatar(
                                        backgroundImage:
                                            AssetImage("images/img3.png"),
                                      )),
                                  const Positioned(
                                      top: 20,
                                      left: 20,
                                      height: 36,
                                      width: 36,
                                      child: CircleAvatar(
                                        backgroundImage:
                                            AssetImage("images/img1.png"),
                                      )),
                                  const Positioned(
                                      top: 20,
                                      left: 80,
                                      height: 36,
                                      width: 36,
                                      child: CircleAvatar(
                                        backgroundImage:
                                            AssetImage("images/img2.png"),
                                      )),
                                  Positioned(
                                      top: 20,
                                      left: 110,
                                      height: 36,
                                      width: 36,
                                      child:
                                          SvgPicture.asset("images/add.svg")),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                itemCount: exploresimgs.length,
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              "Popular Advisors",
              style: black17regular,
            ),
            Expanded(
                child: StaggeredGridView.countBuilder(
              crossAxisCount: 4,
              itemCount: 4,
              itemBuilder: (BuildContext context, int index) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: FittedBox(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 103.h,
                      width: 101.w,
                      decoration: BoxDecoration(
                        color: whitecolor,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [kDefaultShadow],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CircleAvatar(
                            backgroundImage:
                                AssetImage(explorepopularimages[index]),
                          ),
                          Text(
                            exploreadvisors[index],
                          ),
                          Text(
                            exploreadvisoraddress[index],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              staggeredTileBuilder: (int index) =>
                  StaggeredTile.count(2, index.isEven ? 2 : 1),
              mainAxisSpacing: 2.0,
              crossAxisSpacing: 0.0,
            ))
          ],
        ));
  }
}
