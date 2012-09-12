class ClickToCall
  def dial(source, destination)
    msg = "DRB called with #{source}, #{destination}"
    Adhearsion::OutboundCall.originate "SIP/100"
    msg
  end
end
