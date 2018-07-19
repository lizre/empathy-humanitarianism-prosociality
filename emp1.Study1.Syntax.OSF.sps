* Encoding: UTF-8.


COMPUTE age = 2016-birthyear.
EXECUTE.

*used point and click, selected only those over 18, and with session_status='C'

MISSING VALUES birthyear acmeaffective1 acmeaffective2 acmeaffective3R acmeaffective4R acmeaffective5R acmeaffective6R acmeaffective7
acmeaffective8R acmeaffective9 acmeaffective10 acmeaffective11 acmeaffective12 contraitantiegal1 contraitantiegal2 contraitantiegal3 contraitantiegal4 contraitdom1 contraitdom2 contraitdom3 contraitdom4 hexacoalt1 hexacoalt2 hexacoalt3 hexacoalt4
horcoll1 horcoll2 horcoll3 horcoll4 iriaffective1 iriaffective2R iriaffective3 iriaffective4R iriaffective5R iriaffective6 iriaffective7
issaltruism1 issaltruism2 issaltruism3 gssaltruism1 gssaltruism2 gssaltruism3 gssaltruism4 gssaltruism5 gssaltruism6 gssaltruism7 gssaltruism8 gssaltruism9 gssaltruism10
mosaffective1R mosaffective2 mosaffective3 mosaffective4 mosaffective5 mosaffective6 mosaffective7 univ1 univ2 univ3 univ4
socialjustice1 socialjustice2 socialjustice3 socialjustice4 socialjustice5 moralexpanfamily moralexpanclosefriend moralexpanpartner moralexpancitizen moralexpanneighbor moralexpancoworker
moralexpanforeign moralexpanparty moralexpanrelig moralexpanleader moralexpansoldier moralexpancharity
moralexpanhom moralexpanment moralexpanhrefugee moralexpanmurder moralexpanterror moralexpanmolest politicalid (-999).


RECODE acmeaffective12 (1=7) (2=6) (3=5) (4=4) (5=3) (6=2) (7=1) INTO acmeaffective12R .

RELIABILITY
  /VARIABLES=acmeaffective1 acmeaffective2 acmeaffective3R acmeaffective4R acmeaffective5R acmeaffective6R acmeaffective7 acmeaffective8R acmeaffective9 acmeaffective10 acmeaffective11 acmeaffective12R
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE SCALE
  /SUMMARY=TOTAL.

.85

COMPUTE acmeaffective=(acmeaffective1+acmeaffective2+acmeaffective3R+acmeaffective4R+acmeaffective5R+acmeaffective6R+acmeaffective7+acmeaffective8R+acmeaffective9+acmeaffective10+acmeaffective11+acmeaffective12R)/12.
EXECUTE.



RELIABILITY
  /VARIABLES=contraitantiegal1 contraitantiegal2 contraitantiegal3 contraitantiegal4
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE SCALE
  /SUMMARY=TOTAL.

.88

COMPUTE contraitantiegal = (contraitantiegal1+contraitantiegal2+contraitantiegal3+contraitantiegal4)/4.
EXECUTE.

RELIABILITY
  /VARIABLES=contraitdom1 contraitdom2 contraitdom3 contraitdom4
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE SCALE
  /SUMMARY=TOTAL.

.71

COMPUTE contraitdom = (contraitdom1+contraitdom2+contraitdom3+contraitdom4)/4.
EXECUTE.


RECODE hexacoalt3 (7=1) (6=2) (5=3) (4=4) (3=5) (2=6) (1=7) INTO hexacoalt3R.
RECODE hexacoalt4 (7=1) (6=2) (5=3) (4=4) (3=5) (2=6) (1=7) INTO hexacoalt4R.
EXECUTE.

RELIABILITY
  /VARIABLES=hexacoalt1 hexacoalt2 hexacoalt3R hexacoalt4R
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE SCALE
  /SUMMARY=TOTAL.

.58

COMPUTE hexacoalt = (hexacoalt1+hexacoalt2+hexacoalt3+hexacoalt4)/4.
EXECUTE.


RELIABILITY
  /VARIABLES=horcoll1 horcoll2 horcoll3 horcoll4
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE SCALE
  /SUMMARY=TOTAL.

.71

COMPUTE horcoll = (horcoll1+horcoll2+horcoll3+horcoll4)/4.
EXECUTE.




RELIABILITY
  /VARIABLES=iriaffective1 iriaffective2R iriaffective3 iriaffective4R iriaffective5R iriaffective6 iriaffective7
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE SCALE
  /SUMMARY=TOTAL.

.80

COMPUTE iriaffective = (iriaffective1+iriaffective2R+iriaffective3+iriaffective4R+iriaffective5R+iriaffective6+iriaffective7)/7.
EXECUTE.



RELIABILITY
  /VARIABLES=issaltruism1 issaltruism2 issaltruism3
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE SCALE
  /SUMMARY=TOTAL.

.58

COMPUTE issaltruism = (issaltruism1+issaltruism2+issaltruism3)/3.
EXECUTE.



RELIABILITY
  /VARIABLES=gssaltruism1 gssaltruism2 gssaltruism3 gssaltruism4 gssaltruism5 gssaltruism6 gssaltruism7 gssaltruism8 gssaltruism9 gssaltruism10
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE SCALE
  /SUMMARY=TOTAL.

.78

COMPUTE gssaltruism = (gssaltruism1+gssaltruism2+gssaltruism3+gssaltruism4+gssaltruism5+gssaltruism6+gssaltruism7+gssaltruism8+gssaltruism9+gssaltruism10)/10.
EXECUTE.

COMPUTE gssaltruismno5 = (gssaltruism1+gssaltruism2+gssaltruism3+gssaltruism4+gssaltruism6+gssaltruism7+gssaltruism8+gssaltruism9+gssaltruism10)/9.
EXECUTE.


RELIABILITY
  /VARIABLES=mosaffective1R mosaffective2 mosaffective3 mosaffective4 mosaffective5 mosaffective6 mosaffective7
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE SCALE
  /SUMMARY=TOTAL.

.81



COMPUTE mosaffective = (mosaffective1R+mosaffective2+mosaffective3+mosaffective4+mosaffective5+mosaffective6+mosaffective7)/7.
EXECUTE.



RELIABILITY
  /VARIABLES=univ1 univ2 univ3 univ4
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE SCALE
  /SUMMARY=TOTAL.

.76

COMPUTE univ = (univ1+univ2+univ3+univ4)/4.
EXECUTE.

RELIABILITY
  /VARIABLES=socialjustice1 socialjustice2 socialjustice3 socialjustice4 socialjustice5
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE SCALE
  /SUMMARY=TOTAL.

.88

COMPUTE socialjustice = (socialjustice1+socialjustice2+socialjustice3+socialjustice4+socialjustice5)/5.
EXECUTE.



RELIABILITY
  /VARIABLES=mosaffective1R mosaffective2 mosaffective3 mosaffective4 mosaffective5 mosaffective6 mosaffective7 iriaffective1 iriaffective2R iriaffective3 iriaffective4R iriaffective5R iriaffective6 iriaffective7
acmeaffective1 acmeaffective2 acmeaffective3R acmeaffective4R acmeaffective5R acmeaffective6R acmeaffective7 acmeaffective8R acmeaffective9 acmeaffective10 acmeaffective11 acmeaffective12R
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE SCALE
  /SUMMARY=TOTAL.

.92

RELIABILITY
  /VARIABLES=moralexpanfamily moralexpanclosefriend moralexpanpartner moralexpancitizen moralexpanneighbor moralexpancoworker moralexpanforeign moralexpanparty moralexpanrelig moralexpanleader moralexpansoldier moralexpancharity moralexpanhom 
moralexpanhrefugee moralexpanmurder moralexpanterror moralexpanmolest
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE SCALE
  /SUMMARY=TOTAL.

.86

COMPUTE moralexpan = moralexpanfamily+moralexpanclosefriend+moralexpanpartner+moralexpancitizen+moralexpanneighbor+
moralexpancoworker+moralexpanforeign+moralexpanparty+moralexpanrelig+moralexpanleader+moralexpansoldier+moralexpancharity+moralexpanhom+moralexpanment+moralexpanhrefugee+moralexpanmurder+moralexpanterror+moralexpanmolest.
EXECUTE.

DESCRIPTIVES VARIABLES=acmeaffective contraitdom contraitantiegal hexacoalt horcoll iriaffective issaltruism gssaltruism socialjustice mosaffective univ moralexpan
  /STATISTICS=MEAN STDDEV MIN MAX.




CORRELATIONS
  /VARIABLES=acmeaffective mosaffective iriaffective univ contraitdom contraitantiegal moralexpan horcoll hexacoalt issaltruism gssaltruism socialjustice
  /PRINT=TWOTAIL NOSIG
  /MISSING=PAIRWISE.



RELIABILITY
  /VARIABLES=moralexpanfamily moralexpanclosefriend moralexpanpartner moralexpancitizen moralexpanneighbor moralexpancoworker moralexpanforeign moralexpanparty moralexpanrelig moralexpanleader moralexpansoldier moralexpancharity moralexpanhom 
moralexpanhrefugee moralexpanmurder moralexpanterror moralexpanmolest
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE SCALE
  /SUMMARY=TOTAL.

.86

RELIABILITY
  /VARIABLES=moralexpanfamily moralexpanclosefriend moralexpanpartner moralexpancitizen moralexpanneighbor moralexpancoworker moralexpanleader moralexpansoldier moralexpancharity
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE SCALE
  /SUMMARY=TOTAL.

RELIABILITY
  /VARIABLES=moralexpanforeign moralexpanparty moralexpanrelig moralexpanhom moralexpanhrefugee moralexpanmurder moralexpanterror moralexpanmolest
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE SCALE
  /SUMMARY=TOTAL.


COMPUTE expanoutgroup = moralexpanforeign+moralexpanrelig+moralexpanhom+moralexpanment+moralexpanhrefugee+moralexpanmurder+moralexpanterror+moralexpanmolest+moralexpanparty.
COMPUTE expaningroup = moralexpanfamily+moralexpanclosefriend+moralexpanpartner+moralexpancitizen+moralexpanneighbor+
moralexpancoworker+moralexpanleader+moralexpansoldier+moralexpancharity.
EXECUTE.

CORRELATIONS
  /VARIABLES=acmeaffective mosaffective iriaffective univ contraitdom contraitantiegal expanoutgroup expaningroup horcoll hexacoalt issaltruism gssaltruism socialjustice
  /PRINT=TWOTAIL NOSIG
  /MISSING=PAIRWISE.


DESCRIPTIVES VARIABLES=acmeaffective iriaffective socialjustice mosaffective univ
  /SAVE.

COMPUTE humanitarian=mean(Zuniv,Zsocialjustice).
COMPUTE affectiveemp=mean(Zacmeaffective, Ziriaffective, Zmosaffective).
EXECUTE.

CORRELATIONS
  /VARIABLES=affectiveemp humanitarian expaningroup expanoutgroup
  /PRINT=TWOTAIL NOSIG  
/MISSING=PAIRWISE.


DATASET ACTIVATE DataSet2.
REGRESSION
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS R ANOVA COLLIN TOL CI (95)
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT expanoutgroup
  /METHOD=ENTER affectiveemp humanitarian expaningroup.

REGRESSION
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS R ANOVA COLLIN TOL CI(95)
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT expaningroup
  /METHOD=ENTER humanitarian affectiveemp expanoutgroup.



FREQUENCIES VARIABLES=raceomb sex
  /ORDER=ANALYSIS.

