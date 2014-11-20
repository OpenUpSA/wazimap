--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: policedistrict; Type: TABLE; Schema: public; Owner: census; Tablespace: 
--

CREATE TABLE policedistrict (
    code character varying(256) NOT NULL,
    name character varying(256) NOT NULL,
    year character varying(4) NOT NULL,
    province_code character varying(3)
);


ALTER TABLE public.policedistrict OWNER TO census;

--
-- Data for Name: policedistrict; Type: TABLE DATA; Schema: public; Owner: census
--

COPY policedistrict (code, name, year, province_code) FROM stdin;
alexandraroad	Alexandra Road	2005	KZN
amangwe	Amangwe	2005	KZN
amanzimtoti	Amanzimtoti	2005	KZN
babanango	Babanango	2005	KZN
bayview	Bayview	2005	KZN
bellair	Bellair	2005	KZN
berea	Berea	2005	KZN
bergville	Bergville	2005	KZN
besters	Besters	2005	KZN
bhekithemba	Bhekithemba	2005	KZN
bishopstowe	Bishopstowe	2005	KZN
boston	Boston	2005	KZN
brightonbeach	Brighton Beach	2005	KZN
bulwer	Bulwer	2005	KZN
camperdown	Camperdown	2005	KZN
catomanor	Cato Manor	2005	KZN
ceza	Ceza	2005	KZN
charlestown	Charlestown	2005	KZN
chatsworth	Chatsworth	2005	KZN
colenso	Colenso	2005	KZN
cramond	Cramond	2005	KZN
creighton	Creighton	2005	KZN
dalton	Dalton	2005	KZN
dannhauser	Dannhauser	2005	KZN
donnybrook	Donnybrook	2005	KZN
dududu	Dududu	2005	KZN
dundee	Dundee	2005	KZN
durbancentral	Durban Central	2005	KZN
durbannorth	Durban North	2005	KZN
ekombe	Ekombe	2005	KZN
ekuvukeni	Ekuvukeni	2005	KZN
elandslaagte	Elandslaagte	2005	KZN
emanguzi	Emanguzi	2005	KZN
ematimatolo	Ematimatolo	2005	KZN
ematsheni	Ematsheni	2005	KZN
empangeni	Empangeni	2005	KZN
eshowe	Eshowe	2005	KZN
esikhawini	Esikhawini	2005	KZN
estcourt	Estcourt	2005	KZN
evatt	Evatt	2005	KZN
ezakheni	Ezakheni	2005	KZN
ezibayeni	Ezibayeni	2005	KZN
ezinqoleni	Ezinqoleni	2005	KZN
folweni	Folweni	2005	KZN
franklin	Franklin	2005	KZN
gamalakhe	Gamalakhe	2005	KZN
gingindlovu	Gingindlovu	2005	KZN
glencoe	Glencoe	2005	KZN
glendale	Glendale	2005	KZN
gluckstadt	Gluckstadt	2005	KZN
gowanlea	Gowan Lea	2005	KZN
greenwoodpark	Greenwood Park	2005	KZN
greytown	Greytown	2005	KZN
groenvlei	Groenvlei	2005	KZN
hammarsdale	Hammarsdale	2005	KZN
harburg	Harburg	2005	KZN
harding	Harding	2005	KZN
hattingspruit	Hattingspruit	2005	KZN
helpmekaar	Helpmekaar	2005	KZN
hibberdene	Hibberdene	2005	KZN
highflats	Highflats	2005	KZN
hillcrest	Hillcrest	2005	KZN
hilton	Hilton	2005	KZN
himeville	Himeville	2005	KZN
hlabisa	Hlabisa	2005	KZN
hlobane	Hlobane	2005	KZN
hluhluwe	Hluhluwe	2005	KZN
howick	Howick	2005	KZN
ibisi	Ibisi	2005	KZN
impendle	Impendle	2005	KZN
inanda	Inanda	2005	KZN
inchanga	Inchanga	2005	KZN
ingogo	Ingogo	2005	KZN
ingwavuma	Ingwavuma	2005	KZN
intsikeni	Intsikeni	2005	KZN
isipingo	Isipingo	2005	KZN
ixopo	Ixopo	2005	KZN
jozini	Jozini	2005	KZN
kingshakainternationalairport	King Shaka International Airport	2005	KZN
kingsley	Kingsley	2005	KZN
kokstad	Kokstad	2005	KZN
kranskop	Kranskop	2005	KZN
kwamashue	Kwa Mashu E	2005	KZN
kwadabeka	Kwadabeka	2005	KZN
kwadukuza	Kwadukuza	2005	KZN
kwamakhutha	Kwamakhutha	2005	KZN
kwambonambi	Kwambonambi	2005	KZN
kwamsane	Kwamsane	2005	KZN
kwandengezi	Kwandengezi	2005	KZN
ladysmith	Ladysmith	2005	KZN
lamontville	Lamontville	2005	KZN
louwsburg	Louwsburg	2005	KZN
madadeni	Madadeni	2005	KZN
magudu	Magudu	2005	KZN
mahlabatini	Mahlabatini	2005	KZN
malvern	Malvern	2005	KZN
mandeni	Mandeni	2005	KZN
maphumulo	Maphumulo	2005	KZN
margate	Margate	2005	KZN
mariannhill	Mariannhill	2005	KZN
maydonwharf	Maydon Wharf	2005	KZN
mayville	Mayville	2005	KZN
mbazwana	Mbazwana	2005	KZN
mbongolwane	Mbongolwane	2005	KZN
mehlomnyama	Mehlomnyama	2005	KZN
melmoth	Melmoth	2005	KZN
midillovo	Mid Illovo	2005	KZN
mkuze	Mkuze	2005	KZN
mondlo	Mondlo	2005	KZN
montclair	Montclair	2005	KZN
mooiriver	Mooi River	2005	KZN
mountainrise	Mountain Rise	2005	KZN
mpophomeni	Mpophomeni	2005	KZN
mpumalangastation	Mpumalanga station	2005	KZN
mpungamhlophe	Mpungamhlophe	2005	KZN
msinga	Msinga	2005	KZN
msinsini	Msinsini	2005	KZN
mtubatuba	Mtubatuba	2005	KZN
mtunzini	Mtunzini	2005	KZN
muden	Muden	2005	KZN
ndumo	Ndumo	2005	KZN
ndwedwe	Ndwedwe	2005	KZN
newhanover	New Hanover	2005	KZN
newark	Newark	2005	KZN
newcastle	Newcastle	2005	KZN
newlandseast	Newlands East	2005	KZN
ngome	Ngome	2005	KZN
nhlanhleni	Nhlanhleni	2005	KZN
nkandla	Nkandla	2005	KZN
nondweni	Nondweni	2005	KZN
nongoma	Nongoma	2005	KZN
normandien	Normandien	2005	KZN
nottinghamroad	Nottingham Road	2005	KZN
nqutu	Nqutu	2005	KZN
nsuze	Nsuze	2005	KZN
ntabamhlope	Ntabamhlope	2005	KZN
ntambanana	Ntambanana	2005	KZN
ntuzuma	Ntu Zuma	2005	KZN
nyoni	Nyoni	2005	KZN
osizweni	Osizweni	2005	KZN
paddock	Paddock	2005	KZN
paulpietersburg	Paulpietersburg	2005	KZN
phoenix	Phoenix	2005	KZN
pietermaritzburg	Pietermaritzburg	2005	KZN
pinetown	Pinetown	2005	KZN
plessislaer	Plessislaer	2005	KZN
point	Point	2005	KZN
pongola	Pongola	2005	KZN
portedward	Port Edward	2005	KZN
portshepstone	Port Shepstone	2005	KZN
prestbury	Prestbury	2005	KZN
richardsbay	Richards Bay	2005	KZN
richmondkzn	Richmond	2005	KZN
rietvlei	Rietvlei	2005	KZN
sawoti	Sawoti	2005	KZN
scottburgh	Scottburgh	2005	KZN
southport	Southport	2005	KZN
stfaiths	St Faiths	2005	KZN
sundumbili	Sundumbili	2005	KZN
swartberg	Swartberg	2005	KZN
sydenham	Sydenham	2005	KZN
taylorshalt	Taylors Halt	2005	KZN
thornville	Thornville	2005	KZN
tongaat	Tongaat	2005	KZN
townhill	Town Hill	2005	KZN
ulundi	Ulundi	2005	KZN
umbilo	Umbilo	2005	KZN
umbumbulu	Umbumbulu	2005	KZN
umhlali	Umhlali	2005	KZN
umkomaas	Umkomaas	2005	KZN
umlazi	Umlazi	2005	KZN
umsunduzi	Umsunduzi	2005	KZN
umzimkhulu	Umzimkhulu	2005	KZN
umzinto	Umzinto	2005	KZN
uppertugela	Upper Tugela	2005	KZN
utrecht	Utrecht	2005	KZN
vanreenen	Van Reenen	2005	KZN
verulam	Verulam	2005	KZN
vryheid	Vryheid	2005	KZN
wartburg	Wartburg	2005	KZN
wasbank	Wasbank	2005	KZN
weenen	Weenen	2005	KZN
wembezi	Wembezi	2005	KZN
wentworth	Wentworth	2005	KZN
westville	Westville	2005	KZN
winterton	Winterton	2005	KZN
alldays	Alldays	2005	LIM
apel	Apel	2005	LIM
belabela	Bela Bela	2005	LIM
bolobedu	Bolobedu	2005	LIM
botlokwa	Botlokwa	2005	LIM
bulgerivier	Bulgerivier	2005	LIM
burgersfort	Burgersfort	2005	LIM
cumberland	Cumberland	2005	LIM
dennilton	Dennilton	2005	LIM
dorset	Dorset	2005	LIM
dwaalboom	Dwaalboom	2005	LIM
elandskraal	Elandskraal	2005	LIM
gilead	Gilead	2005	LIM
giyani	Giyani	2005	LIM
gravelotte	Gravelotte	2005	LIM
groblersdal	Groblersdal	2005	LIM
haenertsburg	Haenertsburg	2005	LIM
hlanganani	Hlanganani	2005	LIM
hlogotlou	Hlogotlou	2005	LIM
hoedspruit	Hoedspruit	2005	LIM
hoopdal	Hoopdal	2005	LIM
janefurse	Jane Furse	2005	LIM
laersdrift	Laersdrift	2005	LIM
leboeng	Leboeng	2005	LIM
lebowakgomo	Lebowakgomo	2005	LIM
lephalale	Lephalale	2005	LIM
letsitele	Letsitele	2005	LIM
levubu	Levubu	2005	LIM
lulekani	Lulekani	2005	LIM
maake	Maake	2005	LIM
magatle	Magatle	2005	LIM
mahwelereng	Mahwelereng	2005	LIM
makhado	Makhado	2005	LIM
makuya	Makuya	2005	LIM
malamulele	Malamulele	2005	LIM
maleboho	Maleboho	2005	LIM
malipsdrift	Malipsdrift	2005	LIM
mankweng	Mankweng	2005	LIM
mara	Mara	2005	LIM
marblehall	Marble Hall	2005	LIM
masemola	Masemola	2005	LIM
mashashane	Mashashane	2005	LIM
masisi	Masisi	2005	LIM
matlala	Matlala	2005	LIM
mecklenburg	Mecklenburg	2005	LIM
modimolle	Modimolle	2005	LIM
modjadjiskloof	Modjadjiskloof	2005	LIM
mogwadi	Mogwadi	2005	LIM
mokopane	Mokopane	2005	LIM
morebeng	Morebeng	2005	LIM
motetema	Motetema	2005	LIM
mphephu	Mphephu	2005	LIM
musina	Musina	2005	LIM
mutale	Mutale	2005	LIM
naboomspruit	Naboomspruit	2005	LIM
namakgale	Namakgale	2005	LIM
nebo	Nebo	2005	LIM
northam	Northam	2005	LIM
ohrigstad	Ohrigstad	2005	LIM
phalaborwa	Phalaborwa	2005	LIM
pienaarsrivier	Pienaarsrivier	2005	LIM
polokwane	Polokwane	2005	LIM
rankin	Rankin	2005	LIM
ritavi	Ritavi	2005	LIM
roedtan	Roedtan	2005	LIM
rooiberg	Rooiberg	2005	LIM
roossenekal	Roossenekal	2005	LIM
rustdewinter	Rust De Winter	2005	LIM
saamboubrug	Saamboubrug	2005	LIM
saselamani	Saselamani	2005	LIM
sebayeng	Sebayeng	2005	LIM
sekgosese	Sekgosese	2005	LIM
sekhukhune	Sekhukhune	2005	LIM
senwabarwana	Senwabarwana	2005	LIM
seshego	Seshego	2005	LIM
siloam	Siloam	2005	LIM
thabazimbi	Thabazimbi	2005	LIM
thohoyandou	Thohoyandou	2005	LIM
tinmyne	Tinmyne	2005	LIM
tolwe	Tolwe	2005	LIM
tomburke	Tom Burke	2005	LIM
tshamutumbu	Tshamutumbu	2005	LIM
tshaulu	Tshaulu	2005	LIM
tshilwavhusiku	Tshilwavhusiku	2005	LIM
tshitale	Tshitale	2005	LIM
tubatse	Tubatse	2005	LIM
tuinplaas	Tuinplaas	2005	LIM
tzaneen	Tzaneen	2005	LIM
vaalwater	Vaalwater	2005	LIM
villanora	Villa Nora	2005	LIM
vuwani	Vuwani	2005	LIM
waterpoort	Waterpoort	2005	LIM
waterval	Waterval	2005	LIM
westenburg	Westenburg	2005	LIM
witpoort	Witpoort	2005	LIM
zaaiplaas	Zaaiplaas	2005	LIM
zebediela	Zebediela	2005	LIM
acornhoek	Acornhoek	2005	MP
amersfoort	Amersfoort	2005	MP
amsterdam	Amsterdam	2005	MP
badplaas	Badplaas	2005	MP
balfourmp	Balfour	2005	MP
barberton	Barberton	2005	MP
belfast	Belfast	2005	MP
bethal	Bethal	2005	MP
blinkpan	Blinkpan	2005	MP
breyten	Breyten	2005	MP
bushbuckridge	Bushbuckridge	2005	MP
calcutta	Calcutta	2005	MP
carolina	Carolina	2005	MP
charlcilliers	Charl Cilliers	2005	MP
chrissiesmeer	Chrissiesmeer	2005	MP
davel	Davel	2005	MP
delmas	Delmas	2005	MP
dientjie	Dientjie	2005	MP
dirkiesdorp	Dirkiesdorp	2005	MP
dullstroom	Dullstroom	2005	MP
ekulindeni	Ekulindeni	2005	MP
elukwatini	Elukwatini	2005	MP
embalenhle	Embalenhle	2005	MP
emzinoni	Emzinoni	2005	MP
ermelo	Ermelo	2005	MP
evander	Evander	2005	MP
fernie	Fernie	2005	MP
graskop	Graskop	2005	MP
greylingstad	Greylingstad	2005	MP
grootvlei	Grootvlei	2005	MP
hartebeeskop	Hartebeeskop	2005	MP
hazyview	Hazyview	2005	MP
hendrina	Hendrina	2005	MP
kaapmuiden	Kaapmuiden	2005	MP
kabokweni	Kabokweni	2005	MP
kanyamazane	Kanyamazane	2005	MP
kinross	Kinross	2005	MP
komatipoort	Komatipoort	2005	MP
kriel	Kriel	2005	MP
kwaggafontein	Kwaggafontein	2005	MP
kwamhlanga	Kwamhlanga	2005	MP
leslie	Leslie	2005	MP
lothair	Lothair	2005	MP
low	Low	2005	MP
lydenburg	Lydenburg	2005	MP
maartenshoop	Maartenshoop	2005	MP
machadodorp	Machadodorp	2005	MP
mahamba	Mahamba	2005	MP
malelane	Malelane	2005	MP
masoyi	Masoyi	2005	MP
matsulu	Matsulu	2005	MP
mayflower	Mayflower	2005	MP
mbuzini	Mbuzini	2005	MP
mhala	Mhala	2005	MP
mhluzi	Mhluzi	2005	MP
middelburgmp	Middelburg	2005	MP
mmametlake	Mmametlake	2005	MP
morgenzon	Morgenzon	2005	MP
nelspruit	Nelspruit	2005	MP
ngodwana	Ngodwana	2005	MP
ogies	Ogies	2005	MP
perdekop	Perdekop	2005	MP
pienaar	Pienaar	2005	MP
pietretief	Piet Retief	2005	MP
pilgrim	Pilgrim	2005	MP
sabie	Sabie	2005	MP
sakhile	Sakhile	2005	MP
schoemansdal	Schoemansdal	2005	MP
secunda	Secunda	2005	MP
sheepmoor	Sheepmoor	2005	MP
siyabuswa	Siyabuswa	2005	MP
skukuza	Skukuza	2005	MP
standerton	Standerton	2005	MP
sundra	Sundra	2005	MP
tonga	Tonga	2005	MP
trichardt	Trichardt	2005	MP
tweefontein	Tweefontein	2005	MP
vaalbank	Vaalbank	2005	MP
val	Val	2005	MP
verena	Verena	2005	MP
volksrust	Volksrust	2005	MP
vosman	Vosman	2005	MP
wakkerstroom	Wakkerstroom	2005	MP
watervalboven	Waterval Boven	2005	MP
witbank	Witbank	2005	MP
witrivier	Witrivier	2005	MP
amalia	Amalia	2005	NW
assen	Assen	2005	NW
atamelang	Atamelang	2005	NW
bedwang	Bedwang	2005	NW
bethanie	Bethanie	2005	NW
biesiesvlei	Biesiesvlei	2005	NW
bloemhof	Bloemhof	2005	NW
boitekong	Boitekong	2005	NW
boons	Boons	2005	NW
boshoek	Boshoek	2005	NW
bray	Bray	2005	NW
brits	Brits	2005	NW
buffelshoek	Buffelshoek	2005	NW
christiana	Christiana	2005	NW
coligny	Coligny	2005	NW
cyferskuil	Cyferskuil	2005	NW
delareyville	Delareyville	2005	NW
ganyesa	Ganyesa	2005	NW
grootmarico	Groot Marico	2005	NW
hartbeesfontein	Hartbeesfontein	2005	NW
hartbeespoortdam	Hartbeespoortdam	2005	NW
hebron	Hebron	2005	NW
huhudi	Huhudi	2005	NW
ikageng	Ikageng	2005	NW
ipelegeng	Ipelegeng	2005	NW
itsoseng	Itsoseng	2005	NW
jericho	Jericho	2005	NW
jouberton	Jouberton	2005	NW
kanana	Kanana	2005	NW
kgomotso	Kgomotso	2005	NW
khuma	Khuma	2005	NW
klerksdorp	Klerksdorp	2005	NW
klerkskraal	Klerkskraal	2005	NW
klipgat	Klipgat	2005	NW
koster	Koster	2005	NW
leeudoringstad	Leeudoringstad	2005	NW
lehurutshe	Lehurutshe	2005	NW
lethabong	Lethabong	2005	NW
lethlabile	Lethlabile	2005	NW
lichtenburg	Lichtenburg	2005	NW
lomanyaneng	Lomanyaneng	2005	NW
madibogo	Madibogo	2005	NW
madikwe	Madikwe	2005	NW
mahikeng	Mahikeng	2005	NW
makapanstad	Makapanstad	2005	NW
makgobistat	Makgobistat	2005	NW
makwassie	Makwassie	2005	NW
marikana	Marikana	2005	NW
mmabatho	Mmabatho	2005	NW
mmakau	Mmakau	2005	NW
mogwase	Mogwase	2005	NW
mokopong	Mokopong	2005	NW
mooifontein	Mooifontein	2005	NW
mooinooi	Mooinooi	2005	NW
morokweng	Morokweng	2005	NW
mothutlung	Mothutlung	2005	NW
motswedi	Motswedi	2005	NW
nietverdiend	Nietverdiend	2005	NW
orkney	Orkney	2005	NW
ottosdal	Ottosdal	2005	NW
ottoshoop	Ottoshoop	2005	NW
phokeng	Phokeng	2005	NW
pietplessis	Piet Plessis	2005	NW
potchefstroom	Potchefstroom	2005	NW
pudimoe	Pudimoe	2005	NW
reivilo	Reivilo	2005	NW
rustenburg	Rustenburg	2005	NW
sannieshof	Sannieshof	2005	NW
schweizer	Schweizer	2005	NW
setlagole	Setlagole	2005	NW
stella	Stella	2005	NW
stilfontein	Stilfontein	2005	NW
suncity	Sun City	2005	NW
swartruggens	Swartruggens	2005	NW
taung	Taung	2005	NW
tlhabane	Tlhabane	2005	NW
tshidilamolomo	Tshidilamolomo	2005	NW
ventersdorp	Ventersdorp	2005	NW
vorstershoop	Vorstershoop	2005	NW
vryburg	Vryburg	2005	NW
wolmaransstad	Wolmaransstad	2005	NW
zeerust	Zeerust	2005	NW
aggeneys	Aggeneys	2005	NC
alexanderbay	Alexander Bay	2005	NC
augrabies	Augrabies	2005	NC
barklywest	Barkly West	2005	NC
bathlaros	Bathlaros	2005	NC
belmont	Belmont	2005	NC
boetsap	Boetsap	2005	NC
bothithong	Bothithong	2005	NC
brandvlei	Brandvlei	2005	NC
britstown	Britstown	2005	NC
calvinia	Calvinia	2005	NC
campbell	Campbell	2005	NC
carnarvon	Carnarvon	2005	NC
colesberg	Colesberg	2005	NC
danielskuil	Danielskuil	2005	NC
deaar	De Aar	2005	NC
deben	Deben	2005	NC
delportshoop	Delportshoop	2005	NC
dingleton	Dingleton	2005	NC
douglas	Douglas	2005	NC
fraserburg	Fraserburg	2005	NC
galeshewe	Galeshewe	2005	NC
garies	Garies	2005	NC
griekwastad	Griekwastad	2005	NC
groblershoop	Groblershoop	2005	NC
hanover	Hanover	2005	NC
hartswater	Hartswater	2005	NC
heuningvlei	Heuningvlei	2005	NC
hondeklipbay	Hondeklip Bay	2005	NC
hopetown	Hopetown	2005	NC
jankempdorp	Jan Kempdorp	2005	NC
kagisho	Kagisho	2005	NC
kakamas	Kakamas	2005	NC
kamieskroon	Kamieskroon	2005	NC
kanoneiland	Kanoneiland	2005	NC
kathu	Kathu	2005	NC
keimoes	Keimoes	2005	NC
kenhardt	Kenhardt	2005	NC
kimberley	Kimberley	2005	NC
kleinsee	Kleinsee	2005	NC
komaggas	Komaggas	2005	NC
kuruman	Kuruman	2005	NC
kuyasa	Kuyasa	2005	NC
limeacres	Lime Acres	2005	NC
loeriesfontein	Loeriesfontein	2005	NC
loxton	Loxton	2005	NC
marydale	Marydale	2005	NC
middelpos	Middelpos	2005	NC
modderriver	Modder River	2005	NC
mothibistad	Mothibistad	2005	NC
nababeep	Nababeep	2005	NC
niekerkshoop	Niekerkshoop	2005	NC
nieuwoudtville	Nieuwoudtville	2005	NC
noenieput	Noenieput	2005	NC
norvalspont	Norvalspont	2005	NC
noupoort	Noupoort	2005	NC
olifantshoek	Olifantshoek	2005	NC
onseepkans	Onseepkans	2005	NC
pabalello	Pabalello	2005	NC
pampierstat	Pampierstat	2005	NC
pella	Pella	2005	NC
petrusville	Petrusville	2005	NC
philipstown	Philipstown	2005	NC
plooysburg	Plooysburg	2005	NC
pofadder	Pofadder	2005	NC
portnolloth	Port Nolloth	2005	NC
postmasburg	Postmasburg	2005	NC
prieska	Prieska	2005	NC
richmondnc	Richmond	2005	NC
rietfontein	Rietfontein	2005	NC
roodepan	Roodepan	2005	NC
rosedale	Rosedale	2005	NC
severn	Severn	2005	NC
springbok	Springbok	2005	NC
steinkopf	Steinkopf	2005	NC
strydenburg	Strydenburg	2005	NC
sunrise	Sunrise	2005	NC
sutherland	Sutherland	2005	NC
tsineng	Tsineng	2005	NC
upington	Upington	2005	NC
vanzylsrus	Van Zylsrus	2005	NC
vanderkloof	Vanderkloof	2005	NC
vanwyksvlei	Vanwyksvlei	2005	NC
victoriawest	Victoria West	2005	NC
vioolsdrif	Vioolsdrif	2005	NC
vosburg	Vosburg	2005	NC
warrenton	Warrenton	2005	NC
williston	Williston	2005	NC
windsorton	Windsorton	2005	NC
witdraai	Witdraai	2005	NC
wrenchville	Wrenchville	2005	NC
albertinia	Albertinia	2005	WC
ashton	Ashton	2005	WC
athlone	Athlone	2005	WC
atlantis	Atlantis	2005	WC
barrydale	Barrydale	2005	WC
beaufortwest	Beaufort West	2005	WC
belhar	Belhar	2005	WC
bellville	Bellville	2005	WC
bellvillesouth	Bellville South	2005	WC
bishoplavis	Bishop Lavis	2005	WC
bonnievale	Bonnievale	2005	WC
bothasig	Bothasig	2005	WC
brackenfell	Brackenfell	2005	WC
bredasdorp	Bredasdorp	2005	WC
caledon	Caledon	2005	WC
calitzdorp	Calitzdorp	2005	WC
campsbay	Camps Bay	2005	WC
capetowncentral	Cape Town Central	2005	WC
ceres	Ceres	2005	WC
citrusdal	Citrusdal	2005	WC
clanwilliam	Clanwilliam	2005	WC
claremont	Claremont	2005	WC
cloetesville	Cloetesville	2005	WC
conville	Conville	2005	WC
dagamaskop	Da Gamaskop	2005	WC
darling	Darling	2005	WC
dedoorns	De Doorns	2005	WC
derust	De Rust	2005	WC
delft	Delft	2005	WC
dieprivier	Dieprivier	2005	WC
doringbay	Doring Bay	2005	WC
durbanville	Durbanville	2005	WC
dysselsdorp	Dysselsdorp	2005	WC
eendekuil	Eendekuil	2005	WC
elandsbay	Elands Bay	2005	WC
elsiesriver	Elsies River	2005	WC
fishhoek	Fish Hoek	2005	WC
franschhoek	Franschhoek	2005	WC
gansbay	Gans Bay	2005	WC
genadendal	Genadendal	2005	WC
george	George	2005	WC
goodwood	Goodwood	2005	WC
gordonsbay	Gordons Bay	2005	WC
graafwater	Graafwater	2005	WC
grabouw	Grabouw	2005	WC
grassypark	Grassy Park	2005	WC
grootbrakrivier	Groot Brakrivier	2005	WC
groot	Groot	2005	WC
gugulethu	Gugulethu	2005	WC
harare	Harare	2005	WC
heidelbergwc	Heidelberg	2005	WC
hermanus	Hermanus	2005	WC
hopefield	Hopefield	2005	WC
houtbay	Hout Bay	2005	WC
kensington	Kensington	2005	WC
khayelitsha	Khayelitsha	2005	WC
kirstenhof	Kirstenhof	2005	WC
klapmuts	Klapmuts	2005	WC
klawer	Klawer	2005	WC
kleinmond	Kleinmond	2005	WC
kleinvlei	Kleinvlei	2005	WC
knysna	Knysna	2005	WC
kraaifontein	Kraaifontein	2005	WC
kuilsrivier	Kuilsrivier	2005	WC
kwanokuthula	Kwanokuthula	2005	WC
kwanonqaba	Kwanonqaba	2005	WC
laaiplek	Laaiplek	2005	WC
ladismith	Ladismith	2005	WC
laingsburg	Laingsburg	2005	WC
lambertsbaai	Lambertsbaai	2005	WC
langa	Langa	2005	WC
langebaan	Langebaan	2005	WC
lansdowne	Lansdowne	2005	WC
leeu	Leeu	2005	WC
lentegeur	Lentegeur	2005	WC
lingelethu	Lingelethu	2005	WC
lutzville	Lutzville	2005	WC
lwandle	Lwandle	2005	WC
macassar	Macassar	2005	WC
maitland	Maitland	2005	WC
malmesbury	Malmesbury	2005	WC
manenberg	Manenberg	2005	WC
mbekweni	Mbekweni	2005	WC
mcgregor	McGregor	2005	WC
melkbosstrand	Melkbosstrand	2005	WC
mfuleni	Mfuleni	2005	WC
milnerton	Milnerton	2005	WC
mitchellsplain	Mitchells Plain	2005	WC
montagu	Montagu	2005	WC
moorreesburg	Moorreesburg	2005	WC
mosselbay	Mossel Bay	2005	WC
mowbray	Mowbray	2005	WC
muizenberg	Muizenberg	2005	WC
murraysburg	Murraysburg	2005	WC
napier	Napier	2005	WC
nuwerus	Nuwerus	2005	WC
nyanga	Nyanga	2005	WC
oceanview	Ocean View	2005	WC
oudtshoorn	Oudtshoorn	2005	WC
paarl	Paarl	2005	WC
paarleast	Paarl East	2005	WC
pacaltsdorp	Pacaltsdorp	2005	WC
parow	Parow	2005	WC
philadelphia	Philadelphia	2005	WC
philippi	Philippi	2005	WC
philippieast	Philippi East	2005	WC
piketberg	Piketberg	2005	WC
pinelands	Pinelands	2005	WC
plettenbergbay	Plettenberg Bay	2005	WC
porterville	Porterville	2005	WC
princealbert	Prince Albert	2005	WC
princealfredhamlet	Prince Alfred Hamlet	2005	WC
ravensmead	Ravensmead	2005	WC
rawsonville	Rawsonville	2005	WC
redelinghuys	Redelinghuys	2005	WC
riebeeckwest	Riebeeck West	2005	WC
riversdale	Riversdale	2005	WC
riviersonderend	Riviersonderend	2005	WC
robertson	Robertson	2005	WC
rondebosch	Rondebosch	2005	WC
saldanha	Saldanha	2005	WC
saron	Saron	2005	WC
seapoint	Sea Point	2005	WC
simon	Simon	2005	WC
somersetwest	Somerset West	2005	WC
sthelenabay	St Helena Bay	2005	WC
stanford	Stanford	2005	WC
steenberg	Steenberg	2005	WC
stellenbosch	Stellenbosch	2005	WC
stillbay	Still Bay	2005	WC
strand	Strand	2005	WC
strandfontein	Strandfontein	2005	WC
struisbaai	Struisbaai	2005	WC
suurbraak	Suurbraak	2005	WC
swellendam	Swellendam	2005	WC
tablebayharbour	Table Bay Harbour	2005	WC
tableview	Table View	2005	WC
thembalethu	Thembalethu	2005	WC
touwsriver	Touws River	2005	WC
tulbagh	Tulbagh	2005	WC
uniondale	Uniondale	2005	WC
vanrhynsdorp	Vanrhynsdorp	2005	WC
villiersdorp	Villiersdorp	2005	WC
vredenburg	Vredenburg	2005	WC
vredendal	Vredendal	2005	WC
wellington	Wellington	2005	WC
wolseley	Wolseley	2005	WC
woodstock	Woodstock	2005	WC
worcester	Worcester	2005	WC
wynberg	Wynberg	2005	WC
aberdeen	Aberdeen	2005	EC
addo	Addo	2005	EC
adelaide	Adelaide	2005	EC
afsondering	Afsondering	2005	EC
alexandria	Alexandria	2005	EC
algoapark	Algoapark	2005	EC
alice	Alice	2005	EC
alicedale	Alicedale	2005	EC
aliwalnorth	Aliwal North	2005	EC
avondale	Avondale	2005	EC
balfourec	Balfour	2005	EC
barklyeast	Barkly East	2005	EC
bathurst	Bathurst	2005	EC
bavianskloof	Bavianskloof	2005	EC
beaconbay	Beacon Bay	2005	EC
bedford	Bedford	2005	EC
bell	Bell	2005	EC
berlin	Berlin	2005	EC
bethelsdorp	Bethelsdorp	2005	EC
bisho	Bisho	2005	EC
bitye	Bitye	2005	EC
bizana	Bizana	2005	EC
bluewater	Bluewater	2005	EC
bolo	Bolo	2005	EC
bolotwa	Bolotwa	2005	EC
bridgecamp	Bridge Camp	2005	EC
buffaloflats	Buffalo Flats	2005	EC
burgersdorp	Burgersdorp	2005	EC
butterworth	Butterworth	2005	EC
cala	Cala	2005	EC
cambridge	Cambridge	2005	EC
cathcart	Cathcart	2005	EC
cedarville	Cedarville	2005	EC
centane	Centane	2005	EC
chalumna	Chalumna	2005	EC
chungwa	Chungwa	2005	EC
coffeebay	Coffee Bay	2005	EC
cofimvaba	Cofimvaba	2005	EC
committees	Committees	2005	EC
cookhouse	Cookhouse	2005	EC
cradock	Cradock	2005	EC
dalasile	Dalasile	2005	EC
despatch	Despatch	2005	EC
dimbaza	Dimbaza	2005	EC
dordrecht	Dordrecht	2005	EC
doringkloof	Doringkloof	2005	EC
duncanvillage	Duncan Village	2005	EC
eastlondon	East London	2005	EC
elandsheight	Elands Height	2005	EC
elliot	Elliot	2005	EC
elliotdale	Elliotdale	2005	EC
engcobo	Engcobo	2005	EC
ezibeleni	Ezibeleni	2005	EC
flagstaff	Flagstaff	2005	EC
floukraal	Floukraal	2005	EC
fortbeaufort	Fort Beaufort	2005	EC
fortbrown	Fort Brown	2005	EC
gelvandale	Gelvandale	2005	EC
glengrey	Glen Grey	2005	EC
gonubie	Gonubie	2005	EC
graaff	Graaff	2005	EC
grahamstown	Grahamstown	2005	EC
hamburg	Hamburg	2005	EC
hankey	Hankey	2005	EC
healdtown	Healdtown	2005	EC
henderson	Henderson	2005	EC
hlababomvu	Hlababomvu	2005	EC
hofmeyr	Hofmeyr	2005	EC
hogsback	Hogsback	2005	EC
humansdorp	Humansdorp	2005	EC
humewood	Humewood	2005	EC
ida	Ida	2005	EC
idutywa	Idutywa	2005	EC
ikamvelihle	Ikamvelihle	2005	EC
ilinge	Ilinge	2005	EC
indwe	Indwe	2005	EC
inyibiba	Inyibiba	2005	EC
jamestown	Jamestown	2005	EC
jansenville	Jansenville	2005	EC
jeffreysbay	Jeffreys Bay	2005	EC
joubertina	Joubertina	2005	EC
joza	Joza	2005	EC
kabegapark	Kabega Park	2005	EC
kamesh	Kamesh	2005	EC
kareedouw	Kareedouw	2005	EC
kat	Kat	2005	EC
keibridge	Kei Bridge	2005	EC
keimouth	Kei Mouth	2005	EC
keiroad	Kei Road	2005	EC
keiskammahoek	Keiskammahoek	2005	EC
kenton	Kenton	2005	EC
kidd	Kidd	2005	EC
kingwilliam	King William	2005	EC
kinkelbos	Kinkelbos	2005	EC
kirkwood	Kirkwood	2005	EC
kleinbulhoek	Kleinbulhoek	2005	EC
klipplaat	Klipplaat	2005	EC
kolomane	Kolomane	2005	EC
komga	Komga	2005	EC
kubusiedrift	Kubusiedrift	2005	EC
kwaaiman	Kwaaiman	2005	EC
kwadwesi	Kwadwesi	2005	EC
kwandengane	Kwandengane	2005	EC
kwanobuhle	Kwanobuhle	2005	EC
kwazakele	Kwazakele	2005	EC
ladyfrere	Lady Frere	2005	EC
ladygrey	Lady Grey	2005	EC
libode	Libode	2005	EC
lukholweni	Lukholweni	2005	EC
lusikisiki	Lusikisiki	2005	EC
macleantown	Macleantown	2005	EC
maclear	Maclear	2005	EC
madeira	Madeira	2005	EC
maletswai	Maletswai	2005	EC
maluti	Maluti	2005	EC
matatiele	Matatiele	2005	EC
mbizeni	Mbizeni	2005	EC
mdantsane	Mdantsane	2005	EC
middelburgec	Middelburg	2005	EC
middledrift	Middledrift	2005	EC
mlungisi	Mlungisi	2005	EC
molteno	Molteno	2005	EC
mooiplaas	Mooiplaas	2005	EC
motherwell	Motherwell	2005	EC
mountayliff	Mount Ayliff	2005	EC
mountfletcher	Mount Fletcher	2005	EC
mountfrere	Mount Frere	2005	EC
mountroad	Mount Road	2005	EC
moyeni	Moyeni	2005	EC
mpisi	Mpisi	2005	EC
mqanduli	Mqanduli	2005	EC
msobomvu	Msobomvu	2005	EC
mthatha	Mthatha	2005	EC
mtontsasa	Mtontsasa	2005	EC
mzamba	Mzamba	2005	EC
ndevana	Ndevana	2005	EC
nemato	Nemato	2005	EC
newbrighton	New Brighton	2005	EC
ngangelizwe	Ngangelizwe	2005	EC
ngqeleni	Ngqeleni	2005	EC
nqamakwe	Nqamakwe	2005	EC
ntabankulu	Ntabankulu	2005	EC
ntabethemba	Ntabethemba	2005	EC
palmietfontein	Palmietfontein	2005	EC
patensie	Patensie	2005	EC
paterson	Paterson	2005	EC
pearston	Pearston	2005	EC
peddie	Peddie	2005	EC
phumalanga	PHUMALANGA	2005	EC
portalfred	Port Alfred	2005	EC
portstjohns	Port St Johns	2005	EC
punzana	Punzana	2005	EC
queenstown	Queenstown	2005	EC
qumbu	Qumbu	2005	EC
rhodes	Rhodes	2005	EC
riebeeckeast	Riebeeck East	2005	EC
rietbron	Rietbron	2005	EC
rossouw	Rossouw	2005	EC
seafield	Seafield	2005	EC
sevenfountains	Seven Fountains	2005	EC
seymour	Seymour	2005	EC
somerseteast	Somerset East	2005	EC
stfrancisbay	St Francis Bay	2005	EC
sterkspruit	Sterkspruit	2005	EC
sterkstroom	Sterkstroom	2005	EC
stevevukiletshwete	Steve Vukile Tshwete	2005	EC
steynsburg	Steynsburg	2005	EC
steytlerville	Steytlerville	2005	EC
stormsriver	Storms River	2005	EC
stutterheim	Stutterheim	2005	EC
sulenkama	Sulenkama	2005	EC
swartkops	Swartkops	2005	EC
tabase	Tabase	2005	EC
tamara	Tamara	2005	EC
tarkastad	Tarkastad	2005	EC
thomasriver	Thomas River	2005	EC
thornhill	Thornhill	2005	EC
thornhillciskei	Thornhill Ciskei	2005	EC
tinafalls	Tina Falls	2005	EC
tsolo	Tsolo	2005	EC
tsomo	Tsomo	2005	EC
tyefu	Tyefu	2005	EC
tylden	Tylden	2005	EC
ugie	Ugie	2005	EC
uitenhage	Uitenhage	2005	EC
venterstad	Venterstad	2005	EC
vulindlela	Vulindlela	2005	EC
walmer	Walmer	2005	EC
whittlesea	Whittlesea	2005	EC
willowmore	Willowmore	2005	EC
willowvale	Willowvale	2005	EC
wolwefontein	Wolwefontein	2005	EC
zamuxolo	Zamuxolo	2005	EC
zele	Zele	2005	EC
zwelitsha	Zwelitsha	2005	EC
allanridge	Allanridge	2005	FS
arlington	Arlington	2005	FS
bainsvlei	Bainsvlei	2005	FS
batho	Batho	2005	FS
bayswater	Bayswater	2005	FS
bethlehem	Bethlehem	2005	FS
bethulie	Bethulie	2005	FS
bloemspruit	Bloemspruit	2005	FS
boithuso	Boithuso	2005	FS
boshof	Boshof	2005	FS
bothaville	Bothaville	2005	FS
botshabelo	Botshabelo	2005	FS
brandfort	Brandfort	2005	FS
bronville	Bronville	2005	FS
bultfontein	Bultfontein	2005	FS
clarens	Clarens	2005	FS
clocolan	Clocolan	2005	FS
cornelia	Cornelia	2005	FS
dealesville	Dealesville	2005	FS
deneysville	Deneysville	2005	FS
dewetsdorp	Dewetsdorp	2005	FS
edenburg	Edenburg	2005	FS
edenville	Edenville	2005	FS
excelsior	Excelsior	2005	FS
fauresmith	Fauresmith	2005	FS
ficksburg	Ficksburg	2005	FS
fouriesburg	Fouriesburg	2005	FS
gariepdam	Gariepdam	2005	FS
glen	Glen	2005	FS
goedemoed	Goedemoed	2005	FS
harrismith	Harrismith	2005	FS
heidedal	Heidedal	2005	FS
heilbron	Heilbron	2005	FS
hennenman	Hennenman	2005	FS
hertzogville	Hertzogville	2005	FS
heuningspruit	Heuningspruit	2005	FS
hobhouse	Hobhouse	2005	FS
hoopstad	Hoopstad	2005	FS
jacobsdal	Jacobsdal	2005	FS
jagersfontein	Jagersfontein	2005	FS
kagisanong	Kagisanong	2005	FS
kestell	Kestell	2005	FS
koffiefontein	Koffiefontein	2005	FS
kommissiepoort	Kommissiepoort	2005	FS
kopanong	Kopanong	2005	FS
koppies	Koppies	2005	FS
kroonstad	Kroonstad	2005	FS
ladybrand	Ladybrand	2005	FS
lindley	Lindley	2005	FS
luckhoff	Luckhoff	2005	FS
mafube	Mafube	2005	FS
makwane	Makwane	2005	FS
mangaung	Mangaung	2005	FS
maokeng	Maokeng	2005	FS
marquard	Marquard	2005	FS
meloding	Meloding	2005	FS
memel	Memel	2005	FS
namahadi	Namahadi	2005	FS
navalsig	Navalsig	2005	FS
odendaalsrus	Odendaalsrus	2005	FS
oranjeville	Oranjeville	2005	FS
parkroad	Park Road	2005	FS
parys	Parys	2005	FS
paulroux	Paul Roux	2005	FS
petrussteyn	Petrus Steyn	2005	FS
petrusburg	Petrusburg	2005	FS
philippolis	Philippolis	2005	FS
phuthaditjhaba	Phuthaditjhaba	2005	FS
reddersburg	Reddersburg	2005	FS
reitz	Reitz	2005	FS
roadside	Roadside	2005	FS
rosendal	Rosendal	2005	FS
rouxville	Rouxville	2005	FS
sasolburg	Sasolburg	2005	FS
selosesha	Selosesha	2005	FS
senekal	Senekal	2005	FS
smithfield	Smithfield	2005	FS
soutpan	Soutpan	2005	FS
springfontein	Springfontein	2005	FS
steunmekaar	Steunmekaar	2005	FS
steynsrus	Steynsrus	2005	FS
thaba	Thaba	2005	FS
thabong	Thabong	2005	FS
theunissen	Theunissen	2005	FS
tierpoort	Tierpoort	2005	FS
trompsburg	Trompsburg	2005	FS
tseki	Tseki	2005	FS
tseseng	Tseseng	2005	FS
tumahole	Tumahole	2005	FS
tweeling	Tweeling	2005	FS
tweespruit	Tweespruit	2005	FS
vanstadensrus	Vanstadensrus	2005	FS
ventersburg	Ventersburg	2005	FS
verkeerdevlei	Verkeerdevlei	2005	FS
verkykerskop	Verkykerskop	2005	FS
vierfontein	Vierfontein	2005	FS
viljoensdrif	Viljoensdrif	2005	FS
viljoenskroon	Viljoenskroon	2005	FS
villiers	Villiers	2005	FS
virginia	Virginia	2005	FS
vrede	Vrede	2005	FS
vredefort	Vredefort	2005	FS
wanda	Wanda	2005	FS
warden	Warden	2005	FS
welkom	Welkom	2005	FS
wepener	Wepener	2005	FS
wesselsbron	Wesselsbron	2005	FS
winburg	Winburg	2005	FS
zamdela	Zamdela	2005	FS
zastron	Zastron	2005	FS
actonville	Actonville	2005	GT
akasia	Akasia	2005	GT
alberton	Alberton	2005	GT
alexandra	Alexandra	2005	GT
atteridgeville	Atteridgeville	2005	GT
bedfordview	Bedfordview	2005	GT
bekkersdal	Bekkersdal	2005	GT
benoni	Benoni	2005	GT
boipatong	Boipatong	2005	GT
boksburg	Boksburg	2005	GT
boksburgnorth	Boksburg North	2005	GT
booysens	Booysens	2005	GT
boschkop	Boschkop	2005	GT
brackendowns	Brackendowns	2005	GT
brakpan	Brakpan	2005	GT
bramley	Bramley	2005	GT
brixton	Brixton	2005	GT
bronkhorstspruit	Bronkhorstspruit	2005	GT
brooklyn	Brooklyn	2005	GT
carletonville	Carletonville	2005	GT
cleveland	Cleveland	2005	GT
crystalpark	Crystalpark	2005	GT
cullinan	Cullinan	2005	GT
daveyton	Daveyton	2005	GT
dawnpark	Dawn Park	2005	GT
dedeur	De Deur	2005	GT
devon	Devon	2005	GT
diepkloof	Diepkloof	2005	GT
diepsloot	Diepsloot	2005	GT
dobsonville	Dobsonville	2005	GT
douglasdale	Douglasdale	2005	GT
dube	Dube	2005	GT
duduza	Duduza	2005	GT
dunnottar	Dunnottar	2005	GT
edenpark	Edenpark	2005	GT
edenvale	Edenvale	2005	GT
eersterust	Eersterust	2005	GT
ekangala	Ekangala	2005	GT
eldoradopark	Eldorado Park	2005	GT
elsburg	Elsburg	2005	GT
ennerdale	Ennerdale	2005	GT
erasmia	Erasmia	2005	GT
etwatwa	Etwatwa	2005	GT
evaton	Evaton	2005	GT
fairland	Fairland	2005	GT
florida	Florida	2005	GT
fochville	Fochville	2005	GT
ga	Ga	2005	GT
garsfontein	Garsfontein	2005	GT
germiston	Germiston	2005	GT
hammanskraal	Hammanskraal	2005	GT
heidelberggt	Heidelberg	2005	GT
hekpoort	Hekpoort	2005	GT
hercules	Hercules	2005	GT
hillbrow	Hillbrow	2005	GT
honeydew	Honeydew	2005	GT
ivorypark	Ivory Park	2005	GT
jabulani	Jabulani	2005	GT
jeppe	Jeppe	2005	GT
johannesburgcentral	Johannesburg Central	2005	GT
kagiso	Kagiso	2005	GT
kameeldrift	Kameeldrift	2005	GT
katlehong	Katlehong	2005	GT
katlehongnorth	Katlehong North	2005	GT
kemptonpark	Kempton Park	2005	GT
khutsong	Khutsong	2005	GT
kliprivier	Kliprivier	2005	GT
kliptown	Kliptown	2005	GT
krugersdorp	Krugersdorp	2005	GT
kwathema	Kwa Thema	2005	GT
langlaagte	Langlaagte	2005	GT
laudium	Laudium	2005	GT
lenasia	Lenasia	2005	GT
lenasiasouth	Lenasia South	2005	GT
linden	Linden	2005	GT
loate	Loate	2005	GT
lyttelton	Lyttelton	2005	GT
mabopane	Mabopane	2005	GT
magaliesburg	Magaliesburg	2005	GT
mamelodi	Mamelodi	2005	GT
mamelodieast	Mamelodi East	2005	GT
meadowlands	Meadowlands	2005	GT
meyerton	Meyerton	2005	GT
midrand	Midrand	2005	GT
moffatview	Moffatview	2005	GT
mondeor	Mondeor	2005	GT
moroka	Moroka	2005	GT
muldersdrift	Muldersdrift	2005	GT
naledi	Naledi	2005	GT
nigel	Nigel	2005	GT
norkempark	Norkempark	2005	GT
norwood	Norwood	2005	GT
olievenhoutbosch	Olievenhoutbosch	2005	GT
olifantsfontein	Olifantsfontein	2005	GT
ortambointernationalairport	OR Tambo International Airport	2005	GT
orangefarms	Orange Farms	2005	GT
orlando	Orlando	2005	GT
parkview	Parkview	2005	GT
pretoriacentral	Pretoria Central	2005	GT
pretoriamoot	Pretoria Moot	2005	GT
pretorianorth	Pretoria North	2005	GT
pretoriawest	Pretoria West	2005	GT
primrose	Primrose	2005	GT
proteaglen	Protea Glen	2005	GT
putfontein	Putfontein	2005	GT
rabieridge	Rabie Ridge	2005	GT
randburg	Randburg	2005	GT
randfontein	Randfontein	2005	GT
ratanda	Ratanda	2005	GT
reigerpark	Reigerpark	2005	GT
rietgat	Rietgat	2005	GT
roodepoort	Roodepoort	2005	GT
rosebank	Rosebank	2005	GT
sandringham	Sandringham	2005	GT
sandton	Sandton	2005	GT
sebenza	Sebenza	2005	GT
sebokeng	Sebokeng	2005	GT
sharpeville	Sharpeville	2005	GT
silverton	Silverton	2005	GT
sinoville	Sinoville	2005	GT
sophiatown	Sophia Town	2005	GT
soshanguve	Soshanguve	2005	GT
springs	Springs	2005	GT
sunnyside	Sunnyside	2005	GT
tarlton	Tarlton	2005	GT
temba	Temba	2005	GT
tembisa	Tembisa	2005	GT
thebarrage	The Barrage	2005	GT
tokoza	Tokoza	2005	GT
tsakane	Tsakane	2005	GT
vaalmarina	Vaal Marina	2005	GT
vanderbijlpark	Vanderbijlpark	2005	GT
vereeniging	Vereeniging	2005	GT
villieria	Villieria	2005	GT
vosloorus	Vosloorus	2005	GT
wedela	Wedela	2005	GT
welbekend	Welbekend	2005	GT
westonaria	Westonaria	2005	GT
wierdabrug	Wierdabrug	2005	GT
wonderboompoort	Wonderboompoort	2005	GT
yeoville	Yeoville	2005	GT
zonkizizwe	Zonkizizwe	2005	GT
\.


--
-- Name: policedistrict_pkey; Type: CONSTRAINT; Schema: public; Owner: census; Tablespace: 
--

ALTER TABLE ONLY policedistrict
    ADD CONSTRAINT policedistrict_pkey PRIMARY KEY (code);


--
-- Name: ix_policedistrict_name; Type: INDEX; Schema: public; Owner: census; Tablespace: 
--

CREATE INDEX ix_policedistrict_name ON policedistrict USING btree (name);


--
-- Name: ix_policedistrict_year; Type: INDEX; Schema: public; Owner: census; Tablespace: 
--

CREATE INDEX ix_policedistrict_year ON policedistrict USING btree (year);


--
-- Name: policedistrict_province_code_fkey; Type: FK CONSTRAINT; Schema: public; Owner: census
--

ALTER TABLE ONLY policedistrict
    ADD CONSTRAINT policedistrict_province_code_fkey FOREIGN KEY (province_code) REFERENCES province(code);


--
-- PostgreSQL database dump complete
--

