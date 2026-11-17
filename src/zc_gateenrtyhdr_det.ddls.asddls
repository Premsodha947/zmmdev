@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Gate Entry Header'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZC_GateEnrtyHdr_Det
  as select from zinward_gate_hdr as a
  left outer join I_MaterialDocumentItem_2  as b on b.YY1_GateEntryNo_MMI = a.gate_entry_id 
  
{
  key a.gate_entry_id as GateEntryId,
      a.invoice_no    as InvoiceNo,
      a.plant         as Plant,
      a.inwardtype    as Inwardtype,
      a.fiscalyear    as Fiscalyear,
      a.system_date   as SystemDate,
      a.system_time   as SystemTime,
      a.invoice_date  as InvoiceDate,
      a.lrdate        as Lrdate,
      a.lrnumber      as Lrnumber,
      a.ponumber      as Ponumber,
      a.ewayno        as Ewayno,
      a.amount        as Amount,
      a.vehicleno     as Vehicleno,
      a.transporter   as Transporter,
      a.zchalan       as Zchalan,
      a.vendor        as Vendor,
      a.qrcode        as Qrcode,
      a.status        as Status,
      b.MaterialDocument
}
where
  a.status = '01'
  
