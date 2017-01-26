COPY lab2.Persons FROM stdin USING DELIMITERS '|';
789235543|John Smith|100|1|22700.32
675849512|Angie Smith|100|1|7102.45
699061306|Jorge Diaz|100|2|6430.21
734296097|James Williams|200|1|7320.50
790106010|Pablo Gomez|200|1|1960.45
788930793|Nancy Trujillo|200|2|5543.78
710460201|Pablo Gomez|200|2|2601.40
743951210|Anne Jameson|200|3|5023.03
641078001|John Smith|300|1|12980.10
674926108|Lisa Garcia|300|2|4132.34
631952071|Kathy Jones|400|1|\N
563960185|Debora Peterson|400|2|5610.00
765060103|John Smith|400|2|1800.00
769205920|Anna Schneider|400|3|2825.20
760882135|Peter Mason|400|3|0.0
783960671|Marian Kelly|500|1|19200.82
709106079|Alicia Cruz|600|1|7850.50
695406970|Spencer McThrow|600|2|6200.21
690260126|Juan Rodriguez|600|3|3232.12
723069206|Robert Johnson|700|1|22842.33
664067824|Catherine Washington|800|1| 14200.82
\.

COPY lab2.Houses FROM stdin USING DELIMITERS '|';
100|401 Heller Drive|2|White
200|1730 Alma Street|3|Gray
300|304 Cliff Street|2|White
400|411 Broadway Street|3|Light Blue
500|1795 Holly Street|1|White
600|3039 River Street|3|Yellow
700|1984 Forest Avenue|1|\N
800|4010 River Street|1|Yellow
\.

COPY lab2.Landlords FROM stdin USING DELIMITERS '|';
100|664067824|4010 River Street
200|723069206|1984 Forest Avenue
300|690260126|3039 River Street
\.

COPY lab2.Ownerships FROM stdin USING DELIMITERS '|';
100|500|01/02/1972|8207.00
200|700|04/15/1988|12120.30
200|100|04/15/1992|10542.29
200|200|04/15/1992|22175.27
100|300|04/15/1998|14318.44
300|400|04/15/1998|12120.29
300|600|04/15/2005|18930.86
300|800|04/10/2000|8902.71
\.

COPY lab2.Tenants FROM stdin USING DELIMITERS '|';
100|1|789235543|02/01/2014|05/01/2017|3200.00|01/01/2017|f
100|2|699061306|08/22/2014|05/01/2017|3400.00|01/01/2017|f
200|1|734296097|06/15/2016|06/15/2017|2200.00|12/05/2016|t
200|2|788930793|03/18/2011|\N|1800.00|01/01/2017|f
200|3|743951210|09/10/2011|\N|2060.00|12/10/2016|t
300|1|641078001|03/22/2014|10/15/2017|2625.00|01/01/2017|f
300|2|674926108|04/14/2015|05/01/2017|1470.00|01/01/2017|f
400|1|631952071|02/01/2016|06/01/2017|1940.00|12/05/2017|t
400|2|563960185|01/15/2012|03/01/2017|1882.00|01/01/2017|f
400|3|664067824|07/20/2013|03/10/2017|2410.00|01/01/2017|f
500|1|783960671|08/15/2012|04/15/2017|1882.00|12/05/2016|t
600|1|709106079|11/18/2015|06/15/2017|3692.00|01/01/2017|f
600|2|695406970|08/10/2014|08/20/2017|4410.00|01/02/2017|f
800|1|664067824|05/10/2011|04/15/2017|6200.10|01/01/2017|f
\.
