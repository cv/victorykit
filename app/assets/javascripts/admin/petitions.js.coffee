jQuery ->
  $('#petitions').dataTable
    sPaginationType: "bootstrap"
    bFilter: false
    bProcessing: true
    bServerSide: true
    sAjaxSource: $('#petitions').data('source')
    sDom: "<'row'<'span6'l><'span6'f>r>t<'row'<'span6'i><'span5'p>>"