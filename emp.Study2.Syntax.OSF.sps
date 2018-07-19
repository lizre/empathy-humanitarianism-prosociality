* Encoding: UTF-8.

N =1001

FILTER OFF.
USE ALL.
SELECT IF (session_status='C').
EXECUTE.

N = 802

COMPUTE age = 2016-birthyear.
EXECUTE.

FILTER OFF.
USE ALL.
SELECT IF (age>17).
EXECUTE.

N = 791


MISSING VALUES birthyear acmeaffective1 acmeaffective2 acmeaffective3R acmeaffective4R acmeaffective5R acmeaffective6R acmeaffective7
acmeaffective8R acmeaffective9 acmeaffective10 acmeaffective11 acmeaffective12 
iriaffective1 iriaffective2R iriaffective3 iriaffective4R iriaffective5R iriaffective6 iriaffective7
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

.83

COMPUTE acmeaffective=(acmeaffective1+acmeaffective2+acmeaffective3R+acmeaffective4R+acmeaffective5R+acmeaffective6R+acmeaffective7+acmeaffective8R+acmeaffective9+acmeaffective10+acmeaffective11+acmeaffective12R)/12.
EXECUTE.



RELIABILITY
  /VARIABLES=iriaffective1 iriaffective2R iriaffective3 iriaffective4R iriaffective5R iriaffective6 iriaffective7
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE SCALE
  /SUMMARY=TOTAL.

.79

COMPUTE iriaffective = (iriaffective1+iriaffective2R+iriaffective3+iriaffective4R+iriaffective5R+iriaffective6+iriaffective7)/7.
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

.75

COMPUTE univ = (univ1+univ2+univ3+univ4)/4.
EXECUTE.

RELIABILITY
  /VARIABLES=socialjustice1 socialjustice2 socialjustice3 socialjustice4 socialjustice5
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE SCALE
  /SUMMARY=TOTAL.

.85

COMPUTE socialjustice = (socialjustice1+socialjustice2+socialjustice3+socialjustice4+socialjustice5)/5.
EXECUTE.


RELIABILITY
  /VARIABLES=moralexpanfamily moralexpanclosefriend moralexpanpartner moralexpancitizen moralexpanneighbor moralexpancoworker moralexpanforeign moralexpanparty moralexpanrelig moralexpanleader moralexpansoldier moralexpancharity moralexpanhom 
moralexpanhrefugee moralexpanmurder moralexpanterror moralexpanmolest
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE SCALE
  /SUMMARY=TOTAL.

.88

RELIABILITY
  /VARIABLES=moralexpanfamily moralexpanclosefriend moralexpanpartner moralexpancitizen moralexpanneighbor moralexpancoworker moralexpanleader moralexpansoldier moralexpancharity 
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE SCALE
  /SUMMARY=TOTAL.

.80


RELIABILITY
  /VARIABLES=moralexpanforeign moralexpanrelig moralexpanparty moralexpanhom moralexpanhrefugee moralexpanmurder moralexpanterror moralexpanmolest
  /SCALE('ALL VARIABLES') ALL
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE SCALE
  /SUMMARY=TOTAL.

.84

COMPUTE moralexpan = moralexpanfamily+moralexpanclosefriend+moralexpanpartner+moralexpancitizen+moralexpanneighbor+
moralexpancoworker+moralexpanforeign+moralexpanparty+moralexpanrelig+moralexpanleader+moralexpansoldier+moralexpancharity+moralexpanhom+moralexpanment+moralexpanhrefugee+moralexpanmurder+moralexpanterror+moralexpanmolest.
EXECUTE.

DESCRIPTIVES VARIABLES=acmeaffective iriaffective socialjustice mosaffective univ
  /SAVE
   /STATISTICS=MEAN STDDEV MIN MAX.




CORRELATIONS
  /VARIABLES=acmeaffective mosaffective iriaffective univ moralexpan horcoll socialjustice
  /PRINT=TWOTAIL NOSIG
  /MISSING=PAIRWISE.

COMPUTE expanoutgroup = moralexpanforeign+moralexpanrelig+moralexpanhom+moralexpanment+moralexpanhrefugee+moralexpanmurder+moralexpanterror+moralexpanmolest+moralexpanparty.
COMPUTE expaningroup = moralexpanfamily+moralexpanclosefriend+moralexpanpartner+moralexpancitizen+moralexpanneighbor+
moralexpancoworker+moralexpanleader+moralexpansoldier+moralexpancharity.
COMPUTE inout_diff=expaningroup-expanoutgroup.
EXECUTE.

CORRELATIONS
  /VARIABLES=acmeaffective mosaffective iriaffective univ expanoutgroup expaningroup socialjustice
  /PRINT=TWOTAIL NOSIG
  /MISSING=PAIRWISE.


COMPUTE humanitarian=mean(Zuniv,Zsocialjustice).
COMPUTE affectiveemp=mean(Zacmeaffective, Ziriaffective, Zmosaffective).
EXECUTE.


CORRELATIONS
  /VARIABLES=affectiveemp humanitarian expaningroup expanoutgroup
  /PRINT=TWOTAIL NOSIG
  /MISSING=PAIRWISE.


DATASET ACTIVATE DataSet1.
REGRESSION
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS R ANOVA CI(95)
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT expaningroup
  /METHOD=ENTER affectiveemp humanitarian expanoutgroup.


REGRESSION
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS R ANOVA CI(95)
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT expanoutgroup
  /METHOD=ENTER affectiveemp humanitarian expaningroup.

FREQUENCIES VARIABLES=raceomb sex
  /ORDER=ANALYSIS.
