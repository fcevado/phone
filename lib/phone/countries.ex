defmodule Phone.Countries do
  use Helper.Country
  field :modules, [
    Phone.AD, Phone.AE, Phone.AF, Phone.AL, Phone.AM, Phone.AO,
    Phone.AR, Phone.AT, Phone.AU, Phone.AW, Phone.AZ, Phone.BA,
    Phone.BD, Phone.BE, Phone.BG, Phone.BH, Phone.BI, Phone.BJ,
    Phone.BN, Phone.BO, Phone.BR, Phone.BT, Phone.BW, Phone.BY,
    Phone.BZ, Phone.CD, Phone.CF, Phone.CG, Phone.CH, Phone.CI,
    Phone.CK, Phone.CL, Phone.CM, Phone.CN, Phone.CO, Phone.CR,
    Phone.CU, Phone.CV, Phone.CW, Phone.CY, Phone.CZ, Phone.DE,
    Phone.DJ, Phone.DK, Phone.DZ, Phone.EC, Phone.EE, Phone.EG,
    Phone.ER, Phone.ES, Phone.ET, Phone.FI, Phone.FJ, Phone.FM,
    Phone.FO, Phone.FR, Phone.GA, Phone.GB, Phone.GE, Phone.GF,
    Phone.GH, Phone.GI, Phone.GL, Phone.GM, Phone.GN, Phone.GQ,
    Phone.GR, Phone.GT, Phone.GW, Phone.GY, Phone.HK, Phone.HN,
    Phone.HR, Phone.HT, Phone.HU, Phone.ID, Phone.IE, Phone.IL,
    Phone.IN, Phone.IO, Phone.IQ, Phone.IR, Phone.IS, Phone.IT,
    Phone.JO, Phone.JP, Phone.KE, Phone.KG, Phone.KH, Phone.KI,
    Phone.KM, Phone.KP, Phone.KR, Phone.KW, Phone.KZ, Phone.LA,
    Phone.LB, Phone.LI, Phone.LK, Phone.LR, Phone.LS, Phone.LT,
    Phone.LU, Phone.LV, Phone.LY, Phone.MA, Phone.MC, Phone.MD,
    Phone.ME, Phone.MG, Phone.MH, Phone.MK, Phone.ML, Phone.MM,
    Phone.MN, Phone.MO, Phone.MQ, Phone.MR, Phone.MT, Phone.MU,
    Phone.MV, Phone.MW, Phone.MX, Phone.MY, Phone.MZ, Phone.NA,
    Phone.NC, Phone.NE, Phone.NG, Phone.NI, Phone.NL, Phone.NO,
    Phone.NP, Phone.NR, Phone.NU, Phone.NZ, Phone.OM, Phone.PA,
    Phone.PE, Phone.PF, Phone.PG, Phone.PH, Phone.PK, Phone.PL,
    Phone.PM, Phone.PS, Phone.PT, Phone.PW, Phone.PY, Phone.QA,
    Phone.RO, Phone.RS, Phone.RU, Phone.RW, Phone.SA, Phone.SB,
    Phone.SC, Phone.SD, Phone.SE, Phone.SG, Phone.SH, Phone.SI,
    Phone.SK, Phone.SL, Phone.SM, Phone.SN, Phone.SO, Phone.SR,
    Phone.SS, Phone.ST, Phone.SV, Phone.SY, Phone.SZ, Phone.TD,
    Phone.TG, Phone.TH, Phone.TJ, Phone.TK, Phone.TL, Phone.TM,
    Phone.TN, Phone.TO, Phone.TR, Phone.TV, Phone.TW, Phone.TZ,
    Phone.UA, Phone.UG, Phone.UY, Phone.UZ, Phone.VE, Phone.VN,
    Phone.VU, Phone.WF, Phone.WS, Phone.YE, Phone.ZA, Phone.ZM,
    Phone.ZW, Phone.NANP
  ]
  match :modules

  def build("376" <> _ = number), do: Phone.AD.build(number)
  def build("971" <> _ = number), do: Phone.AE.build(number)
  def build("93" <> _ = number), do: Phone.AF.build(number)
  def build("355" <> _ = number), do: Phone.AL.build(number)
  def build("374" <> _ = number), do: Phone.AM.build(number)
  def build("244" <> _ = number), do: Phone.AO.build(number)
  def build("54" <> _ = number), do: Phone.AR.build(number)
  def build("43" <> _ = number), do: Phone.AT.build(number)
  def build("297" <> _ = number), do: Phone.AW.build(number)
  def build("994" <> _ = number), do: Phone.AZ.build(number)

  def build!("376" <> _ = number), do: Phone.AD.build!(number)
  def build!("971" <> _ = number), do: Phone.AE.build!(number)
  def build!("93" <> _ = number), do: Phone.AF.build!(number)
  def build!("355" <> _ = number), do: Phone.AL.build!(number)
  def build!("374" <> _ = number), do: Phone.AM.build!(number)
  def build!("244" <> _ = number), do: Phone.AO.build!(number)
  def build!("54" <> _ = number), do: Phone.AR.build!(number)
  def build!("43" <> _ = number), do: Phone.AT.build!(number)
  def build!("297" <> _ = number), do: Phone.AW.build!(number)
  def build!("994" <> _ = number), do: Phone.AZ.build!(number)

  def build("387" <> _ = number), do: Phone.BA.build(phone)
  def build("880" <> _ = number), do: Phone.BD.build(number)
  def build("32" <> _ = number), do: Phone.BE.build(number)
  def build("359" <> _ = number), do: Phone.BG.build(number)
  def build("973" <> _ = number), do: Phone.BH.build(number)
  def build("257" <> _ = number), do: Phone.BI.build(number)
  def build("229" <> _ = number), do: Phone.BJ.build(number)
  def build("673" <> _ = number), do: Phone.BN.build(number)
  def build("591" <> _ = number), do: Phone.BO.build(number)
  def build("55" <> _ = number), do: Phone.BR.build(number)
  def build("975" <> _ = number), do: Phone.BT.build(number)
  def build("267" <> _ = number), do: Phone.BW.build(number)
  def build("375" <> _ = number), do: Phone.BY.build(number)
  def build("501" <> _ = number), do: Phone.BZ.build(number)

  def build!("387" <> _ = number), do: Phone.BA.build!(phone)
  def build!("880" <> _ = number), do: Phone.BD.build!(number)
  def build!("32" <> _ = number), do: Phone.BE.build!(number)
  def build!("359" <> _ = number), do: Phone.BG.build!(number)
  def build!("973" <> _ = number), do: Phone.BH.build!(number)
  def build!("257" <> _ = number), do: Phone.BI.build!(number)
  def build!("229" <> _ = number), do: Phone.BJ.build!(number)
  def build!("673" <> _ = number), do: Phone.BN.build!(number)
  def build!("591" <> _ = number), do: Phone.BO.build!(number)
  def build!("55" <> _ = number), do: Phone.BR.build!(number)
  def build!("975" <> _ = number), do: Phone.BT.build!(number)
  def build!("267" <> _ = number), do: Phone.BW.build!(number)
  def build!("375" <> _ = number), do: Phone.BY.build!(number)
  def build!("501" <> _ = number), do: Phone.BZ.build!(number)

  def build("243" <> _ = number), do: Phone.CD.build(number)
  def build("236" <> _ = number), do: Phone.CF.build(number)
  def build("242" <> _ = number), do: Phone.CG.build(number)
  def build("41" <> _ = number), do: Phone.CH.build(number)
  def build("225" <> _ = number), do: Phone.CI.build(number)
  def build("682" <> _ = number), do: Phone.CK.build(number)
  def build("56" <> _ = number), do: Phone.CL.build(number)
  def build("237" <> _ = number), do: Phone.CM.build(number)
  def build("86" <> _ = number), do: Phone.CN.build(number)
  def build("57" <> _ = number), do: Phone.CO.build(number)
  def build("506" <> _ = number), do: Phone.CR.build(number)
  def build("53" <> _ = number), do: Phone.CU.build(number)
  def build("238" <> _ = number), do: Phone.CV.build(number)
  def build("599" <> _ = number), do: Phone.CW.build(number)
  def build("357" <> _ = number), do: Phone.CY.build(number)
  def build("420" <> _ = number), do: Phone.CZ.build(number)

  def build!("243" <> _ = number), do: Phone.CD.build!(number)
  def build!("236" <> _ = number), do: Phone.CF.build!(number)
  def build!("242" <> _ = number), do: Phone.CG.build!(number)
  def build!("41" <> _ = number), do: Phone.CH.build!(number)
  def build!("225" <> _ = number), do: Phone.CI.build!(number)
  def build!("682" <> _ = number), do: Phone.CK.build!(number)
  def build!("56" <> _ = number), do: Phone.CL.build!(number)
  def build!("237" <> _ = number), do: Phone.CM.build!(number)
  def build!("86" <> _ = number), do: Phone.CN.build!(number)
  def build!("57" <> _ = number), do: Phone.CO.build!(number)
  def build!("506" <> _ = number), do: Phone.CR.build!(number)
  def build!("53" <> _ = number), do: Phone.CU.build!(number)
  def build!("238" <> _ = number), do: Phone.CV.build!(number)
  def build!("599" <> _ = number), do: Phone.CW.build!(number)
  def build!("357" <> _ = number), do: Phone.CY.build!(number)
  def build!("420" <> _ = number), do: Phone.CZ.build!(number)

  def build("49" <> _ = number), do: Phone.DE.build(number)
  def build("253" <> _ = number), do: Phone.DJ.build(number)
  def build("45" <> _ = number), do: Phone.DK.build(number)
  def build("213" <> _ = number), do: Phone.DZ.build(number)

  def build!("49" <> _ = number), do: Phone.DE.build!(number)
  def build!("253" <> _ = number), do: Phone.DJ.build!(number)
  def build!("45" <> _ = number), do: Phone.DK.build!(number)
  def build!("213" <> _ = number), do: Phone.DZ.build!(number)
end
