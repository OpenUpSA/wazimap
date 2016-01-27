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
    province_code character varying(3),
    square_kms double precision
);


ALTER TABLE policedistrict OWNER TO census;

--
-- Data for Name: policedistrict; Type: TABLE DATA; Schema: public; Owner: census
--

COPY policedistrict (code, name, year, province_code, square_kms) FROM stdin;
alexandraroad	Alexandra Road	2005	KZN	\N
amangwe	Amangwe	2005	KZN	\N
amanzimtoti	Amanzimtoti	2005	KZN	\N
babanango	Babanango	2005	KZN	\N
bayview	Bayview	2005	KZN	\N
bellair	Bellair	2005	KZN	\N
berea	Berea	2005	KZN	\N
bergville	Bergville	2005	KZN	\N
besters	Besters	2005	KZN	\N
bhekithemba	Bhekithemba	2005	KZN	\N
bishopstowe	Bishopstowe	2005	KZN	\N
boston	Boston	2005	KZN	\N
brightonbeach	Brighton Beach	2005	KZN	\N
bulwer	Bulwer	2005	KZN	\N
camperdown	Camperdown	2005	KZN	\N
catomanor	Cato Manor	2005	KZN	\N
ceza	Ceza	2005	KZN	\N
charlestown	Charlestown	2005	KZN	\N
chatsworth	Chatsworth	2005	KZN	\N
colenso	Colenso	2005	KZN	\N
cramond	Cramond	2005	KZN	\N
creighton	Creighton	2005	KZN	\N
dalton	Dalton	2005	KZN	\N
dannhauser	Dannhauser	2005	KZN	\N
donnybrook	Donnybrook	2005	KZN	\N
dududu	Dududu	2005	KZN	\N
dundee	Dundee	2005	KZN	\N
durbancentral	Durban Central	2005	KZN	\N
durbannorth	Durban North	2005	KZN	\N
ekombe	Ekombe	2005	KZN	\N
ekuvukeni	Ekuvukeni	2005	KZN	\N
elandslaagte	Elandslaagte	2005	KZN	\N
emanguzi	Emanguzi	2005	KZN	\N
ematimatolo	Ematimatolo	2005	KZN	\N
ematsheni	Ematsheni	2005	KZN	\N
empangeni	Empangeni	2005	KZN	\N
eshowe	Eshowe	2005	KZN	\N
esikhawini	Esikhawini	2005	KZN	\N
estcourt	Estcourt	2005	KZN	\N
evatt	Evatt	2005	KZN	\N
ezakheni	Ezakheni	2005	KZN	\N
ezibayeni	Ezibayeni	2005	KZN	\N
ezinqoleni	Ezinqoleni	2005	KZN	\N
folweni	Folweni	2005	KZN	\N
franklin	Franklin	2005	KZN	\N
gamalakhe	Gamalakhe	2005	KZN	\N
gingindlovu	Gingindlovu	2005	KZN	\N
glencoe	Glencoe	2005	KZN	\N
glendale	Glendale	2005	KZN	\N
gluckstadt	Gluckstadt	2005	KZN	\N
gowanlea	Gowan Lea	2005	KZN	\N
greenwoodpark	Greenwood Park	2005	KZN	\N
greytown	Greytown	2005	KZN	\N
groenvlei	Groenvlei	2005	KZN	\N
hammarsdale	Hammarsdale	2005	KZN	\N
harburg	Harburg	2005	KZN	\N
harding	Harding	2005	KZN	\N
hattingspruit	Hattingspruit	2005	KZN	\N
helpmekaar	Helpmekaar	2005	KZN	\N
hibberdene	Hibberdene	2005	KZN	\N
highflats	Highflats	2005	KZN	\N
hillcrest	Hillcrest	2005	KZN	\N
hilton	Hilton	2005	KZN	\N
himeville	Himeville	2005	KZN	\N
hlabisa	Hlabisa	2005	KZN	\N
hlobane	Hlobane	2005	KZN	\N
hluhluwe	Hluhluwe	2005	KZN	\N
howick	Howick	2005	KZN	\N
ibisi	Ibisi	2005	KZN	\N
impendle	Impendle	2005	KZN	\N
inanda	Inanda	2005	KZN	\N
inchanga	Inchanga	2005	KZN	\N
ingogo	Ingogo	2005	KZN	\N
ingwavuma	Ingwavuma	2005	KZN	\N
intsikeni	Intsikeni	2005	KZN	\N
isipingo	Isipingo	2005	KZN	\N
ixopo	Ixopo	2005	KZN	\N
jozini	Jozini	2005	KZN	\N
kingshakainternationalairport	King Shaka International Airport	2005	KZN	\N
kingsley	Kingsley	2005	KZN	\N
kokstad	Kokstad	2005	KZN	\N
kranskop	Kranskop	2005	KZN	\N
kwamashue	Kwa Mashu E	2005	KZN	\N
kwadabeka	Kwadabeka	2005	KZN	\N
kwadukuza	Kwadukuza	2005	KZN	\N
kwamakhutha	Kwamakhutha	2005	KZN	\N
kwambonambi	Kwambonambi	2005	KZN	\N
kwamsane	Kwamsane	2005	KZN	\N
kwandengezi	Kwandengezi	2005	KZN	\N
ladysmith	Ladysmith	2005	KZN	\N
lamontville	Lamontville	2005	KZN	\N
louwsburg	Louwsburg	2005	KZN	\N
madadeni	Madadeni	2005	KZN	\N
magudu	Magudu	2005	KZN	\N
mahlabatini	Mahlabatini	2005	KZN	\N
malvern	Malvern	2005	KZN	\N
mandeni	Mandeni	2005	KZN	\N
maphumulo	Maphumulo	2005	KZN	\N
margate	Margate	2005	KZN	\N
mariannhill	Mariannhill	2005	KZN	\N
maydonwharf	Maydon Wharf	2005	KZN	\N
mayville	Mayville	2005	KZN	\N
mbazwana	Mbazwana	2005	KZN	\N
mbongolwane	Mbongolwane	2005	KZN	\N
mehlomnyama	Mehlomnyama	2005	KZN	\N
melmoth	Melmoth	2005	KZN	\N
midillovo	Mid Illovo	2005	KZN	\N
mkuze	Mkuze	2005	KZN	\N
mondlo	Mondlo	2005	KZN	\N
montclair	Montclair	2005	KZN	\N
mooiriver	Mooi River	2005	KZN	\N
mountainrise	Mountain Rise	2005	KZN	\N
mpophomeni	Mpophomeni	2005	KZN	\N
mpumalangastation	Mpumalanga station	2005	KZN	\N
mpungamhlophe	Mpungamhlophe	2005	KZN	\N
msinga	Msinga	2005	KZN	\N
msinsini	Msinsini	2005	KZN	\N
mtubatuba	Mtubatuba	2005	KZN	\N
mtunzini	Mtunzini	2005	KZN	\N
muden	Muden	2005	KZN	\N
ndumo	Ndumo	2005	KZN	\N
ndwedwe	Ndwedwe	2005	KZN	\N
newhanover	New Hanover	2005	KZN	\N
newark	Newark	2005	KZN	\N
newcastle	Newcastle	2005	KZN	\N
newlandseast	Newlands East	2005	KZN	\N
ngome	Ngome	2005	KZN	\N
nhlanhleni	Nhlanhleni	2005	KZN	\N
nkandla	Nkandla	2005	KZN	\N
nondweni	Nondweni	2005	KZN	\N
nongoma	Nongoma	2005	KZN	\N
normandien	Normandien	2005	KZN	\N
nottinghamroad	Nottingham Road	2005	KZN	\N
nqutu	Nqutu	2005	KZN	\N
nsuze	Nsuze	2005	KZN	\N
ntabamhlope	Ntabamhlope	2005	KZN	\N
ntambanana	Ntambanana	2005	KZN	\N
ntuzuma	Ntu Zuma	2005	KZN	\N
nyoni	Nyoni	2005	KZN	\N
osizweni	Osizweni	2005	KZN	\N
paddock	Paddock	2005	KZN	\N
paulpietersburg	Paulpietersburg	2005	KZN	\N
phoenix	Phoenix	2005	KZN	\N
pietermaritzburg	Pietermaritzburg	2005	KZN	\N
pinetown	Pinetown	2005	KZN	\N
plessislaer	Plessislaer	2005	KZN	\N
point	Point	2005	KZN	\N
pongola	Pongola	2005	KZN	\N
portedward	Port Edward	2005	KZN	\N
portshepstone	Port Shepstone	2005	KZN	\N
prestbury	Prestbury	2005	KZN	\N
richardsbay	Richards Bay	2005	KZN	\N
richmondkzn	Richmond	2005	KZN	\N
rietvlei	Rietvlei	2005	KZN	\N
sawoti	Sawoti	2005	KZN	\N
scottburgh	Scottburgh	2005	KZN	\N
southport	Southport	2005	KZN	\N
stfaiths	St Faiths	2005	KZN	\N
sundumbili	Sundumbili	2005	KZN	\N
swartberg	Swartberg	2005	KZN	\N
sydenham	Sydenham	2005	KZN	\N
taylorshalt	Taylors Halt	2005	KZN	\N
thornville	Thornville	2005	KZN	\N
tongaat	Tongaat	2005	KZN	\N
townhill	Town Hill	2005	KZN	\N
ulundi	Ulundi	2005	KZN	\N
umbilo	Umbilo	2005	KZN	\N
umbumbulu	Umbumbulu	2005	KZN	\N
umhlali	Umhlali	2005	KZN	\N
umkomaas	Umkomaas	2005	KZN	\N
umlazi	Umlazi	2005	KZN	\N
umsunduzi	Umsunduzi	2005	KZN	\N
umzimkhulu	Umzimkhulu	2005	KZN	\N
umzinto	Umzinto	2005	KZN	\N
uppertugela	Upper Tugela	2005	KZN	\N
utrecht	Utrecht	2005	KZN	\N
vanreenen	Van Reenen	2005	KZN	\N
verulam	Verulam	2005	KZN	\N
vryheid	Vryheid	2005	KZN	\N
wartburg	Wartburg	2005	KZN	\N
wasbank	Wasbank	2005	KZN	\N
weenen	Weenen	2005	KZN	\N
wembezi	Wembezi	2005	KZN	\N
wentworth	Wentworth	2005	KZN	\N
westville	Westville	2005	KZN	\N
winterton	Winterton	2005	KZN	\N
alldays	Alldays	2005	LIM	\N
apel	Apel	2005	LIM	\N
belabela	Bela Bela	2005	LIM	\N
bolobedu	Bolobedu	2005	LIM	\N
botlokwa	Botlokwa	2005	LIM	\N
bulgerivier	Bulgerivier	2005	LIM	\N
burgersfort	Burgersfort	2005	LIM	\N
cumberland	Cumberland	2005	LIM	\N
dennilton	Dennilton	2005	LIM	\N
dorset	Dorset	2005	LIM	\N
dwaalboom	Dwaalboom	2005	LIM	\N
elandskraal	Elandskraal	2005	LIM	\N
gilead	Gilead	2005	LIM	\N
giyani	Giyani	2005	LIM	\N
gravelotte	Gravelotte	2005	LIM	\N
groblersdal	Groblersdal	2005	LIM	\N
haenertsburg	Haenertsburg	2005	LIM	\N
hlanganani	Hlanganani	2005	LIM	\N
hlogotlou	Hlogotlou	2005	LIM	\N
hoedspruit	Hoedspruit	2005	LIM	\N
hoopdal	Hoopdal	2005	LIM	\N
janefurse	Jane Furse	2005	LIM	\N
laersdrift	Laersdrift	2005	LIM	\N
leboeng	Leboeng	2005	LIM	\N
lebowakgomo	Lebowakgomo	2005	LIM	\N
lephalale	Lephalale	2005	LIM	\N
letsitele	Letsitele	2005	LIM	\N
levubu	Levubu	2005	LIM	\N
lulekani	Lulekani	2005	LIM	\N
maake	Maake	2005	LIM	\N
magatle	Magatle	2005	LIM	\N
mahwelereng	Mahwelereng	2005	LIM	\N
makhado	Makhado	2005	LIM	\N
makuya	Makuya	2005	LIM	\N
malamulele	Malamulele	2005	LIM	\N
maleboho	Maleboho	2005	LIM	\N
malipsdrift	Malipsdrift	2005	LIM	\N
mankweng	Mankweng	2005	LIM	\N
mara	Mara	2005	LIM	\N
marblehall	Marble Hall	2005	LIM	\N
masemola	Masemola	2005	LIM	\N
mashashane	Mashashane	2005	LIM	\N
masisi	Masisi	2005	LIM	\N
matlala	Matlala	2005	LIM	\N
mecklenburg	Mecklenburg	2005	LIM	\N
modimolle	Modimolle	2005	LIM	\N
modjadjiskloof	Modjadjiskloof	2005	LIM	\N
mogwadi	Mogwadi	2005	LIM	\N
mokopane	Mokopane	2005	LIM	\N
morebeng	Morebeng	2005	LIM	\N
motetema	Motetema	2005	LIM	\N
mphephu	Mphephu	2005	LIM	\N
musina	Musina	2005	LIM	\N
mutale	Mutale	2005	LIM	\N
naboomspruit	Naboomspruit	2005	LIM	\N
namakgale	Namakgale	2005	LIM	\N
nebo	Nebo	2005	LIM	\N
northam	Northam	2005	LIM	\N
ohrigstad	Ohrigstad	2005	LIM	\N
phalaborwa	Phalaborwa	2005	LIM	\N
pienaarsrivier	Pienaarsrivier	2005	LIM	\N
polokwane	Polokwane	2005	LIM	\N
rankin	Rankin	2005	LIM	\N
ritavi	Ritavi	2005	LIM	\N
roedtan	Roedtan	2005	LIM	\N
rooiberg	Rooiberg	2005	LIM	\N
roossenekal	Roossenekal	2005	LIM	\N
rustdewinter	Rust De Winter	2005	LIM	\N
saamboubrug	Saamboubrug	2005	LIM	\N
saselamani	Saselamani	2005	LIM	\N
sebayeng	Sebayeng	2005	LIM	\N
sekgosese	Sekgosese	2005	LIM	\N
sekhukhune	Sekhukhune	2005	LIM	\N
senwabarwana	Senwabarwana	2005	LIM	\N
seshego	Seshego	2005	LIM	\N
siloam	Siloam	2005	LIM	\N
thabazimbi	Thabazimbi	2005	LIM	\N
thohoyandou	Thohoyandou	2005	LIM	\N
tinmyne	Tinmyne	2005	LIM	\N
tolwe	Tolwe	2005	LIM	\N
tomburke	Tom Burke	2005	LIM	\N
tshamutumbu	Tshamutumbu	2005	LIM	\N
tshaulu	Tshaulu	2005	LIM	\N
tshilwavhusiku	Tshilwavhusiku	2005	LIM	\N
tshitale	Tshitale	2005	LIM	\N
tubatse	Tubatse	2005	LIM	\N
tuinplaas	Tuinplaas	2005	LIM	\N
tzaneen	Tzaneen	2005	LIM	\N
vaalwater	Vaalwater	2005	LIM	\N
villanora	Villa Nora	2005	LIM	\N
vuwani	Vuwani	2005	LIM	\N
waterpoort	Waterpoort	2005	LIM	\N
waterval	Waterval	2005	LIM	\N
westenburg	Westenburg	2005	LIM	\N
witpoort	Witpoort	2005	LIM	\N
zaaiplaas	Zaaiplaas	2005	LIM	\N
zebediela	Zebediela	2005	LIM	\N
acornhoek	Acornhoek	2005	MP	\N
amersfoort	Amersfoort	2005	MP	\N
amsterdam	Amsterdam	2005	MP	\N
badplaas	Badplaas	2005	MP	\N
balfourmp	Balfour	2005	MP	\N
barberton	Barberton	2005	MP	\N
belfast	Belfast	2005	MP	\N
bethal	Bethal	2005	MP	\N
blinkpan	Blinkpan	2005	MP	\N
breyten	Breyten	2005	MP	\N
bushbuckridge	Bushbuckridge	2005	MP	\N
calcutta	Calcutta	2005	MP	\N
carolina	Carolina	2005	MP	\N
charlcilliers	Charl Cilliers	2005	MP	\N
chrissiesmeer	Chrissiesmeer	2005	MP	\N
davel	Davel	2005	MP	\N
delmas	Delmas	2005	MP	\N
dientjie	Dientjie	2005	MP	\N
dirkiesdorp	Dirkiesdorp	2005	MP	\N
dullstroom	Dullstroom	2005	MP	\N
ekulindeni	Ekulindeni	2005	MP	\N
elukwatini	Elukwatini	2005	MP	\N
embalenhle	Embalenhle	2005	MP	\N
emzinoni	Emzinoni	2005	MP	\N
ermelo	Ermelo	2005	MP	\N
evander	Evander	2005	MP	\N
fernie	Fernie	2005	MP	\N
graskop	Graskop	2005	MP	\N
greylingstad	Greylingstad	2005	MP	\N
grootvlei	Grootvlei	2005	MP	\N
hartebeeskop	Hartebeeskop	2005	MP	\N
hazyview	Hazyview	2005	MP	\N
hendrina	Hendrina	2005	MP	\N
kaapmuiden	Kaapmuiden	2005	MP	\N
kabokweni	Kabokweni	2005	MP	\N
kanyamazane	Kanyamazane	2005	MP	\N
kinross	Kinross	2005	MP	\N
komatipoort	Komatipoort	2005	MP	\N
kriel	Kriel	2005	MP	\N
kwaggafontein	Kwaggafontein	2005	MP	\N
kwamhlanga	Kwamhlanga	2005	MP	\N
leslie	Leslie	2005	MP	\N
lothair	Lothair	2005	MP	\N
low	Low	2005	MP	\N
lydenburg	Lydenburg	2005	MP	\N
maartenshoop	Maartenshoop	2005	MP	\N
machadodorp	Machadodorp	2005	MP	\N
mahamba	Mahamba	2005	MP	\N
malelane	Malelane	2005	MP	\N
masoyi	Masoyi	2005	MP	\N
matsulu	Matsulu	2005	MP	\N
mayflower	Mayflower	2005	MP	\N
mbuzini	Mbuzini	2005	MP	\N
mhala	Mhala	2005	MP	\N
mhluzi	Mhluzi	2005	MP	\N
middelburgmp	Middelburg	2005	MP	\N
mmametlake	Mmametlake	2005	MP	\N
morgenzon	Morgenzon	2005	MP	\N
nelspruit	Nelspruit	2005	MP	\N
ngodwana	Ngodwana	2005	MP	\N
ogies	Ogies	2005	MP	\N
perdekop	Perdekop	2005	MP	\N
pienaar	Pienaar	2005	MP	\N
pietretief	Piet Retief	2005	MP	\N
pilgrim	Pilgrim	2005	MP	\N
sabie	Sabie	2005	MP	\N
sakhile	Sakhile	2005	MP	\N
schoemansdal	Schoemansdal	2005	MP	\N
secunda	Secunda	2005	MP	\N
sheepmoor	Sheepmoor	2005	MP	\N
siyabuswa	Siyabuswa	2005	MP	\N
skukuza	Skukuza	2005	MP	\N
standerton	Standerton	2005	MP	\N
sundra	Sundra	2005	MP	\N
tonga	Tonga	2005	MP	\N
trichardt	Trichardt	2005	MP	\N
tweefontein	Tweefontein	2005	MP	\N
vaalbank	Vaalbank	2005	MP	\N
val	Val	2005	MP	\N
verena	Verena	2005	MP	\N
volksrust	Volksrust	2005	MP	\N
vosman	Vosman	2005	MP	\N
wakkerstroom	Wakkerstroom	2005	MP	\N
watervalboven	Waterval Boven	2005	MP	\N
witbank	Witbank	2005	MP	\N
witrivier	Witrivier	2005	MP	\N
amalia	Amalia	2005	NW	\N
assen	Assen	2005	NW	\N
atamelang	Atamelang	2005	NW	\N
bedwang	Bedwang	2005	NW	\N
bethanie	Bethanie	2005	NW	\N
biesiesvlei	Biesiesvlei	2005	NW	\N
bloemhof	Bloemhof	2005	NW	\N
boitekong	Boitekong	2005	NW	\N
boons	Boons	2005	NW	\N
boshoek	Boshoek	2005	NW	\N
bray	Bray	2005	NW	\N
brits	Brits	2005	NW	\N
buffelshoek	Buffelshoek	2005	NW	\N
christiana	Christiana	2005	NW	\N
coligny	Coligny	2005	NW	\N
cyferskuil	Cyferskuil	2005	NW	\N
delareyville	Delareyville	2005	NW	\N
ganyesa	Ganyesa	2005	NW	\N
grootmarico	Groot Marico	2005	NW	\N
hartbeesfontein	Hartbeesfontein	2005	NW	\N
hartbeespoortdam	Hartbeespoortdam	2005	NW	\N
hebron	Hebron	2005	NW	\N
huhudi	Huhudi	2005	NW	\N
ikageng	Ikageng	2005	NW	\N
ipelegeng	Ipelegeng	2005	NW	\N
itsoseng	Itsoseng	2005	NW	\N
jericho	Jericho	2005	NW	\N
jouberton	Jouberton	2005	NW	\N
kanana	Kanana	2005	NW	\N
kgomotso	Kgomotso	2005	NW	\N
khuma	Khuma	2005	NW	\N
klerksdorp	Klerksdorp	2005	NW	\N
klerkskraal	Klerkskraal	2005	NW	\N
klipgat	Klipgat	2005	NW	\N
koster	Koster	2005	NW	\N
leeudoringstad	Leeudoringstad	2005	NW	\N
lehurutshe	Lehurutshe	2005	NW	\N
lethabong	Lethabong	2005	NW	\N
lethlabile	Lethlabile	2005	NW	\N
lichtenburg	Lichtenburg	2005	NW	\N
lomanyaneng	Lomanyaneng	2005	NW	\N
madibogo	Madibogo	2005	NW	\N
madikwe	Madikwe	2005	NW	\N
mahikeng	Mahikeng	2005	NW	\N
makapanstad	Makapanstad	2005	NW	\N
makgobistat	Makgobistat	2005	NW	\N
makwassie	Makwassie	2005	NW	\N
marikana	Marikana	2005	NW	\N
mmabatho	Mmabatho	2005	NW	\N
mmakau	Mmakau	2005	NW	\N
mogwase	Mogwase	2005	NW	\N
mokopong	Mokopong	2005	NW	\N
mooifontein	Mooifontein	2005	NW	\N
mooinooi	Mooinooi	2005	NW	\N
morokweng	Morokweng	2005	NW	\N
mothutlung	Mothutlung	2005	NW	\N
motswedi	Motswedi	2005	NW	\N
nietverdiend	Nietverdiend	2005	NW	\N
orkney	Orkney	2005	NW	\N
ottosdal	Ottosdal	2005	NW	\N
ottoshoop	Ottoshoop	2005	NW	\N
phokeng	Phokeng	2005	NW	\N
pietplessis	Piet Plessis	2005	NW	\N
potchefstroom	Potchefstroom	2005	NW	\N
pudimoe	Pudimoe	2005	NW	\N
reivilo	Reivilo	2005	NW	\N
rustenburg	Rustenburg	2005	NW	\N
sannieshof	Sannieshof	2005	NW	\N
schweizer	Schweizer	2005	NW	\N
setlagole	Setlagole	2005	NW	\N
stella	Stella	2005	NW	\N
stilfontein	Stilfontein	2005	NW	\N
suncity	Sun City	2005	NW	\N
swartruggens	Swartruggens	2005	NW	\N
taung	Taung	2005	NW	\N
tlhabane	Tlhabane	2005	NW	\N
tshidilamolomo	Tshidilamolomo	2005	NW	\N
ventersdorp	Ventersdorp	2005	NW	\N
vorstershoop	Vorstershoop	2005	NW	\N
vryburg	Vryburg	2005	NW	\N
wolmaransstad	Wolmaransstad	2005	NW	\N
zeerust	Zeerust	2005	NW	\N
aggeneys	Aggeneys	2005	NC	\N
alexanderbay	Alexander Bay	2005	NC	\N
augrabies	Augrabies	2005	NC	\N
barklywest	Barkly West	2005	NC	\N
bathlaros	Bathlaros	2005	NC	\N
belmont	Belmont	2005	NC	\N
boetsap	Boetsap	2005	NC	\N
bothithong	Bothithong	2005	NC	\N
brandvlei	Brandvlei	2005	NC	\N
britstown	Britstown	2005	NC	\N
calvinia	Calvinia	2005	NC	\N
campbell	Campbell	2005	NC	\N
carnarvon	Carnarvon	2005	NC	\N
colesberg	Colesberg	2005	NC	\N
danielskuil	Danielskuil	2005	NC	\N
deaar	De Aar	2005	NC	\N
deben	Deben	2005	NC	\N
delportshoop	Delportshoop	2005	NC	\N
dingleton	Dingleton	2005	NC	\N
douglas	Douglas	2005	NC	\N
fraserburg	Fraserburg	2005	NC	\N
galeshewe	Galeshewe	2005	NC	\N
garies	Garies	2005	NC	\N
griekwastad	Griekwastad	2005	NC	\N
groblershoop	Groblershoop	2005	NC	\N
hanover	Hanover	2005	NC	\N
hartswater	Hartswater	2005	NC	\N
heuningvlei	Heuningvlei	2005	NC	\N
hondeklipbay	Hondeklip Bay	2005	NC	\N
hopetown	Hopetown	2005	NC	\N
jankempdorp	Jan Kempdorp	2005	NC	\N
kagisho	Kagisho	2005	NC	\N
kakamas	Kakamas	2005	NC	\N
kamieskroon	Kamieskroon	2005	NC	\N
kanoneiland	Kanoneiland	2005	NC	\N
kathu	Kathu	2005	NC	\N
keimoes	Keimoes	2005	NC	\N
kenhardt	Kenhardt	2005	NC	\N
kimberley	Kimberley	2005	NC	\N
kleinsee	Kleinsee	2005	NC	\N
komaggas	Komaggas	2005	NC	\N
kuruman	Kuruman	2005	NC	\N
kuyasa	Kuyasa	2005	NC	\N
limeacres	Lime Acres	2005	NC	\N
loeriesfontein	Loeriesfontein	2005	NC	\N
loxton	Loxton	2005	NC	\N
marydale	Marydale	2005	NC	\N
middelpos	Middelpos	2005	NC	\N
modderriver	Modder River	2005	NC	\N
mothibistad	Mothibistad	2005	NC	\N
nababeep	Nababeep	2005	NC	\N
niekerkshoop	Niekerkshoop	2005	NC	\N
nieuwoudtville	Nieuwoudtville	2005	NC	\N
noenieput	Noenieput	2005	NC	\N
norvalspont	Norvalspont	2005	NC	\N
noupoort	Noupoort	2005	NC	\N
olifantshoek	Olifantshoek	2005	NC	\N
onseepkans	Onseepkans	2005	NC	\N
pabalello	Pabalello	2005	NC	\N
pampierstat	Pampierstat	2005	NC	\N
pella	Pella	2005	NC	\N
petrusville	Petrusville	2005	NC	\N
philipstown	Philipstown	2005	NC	\N
plooysburg	Plooysburg	2005	NC	\N
pofadder	Pofadder	2005	NC	\N
portnolloth	Port Nolloth	2005	NC	\N
postmasburg	Postmasburg	2005	NC	\N
prieska	Prieska	2005	NC	\N
richmondnc	Richmond	2005	NC	\N
rietfontein	Rietfontein	2005	NC	\N
roodepan	Roodepan	2005	NC	\N
rosedale	Rosedale	2005	NC	\N
severn	Severn	2005	NC	\N
springbok	Springbok	2005	NC	\N
steinkopf	Steinkopf	2005	NC	\N
strydenburg	Strydenburg	2005	NC	\N
sunrise	Sunrise	2005	NC	\N
sutherland	Sutherland	2005	NC	\N
tsineng	Tsineng	2005	NC	\N
upington	Upington	2005	NC	\N
vanzylsrus	Van Zylsrus	2005	NC	\N
vanderkloof	Vanderkloof	2005	NC	\N
vanwyksvlei	Vanwyksvlei	2005	NC	\N
victoriawest	Victoria West	2005	NC	\N
vioolsdrif	Vioolsdrif	2005	NC	\N
vosburg	Vosburg	2005	NC	\N
warrenton	Warrenton	2005	NC	\N
williston	Williston	2005	NC	\N
windsorton	Windsorton	2005	NC	\N
witdraai	Witdraai	2005	NC	\N
wrenchville	Wrenchville	2005	NC	\N
albertinia	Albertinia	2005	WC	\N
ashton	Ashton	2005	WC	\N
athlone	Athlone	2005	WC	\N
atlantis	Atlantis	2005	WC	\N
barrydale	Barrydale	2005	WC	\N
beaufortwest	Beaufort West	2005	WC	\N
belhar	Belhar	2005	WC	\N
bellville	Bellville	2005	WC	\N
bellvillesouth	Bellville South	2005	WC	\N
bishoplavis	Bishop Lavis	2005	WC	\N
bonnievale	Bonnievale	2005	WC	\N
bothasig	Bothasig	2005	WC	\N
brackenfell	Brackenfell	2005	WC	\N
bredasdorp	Bredasdorp	2005	WC	\N
caledon	Caledon	2005	WC	\N
calitzdorp	Calitzdorp	2005	WC	\N
campsbay	Camps Bay	2005	WC	\N
capetowncentral	Cape Town Central	2005	WC	\N
ceres	Ceres	2005	WC	\N
citrusdal	Citrusdal	2005	WC	\N
clanwilliam	Clanwilliam	2005	WC	\N
claremont	Claremont	2005	WC	\N
cloetesville	Cloetesville	2005	WC	\N
conville	Conville	2005	WC	\N
dagamaskop	Da Gamaskop	2005	WC	\N
darling	Darling	2005	WC	\N
dedoorns	De Doorns	2005	WC	\N
derust	De Rust	2005	WC	\N
delft	Delft	2005	WC	\N
dieprivier	Dieprivier	2005	WC	\N
doringbay	Doring Bay	2005	WC	\N
durbanville	Durbanville	2005	WC	\N
dysselsdorp	Dysselsdorp	2005	WC	\N
eendekuil	Eendekuil	2005	WC	\N
elandsbay	Elands Bay	2005	WC	\N
elsiesriver	Elsies River	2005	WC	\N
fishhoek	Fish Hoek	2005	WC	\N
franschhoek	Franschhoek	2005	WC	\N
gansbay	Gans Bay	2005	WC	\N
genadendal	Genadendal	2005	WC	\N
george	George	2005	WC	\N
goodwood	Goodwood	2005	WC	\N
gordonsbay	Gordons Bay	2005	WC	\N
graafwater	Graafwater	2005	WC	\N
grabouw	Grabouw	2005	WC	\N
grassypark	Grassy Park	2005	WC	\N
grootbrakrivier	Groot Brakrivier	2005	WC	\N
groot	Groot	2005	WC	\N
gugulethu	Gugulethu	2005	WC	\N
harare	Harare	2005	WC	\N
heidelbergwc	Heidelberg	2005	WC	\N
hermanus	Hermanus	2005	WC	\N
hopefield	Hopefield	2005	WC	\N
houtbay	Hout Bay	2005	WC	\N
kensington	Kensington	2005	WC	\N
khayelitsha	Khayelitsha	2005	WC	\N
kirstenhof	Kirstenhof	2005	WC	\N
klapmuts	Klapmuts	2005	WC	\N
klawer	Klawer	2005	WC	\N
kleinmond	Kleinmond	2005	WC	\N
kleinvlei	Kleinvlei	2005	WC	\N
knysna	Knysna	2005	WC	\N
kraaifontein	Kraaifontein	2005	WC	\N
kuilsrivier	Kuilsrivier	2005	WC	\N
kwanokuthula	Kwanokuthula	2005	WC	\N
kwanonqaba	Kwanonqaba	2005	WC	\N
laaiplek	Laaiplek	2005	WC	\N
ladismith	Ladismith	2005	WC	\N
laingsburg	Laingsburg	2005	WC	\N
lambertsbaai	Lambertsbaai	2005	WC	\N
langa	Langa	2005	WC	\N
langebaan	Langebaan	2005	WC	\N
lansdowne	Lansdowne	2005	WC	\N
leeu	Leeu	2005	WC	\N
lentegeur	Lentegeur	2005	WC	\N
lingelethu	Lingelethu	2005	WC	\N
lutzville	Lutzville	2005	WC	\N
lwandle	Lwandle	2005	WC	\N
macassar	Macassar	2005	WC	\N
maitland	Maitland	2005	WC	\N
malmesbury	Malmesbury	2005	WC	\N
manenberg	Manenberg	2005	WC	\N
mbekweni	Mbekweni	2005	WC	\N
mcgregor	McGregor	2005	WC	\N
melkbosstrand	Melkbosstrand	2005	WC	\N
mfuleni	Mfuleni	2005	WC	\N
milnerton	Milnerton	2005	WC	\N
mitchellsplain	Mitchells Plain	2005	WC	\N
montagu	Montagu	2005	WC	\N
moorreesburg	Moorreesburg	2005	WC	\N
mosselbay	Mossel Bay	2005	WC	\N
mowbray	Mowbray	2005	WC	\N
muizenberg	Muizenberg	2005	WC	\N
murraysburg	Murraysburg	2005	WC	\N
napier	Napier	2005	WC	\N
nuwerus	Nuwerus	2005	WC	\N
nyanga	Nyanga	2005	WC	\N
oceanview	Ocean View	2005	WC	\N
oudtshoorn	Oudtshoorn	2005	WC	\N
paarl	Paarl	2005	WC	\N
paarleast	Paarl East	2005	WC	\N
pacaltsdorp	Pacaltsdorp	2005	WC	\N
parow	Parow	2005	WC	\N
philadelphia	Philadelphia	2005	WC	\N
philippi	Philippi	2005	WC	\N
philippieast	Philippi East	2005	WC	\N
piketberg	Piketberg	2005	WC	\N
pinelands	Pinelands	2005	WC	\N
plettenbergbay	Plettenberg Bay	2005	WC	\N
porterville	Porterville	2005	WC	\N
princealbert	Prince Albert	2005	WC	\N
princealfredhamlet	Prince Alfred Hamlet	2005	WC	\N
ravensmead	Ravensmead	2005	WC	\N
rawsonville	Rawsonville	2005	WC	\N
redelinghuys	Redelinghuys	2005	WC	\N
riebeeckwest	Riebeeck West	2005	WC	\N
riversdale	Riversdale	2005	WC	\N
riviersonderend	Riviersonderend	2005	WC	\N
robertson	Robertson	2005	WC	\N
rondebosch	Rondebosch	2005	WC	\N
saldanha	Saldanha	2005	WC	\N
saron	Saron	2005	WC	\N
seapoint	Sea Point	2005	WC	\N
simon	Simon	2005	WC	\N
somersetwest	Somerset West	2005	WC	\N
sthelenabay	St Helena Bay	2005	WC	\N
stanford	Stanford	2005	WC	\N
steenberg	Steenberg	2005	WC	\N
stellenbosch	Stellenbosch	2005	WC	\N
stillbay	Still Bay	2005	WC	\N
strand	Strand	2005	WC	\N
strandfontein	Strandfontein	2005	WC	\N
struisbaai	Struisbaai	2005	WC	\N
suurbraak	Suurbraak	2005	WC	\N
swellendam	Swellendam	2005	WC	\N
tablebayharbour	Table Bay Harbour	2005	WC	\N
tableview	Table View	2005	WC	\N
thembalethu	Thembalethu	2005	WC	\N
touwsriver	Touws River	2005	WC	\N
tulbagh	Tulbagh	2005	WC	\N
uniondale	Uniondale	2005	WC	\N
vanrhynsdorp	Vanrhynsdorp	2005	WC	\N
villiersdorp	Villiersdorp	2005	WC	\N
vredenburg	Vredenburg	2005	WC	\N
vredendal	Vredendal	2005	WC	\N
wellington	Wellington	2005	WC	\N
wolseley	Wolseley	2005	WC	\N
woodstock	Woodstock	2005	WC	\N
worcester	Worcester	2005	WC	\N
wynberg	Wynberg	2005	WC	\N
aberdeen	Aberdeen	2005	EC	\N
addo	Addo	2005	EC	\N
adelaide	Adelaide	2005	EC	\N
afsondering	Afsondering	2005	EC	\N
alexandria	Alexandria	2005	EC	\N
algoapark	Algoapark	2005	EC	\N
alice	Alice	2005	EC	\N
alicedale	Alicedale	2005	EC	\N
aliwalnorth	Aliwal North	2005	EC	\N
avondale	Avondale	2005	EC	\N
balfourec	Balfour	2005	EC	\N
barklyeast	Barkly East	2005	EC	\N
bathurst	Bathurst	2005	EC	\N
bavianskloof	Bavianskloof	2005	EC	\N
beaconbay	Beacon Bay	2005	EC	\N
bedford	Bedford	2005	EC	\N
bell	Bell	2005	EC	\N
berlin	Berlin	2005	EC	\N
bethelsdorp	Bethelsdorp	2005	EC	\N
bisho	Bisho	2005	EC	\N
bitye	Bitye	2005	EC	\N
bizana	Bizana	2005	EC	\N
bluewater	Bluewater	2005	EC	\N
bolo	Bolo	2005	EC	\N
bolotwa	Bolotwa	2005	EC	\N
bridgecamp	Bridge Camp	2005	EC	\N
buffaloflats	Buffalo Flats	2005	EC	\N
burgersdorp	Burgersdorp	2005	EC	\N
butterworth	Butterworth	2005	EC	\N
cala	Cala	2005	EC	\N
cambridge	Cambridge	2005	EC	\N
cathcart	Cathcart	2005	EC	\N
cedarville	Cedarville	2005	EC	\N
centane	Centane	2005	EC	\N
chalumna	Chalumna	2005	EC	\N
chungwa	Chungwa	2005	EC	\N
coffeebay	Coffee Bay	2005	EC	\N
cofimvaba	Cofimvaba	2005	EC	\N
committees	Committees	2005	EC	\N
cookhouse	Cookhouse	2005	EC	\N
cradock	Cradock	2005	EC	\N
dalasile	Dalasile	2005	EC	\N
despatch	Despatch	2005	EC	\N
dimbaza	Dimbaza	2005	EC	\N
dordrecht	Dordrecht	2005	EC	\N
doringkloof	Doringkloof	2005	EC	\N
duncanvillage	Duncan Village	2005	EC	\N
eastlondon	East London	2005	EC	\N
elandsheight	Elands Height	2005	EC	\N
elliot	Elliot	2005	EC	\N
elliotdale	Elliotdale	2005	EC	\N
engcobo	Engcobo	2005	EC	\N
ezibeleni	Ezibeleni	2005	EC	\N
flagstaff	Flagstaff	2005	EC	\N
floukraal	Floukraal	2005	EC	\N
fortbeaufort	Fort Beaufort	2005	EC	\N
fortbrown	Fort Brown	2005	EC	\N
gelvandale	Gelvandale	2005	EC	\N
glengrey	Glen Grey	2005	EC	\N
gonubie	Gonubie	2005	EC	\N
graaff	Graaff	2005	EC	\N
grahamstown	Grahamstown	2005	EC	\N
hamburg	Hamburg	2005	EC	\N
hankey	Hankey	2005	EC	\N
healdtown	Healdtown	2005	EC	\N
henderson	Henderson	2005	EC	\N
hlababomvu	Hlababomvu	2005	EC	\N
hofmeyr	Hofmeyr	2005	EC	\N
hogsback	Hogsback	2005	EC	\N
humansdorp	Humansdorp	2005	EC	\N
humewood	Humewood	2005	EC	\N
ida	Ida	2005	EC	\N
idutywa	Idutywa	2005	EC	\N
ikamvelihle	Ikamvelihle	2005	EC	\N
ilinge	Ilinge	2005	EC	\N
indwe	Indwe	2005	EC	\N
inyibiba	Inyibiba	2005	EC	\N
jamestown	Jamestown	2005	EC	\N
jansenville	Jansenville	2005	EC	\N
jeffreysbay	Jeffreys Bay	2005	EC	\N
joubertina	Joubertina	2005	EC	\N
joza	Joza	2005	EC	\N
kabegapark	Kabega Park	2005	EC	\N
kamesh	Kamesh	2005	EC	\N
kareedouw	Kareedouw	2005	EC	\N
kat	Kat	2005	EC	\N
keibridge	Kei Bridge	2005	EC	\N
keimouth	Kei Mouth	2005	EC	\N
keiroad	Kei Road	2005	EC	\N
keiskammahoek	Keiskammahoek	2005	EC	\N
kenton	Kenton	2005	EC	\N
kidd	Kidd	2005	EC	\N
kingwilliam	King William	2005	EC	\N
kinkelbos	Kinkelbos	2005	EC	\N
kirkwood	Kirkwood	2005	EC	\N
kleinbulhoek	Kleinbulhoek	2005	EC	\N
klipplaat	Klipplaat	2005	EC	\N
kolomane	Kolomane	2005	EC	\N
komga	Komga	2005	EC	\N
kubusiedrift	Kubusiedrift	2005	EC	\N
kwaaiman	Kwaaiman	2005	EC	\N
kwadwesi	Kwadwesi	2005	EC	\N
kwandengane	Kwandengane	2005	EC	\N
kwanobuhle	Kwanobuhle	2005	EC	\N
kwazakele	Kwazakele	2005	EC	\N
ladyfrere	Lady Frere	2005	EC	\N
ladygrey	Lady Grey	2005	EC	\N
libode	Libode	2005	EC	\N
lukholweni	Lukholweni	2005	EC	\N
lusikisiki	Lusikisiki	2005	EC	\N
macleantown	Macleantown	2005	EC	\N
maclear	Maclear	2005	EC	\N
madeira	Madeira	2005	EC	\N
maletswai	Maletswai	2005	EC	\N
maluti	Maluti	2005	EC	\N
matatiele	Matatiele	2005	EC	\N
mbizeni	Mbizeni	2005	EC	\N
mdantsane	Mdantsane	2005	EC	\N
middelburgec	Middelburg	2005	EC	\N
middledrift	Middledrift	2005	EC	\N
mlungisi	Mlungisi	2005	EC	\N
molteno	Molteno	2005	EC	\N
mooiplaas	Mooiplaas	2005	EC	\N
motherwell	Motherwell	2005	EC	\N
mountayliff	Mount Ayliff	2005	EC	\N
mountfletcher	Mount Fletcher	2005	EC	\N
mountfrere	Mount Frere	2005	EC	\N
mountroad	Mount Road	2005	EC	\N
moyeni	Moyeni	2005	EC	\N
mpisi	Mpisi	2005	EC	\N
mqanduli	Mqanduli	2005	EC	\N
msobomvu	Msobomvu	2005	EC	\N
mthatha	Mthatha	2005	EC	\N
mtontsasa	Mtontsasa	2005	EC	\N
mzamba	Mzamba	2005	EC	\N
ndevana	Ndevana	2005	EC	\N
nemato	Nemato	2005	EC	\N
newbrighton	New Brighton	2005	EC	\N
ngangelizwe	Ngangelizwe	2005	EC	\N
ngqeleni	Ngqeleni	2005	EC	\N
nqamakwe	Nqamakwe	2005	EC	\N
ntabankulu	Ntabankulu	2005	EC	\N
ntabethemba	Ntabethemba	2005	EC	\N
palmietfontein	Palmietfontein	2005	EC	\N
patensie	Patensie	2005	EC	\N
paterson	Paterson	2005	EC	\N
pearston	Pearston	2005	EC	\N
peddie	Peddie	2005	EC	\N
phumalanga	PHUMALANGA	2005	EC	\N
portalfred	Port Alfred	2005	EC	\N
portstjohns	Port St Johns	2005	EC	\N
punzana	Punzana	2005	EC	\N
queenstown	Queenstown	2005	EC	\N
qumbu	Qumbu	2005	EC	\N
rhodes	Rhodes	2005	EC	\N
riebeeckeast	Riebeeck East	2005	EC	\N
rietbron	Rietbron	2005	EC	\N
rossouw	Rossouw	2005	EC	\N
seafield	Seafield	2005	EC	\N
sevenfountains	Seven Fountains	2005	EC	\N
seymour	Seymour	2005	EC	\N
somerseteast	Somerset East	2005	EC	\N
stfrancisbay	St Francis Bay	2005	EC	\N
sterkspruit	Sterkspruit	2005	EC	\N
sterkstroom	Sterkstroom	2005	EC	\N
stevevukiletshwete	Steve Vukile Tshwete	2005	EC	\N
steynsburg	Steynsburg	2005	EC	\N
steytlerville	Steytlerville	2005	EC	\N
stormsriver	Storms River	2005	EC	\N
stutterheim	Stutterheim	2005	EC	\N
sulenkama	Sulenkama	2005	EC	\N
swartkops	Swartkops	2005	EC	\N
tabase	Tabase	2005	EC	\N
tamara	Tamara	2005	EC	\N
tarkastad	Tarkastad	2005	EC	\N
thomasriver	Thomas River	2005	EC	\N
thornhill	Thornhill	2005	EC	\N
thornhillciskei	Thornhill Ciskei	2005	EC	\N
tinafalls	Tina Falls	2005	EC	\N
tsolo	Tsolo	2005	EC	\N
tsomo	Tsomo	2005	EC	\N
tyefu	Tyefu	2005	EC	\N
tylden	Tylden	2005	EC	\N
ugie	Ugie	2005	EC	\N
uitenhage	Uitenhage	2005	EC	\N
venterstad	Venterstad	2005	EC	\N
vulindlela	Vulindlela	2005	EC	\N
walmer	Walmer	2005	EC	\N
whittlesea	Whittlesea	2005	EC	\N
willowmore	Willowmore	2005	EC	\N
willowvale	Willowvale	2005	EC	\N
wolwefontein	Wolwefontein	2005	EC	\N
zamuxolo	Zamuxolo	2005	EC	\N
zele	Zele	2005	EC	\N
zwelitsha	Zwelitsha	2005	EC	\N
allanridge	Allanridge	2005	FS	\N
arlington	Arlington	2005	FS	\N
bainsvlei	Bainsvlei	2005	FS	\N
batho	Batho	2005	FS	\N
bayswater	Bayswater	2005	FS	\N
bethlehem	Bethlehem	2005	FS	\N
bethulie	Bethulie	2005	FS	\N
bloemspruit	Bloemspruit	2005	FS	\N
boithuso	Boithuso	2005	FS	\N
boshof	Boshof	2005	FS	\N
bothaville	Bothaville	2005	FS	\N
botshabelo	Botshabelo	2005	FS	\N
brandfort	Brandfort	2005	FS	\N
bronville	Bronville	2005	FS	\N
bultfontein	Bultfontein	2005	FS	\N
clarens	Clarens	2005	FS	\N
clocolan	Clocolan	2005	FS	\N
cornelia	Cornelia	2005	FS	\N
dealesville	Dealesville	2005	FS	\N
deneysville	Deneysville	2005	FS	\N
dewetsdorp	Dewetsdorp	2005	FS	\N
edenburg	Edenburg	2005	FS	\N
edenville	Edenville	2005	FS	\N
excelsior	Excelsior	2005	FS	\N
fauresmith	Fauresmith	2005	FS	\N
ficksburg	Ficksburg	2005	FS	\N
fouriesburg	Fouriesburg	2005	FS	\N
gariepdam	Gariepdam	2005	FS	\N
glen	Glen	2005	FS	\N
goedemoed	Goedemoed	2005	FS	\N
harrismith	Harrismith	2005	FS	\N
heidedal	Heidedal	2005	FS	\N
heilbron	Heilbron	2005	FS	\N
hennenman	Hennenman	2005	FS	\N
hertzogville	Hertzogville	2005	FS	\N
heuningspruit	Heuningspruit	2005	FS	\N
hobhouse	Hobhouse	2005	FS	\N
hoopstad	Hoopstad	2005	FS	\N
jacobsdal	Jacobsdal	2005	FS	\N
jagersfontein	Jagersfontein	2005	FS	\N
kagisanong	Kagisanong	2005	FS	\N
kestell	Kestell	2005	FS	\N
koffiefontein	Koffiefontein	2005	FS	\N
kommissiepoort	Kommissiepoort	2005	FS	\N
kopanong	Kopanong	2005	FS	\N
koppies	Koppies	2005	FS	\N
kroonstad	Kroonstad	2005	FS	\N
ladybrand	Ladybrand	2005	FS	\N
lindley	Lindley	2005	FS	\N
luckhoff	Luckhoff	2005	FS	\N
mafube	Mafube	2005	FS	\N
makwane	Makwane	2005	FS	\N
mangaung	Mangaung	2005	FS	\N
maokeng	Maokeng	2005	FS	\N
marquard	Marquard	2005	FS	\N
meloding	Meloding	2005	FS	\N
memel	Memel	2005	FS	\N
namahadi	Namahadi	2005	FS	\N
navalsig	Navalsig	2005	FS	\N
odendaalsrus	Odendaalsrus	2005	FS	\N
oranjeville	Oranjeville	2005	FS	\N
parkroad	Park Road	2005	FS	\N
parys	Parys	2005	FS	\N
paulroux	Paul Roux	2005	FS	\N
petrussteyn	Petrus Steyn	2005	FS	\N
petrusburg	Petrusburg	2005	FS	\N
philippolis	Philippolis	2005	FS	\N
phuthaditjhaba	Phuthaditjhaba	2005	FS	\N
reddersburg	Reddersburg	2005	FS	\N
reitz	Reitz	2005	FS	\N
roadside	Roadside	2005	FS	\N
rosendal	Rosendal	2005	FS	\N
rouxville	Rouxville	2005	FS	\N
sasolburg	Sasolburg	2005	FS	\N
selosesha	Selosesha	2005	FS	\N
senekal	Senekal	2005	FS	\N
smithfield	Smithfield	2005	FS	\N
soutpan	Soutpan	2005	FS	\N
springfontein	Springfontein	2005	FS	\N
steunmekaar	Steunmekaar	2005	FS	\N
steynsrus	Steynsrus	2005	FS	\N
thaba	Thaba	2005	FS	\N
thabong	Thabong	2005	FS	\N
theunissen	Theunissen	2005	FS	\N
tierpoort	Tierpoort	2005	FS	\N
trompsburg	Trompsburg	2005	FS	\N
tseki	Tseki	2005	FS	\N
tseseng	Tseseng	2005	FS	\N
tumahole	Tumahole	2005	FS	\N
tweeling	Tweeling	2005	FS	\N
tweespruit	Tweespruit	2005	FS	\N
vanstadensrus	Vanstadensrus	2005	FS	\N
ventersburg	Ventersburg	2005	FS	\N
verkeerdevlei	Verkeerdevlei	2005	FS	\N
verkykerskop	Verkykerskop	2005	FS	\N
vierfontein	Vierfontein	2005	FS	\N
viljoensdrif	Viljoensdrif	2005	FS	\N
viljoenskroon	Viljoenskroon	2005	FS	\N
villiers	Villiers	2005	FS	\N
virginia	Virginia	2005	FS	\N
vrede	Vrede	2005	FS	\N
vredefort	Vredefort	2005	FS	\N
wanda	Wanda	2005	FS	\N
warden	Warden	2005	FS	\N
welkom	Welkom	2005	FS	\N
wepener	Wepener	2005	FS	\N
wesselsbron	Wesselsbron	2005	FS	\N
winburg	Winburg	2005	FS	\N
zamdela	Zamdela	2005	FS	\N
zastron	Zastron	2005	FS	\N
actonville	Actonville	2005	GT	\N
akasia	Akasia	2005	GT	\N
alberton	Alberton	2005	GT	\N
alexandra	Alexandra	2005	GT	\N
atteridgeville	Atteridgeville	2005	GT	\N
bedfordview	Bedfordview	2005	GT	\N
bekkersdal	Bekkersdal	2005	GT	\N
benoni	Benoni	2005	GT	\N
boipatong	Boipatong	2005	GT	\N
boksburg	Boksburg	2005	GT	\N
boksburgnorth	Boksburg North	2005	GT	\N
booysens	Booysens	2005	GT	\N
boschkop	Boschkop	2005	GT	\N
brackendowns	Brackendowns	2005	GT	\N
brakpan	Brakpan	2005	GT	\N
bramley	Bramley	2005	GT	\N
brixton	Brixton	2005	GT	\N
bronkhorstspruit	Bronkhorstspruit	2005	GT	\N
brooklyn	Brooklyn	2005	GT	\N
carletonville	Carletonville	2005	GT	\N
cleveland	Cleveland	2005	GT	\N
crystalpark	Crystalpark	2005	GT	\N
cullinan	Cullinan	2005	GT	\N
daveyton	Daveyton	2005	GT	\N
dawnpark	Dawn Park	2005	GT	\N
dedeur	De Deur	2005	GT	\N
devon	Devon	2005	GT	\N
diepkloof	Diepkloof	2005	GT	\N
diepsloot	Diepsloot	2005	GT	\N
dobsonville	Dobsonville	2005	GT	\N
douglasdale	Douglasdale	2005	GT	\N
dube	Dube	2005	GT	\N
duduza	Duduza	2005	GT	\N
dunnottar	Dunnottar	2005	GT	\N
edenpark	Edenpark	2005	GT	\N
edenvale	Edenvale	2005	GT	\N
eersterust	Eersterust	2005	GT	\N
ekangala	Ekangala	2005	GT	\N
eldoradopark	Eldorado Park	2005	GT	\N
elsburg	Elsburg	2005	GT	\N
ennerdale	Ennerdale	2005	GT	\N
erasmia	Erasmia	2005	GT	\N
etwatwa	Etwatwa	2005	GT	\N
evaton	Evaton	2005	GT	\N
fairland	Fairland	2005	GT	\N
florida	Florida	2005	GT	\N
fochville	Fochville	2005	GT	\N
ga	Ga	2005	GT	\N
garsfontein	Garsfontein	2005	GT	\N
germiston	Germiston	2005	GT	\N
hammanskraal	Hammanskraal	2005	GT	\N
heidelberggt	Heidelberg	2005	GT	\N
hekpoort	Hekpoort	2005	GT	\N
hercules	Hercules	2005	GT	\N
hillbrow	Hillbrow	2005	GT	\N
honeydew	Honeydew	2005	GT	\N
ivorypark	Ivory Park	2005	GT	\N
jabulani	Jabulani	2005	GT	\N
jeppe	Jeppe	2005	GT	\N
johannesburgcentral	Johannesburg Central	2005	GT	\N
kagiso	Kagiso	2005	GT	\N
kameeldrift	Kameeldrift	2005	GT	\N
katlehong	Katlehong	2005	GT	\N
katlehongnorth	Katlehong North	2005	GT	\N
kemptonpark	Kempton Park	2005	GT	\N
khutsong	Khutsong	2005	GT	\N
kliprivier	Kliprivier	2005	GT	\N
kliptown	Kliptown	2005	GT	\N
krugersdorp	Krugersdorp	2005	GT	\N
kwathema	Kwa Thema	2005	GT	\N
langlaagte	Langlaagte	2005	GT	\N
laudium	Laudium	2005	GT	\N
lenasia	Lenasia	2005	GT	\N
lenasiasouth	Lenasia South	2005	GT	\N
linden	Linden	2005	GT	\N
loate	Loate	2005	GT	\N
lyttelton	Lyttelton	2005	GT	\N
mabopane	Mabopane	2005	GT	\N
magaliesburg	Magaliesburg	2005	GT	\N
mamelodi	Mamelodi	2005	GT	\N
mamelodieast	Mamelodi East	2005	GT	\N
meadowlands	Meadowlands	2005	GT	\N
meyerton	Meyerton	2005	GT	\N
midrand	Midrand	2005	GT	\N
moffatview	Moffatview	2005	GT	\N
mondeor	Mondeor	2005	GT	\N
moroka	Moroka	2005	GT	\N
muldersdrift	Muldersdrift	2005	GT	\N
naledi	Naledi	2005	GT	\N
nigel	Nigel	2005	GT	\N
norkempark	Norkempark	2005	GT	\N
norwood	Norwood	2005	GT	\N
olievenhoutbosch	Olievenhoutbosch	2005	GT	\N
olifantsfontein	Olifantsfontein	2005	GT	\N
ortambointernationalairport	OR Tambo International Airport	2005	GT	\N
orangefarms	Orange Farms	2005	GT	\N
orlando	Orlando	2005	GT	\N
parkview	Parkview	2005	GT	\N
pretoriacentral	Pretoria Central	2005	GT	\N
pretoriamoot	Pretoria Moot	2005	GT	\N
pretorianorth	Pretoria North	2005	GT	\N
pretoriawest	Pretoria West	2005	GT	\N
primrose	Primrose	2005	GT	\N
proteaglen	Protea Glen	2005	GT	\N
putfontein	Putfontein	2005	GT	\N
rabieridge	Rabie Ridge	2005	GT	\N
randburg	Randburg	2005	GT	\N
randfontein	Randfontein	2005	GT	\N
ratanda	Ratanda	2005	GT	\N
reigerpark	Reigerpark	2005	GT	\N
rietgat	Rietgat	2005	GT	\N
roodepoort	Roodepoort	2005	GT	\N
rosebank	Rosebank	2005	GT	\N
sandringham	Sandringham	2005	GT	\N
sandton	Sandton	2005	GT	\N
sebenza	Sebenza	2005	GT	\N
sebokeng	Sebokeng	2005	GT	\N
sharpeville	Sharpeville	2005	GT	\N
silverton	Silverton	2005	GT	\N
sinoville	Sinoville	2005	GT	\N
sophiatown	Sophia Town	2005	GT	\N
soshanguve	Soshanguve	2005	GT	\N
springs	Springs	2005	GT	\N
sunnyside	Sunnyside	2005	GT	\N
tarlton	Tarlton	2005	GT	\N
temba	Temba	2005	GT	\N
tembisa	Tembisa	2005	GT	\N
thebarrage	The Barrage	2005	GT	\N
tokoza	Tokoza	2005	GT	\N
tsakane	Tsakane	2005	GT	\N
vaalmarina	Vaal Marina	2005	GT	\N
vanderbijlpark	Vanderbijlpark	2005	GT	\N
vereeniging	Vereeniging	2005	GT	\N
villieria	Villieria	2005	GT	\N
vosloorus	Vosloorus	2005	GT	\N
wedela	Wedela	2005	GT	\N
welbekend	Welbekend	2005	GT	\N
westonaria	Westonaria	2005	GT	\N
wierdabrug	Wierdabrug	2005	GT	\N
wonderboompoort	Wonderboompoort	2005	GT	\N
yeoville	Yeoville	2005	GT	\N
zonkizizwe	Zonkizizwe	2005	GT	\N
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

