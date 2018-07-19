* Encoding: UTF-8.

N = 803

COMPUTE age = 2016-birthyear2.
EXECUTE.

FILTER OFF.
USE ALL.
SELECT IF (age>17).
EXECUTE.

N = 796


MISSING VALUES birthyear2 acmeaffective1 acmeaffective2 acmeaffective3R acmeaffective4R acmeaffective5R acmeaffective6R acmeaffective7
acmeaffective8R acmeaffective9 acmeaffective10 acmeaffective11 acmeaffective12 
iriaffective1 iriaffective2R iriaffective3 iriaffective4R iriaffective5R iriaffective6 iriaffective7
mosaffective1R mosaffective2 mosaffective3 mosaffective4 mosaffective5 mosaffective6 mosaffective7 univ1 univ2 univ3 univ4
socialjustice1 socialjustice2 socialjustice3 socialjustice4 socialjustice5 
familyob1 familyob2 closefriendob1 closefriendob2 
partnerob1 partnerob2 citizenob1 citizenob2 neighborob1 neighborob2
coworkerob1 coworkerob2 
leaderob1 leaderob2 soldierob1 soldierob2 charityob1 charityob2
foreignob1 foreignob2 religob1 religob2 
homob1 homob2 mentob1 mentob2 refugeeob1 refugeeob2 murderob1 murderob2 
terrorob1 terrorob2 molestob1 molestob2
politicalid2 (-999).



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

.80

COMPUTE iriaffective = (iriaffective1+iriaffective2R+iriaffective3+iriaffective4R+iriaffective5R+iriaffective6+iriaffective7)/7.
EXECUTE.

RELIABILITY
  /VARIABLES=mosaffective1R mosaffective2 mosaffective3 mosaffective4 mosaffective5 mosaffective6 mosaffective7
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE SCALE
  /SUMMARY=TOTAL.

.82

COMPUTE mosaffective = (mosaffective1R+mosaffective2+mosaffective3+mosaffective4+mosaffective5+mosaffective6+mosaffective7)/7.
EXECUTE.

RELIABILITY
  /VARIABLES=univ1 univ2 univ3 univ4
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE SCALE
  /SUMMARY=TOTAL.

.73

COMPUTE univ = (univ1+univ2+univ3+univ4)/4.
EXECUTE.

RELIABILITY
  /VARIABLES=socialjustice1 socialjustice2 socialjustice3 socialjustice4 socialjustice5
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE SCALE
  /SUMMARY=TOTAL.

.82

COMPUTE socialjustice = (socialjustice1+socialjustice2+socialjustice3+socialjustice4+socialjustice5)/5.
EXECUTE.


RELIABILITY
  /VARIABLES=familyob1 familyob2 closefriendob1 closefriendob2 
partnerob1 partnerob2 citizenob1 citizenob2 neighborob1 neighborob2
coworkerob1 coworkerob2 
leaderob1 leaderob2 soldierob1 soldierob2 charityob1 charityob2
foreignob1 foreignob2 religob1 religob2 
homob1 homob2 mentob1 mentob2 refugeeob1 refugeeob2 murderob1 murderob2 
terrorob1 terrorob2 molestob1 molestob2
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE SCALE
  /SUMMARY=TOTAL.

.96

COMPUTE totalob = (familyob1+familyob2+closefriendob1+closefriendob2+
partnerob1+partnerob2+citizenob1+citizenob2+neighborob1+neighborob2+
coworkerob1+coworkerob2+
leaderob1+leaderob2+soldierob1+soldierob2+charityob1+charityob2+
foreignob1+foreignob2+religob1+religob2+
homob1+homob2+mentob1+mentob2+refugeeob1+refugeeob2+murderob1+murderob2+terrorob1+terrorob2+molestob1+molestob2)/34.
EXECUTE.


RELIABILITY
  /VARIABLES=familyob1 familyob2 closefriendob1 closefriendob2 
partnerob1 partnerob2 citizenob1 citizenob2 neighborob1 neighborob2
coworkerob1 coworkerob2 
leaderob1 leaderob2 soldierob1 soldierob2 charityob1 charityob2
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE SCALE
  /SUMMARY=TOTAL.

.93


COMPUTE ingroup_ob = (familyob1+familyob2+closefriendob1+closefriendob2+
partnerob1+partnerob2+citizenob1+citizenob2+neighborob1+neighborob2+
coworkerob1+coworkerob2+
leaderob1+leaderob2+soldierob1+soldierob2+charityob1+charityob2)/18.
EXECUTE.

RELIABILITY
  /VARIABLES=
foreignob1 foreignob2 religob1 religob2 
homob1 homob2 mentob1 mentob2 refugeeob1 refugeeob2 murderob1 murderob2 
terrorob1 terrorob2 molestob1 molestob2
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE SCALE
  /SUMMARY=TOTAL.

.93

COMPUTE outgroup_ob = (foreignob1+foreignob2+religob1+religob2+
homob1+homob2+mentob1+mentob2+refugeeob1+refugeeob2+murderob1+murderob2+terrorob1+terrorob2+molestob1+molestob2)/16.
EXECUTE.

COMPUTE inout_diff=ingroup_ob-outgroup_ob.
execute.

DESCRIPTIVES VARIABLES=acmeaffective iriaffective socialjustice mosaffective univ totalob outgroup_ob ingroup_ob inout_diff
   /STATISTICS=MEAN STDDEV MIN MAX.


CORRELATIONS
  /VARIABLES=acmeaffective mosaffective iriaffective univ socialjustice totalob  outgroup_ob ingroup_ob inout_diff
  /PRINT=TWOTAIL NOSIG
  /MISSING=PAIRWISE.


DESCRIPTIVES VARIABLES=acmeaffective iriaffective socialjustice mosaffective univ
   /SAVE
   /STATISTICS=MEAN STDDEV MIN MAX.

DESCRIPTIVES VARIABLES=familyob1 familyob2 closefriendob1 closefriendob2 
partnerob1 partnerob2 citizenob1 citizenob2 neighborob1 neighborob2
coworkerob1 coworkerob2 
leaderob1 leaderob2 soldierob1 soldierob2 charityob1 charityob2
foreignob1 foreignob2 religob1 religob2 
homob1 homob2 mentob1 mentob2 refugeeob1 refugeeob2 murderob1 murderob2 
terrorob1 terrorob2 molestob1 molestob2
   /STATISTICS=MEAN STDDEV MIN MAX.



COMPUTE humanitarian=mean(Zuniv,Zsocialjustice).
COMPUTE affectiveemp=mean(Zacmeaffective, Ziriaffective, Zmosaffective).
EXECUTE.


REGRESSION
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS R ANOVA CI(95)
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT outgroup_ob
  /METHOD=ENTER affectiveemp humanitarian ingroup_ob.

REGRESSION
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS R ANOVA CI(95)
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT ingroup_ob
  /METHOD=ENTER affectiveemp humanitarian outgroup_ob.


