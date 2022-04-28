import 'package:flutter/material.dart';
import 'package:nft_wallet/constant/colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        title: Center(
            child: Text(
          'Welcome',
          style: Theme.of(context).textTheme.headline3,
        )),
        actions: [
          IconButton(
              onPressed: () {},
              icon: CircleAvatar(
                backgroundColor: AppColors.whiteOpacity10,
                child: const Icon(Icons.sort),
              ))
        ],
      ),
      body: Column(children: [
        Container(
          decoration: BoxDecoration(
              color: AppColors.whiteOpacity10,
              borderRadius: const BorderRadius.all(Radius.circular(20))),
          width: double.infinity,
          margin: const EdgeInsets.all(15),
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Current balance',
                style:
                    TextStyle(fontSize: 14.0, color: AppColors.whiteOpacity40),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: RichText(
                  text: TextSpan(
                    text: '20.09865 ',
                    style: Theme.of(context).textTheme.headline5,
                    children: [
                      TextSpan(
                          text: 'ETH',
                          style: Theme.of(context).textTheme.headline6)
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Row(
                  children: const [
                    Text(
                      '145%',
                      style: TextStyle(
                          color: AppColors.green, fontFamily: 'Montserrat'),
                    ),
                    Icon(
                      Icons.arrow_upward,
                      size: 16,
                      color: AppColors.green,
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                AppColors.orange),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            ))),
                        onPressed: (() {}),
                        child: const Padding(
                          padding: EdgeInsets.all(5),
                          child: Text(
                            'Load',
                            style: TextStyle(
                                fontSize: 14.0, color: AppColors.white),
                          ),
                        )),
                    ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                AppColors.background),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            ))),
                        onPressed: (() {}),
                        child: const Padding(
                          padding: EdgeInsets.all(5),
                          child: Text(
                            'Exchange',
                            style: TextStyle(
                                fontSize: 14.0, color: AppColors.white),
                          ),
                        )),
                    ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                AppColors.blue),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            ))),
                        onPressed: (() {}),
                        child: const Padding(
                          padding: EdgeInsets.all(5),
                          child: Text(
                            'Withdraw',
                            style: TextStyle(
                                fontSize: 14.0, color: AppColors.white),
                          ),
                        )),
                  ],
                ),
              )
            ],
          ),
        ),
        DefaultTabController(
            length: 2,
            child: Column(
              children: [
                const TabBar(
                    unselectedLabelColor: AppColors.whiteOpacity40,
                    labelColor: AppColors.white,
                    tabs: [
                      Tab(
                        text: 'Your NFT’s',
                      ),
                      Tab(
                        text: 'Tokens',
                      ),
                    ]),
                SizedBox(
                    height: 400,
                    child: TabBarView(children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text('No NFT’s yet'),
                          ElevatedButton(
                              style: ButtonStyle(
                                  shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),
                              ))),
                              onPressed: (() {}),
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Icon(
                                      Icons.add,
                                      size: 18,
                                    ),
                                    Text(
                                      'Add NFT',
                                    )
                                  ],
                                ),
                              )),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text('No Tokens yet'),
                          ElevatedButton(
                              style: ButtonStyle(
                                  shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),
                              ))),
                              onPressed: (() {}),
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Icon(
                                      Icons.add,
                                      size: 18,
                                    ),
                                    Text(
                                      'Add Tokens',
                                    )
                                  ],
                                ),
                              )),
                        ],
                      ),
                    ]))
              ],
            ))
      ]),
    );
  }
}
