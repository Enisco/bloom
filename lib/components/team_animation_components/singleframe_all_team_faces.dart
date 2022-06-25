import 'package:animations/animations.dart';
import 'package:bloom/pages/mainpages/team_page.dart';
import 'package:flutter/material.dart';
import 'each_animated_tile_widget.dart';
import 'package:bloom/components/team_animation_components/team_details.dart';

const ContainerTransitionType _transitionType = ContainerTransitionType.fade;

Widget widgetofTeamFaces(List<String> frames) {
  List<Widget> teamMembersFaces = [];
  for (int indx = 0; indx < frames.length; indx++) {
    teamMembersFaces.add(
      _OpenContainerWrapperTeamFaces(
        detailsIndex: indx,
        transitionType: _transitionType,
        closedBuilder: (BuildContext _, VoidCallback openContainer) {
          return TeamFacesSummaryTileWidget(
            openContainer: openContainer,
            imageName: imageName[indx],
            imageIndex: indx,
          );
        },
      ),
    );
  }
  return Wrap(
      spacing: 5, // gap between adjacent chips
      runSpacing: 10, // gap between lines
      children: teamMembersFaces);
}
//----------------------------------------------------------------------------------------------

class _OpenContainerWrapperTeamFaces extends StatelessWidget {
  const _OpenContainerWrapperTeamFaces({
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
          color: Colors.grey,
          width: 1.5,
        ),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          bottomRight: Radius.circular(10),
        ),
      ),
      /**************************************************************************************** */

      transitionDuration: const Duration(milliseconds: 30),
      transitionType: transitionType,
      openBuilder: (BuildContext context, VoidCallback _) {
        return const TeamDetailsPage(
            // A click on any of these pictures leads tothe team memebers details page
            );
      },
      tappable: false,
      closedBuilder: closedBuilder,
    );
  }
}
