-- createcia, 1, 50
DROP TABLE IF EXISTS cia; 
CREATE TABLE cia(
   name VARCHAR(50) NOT NULL
   ,region VARCHAR(60)
   ,area DECIMAL(10) 		
   ,population DECIMAL(11)	
   ,gdp DECIMAL(14)		
   ,PRIMARY KEY (name)
   );
CREATE INDEX cia_region ON cia(region);

-- tabcia, 1, 50
insert into cia values ('Afghanistan','Asia',652000,25838797,21000000000);
insert into cia values ('Albania','Europe',28748,3490435,5600000000);
insert into cia values ('Algeria','Africa',2381740,31193917,147600000000);
insert into cia values ('American Samoa','Oceania',199,65446,150000000);
insert into cia values ('Andorra','Europe',468,66824,1200000000);
insert into cia values ('Angola','Africa',1246700,10145267,11600000000);
insert into cia values ('Anguilla','Central America and the Caribbean',91,11797,88000000);
insert into cia values ('Antarctica','Antarctic Region',14000000,0,NULL);
insert into cia values ('Antigua and Barbuda','Central America and the Caribbean',442,66422,524000000);
insert into cia values ('Argentina','South America',2766890,36955182,367000000000);
insert into cia values ('Armenia','Commonwealth of Independent States',29800,3344336,9900000000);
insert into cia values ('Aruba','Central America and the Caribbean',193,69539,1600000000);
insert into cia values ('Ashmore and Cartier Islands','Southeast Asia',5,0,NULL);
insert into cia values ('Australia','Oceania',7686850,19169083,416200000000);
insert into cia values ('Austria','Europe',83858,8131111,190600000000);
insert into cia values ('Azerbaijan','Commonwealth of Independent States',86600,7748163,14000000000);
insert into cia values ('Bahamas, The','Central America and the Caribbean',13940,294982,5580000000);
insert into cia values ('Bahrain','Middle East',620,634137,8600000000);
insert into cia values ('Baker Island','Oceania',1,0,NULL);
insert into cia values ('Bangladesh','Asia',144000,129194224,187000000000);
insert into cia values ('Barbados','Central America and the Caribbean',430,274540,2900000000);
insert into cia values ('Bassas da India','Africa',0,0,NULL);
insert into cia values ('Belarus','Commonwealth of Independent States',207600,10366719,55200000000);
insert into cia values ('Belgium','Europe',30510,10241506,243400000000);
insert into cia values ('Belize','Central America and the Caribbean',22960,249183,740000000);
insert into cia values ('Benin','Africa',112620,6395919,8100000000);
insert into cia values ('Bermuda','North America',58,62997,2000000000);
insert into cia values ('Bhutan','Asia',47000,2005222,2100000000);
insert into cia values ('Bolivia','South America',1098580,8152620,24200000000);
insert into cia values ('Bosnia and Herzegovina','Bosnia and Herzegovina, Europe',51129,3835777,6200000000);
insert into cia values ('Botswana','Africa',600370,1576470,5700000000);
insert into cia values ('Bouvet Island','Antarctic Region',58,0,NULL);
insert into cia values ('Brazil','South America',8511965,172860370,1130000000000);
insert into cia values ('British Indian Ocean Territory','World',60,0,NULL);
insert into cia values ('British Virgin Islands','Central America and the Caribbean',150,19615,287000000);
insert into cia values ('Brunei','Southeast Asia',5770,336376,5600000000);
insert into cia values ('Bulgaria','Europe',110910,7796694,34900000000);
insert into cia values ('Burkina Faso','Africa',274200,11946065,12400000000);
insert into cia values ('Burma','Southeast Asia',678500,41734853,59400000000);
insert into cia values ('Burundi','Africa',27830,6054714,4200000000);
insert into cia values ('Cambodia','Southeast Asia',181040,12212306,8200000000);
insert into cia values ('Cameroon','Africa',475440,15421937,31500000000);
insert into cia values ('Canada','North America',9976140,31281092,722300000000);
insert into cia values ('Cape Verde','World',4033,401343,618000000);
insert into cia values ('Cayman Islands','Africa',259,34763,930000000);
insert into cia values ('Central African Republic','Africa',622984,3512751,5800000000);
insert into cia values ('Chad','Africa',1284000,8424504,7600000000);
insert into cia values ('Chile','South America',756950,15153797,185100000000);
insert into cia values ('China','Asia',9596960,1261832482,4800000000000);
insert into cia values ('Christmas Island','Southeast Asia',135,2564,0);
-- tabcia, 51, 50
insert into cia values ('Clipperton Island','World',7,0,NULL);
insert into cia values ('Cocos (Keeling) Islands','Southeast Asia',14,635,0);
insert into cia values ('Colombia','South America, Central America and the Caribbean',1138910,39685655,245100000000);
insert into cia values ('Comoros','Africa',2170,578400,410000000);
insert into cia values ('Congo, Democratic Republic of the','Africa',2345410,51964999,35700000000);
insert into cia values ('Congo, Republic of the','Africa',342000,2830961,4150000000);
insert into cia values ('Cook Islands','Oceania',240,20407,112000000);
insert into cia values ('Coral Sea Islands','Oceania',0,0,NULL);
insert into cia values ('Costa Rica','Central America and the Caribbean',51100,3710558,26000000000);
insert into cia values ('Cote d\'Ivoire','Africa',322460,15980950,25700000000);
insert into cia values ('Croatia','Europe',56538,4282216,23900000000);
insert into cia values ('Cuba','Central America and the Caribbean',110860,11141997,18600000000);
insert into cia values ('Cyprus','Middle East',9250,758363,9000000);
insert into cia values ('Czech Republic','Europe',78866,10272179,120800000000);
insert into cia values ('Denmark','Europe',43094,5336394,127700000000);
insert into cia values ('Djibouti','Africa',22000,451442,550000000);
insert into cia values ('Dominica','Central America and the Caribbean',754,71540,225000000);
insert into cia values ('Dominican Republic','Central America and the Caribbean',48730,8442533,43700000000);
insert into cia values ('Ecuador','South America',283560,12920092,54500000000);
insert into cia values ('Egypt','Africa',1001450,68359979,200000000000);
insert into cia values ('El Salvador','Central America and the Caribbean',21040,6122515,18100000000);
insert into cia values ('Equatorial Guinea','Africa',28051,474214,960000000);
insert into cia values ('Eritrea','Africa',121320,4135933,2900000000);
insert into cia values ('Estonia','Europe',45226,1431471,7900000000);
insert into cia values ('Ethiopia','Africa',1127127,64117452,33300000000);
insert into cia values ('Europa Island','Africa',28,0,NULL);
insert into cia values ('Falkland Islands (Islas Malvinas)','South America',12173,2826,0);
insert into cia values ('Faroe Islands','Europe',1399,45296,700000000);
insert into cia values ('Fiji','Oceania',18270,832494,5900000000);
insert into cia values ('Finland','Europe',337030,5167486,108600000000);
insert into cia values ('France','Europe',547030,59329691,1373000000000);
insert into cia values ('French Guiana','South America',91000,172605,1000000000);
insert into cia values ('French Polynesia','Oceania',4167,249110,2600000000);
insert into cia values ('French Southern and Antarctic Lands','Antarctic Region',7781,0,NULL);
insert into cia values ('Gabon','Africa',267667,1208436,7900000000);
insert into cia values ('Gambia, The','Africa',11300,1367124,1400000000);
insert into cia values ('Gaza Strip','Middle East',360,1132063,1170000000);
insert into cia values ('Georgia','Commonwealth of Independent States',69700,5019538,11700000000);
insert into cia values ('Germany','Europe',357021,82797408,1864000000000);
insert into cia values ('Ghana','Africa',238540,19533560,35500000000);
insert into cia values ('Gibraltar','Europe',6,29481,500000000);
insert into cia values ('Glorioso Islands','Africa',5,0,NULL);
insert into cia values ('Greece','Europe',131940,10601527,149200000000);
insert into cia values ('Greenland','Arctic Region',2175600,56309,945000000);
insert into cia values ('Grenada','Central America and the Caribbean',340,89018,360000000);
insert into cia values ('Guadeloupe','Central America and the Caribbean',1780,426493,3700000000);
insert into cia values ('Guam','Oceania',541,154623,3000000000);
insert into cia values ('Guatemala','Central America and the Caribbean',108890,12639939,47900000000);
insert into cia values ('Guernsey','Europe',194,64080,1150000000);
insert into cia values ('Guinea','Africa',245857,7466200,9200000000);
-- tabcia, 101, 50
insert into cia values ('Guinea-Bissau','Africa',36120,1285715,1100000000);
insert into cia values ('Guyana','South America',214970,697286,1860000000);
insert into cia values ('Haiti','Central America and the Caribbean',27750,6867995,9200000000);
insert into cia values ('Heard Island and McDonald Islands','Antarctic Region',412,0,NULL);
insert into cia values ('Holy See (Vatican City)','Europe',1880,921,245000000);
insert into cia values ('Honduras','Central America and the Caribbean',112090,6249598,14100000000);
insert into cia values ('Hong Kong','Southeast Asia',1092,7116302,158200000000);
insert into cia values ('Howland Island','Oceania',1,0,NULL);
insert into cia values ('Hungary','Europe',93030,10138844,79400000000);
insert into cia values ('Iceland','Arctic Region',103000,276365,6420000000);
insert into cia values ('India','Asia',3287590,1014003817,1805000000000);
insert into cia values ('Indonesia','Southeast Asia',1919440,224784210,610000000000);
insert into cia values ('Iran','Middle East',1648000,65619636,347600000000);
insert into cia values ('Iraq','Middle East',437072,22675617,59900000000);
insert into cia values ('Ireland','Europe',70280,3797257,73700000000);
insert into cia values ('Israel','Middle East',20770,5842454,105400000000);
insert into cia values ('Italy','Europe',301230,57634327,1212000000000);
insert into cia values ('Jamaica','Central America and the Caribbean',10990,2652689,8800000000);
insert into cia values ('Jan Mayen','Arctic Region',373,0,NULL);
insert into cia values ('Japan','Asia',377835,126549976,2950000000000);
insert into cia values ('Jarvis Island','Oceania',4,0,NULL);
insert into cia values ('Jersey','Europe',116,88915,2200000000);
insert into cia values ('Johnston Atoll','Oceania',2,0,NULL);
insert into cia values ('Jordan','Middle East',89213,4998564,16000000000);
insert into cia values ('Juan de Nova Island','Africa',4,0,NULL);
insert into cia values ('Kazakhstan','Commonwealth of Independent States',2717300,16733227,54500000000);
insert into cia values ('Kenya','Africa',582650,30339770,45100000000);
insert into cia values ('Kingman Reef','Oceania',1,0,NULL);
insert into cia values ('Kiribati','Oceania',717,91985,74000000);
insert into cia values ('Korea, North','Asia',120540,21687550,22600000000);
insert into cia values ('Korea, South','Asia',98480,47470969,625700000000);
insert into cia values ('Kuwait','Middle East',17820,1973572,44800000000);
insert into cia values ('Kyrgyzstan','Commonwealth of Independent States',198500,4685230,10300000000);
insert into cia values ('Laos','Southeast Asia',236800,5497459,7000000000);
insert into cia values ('Latvia','Europe',64589,2404926,9800000000);
insert into cia values ('Lebanon','Middle East',10400,3578036,16200000000);
insert into cia values ('Lesotho','Africa',30355,2143141,4700000000);
insert into cia values ('Liberia','Africa',111370,3164156,2850000000);
insert into cia values ('Libya','Africa',1759540,5115450,39300000000);
insert into cia values ('Liechtenstein','Europe',160,32207,730000000);
insert into cia values ('Lithuania','Europe',65200,3620756,17300000000);
insert into cia values ('Luxembourg','Europe',2586,437389,14700000000);
insert into cia values ('Macau','Southeast Asia',21,445594,7650000000);
insert into cia values ('Macedonia, The Former Yugoslav Republic of','Europe',25333,2041467,7600000000);
insert into cia values ('Madagascar','Africa',587040,15506472,11500000000);
insert into cia values ('Malawi','Africa',118480,10385849,9400000000);
insert into cia values ('Malaysia','Southeast Asia',329750,21793293,229100000000);
insert into cia values ('Maldives','Asia',300,301475,540000000);
insert into cia values ('Mali','Africa',1240000,10685948,8500000000);
insert into cia values ('Malta','Europe',316,391670,5);
-- tabcia, 151, 50
insert into cia values ('Man, Isle of','Europe',572,73117,1200000000);
insert into cia values ('Marshall Islands','Oceania',181,68126,105000000);
insert into cia values ('Martinique','Central America and the Caribbean',1100,414516,4240000000);
insert into cia values ('Mauritania','Africa',1030700,2667859,4900000000);
insert into cia values ('Mauritius','World',1860,1179368,12300000000);
insert into cia values ('Mayotte','Africa',374,155911,85000000);
insert into cia values ('Mexico','North America',1972550,100349766,865500000000);
insert into cia values ('Micronesia, Federated States of','Oceania',702,133144,240000000);
insert into cia values ('Midway Islands','Oceania',6,0,NULL);
insert into cia values ('Moldova','Commonwealth of Independent States',33843,4430654,9700000000);
insert into cia values ('Monaco','Europe',2,31693,870000000);
insert into cia values ('Mongolia','Asia',1565000,2650952,6100000000);
insert into cia values ('Montserrat','Central America and the Caribbean',100,6409,31000000);
insert into cia values ('Morocco','Africa',446550,30122350,108000000000);
insert into cia values ('Mozambique','Africa',801590,19104696,18700000000);
insert into cia values ('Namibia','Africa',825418,1771327,7100000000);
insert into cia values ('Nauru','Oceania',21,11845,100000000);
insert into cia values ('Navassa Island','Central America and the Caribbean',5,0,NULL);
insert into cia values ('Nepal','Asia',140800,24702119,27400000000);
insert into cia values ('Netherlands','Europe',41532,15892237,365100000000);
insert into cia values ('Netherlands Antilles','Central America and the Caribbean',960,210134,2400000000);
insert into cia values ('New Caledonia','Oceania',19060,201816,3000000000);
insert into cia values ('New Zealand','Oceania',268680,3819762,63800000000);
insert into cia values ('Nicaragua','Central America and the Caribbean',129494,4812569,12500000000);
insert into cia values ('Niger','Africa',1267000,10075511,9600000000);
insert into cia values ('Nigeria','Africa',923768,123337822,110500000000);
insert into cia values ('Niue','Oceania',260,2113,4500000);
insert into cia values ('Norfolk Island','Oceania',34,1892,0);
insert into cia values ('Northern Mariana Islands','Oceania',477,71912,524000000);
insert into cia values ('Norway','Europe',324220,4481162,111300000000);
insert into cia values ('Oman','Middle East',212460,2533389,19600000000);
insert into cia values ('Pakistan','Asia',803940,141553775,282000000000);
insert into cia values ('Palau','Oceania',458,18766,160000000);
insert into cia values ('Palmyra Atoll','Oceania',11,0,NULL);
insert into cia values ('Panama','Central America and the Caribbean',78200,2808268,21000000000);
insert into cia values ('Papua New Guinea','Oceania',462840,4926984,11600000000);
insert into cia values ('Paracel Islands','Southeast Asia',0,0,NULL);
insert into cia values ('Paraguay','South America',406750,5585828,19900000000);
insert into cia values ('Peru','South America',1280000,27012899,116000000000);
insert into cia values ('Philippines','Southeast Asia',300000,81159644,282000000000);
insert into cia values ('Pitcairn Islands','Oceania',47,54,0);
insert into cia values ('Poland','Europe',312685,38646023,276500000000);
insert into cia values ('Portugal','Europe',92391,10048232,151400000000);
insert into cia values ('Puerto Rico','Central America and the Caribbean',9104,3915798,38100000000);
insert into cia values ('Qatar','Middle East',11437,744483,12300000000);
insert into cia values ('Reunion','World',2512,720934,3400000000);
insert into cia values ('Romania','Europe',237500,22411121,87400000000);
insert into cia values ('Russia','Asia',17075200,146001176,620300000000);
insert into cia values ('Rwanda','Africa',26338,7229129,5900000000);
insert into cia values ('Saint Helena','Africa',410,7212,13900000);
-- tabcia, 201, 50
insert into cia values ('Saint Kitts and Nevis','Central America and the Caribbean',261,38819,244000000);
insert into cia values ('Saint Lucia','Central America and the Caribbean',620,156260,656000000);
insert into cia values ('Saint Pierre and Miquelon','North America',242,6896,74000000);
insert into cia values ('Saint Vincent and the Grenadines','Central America and the Caribbean',389,115461,309000000);
insert into cia values ('Samoa','Oceania',2860,179466,485000000);
insert into cia values ('San Marino','Europe',60,26937,500000000);
insert into cia values ('Sao Tome and Principe','Africa',1001,159883,169000000);
insert into cia values ('Saudi Arabia','Middle East',1960582,22023506,191000000000);
insert into cia values ('Senegal','Africa',196190,9987494,16600000000);
insert into cia values ('Serbia and Montenegro','Europe',102350,10662087,20600000000);
insert into cia values ('Seychelles','Africa',455,79326,590000000);
insert into cia values ('Sierra Leone','Africa',71740,5232624,2500000000);
insert into cia values ('Singapore','Southeast Asia',647,4151264,98000000000);
insert into cia values ('Slovakia','Europe',48845,5407956,45900000000);
insert into cia values ('Slovenia','Europe',20253,1927593,21400000000);
insert into cia values ('Solomon Islands','Oceania',28450,466194,1210000000);
insert into cia values ('Somalia','Africa',637657,7253137,4300000000);
insert into cia values ('South Africa','Africa',1219912,43421021,296100000000);
insert into cia values ('South Georgia and the South Sandwich Islands','Antarctic Region',4066,0,NULL);
insert into cia values ('Spain','Europe',504782,39996671,677500000000);
insert into cia values ('Spratly Islands','Southeast Asia',0,0,NULL);
insert into cia values ('Sri Lanka','Asia',65610,19238575,50500000000);
insert into cia values ('Sudan','Africa',2505810,35079814,32600000000);
insert into cia values ('Suriname','South America',163270,431303,1480000000);
insert into cia values ('Svalbard','Arctic Region',62049,2416,NULL);
insert into cia values ('Swaziland','Africa',17363,1083289,4200000000);
insert into cia values ('Sweden','Europe',449964,8873052,184000000000);
insert into cia values ('Switzerland','Europe',41290,7262372,197000000000);
insert into cia values ('Syria','Middle East',185180,16305659,42200000000);
insert into cia values ('Taiwan','Southeast Asia',35980,22191087,357000000000);
insert into cia values ('Tajikistan','Commonwealth of Independent States',143100,6440732,6200000000);
insert into cia values ('Tanzania','Africa',945087,35306126,23300000000);
insert into cia values ('Thailand','Southeast Asia',514000,61230874,388700000000);
insert into cia values ('Togo','Africa',56785,5018502,8600000000);
insert into cia values ('Tokelau','Oceania',10,1458,1500000);
insert into cia values ('Tonga','Oceania',748,102321,238000000);
insert into cia values ('Trinidad and Tobago','Central America and the Caribbean',5128,1175523,9410000000);
insert into cia values ('Tromelin Island','Africa',1,0,NULL);
insert into cia values ('Tunisia','Middle East',163610,9593402,52600000000);
insert into cia values ('Turkey','Europe',780580,65666677,409400000000);
insert into cia values ('Turkmenistan','Commonwealth of Independent States',488100,4518268,7700000000);
insert into cia values ('Turks and Caicos Islands','Central America and the Caribbean',430,17502,117000000);
insert into cia values ('Tuvalu','Oceania',26,10838,7800000);
insert into cia values ('Uganda','Africa',236040,23317560,24200000000);
insert into cia values ('Ukraine','Commonwealth of Independent States',603700,49153027,109500000000);
insert into cia values ('United Arab Emirates','Middle East',82880,2369153,41500000000);
insert into cia values ('United Kingdom','Europe',244820,59511464,1290000000000);
insert into cia values ('United States','North America',9629091,275562673,9255000000000);
insert into cia values ('Uruguay','South America',176220,3334074,28000000000);
insert into cia values ('Uzbekistan','Commonwealth of Independent States',447400,24755519,59300000000);
-- tabcia, 251, 50
insert into cia values ('Vanuatu','Oceania',14760,189618,245000000);
insert into cia values ('Venezuela','South America, Central America and the Caribbean',912050,23542649,182800000000);
insert into cia values ('Vietnam','Southeast Asia',329560,78773873,143100000000);
insert into cia values ('Virgin Islands','Central America and the Caribbean',352,120917,1800000000);
insert into cia values ('Wake Island','Oceania',6,0,NULL);
insert into cia values ('Wallis and Futuna','Oceania',274,15283,28700000);
insert into cia values ('West Bank','Middle East',5860,2020298,3300000000);
insert into cia values ('Western Sahara','Africa',266000,244943,0);
insert into cia values ('Yemen','Middle East',527970,17479206,12700000000);
insert into cia values ('Zambia','Africa',752614,9582418,8500000000);
insert into cia values ('Zimbabwe','Africa',390580,11342521,26500000000);
