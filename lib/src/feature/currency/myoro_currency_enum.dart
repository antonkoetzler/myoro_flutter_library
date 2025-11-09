import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/src/exports.dart';

/// Enum to enumerate all the provided currencies in MFL.
enum MyoroCurrencyEnum {
  /// US Dollar.
  usd('USD', '\$', '.'),

  /// Canadian Dollar.
  cad('CAD', 'C\$', '.'),

  /// Brazilian Real.
  brl('BRL', 'R\$', ','),

  /// Bitcoin.
  btc('BTC', '₿', '.'),

  /// Euro.
  eur('EUR', '€', ','),

  /// British Pound.
  gbp('GBP', '£', '.'),

  /// Japanese Yen.
  jpy('JPY', '¥', '.'),

  /// Chinese Yuan.
  cny('CNY', '¥', '.'),

  /// Indian Rupee.
  inr('INR', '₹', '.'),

  /// Australian Dollar.
  aud('AUD', 'A\$', '.'),

  /// Swiss Franc.
  chf('CHF', 'Fr', '.'),

  /// Swedish Krona.
  sek('SEK', 'kr', ','),

  /// Norwegian Krone.
  nok('NOK', 'kr', ','),

  /// Danish Krone.
  dkk('DKK', 'kr', ','),

  /// Polish Zloty.
  pln('PLN', 'zł', ','),

  /// Czech Koruna.
  czk('CZK', 'Kč', ','),

  /// Hungarian Forint.
  huf('HUF', 'Ft', ','),

  /// Romanian Leu.
  ron('RON', 'lei', ','),

  /// Bulgarian Lev.
  bgn('BGN', 'лв', ','),

  /// Croatian Kuna.
  hrk('HRK', 'kn', ','),

  /// Serbian Dinar.
  rsd('RSD', 'дин', '.'),

  /// Macedonian Denar.
  mkd('MKD', 'ден', '.'),

  /// Albanian Lek.
  all('ALL', 'L', '.'),

  /// Bosnia and Herzegovina Convertible Mark.
  bam('BAM', 'КМ', '.'),

  /// Mexican Peso.
  mxn('MXN', '\$', '.'),

  /// Argentine Peso.
  ars('ARS', '\$', ','),

  /// Chilean Peso.
  clp('CLP', '\$', '.'),

  /// Colombian Peso.
  cop('COP', '\$', '.'),

  /// Peruvian Sol.
  pen('PEN', 'S/', '.'),

  /// Uruguayan Peso.
  uyu('UYU', '\$', ','),

  /// Paraguayan Guaraní.
  pyg('PYG', '₲', '.'),

  /// Bolivian Boliviano.
  bob('BOB', 'Bs.', '.'),

  /// Venezuelan Bolívar.
  ves('VES', 'Bs.', ','),

  /// Guatemalan Quetzal.
  gtq('GTQ', 'Q', '.'),

  /// Honduran Lempira.
  hnl('HNL', 'L', '.'),

  /// Nicaraguan Córdoba.
  nio('NIO', 'C\$', '.'),

  /// Costa Rican Colón.
  crc('CRC', '₡', '.'),

  /// Panamanian Balboa.
  pab('PAB', 'B/.', '.'),

  /// Dominican Peso.
  dop('DOP', '\$', '.'),

  /// Haitian Gourde.
  htg('HTG', 'G', '.'),

  /// Jamaican Dollar.
  jmd('JMD', '\$', '.'),

  /// Barbadian Dollar.
  bbd('BBD', '\$', '.'),

  /// Belize Dollar.
  bzd('BZD', '\$', '.'),

  /// East Caribbean Dollar.
  xcd('XCD', '\$', '.'),

  /// Bahamian Dollar.
  bsd('BSD', '\$', '.'),

  /// Trinidad and Tobago Dollar.
  ttd('TTD', '\$', '.'),

  /// Guyanese Dollar.
  gyd('GYD', '\$', '.'),

  /// Surinamese Dollar.
  srd('SRD', '\$', ','),

  /// Israeli New Shekel.
  ils('ILS', '₪', '.'),

  /// Jordanian Dinar.
  jod('JOD', 'د.ا', '.'),

  /// Lebanese Pound.
  lbp('LBP', 'ل.ل', '.'),

  /// Syrian Pound.
  syp('SYP', '£', '.'),

  /// Iraqi Dinar.
  iqd('IQD', 'ع.د', '.'),

  /// Iranian Rial.
  irr('IRR', '﷼', '.'),

  /// Saudi Riyal.
  sar('SAR', '﷼', '.'),

  /// United Arab Emirates Dirham.
  aed('AED', 'د.إ', '.'),

  /// Qatari Riyal.
  qar('QAR', '﷼', '.'),

  /// Kuwaiti Dinar.
  kwd('KWD', 'د.ك', '.'),

  /// Bahraini Dinar.
  bhd('BHD', '.د.ب', '.'),

  /// Omani Rial.
  omr('OMR', '﷼', '.'),

  /// Yemeni Rial.
  yer('YER', '﷼', '.'),

  /// Afghan Afghani.
  afn('AFN', '؋', '.'),

  /// Pakistani Rupee.
  pkr('PKR', '₨', '.'),

  /// Bangladeshi Taka.
  bdt('BDT', '৳', '.'),

  /// Sri Lankan Rupee.
  lkr('LKR', '₨', '.'),

  /// Nepalese Rupee.
  npr('NPR', '₨', '.'),

  /// Bhutanese Ngultrum.
  btn('BTN', 'Nu.', '.'),

  /// Maldivian Rufiyaa.
  mvr('MVR', 'Rf', '.'),

  /// Myanmar Kyat.
  mmk('MMK', 'K', '.'),

  /// Thai Baht.
  thb('THB', '฿', '.'),

  /// Cambodian Riel.
  khr('KHR', '៛', '.'),

  /// Lao Kip.
  lak('LAK', '₭', '.'),

  /// Vietnamese Dong.
  vnd('VND', '₫', '.'),

  /// Indonesian Rupiah.
  idr('IDR', 'Rp', '.'),

  /// Malaysian Ringgit.
  myr('MYR', 'RM', '.'),

  /// Singapore Dollar.
  sgd('SGD', '\$', '.'),

  /// Brunei Dollar.
  bnd('BND', '\$', '.'),

  /// Philippine Peso.
  php('PHP', '₱', '.'),

  /// South Korean Won.
  krw('KRW', '₩', '.'),

  /// North Korean Won.
  kpw('KPW', '₩', '.'),

  /// Mongolian Tugrik.
  mnt('MNT', '₮', '.'),

  /// Kazakhstani Tenge.
  kzt('KZT', '₸', ','),

  /// Kyrgyzstani Som.
  kgs('KGS', 'с', '.'),

  /// Tajikistani Somoni.
  tjs('TJS', 'ЅМ', '.'),

  /// Turkmenistani Manat.
  tmt('TMT', 'm', '.'),

  /// Uzbekistani Som.
  uzs('UZS', 'лв', '.'),

  /// Russian Ruble.
  rub('RUB', '₽', ','),

  /// Belarusian Ruble.
  byn('BYN', 'Br', ','),

  /// Ukrainian Hryvnia.
  uah('UAH', '₴', ','),

  /// Moldovan Leu.
  mdl('MDL', 'lei', ','),

  /// Georgian Lari.
  gel('GEL', '₾', '.'),

  /// Armenian Dram.
  amd('AMD', '֏', '.'),

  /// Azerbaijani Manat.
  azn('AZN', '₼', ','),

  /// Turkish Lira.
  try_('TRY', '₺', ','),

  /// Egyptian Pound.
  egp('EGP', '£', '.'),

  /// Sudanese Pound.
  sdp('SDP', '£', '.'),

  /// South Sudanese Pound.
  ssp('SSP', '£', '.'),

  /// Ethiopian Birr.
  etb('ETB', 'Br', '.'),

  /// Eritrean Nakfa.
  ern('ERN', 'Nfk', '.'),

  /// Djiboutian Franc.
  djf('DJF', 'Fr', '.'),

  /// Somali Shilling.
  sos('SOS', 'Sh', '.'),

  /// Kenyan Shilling.
  kes('KES', 'Sh', '.'),

  /// Ugandan Shilling.
  ugx('UGX', 'Sh', '.'),

  /// Tanzanian Shilling.
  tzs('TZS', 'Sh', '.'),

  /// Rwandan Franc.
  rwf('RWF', 'Fr', '.'),

  /// Burundian Franc.
  bif('BIF', 'Fr', '.'),

  /// Congolese Franc.
  cdf('CDF', 'Fr', '.'),

  /// Central African CFA Franc.
  xaf('XAF', 'Fr', '.'),

  /// West African CFA Franc.
  xof('XOF', 'Fr', '.'),

  /// Ghanaian Cedi.
  ghs('GHS', '₵', '.'),

  /// Nigerian Naira.
  ngn('NGN', '₦', '.'),

  /// Gambian Dalasi.
  gmd('GMD', 'D', '.'),

  /// Guinean Franc.
  gnf('GNF', 'Fr', '.'),

  /// Sierra Leonean Leone.
  sll('SLL', 'Le', '.'),

  /// Liberian Dollar.
  lrd('LRD', '\$', '.'),

  /// Cape Verdean Escudo.
  cve('CVE', 'Esc', ','),

  /// Mauritanian Ouguiya.
  mru('MRU', 'UM', '.'),

  /// South African Rand.
  zar('ZAR', 'R', '.'),

  /// Namibian Dollar.
  nad('NAD', '\$', '.'),

  /// Botswanan Pula.
  bwp('BWP', 'P', '.'),

  /// Lesotho Loti.
  lsl('LSL', 'L', '.'),

  /// Swazi Lilangeni.
  szl('SZL', 'L', '.'),

  /// Zambian Kwacha.
  zmw('ZMW', 'ZK', '.'),

  /// Malawian Kwacha.
  mwk('MWK', 'MK', '.'),

  /// Mozambican Metical.
  mzn('MZN', 'MT', ','),

  /// Malagasy Ariary.
  mga('MGA', 'Ar', '.'),

  /// Comorian Franc.
  kmf('KMF', 'Fr', '.'),

  /// Seychellois Rupee.
  scr('SCR', '₨', '.'),

  /// Mauritian Rupee.
  mur('MUR', '₨', '.'),

  /// Angolan Kwanza.
  aoa('AOA', 'Kz', ','),

  /// Libyan Dinar.
  lyd('LYD', 'ل.د', '.'),

  /// Tunisian Dinar.
  tnd('TND', 'د.ت', ','),

  /// Algerian Dinar.
  dzd('DZD', 'د.ج', ','),

  /// Moroccan Dirham.
  mad('MAD', 'د.م', ','),

  /// New Zealand Dollar.
  nzd('NZD', 'NZ\$', '.'),

  /// Fijian Dollar.
  fjd('FJD', '\$', '.'),

  /// Papua New Guinean Kina.
  pgk('PGK', 'K', '.'),

  /// Solomon Islands Dollar.
  sbd('SBD', '\$', '.'),

  /// Vanuatu Vatu.
  vuv('VUV', 'Vt', '.'),

  /// CFP Franc (New Caledonian Franc).
  xpf('XPF', 'Fr', '.'),

  /// Samoan Tala.
  wst('WST', 'T', '.'),

  /// Tongan Paʻanga.
  top('TOP', 'T\$', '.'),

  /// Icelandic Króna.
  isk('ISK', 'kr', '.'),

  /// São Tomé and Príncipe Dobra.
  stn('STN', 'Db', '.'),

  /// New Taiwan Dollar.
  twd('TWD', 'NT\$', '.');

  /// Default constructor.
  const MyoroCurrencyEnum(this.longSymbol, this.shortSymbol, this.decimalSeparator);

  /// Symbol of the currency.
  final String longSymbol;

  /// Display symbol of the currency.
  final String shortSymbol;

  /// Decimal separator character for this currency.
  /// '.' for most currencies, ',' for European/Brazilian formatting.
  final String decimalSeparator;

  /// Formal name of the currency.
  String formalName(BuildContext context) {
    final localization = context.localization;
    return switch (this) {
      usd => localization.myoroCurrencyEnumUsdFormalName,
      cad => localization.myoroCurrencyEnumCadFormalName,
      brl => localization.myoroCurrencyEnumBrlFormalName,
      btc => localization.myoroCurrencyEnumBtcFormalName,
      eur => localization.myoroCurrencyEnumEurFormalName,
      gbp => localization.myoroCurrencyEnumGbpFormalName,
      jpy => localization.myoroCurrencyEnumJpyFormalName,
      cny => localization.myoroCurrencyEnumCnyFormalName,
      inr => localization.myoroCurrencyEnumInrFormalName,
      aud => localization.myoroCurrencyEnumAudFormalName,
      chf => localization.myoroCurrencyEnumChfFormalName,
      sek => localization.myoroCurrencyEnumSekFormalName,
      nok => localization.myoroCurrencyEnumNokFormalName,
      dkk => localization.myoroCurrencyEnumDkkFormalName,
      pln => localization.myoroCurrencyEnumPlnFormalName,
      czk => localization.myoroCurrencyEnumCzkFormalName,
      huf => localization.myoroCurrencyEnumHufFormalName,
      ron => localization.myoroCurrencyEnumRonFormalName,
      bgn => localization.myoroCurrencyEnumBgnFormalName,
      hrk => localization.myoroCurrencyEnumHrkFormalName,
      rsd => localization.myoroCurrencyEnumRsdFormalName,
      mkd => localization.myoroCurrencyEnumMkdFormalName,
      all => localization.myoroCurrencyEnumAllFormalName,
      bam => localization.myoroCurrencyEnumBamFormalName,
      mxn => localization.myoroCurrencyEnumMxnFormalName,
      ars => localization.myoroCurrencyEnumArsFormalName,
      clp => localization.myoroCurrencyEnumClpFormalName,
      cop => localization.myoroCurrencyEnumCopFormalName,
      pen => localization.myoroCurrencyEnumPenFormalName,
      uyu => localization.myoroCurrencyEnumUyuFormalName,
      pyg => localization.myoroCurrencyEnumPygFormalName,
      bob => localization.myoroCurrencyEnumBobFormalName,
      ves => localization.myoroCurrencyEnumVesFormalName,
      gtq => localization.myoroCurrencyEnumGtqFormalName,
      hnl => localization.myoroCurrencyEnumHnlFormalName,
      nio => localization.myoroCurrencyEnumNioFormalName,
      crc => localization.myoroCurrencyEnumCrcFormalName,
      pab => localization.myoroCurrencyEnumPabFormalName,
      dop => localization.myoroCurrencyEnumDopFormalName,
      htg => localization.myoroCurrencyEnumHtgFormalName,
      jmd => localization.myoroCurrencyEnumJmdFormalName,
      bbd => localization.myoroCurrencyEnumBbdFormalName,
      bzd => localization.myoroCurrencyEnumBzdFormalName,
      xcd => localization.myoroCurrencyEnumXcdFormalName,
      bsd => localization.myoroCurrencyEnumBsdFormalName,
      ttd => localization.myoroCurrencyEnumTtdFormalName,
      gyd => localization.myoroCurrencyEnumGydFormalName,
      srd => localization.myoroCurrencyEnumSrdFormalName,
      ils => localization.myoroCurrencyEnumIlsFormalName,
      jod => localization.myoroCurrencyEnumJodFormalName,
      lbp => localization.myoroCurrencyEnumLbpFormalName,
      syp => localization.myoroCurrencyEnumSypFormalName,
      iqd => localization.myoroCurrencyEnumIqdFormalName,
      irr => localization.myoroCurrencyEnumIrrFormalName,
      sar => localization.myoroCurrencyEnumSarFormalName,
      aed => localization.myoroCurrencyEnumAedFormalName,
      qar => localization.myoroCurrencyEnumQarFormalName,
      kwd => localization.myoroCurrencyEnumKwdFormalName,
      bhd => localization.myoroCurrencyEnumBhdFormalName,
      omr => localization.myoroCurrencyEnumOmrFormalName,
      yer => localization.myoroCurrencyEnumYerFormalName,
      afn => localization.myoroCurrencyEnumAfnFormalName,
      pkr => localization.myoroCurrencyEnumPkrFormalName,
      bdt => localization.myoroCurrencyEnumBdtFormalName,
      lkr => localization.myoroCurrencyEnumLkrFormalName,
      npr => localization.myoroCurrencyEnumNprFormalName,
      btn => localization.myoroCurrencyEnumBtnFormalName,
      mvr => localization.myoroCurrencyEnumMvrFormalName,
      mmk => localization.myoroCurrencyEnumMmkFormalName,
      thb => localization.myoroCurrencyEnumThbFormalName,
      khr => localization.myoroCurrencyEnumKhrFormalName,
      lak => localization.myoroCurrencyEnumLakFormalName,
      vnd => localization.myoroCurrencyEnumVndFormalName,
      idr => localization.myoroCurrencyEnumIdrFormalName,
      myr => localization.myoroCurrencyEnumMyrFormalName,
      sgd => localization.myoroCurrencyEnumSgdFormalName,
      bnd => localization.myoroCurrencyEnumBndFormalName,
      php => localization.myoroCurrencyEnumPhpFormalName,
      krw => localization.myoroCurrencyEnumKrwFormalName,
      kpw => localization.myoroCurrencyEnumKpwFormalName,
      mnt => localization.myoroCurrencyEnumMntFormalName,
      kzt => localization.myoroCurrencyEnumKztFormalName,
      kgs => localization.myoroCurrencyEnumKgsFormalName,
      tjs => localization.myoroCurrencyEnumTjsFormalName,
      tmt => localization.myoroCurrencyEnumTmtFormalName,
      uzs => localization.myoroCurrencyEnumUzsFormalName,
      rub => localization.myoroCurrencyEnumRubFormalName,
      byn => localization.myoroCurrencyEnumBynFormalName,
      uah => localization.myoroCurrencyEnumUahFormalName,
      mdl => localization.myoroCurrencyEnumMdlFormalName,
      gel => localization.myoroCurrencyEnumGelFormalName,
      amd => localization.myoroCurrencyEnumAmdFormalName,
      azn => localization.myoroCurrencyEnumAznFormalName,
      try_ => localization.myoroCurrencyEnumTryFormalName,
      egp => localization.myoroCurrencyEnumEgpFormalName,
      sdp => localization.myoroCurrencyEnumSdpFormalName,
      ssp => localization.myoroCurrencyEnumSspFormalName,
      etb => localization.myoroCurrencyEnumEtbFormalName,
      ern => localization.myoroCurrencyEnumErnFormalName,
      djf => localization.myoroCurrencyEnumDjfFormalName,
      sos => localization.myoroCurrencyEnumSosFormalName,
      kes => localization.myoroCurrencyEnumKesFormalName,
      ugx => localization.myoroCurrencyEnumUgxFormalName,
      tzs => localization.myoroCurrencyEnumTzsFormalName,
      rwf => localization.myoroCurrencyEnumRwfFormalName,
      bif => localization.myoroCurrencyEnumBifFormalName,
      cdf => localization.myoroCurrencyEnumCdfFormalName,
      xaf => localization.myoroCurrencyEnumXafFormalName,
      xof => localization.myoroCurrencyEnumXofFormalName,
      ghs => localization.myoroCurrencyEnumGhsFormalName,
      ngn => localization.myoroCurrencyEnumNgnFormalName,
      gmd => localization.myoroCurrencyEnumGmdFormalName,
      gnf => localization.myoroCurrencyEnumGnfFormalName,
      sll => localization.myoroCurrencyEnumSllFormalName,
      lrd => localization.myoroCurrencyEnumLrdFormalName,
      cve => localization.myoroCurrencyEnumCveFormalName,
      mru => localization.myoroCurrencyEnumMruFormalName,
      zar => localization.myoroCurrencyEnumZarFormalName,
      nad => localization.myoroCurrencyEnumNadFormalName,
      bwp => localization.myoroCurrencyEnumBwpFormalName,
      lsl => localization.myoroCurrencyEnumLslFormalName,
      szl => localization.myoroCurrencyEnumSzlFormalName,
      zmw => localization.myoroCurrencyEnumZmwFormalName,
      mwk => localization.myoroCurrencyEnumMwkFormalName,
      mzn => localization.myoroCurrencyEnumMznFormalName,
      mga => localization.myoroCurrencyEnumMgaFormalName,
      kmf => localization.myoroCurrencyEnumKmfFormalName,
      scr => localization.myoroCurrencyEnumScrFormalName,
      mur => localization.myoroCurrencyEnumMurFormalName,
      aoa => localization.myoroCurrencyEnumAoaFormalName,
      lyd => localization.myoroCurrencyEnumLydFormalName,
      tnd => localization.myoroCurrencyEnumTndFormalName,
      dzd => localization.myoroCurrencyEnumDzdFormalName,
      mad => localization.myoroCurrencyEnumMadFormalName,
      nzd => localization.myoroCurrencyEnumNzdFormalName,
      fjd => localization.myoroCurrencyEnumFjdFormalName,
      pgk => localization.myoroCurrencyEnumPgkFormalName,
      sbd => localization.myoroCurrencyEnumSbdFormalName,
      vuv => localization.myoroCurrencyEnumVuvFormalName,
      xpf => localization.myoroCurrencyEnumXpfFormalName,
      wst => localization.myoroCurrencyEnumWstFormalName,
      top => localization.myoroCurrencyEnumTopFormalName,
      isk => localization.myoroCurrencyEnumIskFormalName,
      stn => localization.myoroCurrencyEnumStnFormalName,
      twd => localization.myoroCurrencyEnumTwdFormalName,
    };
  }
}
