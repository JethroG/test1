import 'package:equatable/equatable.dart';

class GlassModel extends Equatable {
  final String? title;
  final String? dateProduce;
  final String? rate;

  GlassModel(
      {required this.title, required this.dateProduce, required this.rate});

  @override
  List<Object?> get props => [title,dateProduce,rate];

  static List<GlassModel> listOfGlasses=[
    GlassModel(title: 'Springbank',dateProduce: '1991 #1234 ',rate: '(111/158)'),
    GlassModel(title: 'Springbank2',dateProduce: '1992 #1234 ',rate: '(112/158)'),
    GlassModel(title: 'Springbank3',dateProduce: '1993 #1234 ',rate: '(113/158)'),
    GlassModel(title: 'Springbank4',dateProduce: '1994 #1234 ',rate: '(114/158)'),
    GlassModel(title: 'Springbank5',dateProduce: '1995 #1234 ',rate: '(115/158)'),
    GlassModel(title: 'Springbank6',dateProduce: '1996 #1234 ',rate: '(116/158)'),
    GlassModel(title: 'Springbank4',dateProduce: '1994 #1234 ',rate: '(114/158)'),
    GlassModel(title: 'Springbank5',dateProduce: '1995 #1234 ',rate: '(115/158)'),
    GlassModel(title: 'Springbank6',dateProduce: '1996 #1234 ',rate: '(116/158)'),
    GlassModel(title: 'Springbank4',dateProduce: '1994 #1234 ',rate: '(114/158)'),
    GlassModel(title: 'Springbank5',dateProduce: '1995 #1234 ',rate: '(115/158)'),
    GlassModel(title: 'Springbank6',dateProduce: '1996 #1234 ',rate: '(116/158)'),
  ];
}
