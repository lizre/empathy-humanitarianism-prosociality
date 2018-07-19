* Encoding: UTF-8.

N = 802

COMPUTE age = 2016-birthyear.
EXECUTE.

FILTER OFF.
USE ALL.
SELECT IF (age>17).
EXECUTE.

N = 784


MISSING VALUES birthyear acmeaffective1 acmeaffective2 acmeaffective3R acmeaffective4R acmeaffective5R acmeaffective6R acmeaffective7
acmeaffective8R acmeaffective9 acmeaffective10 acmeaffective11 acmeaffective12 
iriaffective1 iriaffective2R iriaffective3 iriaffective4R iriaffective5R iriaffective6 iriaffective7
mosaffective1R mosaffective2 mosaffective3 mosaffective4 mosaffective5 mosaffective6 mosaffective7 univ1 univ2 univ3 univ4
socialjustice1 socialjustice2 socialjustice3 socialjustice4 socialjustice5 
feedingamerica amerredcross migrantaid icafrica
politicalid (-999).




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

.84

COMPUTE mosaffective = (mosaffective1R+mosaffective2+mosaffective3+mosaffective4+mosaffective5+mosaffective6+mosaffective7)/7.
EXECUTE.

RELIABILITY
  /VARIABLES=univ1 univ2 univ3 univ4
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE SCALE
  /SUMMARY=TOTAL.

.74

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


COMPUTE total=migrantaid+icafrica+feedingamerica+amerredcross.
COMPUTE expanoutgroup = migrantaid+icafrica.
COMPUTE expaningroup = feedingamerica+amerredcross.
execute.


DESCRIPTIVES VARIABLES=acmeaffective iriaffective socialjustice mosaffective univ
   /save
   /STATISTICS=MEAN STDDEV MIN MAX.

COMPUTE humanitarian=mean(Zuniv,Zsocialjustice).
COMPUTE affectiveemp=mean(Zacmeaffective, Ziriaffective, Zmosaffective).
EXECUTE.


USE ALL.
COMPUTE filter_$=(total=5 and icafrica < 6 and icafrica > -1 and migrantaid <6 and migrantaid > -1 
    and feedingamerica < 6 and feedingamerica > -1 and amerredcross <6 and amerredcross > -1).
VARIABLE LABELS filter_$ 'total=5 and icafrica < 6 and icafrica > -1 and migrantaid <6 and '+
    'migrantaid > -1 and feedingamerica < 6 and feedingamerica > -1 and amerredcross <6 and '+
    'amerredcross > -1 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

N = 655

REGRESSION
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS R ANOVA CI(95)
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT amerredcross
  /METHOD=ENTER humanitarian affectiveemp.

REGRESSION
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS R ANOVA CI(95)
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT feedingamerica
  /METHOD=ENTER humanitarian affectiveemp.

REGRESSION
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS R ANOVA CI(95)
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT icafrica
  /METHOD=ENTER humanitarian affectiveemp.

REGRESSION
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS R ANOVA CI(95)
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT migrantaid
  /METHOD=ENTER humanitarian affectiveemp.








REGRESSION
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS R ANOVA CI(95)
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT ingroup_ob
  /METHOD=ENTER humanitarian acmeaffective mosaffective iriaffective outgroup_ob.

REGRESSION
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS R ANOVA CI(95)
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT outgroup_ob
  /METHOD=ENTER humanitarian acmeaffective mosaffective iriaffective ingroup_ob.
