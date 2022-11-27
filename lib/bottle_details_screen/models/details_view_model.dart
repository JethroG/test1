
import 'package:equatable/equatable.dart';

class DetailsViewModel extends Equatable {
  final String? title;
  final String? desc;


  DetailsViewModel(
      {required this.title, required this.desc});

  @override
  List<Object?> get props => [title,desc];

  static List<DetailsViewModel> listOfDetailsBottle=[
    DetailsViewModel(title: 'Springbank',desc: '1991 #1234 '),
    DetailsViewModel(title: 'Springbank2',desc: '1992 #1234 '),
    DetailsViewModel(title: 'Springbank3',desc: '1993 #1234 '),
    DetailsViewModel(title: 'Springbank4',desc: '1994 #1234 '),
    DetailsViewModel(title: 'Springbank5',desc: '1995 #1234 '),
    DetailsViewModel(title: 'Springbank6',desc: '1996 #1234 '),
    DetailsViewModel(title: 'Springbank4',desc: '1994 #1234 '),
    DetailsViewModel(title: 'Springbank5',desc: '1995 #1234 '),
    DetailsViewModel(title: 'Springbank6',desc: '1996 #1234 '),
    DetailsViewModel(title: 'Springbank4',desc: '1994 #1234 '),
    DetailsViewModel(title: 'Springbank5',desc: '1995 #1234 '),
    DetailsViewModel(title: 'Springbank6',desc: '1996 #1234 '),
  ];
}
