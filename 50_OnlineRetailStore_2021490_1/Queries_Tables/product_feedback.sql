CREATE TABLE product_feedback(
    review_id INT NOT NULL AUTO_INCREMENT,
    customer_id INT NOT NULL,
    review_txt VARCHAR(20) ,
   
    PRIMARY KEY(review_id, customer_id),
    product_id INT,
    FOREIGN KEY (product_id) REFERENCES product (product_id)

);


INSERT INTO product_feedback(product_id,review_id,customer_id,review_txt)
VALUES

  (444,1000,20066,"LOVED IT"),
  (424,1001,20054,"NICE PRODUCT"),
  (471,1002,20108,"NICE PRODUCT"),
  (485,1003,20045,"LOVED IT"),
  (432,1004,20075,"BAD"),
  (436,1005,20039,"WORST PRODUCT"),
  (498,1006,20016,"BAD"),
  (423,1007,20009,"BAD"),
  (428,1008,20097,"BEST"),
  (457,1009,20037,"BEST"),

  (494,1010,20070,"LOVED IT"),
  (449,1011,20073,"LOVED IT"),
  (407,1012,20007,"BAD"),
  (438,1013,20004,"BAD"),
  (455,1014,20019,"WORST PRODUCT"),
  (418,1015,20101,"BEST"),
  (455,1016,20114,"NICE PRODUCT"),
  (434,1017,20052,"AMAZING"),
  (479,1018,20090,"BEST"),
  (475,1019,20083,"BAD"),

  (474,1020,20035,"BEST"),
  (489,1021,20111,"BEST"),
  (438,1022,20055,"BAD"),
  (476,1023,20097,"AMAZING"),
  (471,1024,20014,"NICE PRODUCT"),
  (464,1025,20080,"GOOD"),
  (486,1026,20095,"NICE PRODUCT"),
  (501,1027,20011,"LOVED IT"),
  (457,1028,20051,"AMAZING"),
  (461,1029,20075,"WORST PRODUCT"),

  (458,1030,20024,"BAD"),
  (430,1031,20024,"LOVED IT"),
  (405,1032,20012,"GOOD"),
  (461,1033,20108,"WORST PRODUCT"),
  (501,1034,20029,"NICE PRODUCT"),
  (474,1035,20070,"NICE PRODUCT"),
  (445,1036,20102,"WORST PRODUCT"),
  (457,1037,20085,"BEST"),
  (480,1038,20107,"WORST PRODUCT"),
  (464,1039,20086,"GOOD"),
  (459,1040,20030,"WORST PRODUCT"),
  (441,1041,20019,"NICE PRODUCT"),
  (405,1042,20029,"LOVED IT"),
  (419,1043,20009,"LOVED IT"),
  (471,1044,20107,"BAD"),
  (439,1045,20097,"BAD"),
  (444,1046,20050,"NICE PRODUCT"),
  (464,1047,20017,"WORST PRODUCT"),
  (402,1048,20076,"BEST"),
  (475,1049,20083,"BEST"),

  (410,1050,20030,"WORST PRODUCT"),
  (459,1051,20057,"GOOD"),
  (404,1052,20090,"WORST PRODUCT"),
  (496,1053,20063,"AMAZING"),
  (470,1054,20083,"BAD"),
  (416,1055,20056,"BEST"),
  (474,1056,20082,"AMAZING"),
  (447,1057,20001,"LOVED IT"),
  (460,1058,20070,"NICE PRODUCT"),
  (439,1059,20091,"WORST PRODUCT"),

  (454,1060,20082,"BEST"),
  (401,1061,20024,"GOOD"),
  (450,1062,20042,"GOOD"),
  (440,1063,20081,"BAD"),
  (452,1064,20026,"BAD"),
  (493,1065,20097,"BAD"),
  (404,1066,20063,"GOOD"),
  (441,1067,20051,"BAD"),
  (456,1068,20065,"LOVED IT"),
  (466,1069,20043,"BEST"),

  (460,1070,20089,"BEST"),
  (477,1071,20113,"BEST"),
  (485,1072,20091,"BAD"),
  (480,1073,20045,"BEST"),
  (487,1074,20071,"NICE PRODUCT"),
  (502,1075,20008,"BEST"),
  (430,1076,20104,"AMAZING"),
  (499,1077,20050,"LOVED IT"),
  (498,1078,20012,"WORST PRODUCT"),
  (423,1079,20051,"NICE PRODUCT"),

  (442,1080,20002,"BEST"),
  (435,1081,20048,"NICE PRODUCT"),
  (459,1082,20098,"LOVED IT"),
  (414,1083,20084,"BEST"),
  (494,1084,20002,"NICE PRODUCT"),
  (489,1085,20093,"NICE PRODUCT"),
  (448,1086,20024,"BAD"),
  (428,1087,20028,"GOOD"),
  (474,1088,20010,"BAD"),
  (424,1089,20023,"LOVED IT"),

  (462,1090,20063,"LOVED IT"),
  (440,1091,20096,"GOOD"),
  (418,1092,20057,"NICE PRODUCT"),
  (503,1093,20074,"BEST"),
  (421,1094,20007,"BEST"),
  (423,1095,20116,"LOVED IT"),
  (411,1096,20030,"LOVED IT"),
  (452,1097,20097,"BEST"),
  (449,1098,20066,"GOOD"),
  (482,1099,20012,"NICE PRODUCT");