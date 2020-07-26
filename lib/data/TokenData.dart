class TokenData {
  String accessToken;
  String tokenType;
  int expiresIn;
  String scope;

  TokenData({this.accessToken, this.tokenType, this.expiresIn, this.scope});

  factory TokenData.fromJson(Map<String, dynamic> json) {
    return TokenData(
        accessToken: json['access_token'],
        tokenType: json['token_type'],
        expiresIn: json['expires_in'],
        scope: json['scope']);
  }
}
