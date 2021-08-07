/// 墓碑刻制分页 response
class EngravingPageListResponseEntity {
  int? current;
  int? pages;
  List<EngravingItem>? records;
  int? size;
  int? total;

  EngravingPageListResponseEntity(
      {this.current, this.pages, this.records, this.size, this.total});

  factory EngravingPageListResponseEntity.fromJson(Map<String, dynamic> json) =>
      // {
      //   current = json['current'];
      //   pages = json['pages'];
      //   if (json['records'] != null) {
      //     records = List<EngravingItem>.from(
      //         json["records"].map((x) => EngravingItem.fromJson(x)));
      //   }
      //   size = json['size'];
      //   total = json['total'];
      // }
      EngravingPageListResponseEntity(
        current: json['current'],
        pages: json['pages'],
        records: List<EngravingItem>.from(json["records"] != null
            ? json["records"].map((x) => EngravingItem.fromJson(x))
            : []),
        size: json['size'],
        total: json['total'],
      );

  Map<String, dynamic> toJson() => {
        // final Map<String, dynamic> data = new Map<String, dynamic>();
        'current': current,
        'pages': pages,
        'records': records!.map((v) => v.toJson()).toList(),
        'size': size,
        'total': total,
      };
}

class EngravingItem {
  String? acupoint;
  String? acupointText;
  String? certificateCode;
  String? certificateName;
  String? code;
  String? graveName;
  String? id;
  String? occupantGender;
  String? occupantGenderText;
  String? occupantName;
  String? setupDate;
  String? setupName;
  String? status;
  String? statusText;
  String? tombstoneStyleId;
  String? tombstoneStyleIdText;

  EngravingItem(
      {required this.acupoint,
      required this.acupointText,
      required this.certificateCode,
      required this.certificateName,
      required this.code,
      required this.graveName,
      required this.id,
      required this.occupantGender,
      required this.occupantGenderText,
      required this.occupantName,
      required this.setupDate,
      required this.setupName,
      required this.status,
      required this.statusText,
      required this.tombstoneStyleId,
      required this.tombstoneStyleIdText});

  factory EngravingItem.fromJson(Map<String, dynamic> json) => EngravingItem(
      acupoint: json['acupoint'],
      acupointText: json['acupointText'],
      certificateCode: json['certificateCode'],
      certificateName: json['certificateName'],
      code: json['code'],
      graveName: json['graveName'],
      id: json['id'],
      occupantGender: json['occupantGender'],
      occupantGenderText: json['occupantGenderText'],
      occupantName: json['occupantName'],
      setupDate: json['setupDate'],
      setupName: json['setupName'],
      status: json['status'],
      statusText: json['statusText'],
      tombstoneStyleId: json['tombstoneStyleId'],
      tombstoneStyleIdText: json['tombstoneStyleIdText']);

  Map<String, dynamic> toJson() => {
        // final Map<String, dynamic> data = new Map<String, dynamic>();
        'acupoint': acupoint,
        'acupointText': acupointText,
        'certificateCode': certificateCode,
        'certificateName': certificateName,
        'code': code,
        'graveName': graveName,
        'id': id,
        'occupantGender': occupantGender,
        'occupantGenderText': occupantGenderText,
        'occupantName': occupantName,
        'setupDate': setupDate,
        'setupName': setupName,
        'status': status,
        'statusText': statusText,
        'tombstoneStyleId': tombstoneStyleId,
        'tombstoneStyleIdText': tombstoneStyleIdText,
      };
}
