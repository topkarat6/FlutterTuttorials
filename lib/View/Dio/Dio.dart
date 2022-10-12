import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:fluttertutorials/View/Model/ApiUrld.dart';
import 'package:fluttertutorials/View/Model/CariModel.dart';

class DioExample extends StatefulWidget {
  const DioExample({Key? key}) : super(key: key);

  @override
  State<DioExample> createState() => _DioExampleState();
}

class _DioExampleState extends State<DioExample> {
  List<CustomerSummary> model = [];
  bool isLoadPage = false;
  Future<void> getCustomers(String companyId) async {
    var response = await Dio().get(getCustomersApiUrl, queryParameters: {"companyId": companyId});
    var parsed = response.data;
    model = parsed.map<CustomerSummary>((json) => CustomerSummary.fromJson(json)).toList();
    setState(() {
      isLoadPage = true;
    });
  }

  @override
  void initState() {
    getCustomers(companyId);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: isLoadPage
          ? ListView.builder(
              itemCount: model.length,
              shrinkWrap: true,
              itemBuilder: (BuildContext context, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 30,
                        height: 30,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Image.network(
                            "https://service.pvscada.com/File/${model[index].photo!}",
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(model[index].name!),
                    ],
                  ),
                );
              },
            )
          : const Center(
              child: CircularProgressIndicator(),
            ),
    );
  }
}
