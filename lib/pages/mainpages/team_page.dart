import 'package:animations/animations.dart';
import 'package:bloom/components/my_spacers.dart';
import 'package:flutter/material.dart';
import 'package:bloom/components/team_animation_components/single_animated_tile_widget.dart';
import 'package:bloom/components/team_animation_components/team_details.dart';
import 'package:bloom/components/team_animation_components/details_of_persons_page.dart';

const ContainerTransitionType _transitionType = ContainerTransitionType.fade;

Widget widgetsOfTeamDetails(List<String> frames) {
  List<Widget> teamMembersFrame = [];
  for (int indxM = 1; indxM < frames.length; indxM++) {
    teamMembersFrame.add(
      _OpenContainerWrapper(
        detailsIndex: indxM,
        transitionType: _transitionType,
        closedBuilder: (BuildContext _, VoidCallback openContainer) {
          return SingleAnimatedTileWidget(
            openContainer: openContainer,
            imageName: imageName[indxM],
            nameText: nameText[indxM],
            roleText: roleText[indxM],
          );
        },
      ),
    );
  }
  return Wrap(
      alignment: WrapAlignment.spaceEvenly,
      runAlignment: WrapAlignment.spaceBetween,
      spacing: 15.0, // gap between adjacent chips
      runSpacing: 15.0, // gap between lines
      children: teamMembersFrame);
}
//----------------------------------------------------------------------------------------------

class _OpenContainerWrapper extends StatelessWidget {
  const _OpenContainerWrapper({
    required this.closedBuilder,
    required this.transitionType,
    required this.detailsIndex,
  });

  final CloseContainerBuilder closedBuilder;
  final ContainerTransitionType transitionType;
  final int detailsIndex;

  @override
  Widget build(BuildContext context) {
    /**************************************************************************************** */

    return OpenContainer<bool>(
      closedShape: const RoundedRectangleBorder(
        side: BorderSide(
          color: Colors.amber,
          width: 2.0,
        ),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
      ),
      /**************************************************************************************** */
      transitionType: transitionType,
      openBuilder: (BuildContext context, VoidCallback _) {
        return DetailsOfPersonsPage(
          nameText: nameText[detailsIndex],
          imageName: imageName[detailsIndex],
          detailsOfPersonText: detailsOfPersonText[detailsIndex],
        );
      },
      tappable: false,
      closedBuilder: closedBuilder,
    );
  }
}

//----------------------------------------------------------------------------------------------

class DrMrsDetailsFrame extends StatelessWidget {
  const DrMrsDetailsFrame({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _OpenContainerWrapper(
      detailsIndex: 0,
      transitionType: _transitionType,
      closedBuilder: (BuildContext _, VoidCallback openContainer) {
        return DrMrsAnimatedTileWidget(
          openContainer: openContainer,
          imageName: imageName[0],
          nameText: nameText[0],
          roleText: roleText[0],
        );
      },
    );
  }
}
//----------------------------------------------------------------------------------------------

class TeamDetailsPage extends StatelessWidget {
  const TeamDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(
                  Icons.arrow_back_ios_new,
                  color: Colors.black,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              );
            },
          ),
          title: Container(
            padding:
                EdgeInsets.symmetric(vertical: 0.0, horizontal: size.width / 7),
            width: size.width,
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Icon(
                  Icons.people,
                  color: Colors.black,
                ),
                SizedBox(
                  width: size.width / 40,
                ),
                Text(
                  "The Team",
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Roboto',
                    fontSize: size.height / 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          backgroundColor: Colors.white,
        ),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(
            parent: ClampingScrollPhysics(),
          ),
          child: Center(
            child: Container(
              height: size.height,
              width: size.width - (size.width / 25),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                border: Border.all(
                  color: Colors.grey.shade300,
                ),
              ),
              child: ListView(
                padding: EdgeInsets.all(size.width / 35),
                children: [
                  const DrMrsDetailsFrame(),
                  const Spacer1(),
                  ListView(
                    shrinkWrap: true,
                    physics: const BouncingScrollPhysics(
                      parent: ClampingScrollPhysics(),
                    ),
                    children: <Widget>[
                      widgetsOfTeamDetails(nameText),
                    ],
                  ),
                  const Spacer5(),
                  const Spacer5(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
