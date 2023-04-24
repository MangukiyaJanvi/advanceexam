import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/api_provider.dart';

class DataScreen extends StatefulWidget {
  const DataScreen({Key? key}) : super(key: key);

  @override
  State<DataScreen> createState() => _DataScreenState();
}

class _DataScreenState extends State<DataScreen> {
  ApiProvider? apiProviderT;
  ApiProvider? apiProviderF;

  @override
  Widget build(BuildContext context) {
    int index = ModalRoute.of(context)!.settings.arguments as int;
    apiProviderF = Provider.of<ApiProvider>(context, listen: false);
    apiProviderT = Provider.of<ApiProvider>(context, listen: true);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade100,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
              "${apiProviderT!.homeModel!.countriesStat[index].countryName}"),
        ),
        body: Container(
          width: double.infinity,
          margin: EdgeInsets.all(20),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: double.infinity,
                alignment: Alignment.center,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    color: Colors.grey.shade100),
                child: Text(
                  "Country : ${apiProviderT!.homeModel!.countriesStat[index].countryName}",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Text(
                "Total Cases : ${apiProviderT!.homeModel!.countriesStat[index].cases}",
                style: TextStyle(fontSize: 20),
              ),
              Text(
                "New Cases : ${apiProviderT!.homeModel!.countriesStat[index].newCases}",
                style: TextStyle(fontSize: 20),
              ),
              Text(
                "Active Cases : ${apiProviderT!.homeModel!.countriesStat[index].activeCases}",
                style: TextStyle(fontSize: 20),
              ),
              Text(
                "Deaths : ${apiProviderT!.homeModel!.countriesStat[index].deaths}",
                style: TextStyle(fontSize: 20),
              ),
              Text(
                "SeriousCritical Cases: ${apiProviderT!.homeModel!.countriesStat[index].seriousCritical}",
                style: TextStyle(fontSize: 20),
              ),
              Text(
                "Total Tests: ${apiProviderT!.homeModel!.countriesStat[index].totalTests}",
                style: TextStyle(fontSize: 20),
              ),
              Text(
                "TotalRecovered Cases: ${apiProviderT!.homeModel!.countriesStat[index].totalRecovered}",
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
