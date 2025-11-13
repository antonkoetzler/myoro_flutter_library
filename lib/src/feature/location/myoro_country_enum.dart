import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:myoro_flutter_library/src/exports.dart';

/// Enum containing all countries in the world.
@JsonEnum()
enum MyoroCountryEnum {
  /// Afghanistan.
  @JsonValue('af')
  afghanistan('🇦🇫', MyoroCurrencyEnum.afn),

  /// Albania.
  @JsonValue('al')
  albania('🇦🇱', MyoroCurrencyEnum.all),

  /// Algeria.
  @JsonValue('dz')
  algeria('🇩🇿', MyoroCurrencyEnum.dzd),

  /// Andorra.
  @JsonValue('ad')
  andorra('🇦🇩', MyoroCurrencyEnum.eur),

  /// Angola.
  @JsonValue('ao')
  angola('🇦🇴', MyoroCurrencyEnum.aoa),

  /// Antigua and Barbuda.
  @JsonValue('ag')
  antiguaAndBarbuda('🇦🇬', MyoroCurrencyEnum.xcd),

  /// Argentina.
  @JsonValue('ar')
  argentina('🇦🇷', MyoroCurrencyEnum.ars),

  /// Armenia.
  @JsonValue('am')
  armenia('🇦🇲', MyoroCurrencyEnum.amd),

  /// Australia.
  @JsonValue('au')
  australia('🇦🇺', MyoroCurrencyEnum.aud),

  /// Austria.
  @JsonValue('at')
  austria('🇦🇹', MyoroCurrencyEnum.eur),

  /// Azerbaijan.
  @JsonValue('az')
  azerbaijan('🇦🇿', MyoroCurrencyEnum.azn),

  /// Bahamas.
  @JsonValue('bs')
  bahamas('🇧🇸', MyoroCurrencyEnum.bsd),

  /// Bahrain.
  @JsonValue('bh')
  bahrain('🇧🇭', MyoroCurrencyEnum.bhd),

  /// Bangladesh.
  @JsonValue('bd')
  bangladesh('🇧🇩', MyoroCurrencyEnum.bdt),

  /// Barbados.
  @JsonValue('bb')
  barbados('🇧🇧', MyoroCurrencyEnum.bbd),

  /// Belarus.
  @JsonValue('by')
  belarus('🇧🇾', MyoroCurrencyEnum.byn),

  /// Belgium.
  @JsonValue('be')
  belgium('🇧🇪', MyoroCurrencyEnum.eur),

  /// Belize.
  @JsonValue('bz')
  belize('🇧🇿', MyoroCurrencyEnum.bzd),

  /// Benin.
  @JsonValue('bj')
  benin('🇧🇯', MyoroCurrencyEnum.xof),

  /// Bhutan.
  @JsonValue('bt')
  bhutan('🇧🇹', MyoroCurrencyEnum.btn),

  /// Bolivia.
  @JsonValue('bo')
  bolivia('🇧🇴', MyoroCurrencyEnum.bob),

  /// Bosnia and Herzegovina.
  @JsonValue('ba')
  bosniaAndHerzegovina('🇧🇦', MyoroCurrencyEnum.bam),

  /// Botswana.
  @JsonValue('bw')
  botswana('🇧🇼', MyoroCurrencyEnum.bwp),

  /// Brazil.
  @JsonValue('br')
  brazil('🇧🇷', MyoroCurrencyEnum.brl),

  /// Brunei.
  @JsonValue('bn')
  brunei('🇧🇳', MyoroCurrencyEnum.bnd),

  /// Bulgaria.
  @JsonValue('bg')
  bulgaria('🇧🇬', MyoroCurrencyEnum.bgn),

  /// Burkina Faso.
  @JsonValue('bf')
  burkinaFaso('🇧🇫', MyoroCurrencyEnum.xof),

  /// Burundi.
  @JsonValue('bi')
  burundi('🇧🇮', MyoroCurrencyEnum.bif),

  /// Cambodia.
  @JsonValue('kh')
  cambodia('🇰🇭', MyoroCurrencyEnum.khr),

  /// Cameroon.
  @JsonValue('cm')
  cameroon('🇨🇲', MyoroCurrencyEnum.xaf),

  /// Canada.
  @JsonValue('ca')
  canada('🇨🇦', MyoroCurrencyEnum.cad),

  /// CapeVerde.
  @JsonValue('cv')
  capeVerde('🇨🇻', MyoroCurrencyEnum.cve),

  /// Central African Republic.
  @JsonValue('cf')
  centralAfricanRepublic('🇨🇫', MyoroCurrencyEnum.xaf),

  /// Chad.
  @JsonValue('td')
  chad('🇹🇩', MyoroCurrencyEnum.xaf),

  /// Chile.
  @JsonValue('cl')
  chile('🇨🇱', MyoroCurrencyEnum.clp),

  /// China.
  @JsonValue('cn')
  china('🇨🇳', MyoroCurrencyEnum.cny),

  /// Colombia.
  @JsonValue('co')
  colombia('🇨🇴', MyoroCurrencyEnum.cop),

  /// Comoros.
  @JsonValue('km')
  comoros('🇰🇲', MyoroCurrencyEnum.kmf),

  /// Congo.
  @JsonValue('cg')
  congo('🇨🇬', MyoroCurrencyEnum.xaf),

  /// Costa Rica.
  @JsonValue('cr')
  costaRica('🇨🇷', MyoroCurrencyEnum.crc),

  /// Croatia.
  @JsonValue('hr')
  croatia('🇭🇷', MyoroCurrencyEnum.hrk),

  /// Cuba.
  @JsonValue('cu')
  cuba('🇨🇺', MyoroCurrencyEnum.usd),

  /// Cyprus.
  @JsonValue('cy')
  cyprus('🇨🇾', MyoroCurrencyEnum.eur),

  /// CzechRepublic.
  @JsonValue('cz')
  czechRepublic('🇨🇿', MyoroCurrencyEnum.czk),

  /// Denmark.
  @JsonValue('dk')
  denmark('🇩🇰', MyoroCurrencyEnum.dkk),

  /// Djibouti.
  @JsonValue('dj')
  djibouti('🇩🇯', MyoroCurrencyEnum.djf),

  /// Dominica.
  @JsonValue('dm')
  dominica('🇩🇲', MyoroCurrencyEnum.xcd),

  /// Dominican Republic.
  @JsonValue('do')
  dominicanRepublic('🇩🇴', MyoroCurrencyEnum.dop),

  /// Dr Congo.
  @JsonValue('cd')
  drCongo('🇨🇩', MyoroCurrencyEnum.cdf),

  /// Ecuador.
  @JsonValue('ec')
  ecuador('🇪🇨', MyoroCurrencyEnum.usd),

  /// Egypt.
  @JsonValue('eg')
  egypt('🇪🇬', MyoroCurrencyEnum.egp),

  /// El Salvador.
  @JsonValue('sv')
  elSalvador('🇸🇻', MyoroCurrencyEnum.usd),

  /// EquatorialGuinea.
  @JsonValue('gq')
  equatorialGuinea('🇬🇶', MyoroCurrencyEnum.xaf),

  /// Eritrea.
  @JsonValue('er')
  eritrea('🇪🇷', MyoroCurrencyEnum.ern),

  /// Estonia.
  @JsonValue('ee')
  estonia('🇪🇪', MyoroCurrencyEnum.eur),

  /// Eswatini.
  @JsonValue('sz')
  eswatini('🇸🇿', MyoroCurrencyEnum.szl),

  /// Ethiopia.
  @JsonValue('et')
  ethiopia('🇪🇹', MyoroCurrencyEnum.etb),

  /// Fiji.
  @JsonValue('fj')
  fiji('🇫🇯', MyoroCurrencyEnum.fjd),

  /// Finland.
  @JsonValue('fi')
  finland('🇫🇮', MyoroCurrencyEnum.eur),

  /// France.
  @JsonValue('fr')
  france('🇫🇷', MyoroCurrencyEnum.eur),

  /// Gabon.
  @JsonValue('ga')
  gabon('🇬🇦', MyoroCurrencyEnum.xaf),

  /// Gambia.
  @JsonValue('gm')
  gambia('🇬🇲', MyoroCurrencyEnum.gmd),

  /// Georgia.
  @JsonValue('ge')
  georgia('🇬🇪', MyoroCurrencyEnum.gel),

  /// Germany.
  @JsonValue('de')
  germany('🇩🇪', MyoroCurrencyEnum.eur),

  /// Ghana.
  @JsonValue('gh')
  ghana('🇬🇭', MyoroCurrencyEnum.ghs),

  /// Greece.
  @JsonValue('gr')
  greece('🇬🇷', MyoroCurrencyEnum.eur),

  /// Grenada.
  @JsonValue('gd')
  grenada('🇬🇩', MyoroCurrencyEnum.xcd),

  /// Guatemala.
  @JsonValue('gt')
  guatemala('🇬🇹', MyoroCurrencyEnum.gtq),

  /// Guinea.
  @JsonValue('gn')
  guinea('🇬🇳', MyoroCurrencyEnum.gnf),

  /// Guinea Bissau.
  @JsonValue('gw')
  guineaBissau('🇬🇼', MyoroCurrencyEnum.xof),

  /// Guyana.
  @JsonValue('gy')
  guyana('🇬🇾', MyoroCurrencyEnum.gyd),

  /// Haiti.
  @JsonValue('ht')
  haiti('🇭🇹', MyoroCurrencyEnum.htg),

  /// Honduras.
  @JsonValue('hn')
  honduras('🇭🇳', MyoroCurrencyEnum.hnl),

  /// Hungary.
  @JsonValue('hu')
  hungary('🇭🇺', MyoroCurrencyEnum.huf),

  /// Iceland.
  @JsonValue('is')
  iceland('🇮🇸', MyoroCurrencyEnum.isk),

  /// India.
  @JsonValue('in')
  india('🇮🇳', MyoroCurrencyEnum.inr),

  /// Indonesia.
  @JsonValue('id')
  indonesia('🇮🇩', MyoroCurrencyEnum.idr),

  /// Iran.
  @JsonValue('ir')
  iran('🇮🇷', MyoroCurrencyEnum.irr),

  /// Iraq.
  @JsonValue('iq')
  iraq('🇮🇶', MyoroCurrencyEnum.iqd),

  /// Ireland.
  @JsonValue('ie')
  ireland('🇮🇪', MyoroCurrencyEnum.eur),

  /// Israel.
  @JsonValue('il')
  israel('🇮🇱', MyoroCurrencyEnum.ils),

  /// Italy.
  @JsonValue('it')
  italy('🇮🇹', MyoroCurrencyEnum.eur),

  /// Ivory Coast.
  @JsonValue('ci')
  ivoryCoast('🇨🇮', MyoroCurrencyEnum.xof),

  /// Jamaica.
  @JsonValue('jm')
  jamaica('🇯🇲', MyoroCurrencyEnum.jmd),

  /// Japan.
  @JsonValue('jp')
  japan('🇯🇵', MyoroCurrencyEnum.jpy),

  /// Jordan.
  @JsonValue('jo')
  jordan('🇯🇴', MyoroCurrencyEnum.jod),

  /// Kazakhstan.
  @JsonValue('kz')
  kazakhstan('🇰🇿', MyoroCurrencyEnum.kzt),

  /// Kenya.
  @JsonValue('ke')
  kenya('🇰🇪', MyoroCurrencyEnum.kes),

  /// Kiribati.
  @JsonValue('ki')
  kiribati('🇰🇮', MyoroCurrencyEnum.aud),

  /// Kosovo.
  @JsonValue('xk')
  kosovo('🇽🇰', MyoroCurrencyEnum.eur),

  /// Kuwait.
  @JsonValue('kw')
  kuwait('🇰🇼', MyoroCurrencyEnum.kwd),

  /// Kyrgyzstan.
  @JsonValue('kg')
  kyrgyzstan('🇰🇬', MyoroCurrencyEnum.kgs),

  /// Laos.
  @JsonValue('la')
  laos('🇱🇦', MyoroCurrencyEnum.lak),

  /// Latvia.
  @JsonValue('lv')
  latvia('🇱🇻', MyoroCurrencyEnum.eur),

  /// Lebanon.
  @JsonValue('lb')
  lebanon('🇱🇧', MyoroCurrencyEnum.lbp),

  /// Lesotho.
  @JsonValue('ls')
  lesotho('🇱🇸', MyoroCurrencyEnum.lsl),

  /// Liberia.
  @JsonValue('lr')
  liberia('🇱🇷', MyoroCurrencyEnum.lrd),

  /// Libya.
  @JsonValue('ly')
  libya('🇱🇾', MyoroCurrencyEnum.lyd),

  /// Liechtenstein.
  @JsonValue('li')
  liechtenstein('🇱🇮', MyoroCurrencyEnum.chf),

  /// Lithuania.
  @JsonValue('lt')
  lithuania('🇱🇹', MyoroCurrencyEnum.eur),

  /// Luxembourg.
  @JsonValue('lu')
  luxembourg('🇱🇺', MyoroCurrencyEnum.eur),

  /// Madagascar.
  @JsonValue('mg')
  madagascar('🇲🇬', MyoroCurrencyEnum.mga),

  /// Malawi.
  @JsonValue('mw')
  malawi('🇲🇼', MyoroCurrencyEnum.mwk),

  /// Malaysia.
  @JsonValue('my')
  malaysia('🇲🇾', MyoroCurrencyEnum.myr),

  /// Maldives.
  @JsonValue('mv')
  maldives('🇲🇻', MyoroCurrencyEnum.mvr),

  /// Mali.
  @JsonValue('ml')
  mali('🇲🇱', MyoroCurrencyEnum.xof),

  /// Malta.
  @JsonValue('mt')
  malta('🇲🇹', MyoroCurrencyEnum.eur),

  /// Marshall Islands.
  @JsonValue('mh')
  marshallIslands('🇲🇭', MyoroCurrencyEnum.usd),

  /// Mauritania.
  @JsonValue('mr')
  mauritania('🇲🇷', MyoroCurrencyEnum.mru),

  /// Mauritius.
  @JsonValue('mu')
  mauritius('🇲🇺', MyoroCurrencyEnum.mur),

  /// Mexico.
  @JsonValue('mx')
  mexico('🇲🇽', MyoroCurrencyEnum.mxn),

  /// Micronesia.
  @JsonValue('fm')
  micronesia('🇫🇲', MyoroCurrencyEnum.usd),

  /// Moldova.
  @JsonValue('md')
  moldova('🇲🇩', MyoroCurrencyEnum.mdl),

  /// Monaco.
  @JsonValue('mc')
  monaco('🇲🇨', MyoroCurrencyEnum.eur),

  /// Mongolia.
  @JsonValue('mn')
  mongolia('🇲🇳', MyoroCurrencyEnum.mnt),

  /// Montenegro.
  @JsonValue('me')
  montenegro('🇲🇪', MyoroCurrencyEnum.eur),

  /// Morocco.
  @JsonValue('ma')
  morocco('🇲🇦', MyoroCurrencyEnum.mad),

  /// Mozambique.
  @JsonValue('mz')
  mozambique('🇲🇿', MyoroCurrencyEnum.mzn),

  /// Myanmar.
  @JsonValue('mm')
  myanmar('🇲🇲', MyoroCurrencyEnum.mmk),

  /// Namibia.
  @JsonValue('na')
  namibia('🇳🇦', MyoroCurrencyEnum.nad),

  /// Nauru.
  @JsonValue('nr')
  nauru('🇳🇷', MyoroCurrencyEnum.aud),

  /// Nepal.
  @JsonValue('np')
  nepal('🇳🇵', MyoroCurrencyEnum.npr),

  /// Netherlands.
  @JsonValue('nl')
  netherlands('🇳🇱', MyoroCurrencyEnum.eur),

  /// NewZealand.
  @JsonValue('nz')
  newZealand('🇳🇿', MyoroCurrencyEnum.nzd),

  /// Nicaragua.
  @JsonValue('ni')
  nicaragua('🇳🇮', MyoroCurrencyEnum.nio),

  /// Niger.
  @JsonValue('ne')
  niger('🇳🇪', MyoroCurrencyEnum.xof),

  /// Nigeria.
  @JsonValue('ng')
  nigeria('🇳🇬', MyoroCurrencyEnum.ngn),

  /// NorthKorea.
  @JsonValue('kp')
  northKorea('🇰🇵', MyoroCurrencyEnum.kpw),

  /// NorthMacedonia.
  @JsonValue('mk')
  northMacedonia('🇲🇰', MyoroCurrencyEnum.mkd),

  /// Norway.
  @JsonValue('no')
  norway('🇳🇴', MyoroCurrencyEnum.nok),

  /// Oman.
  @JsonValue('om')
  oman('🇴🇲', MyoroCurrencyEnum.omr),

  /// Pakistan.
  @JsonValue('pk')
  pakistan('🇵🇰', MyoroCurrencyEnum.pkr),

  /// Palau.
  @JsonValue('pw')
  palau('🇵🇼', MyoroCurrencyEnum.usd),

  /// Palestine.
  @JsonValue('ps')
  palestine('🇵🇸', MyoroCurrencyEnum.ils),

  /// Panama.
  @JsonValue('pa')
  panama('🇵🇦', MyoroCurrencyEnum.pab),

  /// PapuaNewGuinea.
  @JsonValue('pg')
  papuaNewGuinea('🇵🇬', MyoroCurrencyEnum.pgk),

  /// Paraguay.
  @JsonValue('py')
  paraguay('🇵🇾', MyoroCurrencyEnum.pyg),

  /// Peru.
  @JsonValue('pe')
  peru('🇵🇪', MyoroCurrencyEnum.pen),

  /// Philippines.
  @JsonValue('ph')
  philippines('🇵🇭', MyoroCurrencyEnum.php),

  /// Poland.
  @JsonValue('pl')
  poland('🇵🇱', MyoroCurrencyEnum.pln),

  /// Portugal.
  @JsonValue('pt')
  portugal('🇵🇹', MyoroCurrencyEnum.eur),

  /// Qatar.
  @JsonValue('qa')
  qatar('🇶🇦', MyoroCurrencyEnum.qar),

  /// Romania.
  @JsonValue('ro')
  romania('🇷🇴', MyoroCurrencyEnum.ron),

  /// Russia.
  @JsonValue('ru')
  russia('🇷🇺', MyoroCurrencyEnum.rub),

  /// Rwanda.
  @JsonValue('rw')
  rwanda('🇷🇼', MyoroCurrencyEnum.rwf),

  /// SaintKitts and Nevis.
  @JsonValue('kn')
  saintKittsAndNevis('🇰🇳', MyoroCurrencyEnum.xcd),

  /// SaintLucia.
  @JsonValue('lc')
  saintLucia('🇱🇨', MyoroCurrencyEnum.xcd),

  /// SaintVincentAndTheGrenadines.
  @JsonValue('vc')
  saintVincentAndTheGrenadines('🇻🇨', MyoroCurrencyEnum.xcd),

  /// Samoa.
  @JsonValue('ws')
  samoa('🇼🇸', MyoroCurrencyEnum.wst),

  /// SanMarino.
  @JsonValue('sm')
  sanMarino('🇸🇲', MyoroCurrencyEnum.eur),

  /// Sao Tome and Principe.
  @JsonValue('st')
  saoTomeAndPrincipe('🇸🇹', MyoroCurrencyEnum.stn),

  /// Saudi Arabia.
  @JsonValue('sa')
  saudiArabia('🇸🇦', MyoroCurrencyEnum.sar),

  /// Senegal.
  @JsonValue('sn')
  senegal('🇸🇳', MyoroCurrencyEnum.xof),

  /// Serbia.
  @JsonValue('rs')
  serbia('🇷🇸', MyoroCurrencyEnum.rsd),

  /// Seychelles.
  @JsonValue('sc')
  seychelles('🇸🇨', MyoroCurrencyEnum.scr),

  /// SierraLeone.
  @JsonValue('sl')
  sierraLeone('🇸🇱', MyoroCurrencyEnum.sll),

  /// Singapore.
  @JsonValue('sg')
  singapore('🇸🇬', MyoroCurrencyEnum.sgd),

  /// Slovakia.
  @JsonValue('sk')
  slovakia('🇸🇰', MyoroCurrencyEnum.eur),

  /// Slovenia.
  @JsonValue('si')
  slovenia('🇸🇮', MyoroCurrencyEnum.eur),

  /// SolomonIslands.
  @JsonValue('sb')
  solomonIslands('🇸🇧', MyoroCurrencyEnum.sbd),

  /// Somalia.
  @JsonValue('so')
  somalia('🇸🇴', MyoroCurrencyEnum.sos),

  /// South Africa.
  @JsonValue('za')
  southAfrica('🇿🇦', MyoroCurrencyEnum.zar),

  /// South Korea.
  @JsonValue('kr')
  southKorea('🇰🇷', MyoroCurrencyEnum.krw),

  /// South Sudan.
  @JsonValue('ss')
  southSudan('🇸🇸', MyoroCurrencyEnum.ssp),

  /// Spain.
  @JsonValue('es')
  spain('🇪🇸', MyoroCurrencyEnum.eur),

  /// Sri Lanka.
  @JsonValue('lk')
  sriLanka('🇱🇰', MyoroCurrencyEnum.lkr),

  /// Sudan.
  @JsonValue('sd')
  sudan('🇸🇩', MyoroCurrencyEnum.sdp),

  /// Suriname.
  @JsonValue('sr')
  suriname('🇸🇷', MyoroCurrencyEnum.srd),

  /// Sweden.
  @JsonValue('se')
  sweden('🇸🇪', MyoroCurrencyEnum.sek),

  /// Switzerland.
  @JsonValue('ch')
  switzerland('🇨🇭', MyoroCurrencyEnum.chf),

  /// Syria.
  @JsonValue('sy')
  syria('🇸🇾', MyoroCurrencyEnum.syp),

  /// Taiwan.
  @JsonValue('tw')
  taiwan('🇹🇼', MyoroCurrencyEnum.twd),

  /// Tajikistan.
  @JsonValue('tj')
  tajikistan('🇹🇯', MyoroCurrencyEnum.tjs),

  /// Tanzania.
  @JsonValue('tz')
  tanzania('🇹🇿', MyoroCurrencyEnum.tzs),

  /// Thailand.
  @JsonValue('th')
  thailand('🇹🇭', MyoroCurrencyEnum.thb),

  /// TimorLeste.
  @JsonValue('tl')
  timorLeste('🇹🇱', MyoroCurrencyEnum.usd),

  /// Togo.
  @JsonValue('tg')
  togo('🇹🇬', MyoroCurrencyEnum.xof),

  /// Tonga.
  @JsonValue('to')
  tonga('🇹🇴', MyoroCurrencyEnum.top),

  /// Trinidad and Tobago.
  @JsonValue('tt')
  trinidadAndTobago('🇹🇹', MyoroCurrencyEnum.ttd),

  /// Tunisia.
  @JsonValue('tn')
  tunisia('🇹🇳', MyoroCurrencyEnum.tnd),

  /// Turkey.
  @JsonValue('tr')
  turkey('🇹🇷', MyoroCurrencyEnum.try_),

  /// Turkmenistan.
  @JsonValue('tm')
  turkmenistan('🇹🇲', MyoroCurrencyEnum.tmt),

  /// Tuvalu.
  @JsonValue('tv')
  tuvalu('🇹🇻', MyoroCurrencyEnum.aud),

  /// Uganda.
  @JsonValue('ug')
  uganda('🇺🇬', MyoroCurrencyEnum.ugx),

  /// Ukraine.
  @JsonValue('ua')
  ukraine('🇺🇦', MyoroCurrencyEnum.uah),

  /// United Arab Emirates.
  @JsonValue('ae')
  unitedArabEmirates('🇦🇪', MyoroCurrencyEnum.aed),

  /// UnitedKingdom.
  @JsonValue('gb')
  unitedKingdom('🇬🇧', MyoroCurrencyEnum.gbp),

  /// UnitedStates.
  @JsonValue('us')
  unitedStates('🇺🇸', MyoroCurrencyEnum.usd),

  /// Uruguay.
  @JsonValue('uy')
  uruguay('🇺🇾', MyoroCurrencyEnum.uyu),

  /// Uzbekistan.
  @JsonValue('uz')
  uzbekistan('🇺🇿', MyoroCurrencyEnum.uzs),

  /// Vanuatu.
  @JsonValue('vu')
  vanuatu('🇻🇺', MyoroCurrencyEnum.vuv),

  /// Vatican City.
  @JsonValue('va')
  vaticanCity('🇻🇦', MyoroCurrencyEnum.eur),

  /// Venezuela.
  @JsonValue('ve')
  venezuela('🇻🇪', MyoroCurrencyEnum.ves),

  /// Vietnam.
  @JsonValue('vn')
  vietnam('🇻🇳', MyoroCurrencyEnum.vnd),

  /// Yemen.
  @JsonValue('ye')
  yemen('🇾🇪', MyoroCurrencyEnum.yer),

  /// Zambia.
  @JsonValue('zm')
  zambia('🇿🇲', MyoroCurrencyEnum.zmw),

  /// Zimbabwe.
  @JsonValue('zw')
  zimbabwe('🇿🇼', MyoroCurrencyEnum.usd);

  /// Default constructor.
  const MyoroCountryEnum(this.emoji, this.currency);

  /// Flag emoji of the country.
  final String emoji;

  /// Currency of the country.
  final MyoroCurrencyEnum currency;

  /// Name of the country.
  String name(BuildContext context) {
    final localization = context.localization;
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
