class Fortune {
  Fortune({
    required this.date,
    required this.rank,
    required this.uranaiAll,
    required this.pointAll,
    required this.uranaiLove,
    required this.pointLove,
    required this.uranaiMoney,
    required this.pointMoney,
    required this.uranaiWork,
    required this.pointWork,
    required this.uranaiHealth,
    required this.pointHealth,
  });

  factory Fortune.fromJson(Map<String, dynamic> json) => Fortune(
        date: DateTime.parse(json['date'].toString()),
        rank: json['rank'].toString(),
        uranaiAll: json['uranai_all'].toString(),
        pointAll: json['point_all'].toString(),
        uranaiLove: json['uranai_love'].toString(),
        pointLove: json['point_love'].toString(),
        uranaiMoney: json['uranai_money'].toString(),
        pointMoney: json['point_money'].toString(),
        uranaiWork: json['uranai_work'].toString(),
        pointWork: json['point_work'].toString(),
        uranaiHealth: json['uranai_health'].toString(),
        pointHealth: json['point_health'].toString(),
      );
  DateTime date;
  String rank;
  String uranaiAll;
  String pointAll;
  String uranaiLove;
  String pointLove;
  String uranaiMoney;
  String pointMoney;
  String uranaiWork;
  String pointWork;
  String uranaiHealth;
  String pointHealth;

  Map<String, dynamic> toJson() => {
        'date':
            '${date.year.toString().padLeft(4, '0')}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}',
        'rank': rank,
        'uranai_all': uranaiAll,
        'point_all': pointAll,
        'uranai_love': uranaiLove,
        'point_love': pointLove,
        'uranai_money': uranaiMoney,
        'point_money': pointMoney,
        'uranai_work': uranaiWork,
        'point_work': pointWork,
        'uranai_health': uranaiHealth,
        'point_health': pointHealth,
      };
}
