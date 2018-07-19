* Encoding: UTF-8.

N = 811

COMPUTE age = 2016-birthyear.
EXECUTE.

FILTER OFF.
USE ALL.
SELECT IF (age>17).
EXECUTE.

N = 805


DATASET ACTIVATE DataSet3.
DATASET COPY  a.
DATASET ACTIVATE  a.
FILTER OFF.
USE ALL.
SELECT IF (citizenship='us').
EXECUTE.
DATASET ACTIVATE  DataSet4.

N = 537

MISSING VALUES 
feedingamerica amerredcross migrantaid icafrica
(-999).

COMPUTE total=migrantaid+icafrica+feedingamerica+amerredcross.
execute.

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

N = 510

MISSING VALUES birthyear acmeaffective1 acmeaffective2 acmeaffective3R acmeaffective4R acmeaffective5R acmeaffective6R acmeaffective7
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
politicalid (-999).



RECODE acmeaffective12 (1=7) (2=6) (3=5) (4=4) (5=3) (6=2) (7=1) INTO acmeaffective12R .

RELIABILITY
  /VARIABLES=acmeaffective1 acmeaffective2 acmeaffective3R acmeaffective4R acmeaffective5R acmeaffective6R acmeaffective7 acmeaffective8R acmeaffective9 acmeaffective10 acmeaffective11 acmeaffective12R
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE SCALE
  /SUMMARY=TOTAL.

.86

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

.84

COMPUTE mosaffective = (mosaffective1R+mosaffective2+mosaffective3+mosaffective4+mosaffective5+mosaffective6+mosaffective7)/7.
EXECUTE.

RELIABILITY
  /VARIABLES=univ1 univ2 univ3 univ4
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE SCALE
  /SUMMARY=TOTAL.

.72


RELIABILITY
  /VARIABLES=acmeaffective1 acmeaffective2 acmeaffective3R acmeaffective4R acmeaffective5R acmeaffective6R acmeaffective7 acmeaffective8R acmeaffective9 acmeaffective10 acmeaffective11 acmeaffective12R
iriaffective1 iriaffective2R iriaffective3 iriaffective4R iriaffective5R iriaffective6 iriaffective7 mosaffective1R mosaffective2 mosaffective3 mosaffective4 mosaffective5 mosaffective6 mosaffective7
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE SCALE
  /SUMMARY=TOTAL.

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

.94

COMPUTE outgroup_ob = (foreignob1+foreignob2+religob1+religob2+
homob1+homob2+mentob1+mentob2+refugeeob1+refugeeob2+murderob1+murderob2+terrorob1+terrorob2+molestob1+molestob2)/16.
EXECUTE.

COMPUTE inout_diff_ob=ingroup_ob-outgroup_ob.
execute.

DESCRIPTIVES VARIABLES=acmeaffective iriaffective socialjustice mosaffective univ totalob outgroup_ob ingroup_ob inout_diff_ob
   /STATISTICS=MEAN STDDEV MIN MAX.


CORRELATIONS
  /VARIABLES=acmeaffective mosaffective iriaffective univ socialjustice totalob  outgroup_ob ingroup_ob inout_diff_ob
  /PRINT=TWOTAIL NOSIG
  /MISSING=PAIRWISE.

DESCRIPTIVES VARIABLES=acmeaffective iriaffective socialjustice mosaffective univ
   /SAVE
   /STATISTICS=MEAN STDDEV MIN MAX.

COMPUTE humanitarian=mean(Zuniv,Zsocialjustice).
COMPUTE affectiveemp=mean(Zacmeaffective, Ziriaffective, Zmosaffective).
EXECUTE.




REGRESSION
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS R ANOVA
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT outgroup_ob
  /METHOD=ENTER acmeaffective iriaffective mosaffective univ socialjustice.

REGRESSION
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS R ANOVA
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT outgroup_ob
  /METHOD=ENTER acmeaffective iriaffective mosaffective univ socialjustice ingroup_ob.

REGRESSION
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS R ANOVA
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT outgroup_ob
  /METHOD=ENTER affectiveemp humanitarian ingroup_ob.



REGRESSION
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS R ANOVA
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT ingroup_ob
  /METHOD=ENTER acmeaffective iriaffective mosaffective univ socialjustice.

REGRESSION
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS R ANOVA
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT ingroup_ob
  /METHOD=ENTER acmeaffective iriaffective mosaffective univ socialjustice outgroup_ob.

REGRESSION
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS R ANOVA
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT ingroup_ob
  /METHOD=ENTER affectiveemp humanitarian outgroup_ob.





REGRESSION
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS R ANOVA
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT inout_diff
  /METHOD=ENTER acmeaffective iriaffective mosaffective univ socialjustice.

REGRESSION
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS R ANOVA
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT inout_diff
  /METHOD=ENTER affectiveemp humanitarian.


REGRESSION
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS R ANOVA
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT migrantaid
  /METHOD=ENTER outgroup_ob ingroup_ob affectiveemp humanitarian.


REGRESSION
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS R ANOVA
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT migrantaid
  /METHOD=ENTER outgroup_ob ingroup_ob.

REGRESSION
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS R ANOVA
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT icafrica
  /METHOD=ENTER outgroup_ob ingroup_ob.

REGRESSION
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS R ANOVA
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT amerredcross
  /METHOD=ENTER outgroup_ob ingroup_ob.

REGRESSION
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS R ANOVA
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT feedingamerica
  /METHOD=ENTER outgroup_ob ingroup_ob.



CORRELATIONS
  /VARIABLES=affectiveemp humanitarian ingroup_ob outgroup_ob amerredcross feedingamerica icafrica migrantaid
  /PRINT=TWOTAIL NOSIG
  /MISSING=PAIRWISE.


RELIABILITY
  /VARIABLES=feedingamerica amerredcross
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE SCALE
  /SUMMARY=TOTAL.

RELIABILITY
  /VARIABLES= migrantaid icafrica
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE SCALE
  /SUMMARY=TOTAL.


CORRELATIONS
  /VARIABLES=migrantaid icafrica feedingamerica amerredcross acmeaffective mosaffective iriaffective univ socialjustice
  /PRINT=TWOTAIL NOSIG
  /MISSING=PAIRWISE.

COMPUTE expanoutgroup = migrantaid+icafrica.
COMPUTE expaningroup = feedingamerica+amerredcross.
COMPUTE inout_diffdonations=expaningroup-expanoutgroup.
execute.

DESCRIPTIVES VARIABLES=total migrantaid icafrica feedingamerica amerredcross
   /STATISTICS=MEAN STDDEV MIN MAX.




REGRESSION
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS R ANOVA 
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT amerredcross
  /METHOD=ENTER socialjustice univ iriaffective mosaffective acmeaffective.

REGRESSION
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS R ANOVA
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT amerredcross
  /METHOD=ENTER humanitarian affectiveemp.


REGRESSION
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS R ANOVA 
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT feedingamerica
  /METHOD=ENTER socialjustice univ iriaffective mosaffective acmeaffective.

REGRESSION
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS R ANOVA
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT feedingamerica
  /METHOD=ENTER humanitarian affectiveemp.



REGRESSION
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS R ANOVA 
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT icafrica
  /METHOD=ENTER socialjustice univ iriaffective mosaffective acmeaffective.

REGRESSION
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS R ANOVA
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT icafrica
  /METHOD=ENTER humanitarian affectiveemp.



REGRESSION
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS R ANOVA 
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT migrantaid
  /METHOD=ENTER socialjustice univ iriaffective mosaffective acmeaffective.

REGRESSION
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS R ANOVA
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT migrantaid
  /METHOD=ENTER humanitarian affectiveemp.



REGRESSION
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS R ANOVA
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT migrantaid
  /METHOD=ENTER humanitarian affectiveemp ingroup_ob outgroup_ob.




**Set up for MPlus

DATASET ACTIVATE DataSet2.
RECODE ingroup_ob outgroup_ob humanitarian affectiveemp amerredcross migrantaid feedingamerica 
    icafrica (SYSMIS=-999).
EXECUTE.
