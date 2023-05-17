import 'package:flutter/material.dart';
import 'package:scoutlance/models/candidate.dart';
import 'package:scoutlance/services/api_service.dart';
import 'package:scoutlance/style/my_theme.dart';
import 'package:scoutlance/ui/components/CandidateItemWidget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Candidate>? candidateList;

  @override
  void initState() {
    super.initState();
    initData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: false,
        title: Text(
          "Scoutlance",
          style: Theme.of(context)
              .textTheme
              .titleLarge!
              .copyWith(color: MyTheme.primary),
        ),
      ),
      body: Column(
        children: [
          ListTile(
            title: Text(
              "My Candidates",
              // textScaleFactor: 0.9,
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(color: MyTheme.primary),
            ),
            trailing: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.add_circle_outlined,
                  size: 30,
                  color: MyTheme.primary,
                )),
          ),
          const Divider(
            thickness: 1.2,
            indent: 15,
            endIndent: 15,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Wrap(
                  spacing: 20,
                  runSpacing: 20,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: List.generate(candidateList!.length, (index) {
                    Candidate item = candidateList!.elementAt(index);
                    return CandidateItemWidget(candidate: item);
                  })),
            ),
          ),
        ],
      ),
    );
  }

  void initData() {
    setState(() {
      candidateList = ApiService().getCandidatelist();
    });
  }
}
