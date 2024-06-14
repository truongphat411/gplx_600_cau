class ZQuestion {
  String? zANSWERDESC;
  int? zANSWERS;
  String? zAWSA1;
  String? zIMAGE;
  int? zINCLUDEA1;
  int? zINCLUDEA2;
  int? zINCLUDEA34;
  int? zINCLUDEB1;
  int? zINCLUDEB2;
  int? zINCLUDEC;
  int? zINCLUDEDEF;
  int? zLEARNED;
  int? zMARKED;
  String? zOPTION1;
  String? zOPTION2;
  String? zOPTION3;
  String? zOPTION4;
  String? zQUESTIONCONTENT;
  String? zQUESTIONDIE;
  int? zQUESTIONTYPE;
  int? zWRONG;
  int? zENT;
  int? zPK;

  ZQuestion(
      {this.zANSWERDESC,
      this.zANSWERS,
      this.zAWSA1,
      this.zIMAGE,
      this.zINCLUDEA1,
      this.zINCLUDEA2,
      this.zINCLUDEA34,
      this.zINCLUDEB1,
      this.zINCLUDEB2,
      this.zINCLUDEC,
      this.zINCLUDEDEF,
      this.zLEARNED,
      this.zMARKED,
      this.zOPTION1,
      this.zOPTION2,
      this.zOPTION3,
      this.zOPTION4,
      this.zQUESTIONCONTENT,
      this.zQUESTIONDIE,
      this.zQUESTIONTYPE,
      this.zWRONG,
      this.zENT,
      this.zPK});

  ZQuestion.fromJson(Map<String, dynamic> json) {
    zANSWERDESC = json['ZANSWERDESC'];
    zANSWERS = json['ZANSWERS'];
    zAWSA1 = json['ZAWSA1'];
    zIMAGE = json['ZIMAGE'];
    zINCLUDEA1 = json['ZINCLUDEA1'];
    zINCLUDEA2 = json['ZINCLUDEA2'];
    zINCLUDEA34 = json['ZINCLUDEA34'];
    zINCLUDEB1 = json['ZINCLUDEB1'];
    zINCLUDEB2 = json['ZINCLUDEB2'];
    zINCLUDEC = json['ZINCLUDEC'];
    zINCLUDEDEF = json['ZINCLUDEDEF'];
    zLEARNED = json['ZLEARNED'];
    zMARKED = json['ZMARKED'];
    zOPTION1 = json['ZOPTION1'];
    zOPTION2 = json['ZOPTION2'];
    zOPTION3 = json['ZOPTION3'];
    zOPTION4 = json['ZOPTION4'];
    zQUESTIONCONTENT = json['ZQUESTIONCONTENT'];
    zQUESTIONDIE = json['ZQUESTIONDIE'];
    zQUESTIONTYPE = json['ZQUESTIONTYPE'];
    zWRONG = json['ZWRONG'];
    zENT = json['Z_ENT'];
    zPK = json['Z_PK'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['ZANSWERDESC'] = zANSWERDESC;
    data['ZANSWERS'] = zANSWERS;
    data['ZAWSA1'] = zAWSA1;
    data['ZIMAGE'] = zIMAGE;
    data['ZINCLUDEA1'] = zINCLUDEA1;
    data['ZINCLUDEA2'] = zINCLUDEA2;
    data['ZINCLUDEA34'] = zINCLUDEA34;
    data['ZINCLUDEB1'] = zINCLUDEB1;
    data['ZINCLUDEB2'] = zINCLUDEB2;
    data['ZINCLUDEC'] = zINCLUDEC;
    data['ZINCLUDEDEF'] = zINCLUDEDEF;
    data['ZLEARNED'] = zLEARNED;
    data['ZMARKED'] = zMARKED;
    data['ZOPTION1'] = zOPTION1;
    data['ZOPTION2'] = zOPTION2;
    data['ZOPTION3'] = zOPTION3;
    data['ZOPTION4'] = zOPTION4;
    data['ZQUESTIONCONTENT'] = zQUESTIONCONTENT;
    data['ZQUESTIONDIE'] = zQUESTIONDIE;
    data['ZQUESTIONTYPE'] = zQUESTIONTYPE;
    data['ZWRONG'] = zWRONG;
    data['Z_ENT'] = zENT;
    data['Z_PK'] = zPK;
    return data;
  }
}