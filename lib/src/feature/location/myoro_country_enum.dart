import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:myoro_flutter_library/src/exports.dart';

/// Enum containing all countries in the world.
///
/// Not recommended to edit the file by hand, use LLMs to do that instead.
@JsonEnum()
enum MyoroCountryEnum {
  /// Afghanistan.
  @JsonValue(_afghanistanIsoValue)
  afghanistan('🇦🇫', MyoroCurrencyEnum.afn),

  /// Albania.
  @JsonValue(_albaniaIsoValue)
  albania('🇦🇱', MyoroCurrencyEnum.all),

  /// Algeria.
  @JsonValue(_algeriaIsoValue)
  algeria('🇩🇿', MyoroCurrencyEnum.dzd),

  /// Andorra.
  @JsonValue(_andorraIsoValue)
  andorra('🇦🇩', MyoroCurrencyEnum.eur),

  /// Angola.
  @JsonValue(_angolaIsoValue)
  angola('🇦🇴', MyoroCurrencyEnum.aoa),

  /// Antigua and Barbuda.
  @JsonValue(_antiguaAndBarbudaIsoValue)
  antiguaAndBarbuda('🇦🇬', MyoroCurrencyEnum.xcd),

  /// Argentina.
  @JsonValue(_argentinaIsoValue)
  argentina('🇦🇷', MyoroCurrencyEnum.ars),

  /// Armenia.
  @JsonValue(_armeniaIsoValue)
  armenia('🇦🇲', MyoroCurrencyEnum.amd),

  /// Australia.
  @JsonValue(_australiaIsoValue)
  australia('🇦🇺', MyoroCurrencyEnum.aud),

  /// Austria.
  @JsonValue(_austriaIsoValue)
  austria('🇦🇹', MyoroCurrencyEnum.eur),

  /// Azerbaijan.
  @JsonValue(_azerbaijanIsoValue)
  azerbaijan('🇦🇿', MyoroCurrencyEnum.azn),

  /// Bahamas.
  @JsonValue(_bahamasIsoValue)
  bahamas('🇧🇸', MyoroCurrencyEnum.bsd),

  /// Bahrain.
  @JsonValue(_bahrainIsoValue)
  bahrain('🇧🇭', MyoroCurrencyEnum.bhd),

  /// Bangladesh.
  @JsonValue(_bangladeshIsoValue)
  bangladesh('🇧🇩', MyoroCurrencyEnum.bdt),

  /// Barbados.
  @JsonValue(_barbadosIsoValue)
  barbados('🇧🇧', MyoroCurrencyEnum.bbd),

  /// Belarus.
  @JsonValue(_belarusIsoValue)
  belarus('🇧🇾', MyoroCurrencyEnum.byn),

  /// Belgium.
  @JsonValue(_belgiumIsoValue)
  belgium('🇧🇪', MyoroCurrencyEnum.eur),

  /// Belize.
  @JsonValue(_belizeIsoValue)
  belize('🇧🇿', MyoroCurrencyEnum.bzd),

  /// Benin.
  @JsonValue(_beninIsoValue)
  benin('🇧🇯', MyoroCurrencyEnum.xof),

  /// Bhutan.
  @JsonValue(_bhutanIsoValue)
  bhutan('🇧🇹', MyoroCurrencyEnum.btn),

  /// Bolivia.
  @JsonValue(_boliviaIsoValue)
  bolivia('🇧🇴', MyoroCurrencyEnum.bob),

  /// Bosnia and Herzegovina.
  @JsonValue(_bosniaAndHerzegovinaIsoValue)
  bosniaAndHerzegovina('🇧🇦', MyoroCurrencyEnum.bam),

  /// Botswana.
  @JsonValue(_botswanaIsoValue)
  botswana('🇧🇼', MyoroCurrencyEnum.bwp),

  /// Brazil.
  @JsonValue(_brazilIsoValue)
  brazil('🇧🇷', MyoroCurrencyEnum.brl),

  /// Brunei.
  @JsonValue(_bruneiIsoValue)
  brunei('🇧🇳', MyoroCurrencyEnum.bnd),

  /// Bulgaria.
  @JsonValue(_bulgariaIsoValue)
  bulgaria('🇧🇬', MyoroCurrencyEnum.bgn),

  /// Burkina Faso.
  @JsonValue(_burkinaFasoIsoValue)
  burkinaFaso('🇧🇫', MyoroCurrencyEnum.xof),

  /// Burundi.
  @JsonValue(_burundiIsoValue)
  burundi('🇧🇮', MyoroCurrencyEnum.bif),

  /// Cambodia.
  @JsonValue(_cambodiaIsoValue)
  cambodia('🇰🇭', MyoroCurrencyEnum.khr),

  /// Cameroon.
  @JsonValue(_cameroonIsoValue)
  cameroon('🇨🇲', MyoroCurrencyEnum.xaf),

  /// Canada.
  @JsonValue(_canadaIsoValue)
  canada('🇨🇦', MyoroCurrencyEnum.cad),

  /// CapeVerde.
  @JsonValue(_capeVerdeIsoValue)
  capeVerde('🇨🇻', MyoroCurrencyEnum.cve),

  /// Central African Republic.
  @JsonValue(_centralAfricanRepublicIsoValue)
  centralAfricanRepublic('🇨🇫', MyoroCurrencyEnum.xaf),

  /// Chad.
  @JsonValue(_chadIsoValue)
  chad('🇹🇩', MyoroCurrencyEnum.xaf),

  /// Chile.
  @JsonValue(_chileIsoValue)
  chile('🇨🇱', MyoroCurrencyEnum.clp),

  /// China.
  @JsonValue(_chinaIsoValue)
  china('🇨🇳', MyoroCurrencyEnum.cny),

  /// Colombia.
  @JsonValue(_colombiaIsoValue)
  colombia('🇨🇴', MyoroCurrencyEnum.cop),

  /// Comoros.
  @JsonValue(_comorosIsoValue)
  comoros('🇰🇲', MyoroCurrencyEnum.kmf),

  /// Congo.
  @JsonValue(_congoIsoValue)
  congo('🇨🇬', MyoroCurrencyEnum.xaf),

  /// Costa Rica.
  @JsonValue(_costaRicaIsoValue)
  costaRica('🇨🇷', MyoroCurrencyEnum.crc),

  /// Croatia.
  @JsonValue(_croatiaIsoValue)
  croatia('🇭🇷', MyoroCurrencyEnum.hrk),

  /// Cuba.
  @JsonValue(_cubaIsoValue)
  cuba('🇨🇺', MyoroCurrencyEnum.usd),

  /// Cyprus.
  @JsonValue(_cyprusIsoValue)
  cyprus('🇨🇾', MyoroCurrencyEnum.eur),

  /// CzechRepublic.
  @JsonValue(_czechRepublicIsoValue)
  czechRepublic('🇨🇿', MyoroCurrencyEnum.czk),

  /// Denmark.
  @JsonValue(_denmarkIsoValue)
  denmark('🇩🇰', MyoroCurrencyEnum.dkk),

  /// Djibouti.
  @JsonValue(_djiboutiIsoValue)
  djibouti('🇩🇯', MyoroCurrencyEnum.djf),

  /// Dominica.
  @JsonValue(_dominicaIsoValue)
  dominica('🇩🇲', MyoroCurrencyEnum.xcd),

  /// Dominican Republic.
  @JsonValue(_dominicanRepublicIsoValue)
  dominicanRepublic('🇩🇴', MyoroCurrencyEnum.dop),

  /// Dr Congo.
  @JsonValue(_drCongoIsoValue)
  drCongo('🇨🇩', MyoroCurrencyEnum.cdf),

  /// Ecuador.
  @JsonValue(_ecuadorIsoValue)
  ecuador('🇪🇨', MyoroCurrencyEnum.usd),

  /// Egypt.
  @JsonValue(_egyptIsoValue)
  egypt('🇪🇬', MyoroCurrencyEnum.egp),

  /// El Salvador.
  @JsonValue(_elSalvadorIsoValue)
  elSalvador('🇸🇻', MyoroCurrencyEnum.usd),

  /// EquatorialGuinea.
  @JsonValue(_equatorialGuineaIsoValue)
  equatorialGuinea('🇬🇶', MyoroCurrencyEnum.xaf),

  /// Eritrea.
  @JsonValue(_eritreaIsoValue)
  eritrea('🇪🇷', MyoroCurrencyEnum.ern),

  /// Estonia.
  @JsonValue(_estoniaIsoValue)
  estonia('🇪🇪', MyoroCurrencyEnum.eur),

  /// Eswatini.
  @JsonValue(_eswatiniIsoValue)
  eswatini('🇸🇿', MyoroCurrencyEnum.szl),

  /// Ethiopia.
  @JsonValue(_ethiopiaIsoValue)
  ethiopia('🇪🇹', MyoroCurrencyEnum.etb),

  /// Fiji.
  @JsonValue(_fijiIsoValue)
  fiji('🇫🇯', MyoroCurrencyEnum.fjd),

  /// Finland.
  @JsonValue(_finlandIsoValue)
  finland('🇫🇮', MyoroCurrencyEnum.eur),

  /// France.
  @JsonValue(_franceIsoValue)
  france('🇫🇷', MyoroCurrencyEnum.eur),

  /// Gabon.
  @JsonValue(_gabonIsoValue)
  gabon('🇬🇦', MyoroCurrencyEnum.xaf),

  /// Gambia.
  @JsonValue(_gambiaIsoValue)
  gambia('🇬🇲', MyoroCurrencyEnum.gmd),

  /// Georgia.
  @JsonValue(_georgiaIsoValue)
  georgia('🇬🇪', MyoroCurrencyEnum.gel),

  /// Germany.
  @JsonValue(_germanyIsoValue)
  germany('🇩🇪', MyoroCurrencyEnum.eur),

  /// Ghana.
  @JsonValue(_ghanaIsoValue)
  ghana('🇬🇭', MyoroCurrencyEnum.ghs),

  /// Greece.
  @JsonValue(_greeceIsoValue)
  greece('🇬🇷', MyoroCurrencyEnum.eur),

  /// Grenada.
  @JsonValue(_grenadaIsoValue)
  grenada('🇬🇩', MyoroCurrencyEnum.xcd),

  /// Guatemala.
  @JsonValue(_guatemalaIsoValue)
  guatemala('🇬🇹', MyoroCurrencyEnum.gtq),

  /// Guinea.
  @JsonValue(_guineaIsoValue)
  guinea('🇬🇳', MyoroCurrencyEnum.gnf),

  /// Guinea Bissau.
  @JsonValue(_guineaBissauIsoValue)
  guineaBissau('🇬🇼', MyoroCurrencyEnum.xof),

  /// Guyana.
  @JsonValue(_guyanaIsoValue)
  guyana('🇬🇾', MyoroCurrencyEnum.gyd),

  /// Haiti.
  @JsonValue(_haitiIsoValue)
  haiti('🇭🇹', MyoroCurrencyEnum.htg),

  /// Honduras.
  @JsonValue(_hondurasIsoValue)
  honduras('🇭🇳', MyoroCurrencyEnum.hnl),

  /// Hungary.
  @JsonValue(_hungaryIsoValue)
  hungary('🇭🇺', MyoroCurrencyEnum.huf),

  /// Iceland.
  @JsonValue(_icelandIsoValue)
  iceland('🇮🇸', MyoroCurrencyEnum.isk),

  /// India.
  @JsonValue(_indiaIsoValue)
  india('🇮🇳', MyoroCurrencyEnum.inr),

  /// Indonesia.
  @JsonValue(_indonesiaIsoValue)
  indonesia('🇮🇩', MyoroCurrencyEnum.idr),

  /// Iran.
  @JsonValue(_iranIsoValue)
  iran('🇮🇷', MyoroCurrencyEnum.irr),

  /// Iraq.
  @JsonValue(_iraqIsoValue)
  iraq('🇮🇶', MyoroCurrencyEnum.iqd),

  /// Ireland.
  @JsonValue(_irelandIsoValue)
  ireland('🇮🇪', MyoroCurrencyEnum.eur),

  /// Israel.
  @JsonValue(_israelIsoValue)
  israel('🇮🇱', MyoroCurrencyEnum.ils),

  /// Italy.
  @JsonValue(_italyIsoValue)
  italy('🇮🇹', MyoroCurrencyEnum.eur),

  /// Ivory Coast.
  @JsonValue(_ivoryCoastIsoValue)
  ivoryCoast('🇨🇮', MyoroCurrencyEnum.xof),

  /// Jamaica.
  @JsonValue(_jamaicaIsoValue)
  jamaica('🇯🇲', MyoroCurrencyEnum.jmd),

  /// Japan.
  @JsonValue(_japanIsoValue)
  japan('🇯🇵', MyoroCurrencyEnum.jpy),

  /// Jordan.
  @JsonValue(_jordanIsoValue)
  jordan('🇯🇴', MyoroCurrencyEnum.jod),

  /// Kazakhstan.
  @JsonValue(_kazakhstanIsoValue)
  kazakhstan('🇰🇿', MyoroCurrencyEnum.kzt),

  /// Kenya.
  @JsonValue(_kenyaIsoValue)
  kenya('🇰🇪', MyoroCurrencyEnum.kes),

  /// Kiribati.
  @JsonValue(_kiribatiIsoValue)
  kiribati('🇰🇮', MyoroCurrencyEnum.aud),

  /// Kosovo.
  @JsonValue(_kosovoIsoValue)
  kosovo('🇽🇰', MyoroCurrencyEnum.eur),

  /// Kuwait.
  @JsonValue(_kuwaitIsoValue)
  kuwait('🇰🇼', MyoroCurrencyEnum.kwd),

  /// Kyrgyzstan.
  @JsonValue(_kyrgyzstanIsoValue)
  kyrgyzstan('🇰🇬', MyoroCurrencyEnum.kgs),

  /// Laos.
  @JsonValue(_laosIsoValue)
  laos('🇱🇦', MyoroCurrencyEnum.lak),

  /// Latvia.
  @JsonValue(_latviaIsoValue)
  latvia('🇱🇻', MyoroCurrencyEnum.eur),

  /// Lebanon.
  @JsonValue(_lebanonIsoValue)
  lebanon('🇱🇧', MyoroCurrencyEnum.lbp),

  /// Lesotho.
  @JsonValue(_lesothoIsoValue)
  lesotho('🇱🇸', MyoroCurrencyEnum.lsl),

  /// Liberia.
  @JsonValue(_liberiaIsoValue)
  liberia('🇱🇷', MyoroCurrencyEnum.lrd),

  /// Libya.
  @JsonValue(_libyaIsoValue)
  libya('🇱🇾', MyoroCurrencyEnum.lyd),

  /// Liechtenstein.
  @JsonValue(_liechtensteinIsoValue)
  liechtenstein('🇱🇮', MyoroCurrencyEnum.chf),

  /// Lithuania.
  @JsonValue(_lithuaniaIsoValue)
  lithuania('🇱🇹', MyoroCurrencyEnum.eur),

  /// Luxembourg.
  @JsonValue(_luxembourgIsoValue)
  luxembourg('🇱🇺', MyoroCurrencyEnum.eur),

  /// Madagascar.
  @JsonValue(_madagascarIsoValue)
  madagascar('🇲🇬', MyoroCurrencyEnum.mga),

  /// Malawi.
  @JsonValue(_malawiIsoValue)
  malawi('🇲🇼', MyoroCurrencyEnum.mwk),

  /// Malaysia.
  @JsonValue(_malaysiaIsoValue)
  malaysia('🇲🇾', MyoroCurrencyEnum.myr),

  /// Maldives.
  @JsonValue(_maldivesIsoValue)
  maldives('🇲🇻', MyoroCurrencyEnum.mvr),

  /// Mali.
  @JsonValue(_maliIsoValue)
  mali('🇲🇱', MyoroCurrencyEnum.xof),

  /// Malta.
  @JsonValue(_maltaIsoValue)
  malta('🇲🇹', MyoroCurrencyEnum.eur),

  /// Marshall Islands.
  @JsonValue(_marshallIslandsIsoValue)
  marshallIslands('🇲🇭', MyoroCurrencyEnum.usd),

  /// Mauritania.
  @JsonValue(_mauritaniaIsoValue)
  mauritania('🇲🇷', MyoroCurrencyEnum.mru),

  /// Mauritius.
  @JsonValue(_mauritiusIsoValue)
  mauritius('🇲🇺', MyoroCurrencyEnum.mur),

  /// Mexico.
  @JsonValue(_mexicoIsoValue)
  mexico('🇲🇽', MyoroCurrencyEnum.mxn),

  /// Micronesia.
  @JsonValue(_micronesiaIsoValue)
  micronesia('🇫🇲', MyoroCurrencyEnum.usd),

  /// Moldova.
  @JsonValue(_moldovaIsoValue)
  moldova('🇲🇩', MyoroCurrencyEnum.mdl),

  /// Monaco.
  @JsonValue(_monacoIsoValue)
  monaco('🇲🇨', MyoroCurrencyEnum.eur),

  /// Mongolia.
  @JsonValue(_mongoliaIsoValue)
  mongolia('🇲🇳', MyoroCurrencyEnum.mnt),

  /// Montenegro.
  @JsonValue(_montenegroIsoValue)
  montenegro('🇲🇪', MyoroCurrencyEnum.eur),

  /// Morocco.
  @JsonValue(_moroccoIsoValue)
  morocco('🇲🇦', MyoroCurrencyEnum.mad),

  /// Mozambique.
  @JsonValue(_mozambiqueIsoValue)
  mozambique('🇲🇿', MyoroCurrencyEnum.mzn),

  /// Myanmar.
  @JsonValue(_myanmarIsoValue)
  myanmar('🇲🇲', MyoroCurrencyEnum.mmk),

  /// Namibia.
  @JsonValue(_namibiaIsoValue)
  namibia('🇳🇦', MyoroCurrencyEnum.nad),

  /// Nauru.
  @JsonValue(_nauruIsoValue)
  nauru('🇳🇷', MyoroCurrencyEnum.aud),

  /// Nepal.
  @JsonValue(_nepalIsoValue)
  nepal('🇳🇵', MyoroCurrencyEnum.npr),

  /// Netherlands.
  @JsonValue(_netherlandsIsoValue)
  netherlands('🇳🇱', MyoroCurrencyEnum.eur),

  /// NewZealand.
  @JsonValue(_newZealandIsoValue)
  newZealand('🇳🇿', MyoroCurrencyEnum.nzd),

  /// Nicaragua.
  @JsonValue(_nicaraguaIsoValue)
  nicaragua('🇳🇮', MyoroCurrencyEnum.nio),

  /// Niger.
  @JsonValue(_nigerIsoValue)
  niger('🇳🇪', MyoroCurrencyEnum.xof),

  /// Nigeria.
  @JsonValue(_nigeriaIsoValue)
  nigeria('🇳🇬', MyoroCurrencyEnum.ngn),

  /// NorthKorea.
  @JsonValue(_northKoreaIsoValue)
  northKorea('🇰🇵', MyoroCurrencyEnum.kpw),

  /// NorthMacedonia.
  @JsonValue(_northMacedoniaIsoValue)
  northMacedonia('🇲🇰', MyoroCurrencyEnum.mkd),

  /// Norway.
  @JsonValue(_norwayIsoValue)
  norway('🇳🇴', MyoroCurrencyEnum.nok),

  /// Oman.
  @JsonValue(_omanIsoValue)
  oman('🇴🇲', MyoroCurrencyEnum.omr),

  /// Pakistan.
  @JsonValue(_pakistanIsoValue)
  pakistan('🇵🇰', MyoroCurrencyEnum.pkr),

  /// Palau.
  @JsonValue(_palauIsoValue)
  palau('🇵🇼', MyoroCurrencyEnum.usd),

  /// Palestine.
  @JsonValue(_palestineIsoValue)
  palestine('🇵🇸', MyoroCurrencyEnum.ils),

  /// Panama.
  @JsonValue(_panamaIsoValue)
  panama('🇵🇦', MyoroCurrencyEnum.pab),

  /// PapuaNewGuinea.
  @JsonValue(_papuaNewGuineaIsoValue)
  papuaNewGuinea('🇵🇬', MyoroCurrencyEnum.pgk),

  /// Paraguay.
  @JsonValue(_paraguayIsoValue)
  paraguay('🇵🇾', MyoroCurrencyEnum.pyg),

  /// Peru.
  @JsonValue(_peruIsoValue)
  peru('🇵🇪', MyoroCurrencyEnum.pen),

  /// Philippines.
  @JsonValue(_philippinesIsoValue)
  philippines('🇵🇭', MyoroCurrencyEnum.php),

  /// Poland.
  @JsonValue(_polandIsoValue)
  poland('🇵🇱', MyoroCurrencyEnum.pln),

  /// Portugal.
  @JsonValue(_portugalIsoValue)
  portugal('🇵🇹', MyoroCurrencyEnum.eur),

  /// Qatar.
  @JsonValue(_qatarIsoValue)
  qatar('🇶🇦', MyoroCurrencyEnum.qar),

  /// Romania.
  @JsonValue(_romaniaIsoValue)
  romania('🇷🇴', MyoroCurrencyEnum.ron),

  /// Russia.
  @JsonValue(_russiaIsoValue)
  russia('🇷🇺', MyoroCurrencyEnum.rub),

  /// Rwanda.
  @JsonValue(_rwandaIsoValue)
  rwanda('🇷🇼', MyoroCurrencyEnum.rwf),

  /// SaintKitts and Nevis.
  @JsonValue(_saintKittsAndNevisIsoValue)
  saintKittsAndNevis('🇰🇳', MyoroCurrencyEnum.xcd),

  /// SaintLucia.
  @JsonValue(_saintLuciaIsoValue)
  saintLucia('🇱🇨', MyoroCurrencyEnum.xcd),

  /// SaintVincentAndTheGrenadines.
  @JsonValue(_saintVincentAndTheGrenadinesIsoValue)
  saintVincentAndTheGrenadines('🇻🇨', MyoroCurrencyEnum.xcd),

  /// Samoa.
  @JsonValue(_samoaIsoValue)
  samoa('🇼🇸', MyoroCurrencyEnum.wst),

  /// SanMarino.
  @JsonValue(_sanMarinoIsoValue)
  sanMarino('🇸🇲', MyoroCurrencyEnum.eur),

  /// Sao Tome and Principe.
  @JsonValue(_saoTomeAndPrincipeIsoValue)
  saoTomeAndPrincipe('🇸🇹', MyoroCurrencyEnum.stn),

  /// Saudi Arabia.
  @JsonValue(_saudiArabiaIsoValue)
  saudiArabia('🇸🇦', MyoroCurrencyEnum.sar),

  /// Senegal.
  @JsonValue(_senegalIsoValue)
  senegal('🇸🇳', MyoroCurrencyEnum.xof),

  /// Serbia.
  @JsonValue(_serbiaIsoValue)
  serbia('🇷🇸', MyoroCurrencyEnum.rsd),

  /// Seychelles.
  @JsonValue(_seychellesIsoValue)
  seychelles('🇸🇨', MyoroCurrencyEnum.scr),

  /// SierraLeone.
  @JsonValue(_sierraLeoneIsoValue)
  sierraLeone('🇸🇱', MyoroCurrencyEnum.sll),

  /// Singapore.
  @JsonValue(_singaporeIsoValue)
  singapore('🇸🇬', MyoroCurrencyEnum.sgd),

  /// Slovakia.
  @JsonValue(_slovakiaIsoValue)
  slovakia('🇸🇰', MyoroCurrencyEnum.eur),

  /// Slovenia.
  @JsonValue(_sloveniaIsoValue)
  slovenia('🇸🇮', MyoroCurrencyEnum.eur),

  /// SolomonIslands.
  @JsonValue(_solomonIslandsIsoValue)
  solomonIslands('🇸🇧', MyoroCurrencyEnum.sbd),

  /// Somalia.
  @JsonValue(_somaliaIsoValue)
  somalia('🇸🇴', MyoroCurrencyEnum.sos),

  /// South Africa.
  @JsonValue(_southAfricaIsoValue)
  southAfrica('🇿🇦', MyoroCurrencyEnum.zar),

  /// South Korea.
  @JsonValue(_southKoreaIsoValue)
  southKorea('🇰🇷', MyoroCurrencyEnum.krw),

  /// South Sudan.
  @JsonValue(_southSudanIsoValue)
  southSudan('🇸🇸', MyoroCurrencyEnum.ssp),

  /// Spain.
  @JsonValue(_spainIsoValue)
  spain('🇪🇸', MyoroCurrencyEnum.eur),

  /// Sri Lanka.
  @JsonValue(_sriLankaIsoValue)
  sriLanka('🇱🇰', MyoroCurrencyEnum.lkr),

  /// Sudan.
  @JsonValue(_sudanIsoValue)
  sudan('🇸🇩', MyoroCurrencyEnum.sdp),

  /// Suriname.
  @JsonValue(_surinameIsoValue)
  suriname('🇸🇷', MyoroCurrencyEnum.srd),

  /// Sweden.
  @JsonValue(_swedenIsoValue)
  sweden('🇸🇪', MyoroCurrencyEnum.sek),

  /// Switzerland.
  @JsonValue(_switzerlandIsoValue)
  switzerland('🇨🇭', MyoroCurrencyEnum.chf),

  /// Syria.
  @JsonValue(_syriaIsoValue)
  syria('🇸🇾', MyoroCurrencyEnum.syp),

  /// Taiwan.
  @JsonValue(_taiwanIsoValue)
  taiwan('🇹🇼', MyoroCurrencyEnum.twd),

  /// Tajikistan.
  @JsonValue(_tajikistanIsoValue)
  tajikistan('🇹🇯', MyoroCurrencyEnum.tjs),

  /// Tanzania.
  @JsonValue(_tanzaniaIsoValue)
  tanzania('🇹🇿', MyoroCurrencyEnum.tzs),

  /// Thailand.
  @JsonValue(_thailandIsoValue)
  thailand('🇹🇭', MyoroCurrencyEnum.thb),

  /// TimorLeste.
  @JsonValue(_timorLesteIsoValue)
  timorLeste('🇹🇱', MyoroCurrencyEnum.usd),

  /// Togo.
  @JsonValue(_togoIsoValue)
  togo('🇹🇬', MyoroCurrencyEnum.xof),

  /// Tonga.
  @JsonValue(_tongaIsoValue)
  tonga('🇹🇴', MyoroCurrencyEnum.top),

  /// Trinidad and Tobago.
  @JsonValue(_trinidadAndTobagoIsoValue)
  trinidadAndTobago('🇹🇹', MyoroCurrencyEnum.ttd),

  /// Tunisia.
  @JsonValue(_tunisiaIsoValue)
  tunisia('🇹🇳', MyoroCurrencyEnum.tnd),

  /// Turkey.
  @JsonValue(_turkeyIsoValue)
  turkey('🇹🇷', MyoroCurrencyEnum.try_),

  /// Turkmenistan.
  @JsonValue(_turkmenistanIsoValue)
  turkmenistan('🇹🇲', MyoroCurrencyEnum.tmt),

  /// Tuvalu.
  @JsonValue(_tuvaluIsoValue)
  tuvalu('🇹🇻', MyoroCurrencyEnum.aud),

  /// Uganda.
  @JsonValue(_ugandaIsoValue)
  uganda('🇺🇬', MyoroCurrencyEnum.ugx),

  /// Ukraine.
  @JsonValue(_ukraineIsoValue)
  ukraine('🇺🇦', MyoroCurrencyEnum.uah),

  /// United Arab Emirates.
  @JsonValue(_unitedArabEmiratesIsoValue)
  unitedArabEmirates('🇦🇪', MyoroCurrencyEnum.aed),

  /// UnitedKingdom.
  @JsonValue(_unitedKingdomIsoValue)
  unitedKingdom('🇬🇧', MyoroCurrencyEnum.gbp),

  /// UnitedStates.
  @JsonValue(_unitedStatesIsoValue)
  unitedStates('🇺🇸', MyoroCurrencyEnum.usd),

  /// Uruguay.
  @JsonValue(_uruguayIsoValue)
  uruguay('🇺🇾', MyoroCurrencyEnum.uyu),

  /// Uzbekistan.
  @JsonValue(_uzbekistanIsoValue)
  uzbekistan('🇺🇿', MyoroCurrencyEnum.uzs),

  /// Vanuatu.
  @JsonValue(_vanuatuIsoValue)
  vanuatu('🇻🇺', MyoroCurrencyEnum.vuv),

  /// Vatican City.
  @JsonValue(_vaticanCityIsoValue)
  vaticanCity('🇻🇦', MyoroCurrencyEnum.eur),

  /// Venezuela.
  @JsonValue(_venezuelaIsoValue)
  venezuela('🇻🇪', MyoroCurrencyEnum.ves),

  /// Vietnam.
  @JsonValue(_vietnamIsoValue)
  vietnam('🇻🇳', MyoroCurrencyEnum.vnd),

  /// Yemen.
  @JsonValue(_yemenIsoValue)
  yemen('🇾🇪', MyoroCurrencyEnum.yer),

  /// Zambia.
  @JsonValue(_zambiaIsoValue)
  zambia('🇿🇲', MyoroCurrencyEnum.zmw),

  /// Zimbabwe.
  @JsonValue(_zimbabweIsoValue)
  zimbabwe('🇿🇼', MyoroCurrencyEnum.usd);

  // Country codes (ISO 3166-1 alpha-2).
  static const _afghanistanIsoValue = 'af';
  static const _albaniaIsoValue = 'al';
  static const _algeriaIsoValue = 'dz';
  static const _andorraIsoValue = 'ad';
  static const _angolaIsoValue = 'ao';
  static const _antiguaAndBarbudaIsoValue = 'ag';
  static const _argentinaIsoValue = 'ar';
  static const _armeniaIsoValue = 'am';
  static const _australiaIsoValue = 'au';
  static const _austriaIsoValue = 'at';
  static const _azerbaijanIsoValue = 'az';
  static const _bahamasIsoValue = 'bs';
  static const _bahrainIsoValue = 'bh';
  static const _bangladeshIsoValue = 'bd';
  static const _barbadosIsoValue = 'bb';
  static const _belarusIsoValue = 'by';
  static const _belgiumIsoValue = 'be';
  static const _belizeIsoValue = 'bz';
  static const _beninIsoValue = 'bj';
  static const _bhutanIsoValue = 'bt';
  static const _boliviaIsoValue = 'bo';
  static const _bosniaAndHerzegovinaIsoValue = 'ba';
  static const _botswanaIsoValue = 'bw';
  static const _brazilIsoValue = 'br';
  static const _bruneiIsoValue = 'bn';
  static const _bulgariaIsoValue = 'bg';
  static const _burkinaFasoIsoValue = 'bf';
  static const _burundiIsoValue = 'bi';
  static const _cambodiaIsoValue = 'kh';
  static const _cameroonIsoValue = 'cm';
  static const _canadaIsoValue = 'ca';
  static const _capeVerdeIsoValue = 'cv';
  static const _centralAfricanRepublicIsoValue = 'cf';
  static const _chadIsoValue = 'td';
  static const _chileIsoValue = 'cl';
  static const _chinaIsoValue = 'cn';
  static const _colombiaIsoValue = 'co';
  static const _comorosIsoValue = 'km';
  static const _congoIsoValue = 'cg';
  static const _costaRicaIsoValue = 'cr';
  static const _croatiaIsoValue = 'hr';
  static const _cubaIsoValue = 'cu';
  static const _cyprusIsoValue = 'cy';
  static const _czechRepublicIsoValue = 'cz';
  static const _denmarkIsoValue = 'dk';
  static const _djiboutiIsoValue = 'dj';
  static const _dominicaIsoValue = 'dm';
  static const _dominicanRepublicIsoValue = 'do';
  static const _drCongoIsoValue = 'cd';
  static const _ecuadorIsoValue = 'ec';
  static const _egyptIsoValue = 'eg';
  static const _elSalvadorIsoValue = 'sv';
  static const _equatorialGuineaIsoValue = 'gq';
  static const _eritreaIsoValue = 'er';
  static const _estoniaIsoValue = 'ee';
  static const _eswatiniIsoValue = 'sz';
  static const _ethiopiaIsoValue = 'et';
  static const _fijiIsoValue = 'fj';
  static const _finlandIsoValue = 'fi';
  static const _franceIsoValue = 'fr';
  static const _gabonIsoValue = 'ga';
  static const _gambiaIsoValue = 'gm';
  static const _georgiaIsoValue = 'ge';
  static const _germanyIsoValue = 'de';
  static const _ghanaIsoValue = 'gh';
  static const _greeceIsoValue = 'gr';
  static const _grenadaIsoValue = 'gd';
  static const _guatemalaIsoValue = 'gt';
  static const _guineaIsoValue = 'gn';
  static const _guineaBissauIsoValue = 'gw';
  static const _guyanaIsoValue = 'gy';
  static const _haitiIsoValue = 'ht';
  static const _hondurasIsoValue = 'hn';
  static const _hungaryIsoValue = 'hu';
  static const _icelandIsoValue = 'is';
  static const _indiaIsoValue = 'in';
  static const _indonesiaIsoValue = 'id';
  static const _iranIsoValue = 'ir';
  static const _iraqIsoValue = 'iq';
  static const _irelandIsoValue = 'ie';
  static const _israelIsoValue = 'il';
  static const _italyIsoValue = 'it';
  static const _ivoryCoastIsoValue = 'ci';
  static const _jamaicaIsoValue = 'jm';
  static const _japanIsoValue = 'jp';
  static const _jordanIsoValue = 'jo';
  static const _kazakhstanIsoValue = 'kz';
  static const _kenyaIsoValue = 'ke';
  static const _kiribatiIsoValue = 'ki';
  static const _kosovoIsoValue = 'xk';
  static const _kuwaitIsoValue = 'kw';
  static const _kyrgyzstanIsoValue = 'kg';
  static const _laosIsoValue = 'la';
  static const _latviaIsoValue = 'lv';
  static const _lebanonIsoValue = 'lb';
  static const _lesothoIsoValue = 'ls';
  static const _liberiaIsoValue = 'lr';
  static const _libyaIsoValue = 'ly';
  static const _liechtensteinIsoValue = 'li';
  static const _lithuaniaIsoValue = 'lt';
  static const _luxembourgIsoValue = 'lu';
  static const _madagascarIsoValue = 'mg';
  static const _malawiIsoValue = 'mw';
  static const _malaysiaIsoValue = 'my';
  static const _maldivesIsoValue = 'mv';
  static const _maliIsoValue = 'ml';
  static const _maltaIsoValue = 'mt';
  static const _marshallIslandsIsoValue = 'mh';
  static const _mauritaniaIsoValue = 'mr';
  static const _mauritiusIsoValue = 'mu';
  static const _mexicoIsoValue = 'mx';
  static const _micronesiaIsoValue = 'fm';
  static const _moldovaIsoValue = 'md';
  static const _monacoIsoValue = 'mc';
  static const _mongoliaIsoValue = 'mn';
  static const _montenegroIsoValue = 'me';
  static const _moroccoIsoValue = 'ma';
  static const _mozambiqueIsoValue = 'mz';
  static const _myanmarIsoValue = 'mm';
  static const _namibiaIsoValue = 'na';
  static const _nauruIsoValue = 'nr';
  static const _nepalIsoValue = 'np';
  static const _netherlandsIsoValue = 'nl';
  static const _newZealandIsoValue = 'nz';
  static const _nicaraguaIsoValue = 'ni';
  static const _nigerIsoValue = 'ne';
  static const _nigeriaIsoValue = 'ng';
  static const _northKoreaIsoValue = 'kp';
  static const _northMacedoniaIsoValue = 'mk';
  static const _norwayIsoValue = 'no';
  static const _omanIsoValue = 'om';
  static const _pakistanIsoValue = 'pk';
  static const _palauIsoValue = 'pw';
  static const _palestineIsoValue = 'ps';
  static const _panamaIsoValue = 'pa';
  static const _papuaNewGuineaIsoValue = 'pg';
  static const _paraguayIsoValue = 'py';
  static const _peruIsoValue = 'pe';
  static const _philippinesIsoValue = 'ph';
  static const _polandIsoValue = 'pl';
  static const _portugalIsoValue = 'pt';
  static const _qatarIsoValue = 'qa';
  static const _romaniaIsoValue = 'ro';
  static const _russiaIsoValue = 'ru';
  static const _rwandaIsoValue = 'rw';
  static const _saintKittsAndNevisIsoValue = 'kn';
  static const _saintLuciaIsoValue = 'lc';
  static const _saintVincentAndTheGrenadinesIsoValue = 'vc';
  static const _samoaIsoValue = 'ws';
  static const _sanMarinoIsoValue = 'sm';
  static const _saoTomeAndPrincipeIsoValue = 'st';
  static const _saudiArabiaIsoValue = 'sa';
  static const _senegalIsoValue = 'sn';
  static const _serbiaIsoValue = 'rs';
  static const _seychellesIsoValue = 'sc';
  static const _sierraLeoneIsoValue = 'sl';
  static const _singaporeIsoValue = 'sg';
  static const _slovakiaIsoValue = 'sk';
  static const _sloveniaIsoValue = 'si';
  static const _solomonIslandsIsoValue = 'sb';
  static const _somaliaIsoValue = 'so';
  static const _southAfricaIsoValue = 'za';
  static const _southKoreaIsoValue = 'kr';
  static const _southSudanIsoValue = 'ss';
  static const _spainIsoValue = 'es';
  static const _sriLankaIsoValue = 'lk';
  static const _sudanIsoValue = 'sd';
  static const _surinameIsoValue = 'sr';
  static const _swedenIsoValue = 'se';
  static const _switzerlandIsoValue = 'ch';
  static const _syriaIsoValue = 'sy';
  static const _taiwanIsoValue = 'tw';
  static const _tajikistanIsoValue = 'tj';
  static const _tanzaniaIsoValue = 'tz';
  static const _thailandIsoValue = 'th';
  static const _timorLesteIsoValue = 'tl';
  static const _togoIsoValue = 'tg';
  static const _tongaIsoValue = 'to';
  static const _trinidadAndTobagoIsoValue = 'tt';
  static const _tunisiaIsoValue = 'tn';
  static const _turkeyIsoValue = 'tr';
  static const _turkmenistanIsoValue = 'tm';
  static const _tuvaluIsoValue = 'tv';
  static const _ugandaIsoValue = 'ug';
  static const _ukraineIsoValue = 'ua';
  static const _unitedArabEmiratesIsoValue = 'ae';
  static const _unitedKingdomIsoValue = 'gb';
  static const _unitedStatesIsoValue = 'us';
  static const _uruguayIsoValue = 'uy';
  static const _uzbekistanIsoValue = 'uz';
  static const _vanuatuIsoValue = 'vu';
  static const _vaticanCityIsoValue = 'va';
  static const _venezuelaIsoValue = 've';
  static const _vietnamIsoValue = 'vn';
  static const _yemenIsoValue = 'ye';
  static const _zambiaIsoValue = 'zm';
  static const _zimbabweIsoValue = 'zw';

  /// Default constructor.
  const MyoroCountryEnum(this.emoji, this.currency);

  /// Fake constructor.
  factory MyoroCountryEnum.fake() {
    return values[faker.randomGenerator.integer(values.length)];
  }

  /// Flag emoji of the country.
  final String emoji;

  /// Currency of the country.
  final MyoroCurrencyEnum currency;

  /// ISO 3166-1 alpha-2 country code (uppercase).
  String get isoValue {
    final code = switch (this) {
      afghanistan => _afghanistanIsoValue,
      albania => _albaniaIsoValue,
      algeria => _algeriaIsoValue,
      andorra => _andorraIsoValue,
      angola => _angolaIsoValue,
      antiguaAndBarbuda => _antiguaAndBarbudaIsoValue,
      argentina => _argentinaIsoValue,
      armenia => _armeniaIsoValue,
      australia => _australiaIsoValue,
      austria => _austriaIsoValue,
      azerbaijan => _azerbaijanIsoValue,
      bahamas => _bahamasIsoValue,
      bahrain => _bahrainIsoValue,
      bangladesh => _bangladeshIsoValue,
      barbados => _barbadosIsoValue,
      belarus => _belarusIsoValue,
      belgium => _belgiumIsoValue,
      belize => _belizeIsoValue,
      benin => _beninIsoValue,
      bhutan => _bhutanIsoValue,
      bolivia => _boliviaIsoValue,
      bosniaAndHerzegovina => _bosniaAndHerzegovinaIsoValue,
      botswana => _botswanaIsoValue,
      brazil => _brazilIsoValue,
      brunei => _bruneiIsoValue,
      bulgaria => _bulgariaIsoValue,
      burkinaFaso => _burkinaFasoIsoValue,
      burundi => _burundiIsoValue,
      cambodia => _cambodiaIsoValue,
      cameroon => _cameroonIsoValue,
      canada => _canadaIsoValue,
      capeVerde => _capeVerdeIsoValue,
      centralAfricanRepublic => _centralAfricanRepublicIsoValue,
      chad => _chadIsoValue,
      chile => _chileIsoValue,
      china => _chinaIsoValue,
      colombia => _colombiaIsoValue,
      comoros => _comorosIsoValue,
      congo => _congoIsoValue,
      costaRica => _costaRicaIsoValue,
      croatia => _croatiaIsoValue,
      cuba => _cubaIsoValue,
      cyprus => _cyprusIsoValue,
      czechRepublic => _czechRepublicIsoValue,
      denmark => _denmarkIsoValue,
      djibouti => _djiboutiIsoValue,
      dominica => _dominicaIsoValue,
      dominicanRepublic => _dominicanRepublicIsoValue,
      drCongo => _drCongoIsoValue,
      ecuador => _ecuadorIsoValue,
      egypt => _egyptIsoValue,
      elSalvador => _elSalvadorIsoValue,
      equatorialGuinea => _equatorialGuineaIsoValue,
      eritrea => _eritreaIsoValue,
      estonia => _estoniaIsoValue,
      eswatini => _eswatiniIsoValue,
      ethiopia => _ethiopiaIsoValue,
      fiji => _fijiIsoValue,
      finland => _finlandIsoValue,
      france => _franceIsoValue,
      gabon => _gabonIsoValue,
      gambia => _gambiaIsoValue,
      georgia => _georgiaIsoValue,
      germany => _germanyIsoValue,
      ghana => _ghanaIsoValue,
      greece => _greeceIsoValue,
      grenada => _grenadaIsoValue,
      guatemala => _guatemalaIsoValue,
      guinea => _guineaIsoValue,
      guineaBissau => _guineaBissauIsoValue,
      guyana => _guyanaIsoValue,
      haiti => _haitiIsoValue,
      honduras => _hondurasIsoValue,
      hungary => _hungaryIsoValue,
      iceland => _icelandIsoValue,
      india => _indiaIsoValue,
      indonesia => _indonesiaIsoValue,
      iran => _iranIsoValue,
      iraq => _iraqIsoValue,
      ireland => _irelandIsoValue,
      israel => _israelIsoValue,
      italy => _italyIsoValue,
      ivoryCoast => _ivoryCoastIsoValue,
      jamaica => _jamaicaIsoValue,
      japan => _japanIsoValue,
      jordan => _jordanIsoValue,
      kazakhstan => _kazakhstanIsoValue,
      kenya => _kenyaIsoValue,
      kiribati => _kiribatiIsoValue,
      kosovo => _kosovoIsoValue,
      kuwait => _kuwaitIsoValue,
      kyrgyzstan => _kyrgyzstanIsoValue,
      laos => _laosIsoValue,
      latvia => _latviaIsoValue,
      lebanon => _lebanonIsoValue,
      lesotho => _lesothoIsoValue,
      liberia => _liberiaIsoValue,
      libya => _libyaIsoValue,
      liechtenstein => _liechtensteinIsoValue,
      lithuania => _lithuaniaIsoValue,
      luxembourg => _luxembourgIsoValue,
      madagascar => _madagascarIsoValue,
      malawi => _malawiIsoValue,
      malaysia => _malaysiaIsoValue,
      maldives => _maldivesIsoValue,
      mali => _maliIsoValue,
      malta => _maltaIsoValue,
      marshallIslands => _marshallIslandsIsoValue,
      mauritania => _mauritaniaIsoValue,
      mauritius => _mauritiusIsoValue,
      mexico => _mexicoIsoValue,
      micronesia => _micronesiaIsoValue,
      moldova => _moldovaIsoValue,
      monaco => _monacoIsoValue,
      mongolia => _mongoliaIsoValue,
      montenegro => _montenegroIsoValue,
      morocco => _moroccoIsoValue,
      mozambique => _mozambiqueIsoValue,
      myanmar => _myanmarIsoValue,
      namibia => _namibiaIsoValue,
      nauru => _nauruIsoValue,
      nepal => _nepalIsoValue,
      netherlands => _netherlandsIsoValue,
      newZealand => _newZealandIsoValue,
      nicaragua => _nicaraguaIsoValue,
      niger => _nigerIsoValue,
      nigeria => _nigeriaIsoValue,
      northKorea => _northKoreaIsoValue,
      northMacedonia => _northMacedoniaIsoValue,
      norway => _norwayIsoValue,
      oman => _omanIsoValue,
      pakistan => _pakistanIsoValue,
      palau => _palauIsoValue,
      palestine => _palestineIsoValue,
      panama => _panamaIsoValue,
      papuaNewGuinea => _papuaNewGuineaIsoValue,
      paraguay => _paraguayIsoValue,
      peru => _peruIsoValue,
      philippines => _philippinesIsoValue,
      poland => _polandIsoValue,
      portugal => _portugalIsoValue,
      qatar => _qatarIsoValue,
      romania => _romaniaIsoValue,
      russia => _russiaIsoValue,
      rwanda => _rwandaIsoValue,
      saintKittsAndNevis => _saintKittsAndNevisIsoValue,
      saintLucia => _saintLuciaIsoValue,
      saintVincentAndTheGrenadines => _saintVincentAndTheGrenadinesIsoValue,
      samoa => _samoaIsoValue,
      sanMarino => _sanMarinoIsoValue,
      saoTomeAndPrincipe => _saoTomeAndPrincipeIsoValue,
      saudiArabia => _saudiArabiaIsoValue,
      senegal => _senegalIsoValue,
      serbia => _serbiaIsoValue,
      seychelles => _seychellesIsoValue,
      sierraLeone => _sierraLeoneIsoValue,
      singapore => _singaporeIsoValue,
      slovakia => _slovakiaIsoValue,
      slovenia => _sloveniaIsoValue,
      solomonIslands => _solomonIslandsIsoValue,
      somalia => _somaliaIsoValue,
      southAfrica => _southAfricaIsoValue,
      southKorea => _southKoreaIsoValue,
      southSudan => _southSudanIsoValue,
      spain => _spainIsoValue,
      sriLanka => _sriLankaIsoValue,
      sudan => _sudanIsoValue,
      suriname => _surinameIsoValue,
      sweden => _swedenIsoValue,
      switzerland => _switzerlandIsoValue,
      syria => _syriaIsoValue,
      taiwan => _taiwanIsoValue,
      tajikistan => _tajikistanIsoValue,
      tanzania => _tanzaniaIsoValue,
      thailand => _thailandIsoValue,
      timorLeste => _timorLesteIsoValue,
      togo => _togoIsoValue,
      tonga => _tongaIsoValue,
      trinidadAndTobago => _trinidadAndTobagoIsoValue,
      tunisia => _tunisiaIsoValue,
      turkey => _turkeyIsoValue,
      turkmenistan => _turkmenistanIsoValue,
      tuvalu => _tuvaluIsoValue,
      uganda => _ugandaIsoValue,
      ukraine => _ukraineIsoValue,
      unitedArabEmirates => _unitedArabEmiratesIsoValue,
      unitedKingdom => _unitedKingdomIsoValue,
      unitedStates => _unitedStatesIsoValue,
      uruguay => _uruguayIsoValue,
      uzbekistan => _uzbekistanIsoValue,
      vanuatu => _vanuatuIsoValue,
      vaticanCity => _vaticanCityIsoValue,
      venezuela => _venezuelaIsoValue,
      vietnam => _vietnamIsoValue,
      yemen => _yemenIsoValue,
      zambia => _zambiaIsoValue,
      zimbabwe => _zimbabweIsoValue,
    };
    return code.toUpperCase();
  }

  /// Name of the country.
  String name(BuildContext context) {
    final localization = context.mflLocalization;
    return switch (this) {
      afghanistan => localization.myoroCountryEnumAfghanistanLabel,
      albania => localization.myoroCountryEnumAlbaniaLabel,
      algeria => localization.myoroCountryEnumAlgeriaLabel,
      andorra => localization.myoroCountryEnumAndorraLabel,
      angola => localization.myoroCountryEnumAngolaLabel,
      antiguaAndBarbuda => localization.myoroCountryEnumAntiguaAndBarbudaLabel,
      argentina => localization.myoroCountryEnumArgentinaLabel,
      armenia => localization.myoroCountryEnumArmeniaLabel,
      australia => localization.myoroCountryEnumAustraliaLabel,
      austria => localization.myoroCountryEnumAustriaLabel,
      azerbaijan => localization.myoroCountryEnumAzerbaijanLabel,
      bahamas => localization.myoroCountryEnumBahamasLabel,
      bahrain => localization.myoroCountryEnumBahrainLabel,
      bangladesh => localization.myoroCountryEnumBangladeshLabel,
      barbados => localization.myoroCountryEnumBarbadosLabel,
      belarus => localization.myoroCountryEnumBelarusLabel,
      belgium => localization.myoroCountryEnumBelgiumLabel,
      belize => localization.myoroCountryEnumBelizeLabel,
      benin => localization.myoroCountryEnumBeninLabel,
      bhutan => localization.myoroCountryEnumBhutanLabel,
      bolivia => localization.myoroCountryEnumBoliviaLabel,
      bosniaAndHerzegovina => localization.myoroCountryEnumBosniaAndHerzegovinaLabel,
      botswana => localization.myoroCountryEnumBotswanaLabel,
      brazil => localization.myoroCountryEnumBrazilLabel,
      brunei => localization.myoroCountryEnumBruneiLabel,
      bulgaria => localization.myoroCountryEnumBulgariaLabel,
      burkinaFaso => localization.myoroCountryEnumBurkinaFasoLabel,
      burundi => localization.myoroCountryEnumBurundiLabel,
      cambodia => localization.myoroCountryEnumCambodiaLabel,
      cameroon => localization.myoroCountryEnumCameroonLabel,
      canada => localization.myoroCountryEnumCanadaLabel,
      capeVerde => localization.myoroCountryEnumCapeVerdeLabel,
      centralAfricanRepublic => localization.myoroCountryEnumCentralAfricanRepublicLabel,
      chad => localization.myoroCountryEnumChadLabel,
      chile => localization.myoroCountryEnumChileLabel,
      china => localization.myoroCountryEnumChinaLabel,
      colombia => localization.myoroCountryEnumColombiaLabel,
      comoros => localization.myoroCountryEnumComorosLabel,
      congo => localization.myoroCountryEnumCongoLabel,
      costaRica => localization.myoroCountryEnumCostaRicaLabel,
      croatia => localization.myoroCountryEnumCroatiaLabel,
      cuba => localization.myoroCountryEnumCubaLabel,
      cyprus => localization.myoroCountryEnumCyprusLabel,
      czechRepublic => localization.myoroCountryEnumCzechRepublicLabel,
      denmark => localization.myoroCountryEnumDenmarkLabel,
      djibouti => localization.myoroCountryEnumDjiboutiLabel,
      dominica => localization.myoroCountryEnumDominicaLabel,
      dominicanRepublic => localization.myoroCountryEnumDominicanRepublicLabel,
      drCongo => localization.myoroCountryEnumDrCongoLabel,
      ecuador => localization.myoroCountryEnumEcuadorLabel,
      egypt => localization.myoroCountryEnumEgyptLabel,
      elSalvador => localization.myoroCountryEnumElSalvadorLabel,
      equatorialGuinea => localization.myoroCountryEnumEquatorialGuineaLabel,
      eritrea => localization.myoroCountryEnumEritreaLabel,
      estonia => localization.myoroCountryEnumEstoniaLabel,
      eswatini => localization.myoroCountryEnumEswatiniLabel,
      ethiopia => localization.myoroCountryEnumEthiopiaLabel,
      fiji => localization.myoroCountryEnumFijiLabel,
      finland => localization.myoroCountryEnumFinlandLabel,
      france => localization.myoroCountryEnumFranceLabel,
      gabon => localization.myoroCountryEnumGabonLabel,
      gambia => localization.myoroCountryEnumGambiaLabel,
      georgia => localization.myoroCountryEnumGeorgiaLabel,
      germany => localization.myoroCountryEnumGermanyLabel,
      ghana => localization.myoroCountryEnumGhanaLabel,
      greece => localization.myoroCountryEnumGreeceLabel,
      grenada => localization.myoroCountryEnumGrenadaLabel,
      guatemala => localization.myoroCountryEnumGuatemalaLabel,
      guinea => localization.myoroCountryEnumGuineaLabel,
      guineaBissau => localization.myoroCountryEnumGuineaBissauLabel,
      guyana => localization.myoroCountryEnumGuyanaLabel,
      haiti => localization.myoroCountryEnumHaitiLabel,
      honduras => localization.myoroCountryEnumHondurasLabel,
      hungary => localization.myoroCountryEnumHungaryLabel,
      iceland => localization.myoroCountryEnumIcelandLabel,
      india => localization.myoroCountryEnumIndiaLabel,
      indonesia => localization.myoroCountryEnumIndonesiaLabel,
      iran => localization.myoroCountryEnumIranLabel,
      iraq => localization.myoroCountryEnumIraqLabel,
      ireland => localization.myoroCountryEnumIrelandLabel,
      israel => localization.myoroCountryEnumIsraelLabel,
      italy => localization.myoroCountryEnumItalyLabel,
      ivoryCoast => localization.myoroCountryEnumIvoryCoastLabel,
      jamaica => localization.myoroCountryEnumJamaicaLabel,
      japan => localization.myoroCountryEnumJapanLabel,
      jordan => localization.myoroCountryEnumJordanLabel,
      kazakhstan => localization.myoroCountryEnumKazakhstanLabel,
      kenya => localization.myoroCountryEnumKenyaLabel,
      kiribati => localization.myoroCountryEnumKiribatiLabel,
      kosovo => localization.myoroCountryEnumKosovoLabel,
      kuwait => localization.myoroCountryEnumKuwaitLabel,
      kyrgyzstan => localization.myoroCountryEnumKyrgyzstanLabel,
      laos => localization.myoroCountryEnumLaosLabel,
      latvia => localization.myoroCountryEnumLatviaLabel,
      lebanon => localization.myoroCountryEnumLebanonLabel,
      lesotho => localization.myoroCountryEnumLesothoLabel,
      liberia => localization.myoroCountryEnumLiberiaLabel,
      libya => localization.myoroCountryEnumLibyaLabel,
      liechtenstein => localization.myoroCountryEnumLiechtensteinLabel,
      lithuania => localization.myoroCountryEnumLithuaniaLabel,
      luxembourg => localization.myoroCountryEnumLuxembourgLabel,
      madagascar => localization.myoroCountryEnumMadagascarLabel,
      malawi => localization.myoroCountryEnumMalawiLabel,
      malaysia => localization.myoroCountryEnumMalaysiaLabel,
      maldives => localization.myoroCountryEnumMaldivesLabel,
      mali => localization.myoroCountryEnumMaliLabel,
      malta => localization.myoroCountryEnumMaltaLabel,
      marshallIslands => localization.myoroCountryEnumMarshallIslandsLabel,
      mauritania => localization.myoroCountryEnumMauritaniaLabel,
      mauritius => localization.myoroCountryEnumMauritiusLabel,
      mexico => localization.myoroCountryEnumMexicoLabel,
      micronesia => localization.myoroCountryEnumMicronesiaLabel,
      moldova => localization.myoroCountryEnumMoldovaLabel,
      monaco => localization.myoroCountryEnumMonacoLabel,
      mongolia => localization.myoroCountryEnumMongoliaLabel,
      montenegro => localization.myoroCountryEnumMontenegroLabel,
      morocco => localization.myoroCountryEnumMoroccoLabel,
      mozambique => localization.myoroCountryEnumMozambiqueLabel,
      myanmar => localization.myoroCountryEnumMyanmarLabel,
      namibia => localization.myoroCountryEnumNamibiaLabel,
      nauru => localization.myoroCountryEnumNauruLabel,
      nepal => localization.myoroCountryEnumNepalLabel,
      netherlands => localization.myoroCountryEnumNetherlandsLabel,
      newZealand => localization.myoroCountryEnumNewZealandLabel,
      nicaragua => localization.myoroCountryEnumNicaraguaLabel,
      niger => localization.myoroCountryEnumNigerLabel,
      nigeria => localization.myoroCountryEnumNigeriaLabel,
      northKorea => localization.myoroCountryEnumNorthKoreaLabel,
      northMacedonia => localization.myoroCountryEnumNorthMacedoniaLabel,
      norway => localization.myoroCountryEnumNorwayLabel,
      oman => localization.myoroCountryEnumOmanLabel,
      pakistan => localization.myoroCountryEnumPakistanLabel,
      palau => localization.myoroCountryEnumPalauLabel,
      palestine => localization.myoroCountryEnumPalestineLabel,
      panama => localization.myoroCountryEnumPanamaLabel,
      papuaNewGuinea => localization.myoroCountryEnumPapuaNewGuineaLabel,
      paraguay => localization.myoroCountryEnumParaguayLabel,
      peru => localization.myoroCountryEnumPeruLabel,
      philippines => localization.myoroCountryEnumPhilippinesLabel,
      poland => localization.myoroCountryEnumPolandLabel,
      portugal => localization.myoroCountryEnumPortugalLabel,
      qatar => localization.myoroCountryEnumQatarLabel,
      romania => localization.myoroCountryEnumRomaniaLabel,
      russia => localization.myoroCountryEnumRussiaLabel,
      rwanda => localization.myoroCountryEnumRwandaLabel,
      saintKittsAndNevis => localization.myoroCountryEnumSaintKittsAndNevisLabel,
      saintLucia => localization.myoroCountryEnumSaintLuciaLabel,
      saintVincentAndTheGrenadines => localization.myoroCountryEnumSaintVincentAndTheGrenadinesLabel,
      samoa => localization.myoroCountryEnumSamoaLabel,
      sanMarino => localization.myoroCountryEnumSanMarinoLabel,
      saoTomeAndPrincipe => localization.myoroCountryEnumSaoTomeAndPrincipeLabel,
      saudiArabia => localization.myoroCountryEnumSaudiArabiaLabel,
      senegal => localization.myoroCountryEnumSenegalLabel,
      serbia => localization.myoroCountryEnumSerbiaLabel,
      seychelles => localization.myoroCountryEnumSeychellesLabel,
      sierraLeone => localization.myoroCountryEnumSierraLeoneLabel,
      singapore => localization.myoroCountryEnumSingaporeLabel,
      slovakia => localization.myoroCountryEnumSlovakiaLabel,
      slovenia => localization.myoroCountryEnumSloveniaLabel,
      solomonIslands => localization.myoroCountryEnumSolomonIslandsLabel,
      somalia => localization.myoroCountryEnumSomaliaLabel,
      southAfrica => localization.myoroCountryEnumSouthAfricaLabel,
      southKorea => localization.myoroCountryEnumSouthKoreaLabel,
      southSudan => localization.myoroCountryEnumSouthSudanLabel,
      spain => localization.myoroCountryEnumSpainLabel,
      sriLanka => localization.myoroCountryEnumSriLankaLabel,
      sudan => localization.myoroCountryEnumSudanLabel,
      suriname => localization.myoroCountryEnumSurinameLabel,
      sweden => localization.myoroCountryEnumSwedenLabel,
      switzerland => localization.myoroCountryEnumSwitzerlandLabel,
      syria => localization.myoroCountryEnumSyriaLabel,
      taiwan => localization.myoroCountryEnumTaiwanLabel,
      tajikistan => localization.myoroCountryEnumTajikistanLabel,
      tanzania => localization.myoroCountryEnumTanzaniaLabel,
      thailand => localization.myoroCountryEnumThailandLabel,
      timorLeste => localization.myoroCountryEnumTimorLesteLabel,
      togo => localization.myoroCountryEnumTogoLabel,
      tonga => localization.myoroCountryEnumTongaLabel,
      trinidadAndTobago => localization.myoroCountryEnumTrinidadAndTobagoLabel,
      tunisia => localization.myoroCountryEnumTunisiaLabel,
      turkey => localization.myoroCountryEnumTurkeyLabel,
      turkmenistan => localization.myoroCountryEnumTurkmenistanLabel,
      tuvalu => localization.myoroCountryEnumTuvaluLabel,
      uganda => localization.myoroCountryEnumUgandaLabel,
      ukraine => localization.myoroCountryEnumUkraineLabel,
      unitedArabEmirates => localization.myoroCountryEnumUnitedArabEmiratesLabel,
      unitedKingdom => localization.myoroCountryEnumUnitedKingdomLabel,
      unitedStates => localization.myoroCountryEnumUnitedStatesLabel,
      uruguay => localization.myoroCountryEnumUruguayLabel,
      uzbekistan => localization.myoroCountryEnumUzbekistanLabel,
      vanuatu => localization.myoroCountryEnumVanuatuLabel,
      vaticanCity => localization.myoroCountryEnumVaticanCityLabel,
      venezuela => localization.myoroCountryEnumVenezuelaLabel,
      vietnam => localization.myoroCountryEnumVietnamLabel,
      yemen => localization.myoroCountryEnumYemenLabel,
      zambia => localization.myoroCountryEnumZambiaLabel,
      zimbabwe => localization.myoroCountryEnumZimbabweLabel,
    };
  }
}
