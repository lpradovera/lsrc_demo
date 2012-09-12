# encoding: utf-8

class BillingController < Adhearsion::CallController
  def run
    answer
    timer = nil
    call.on_joined do
      timer = call.every(5.seconds) do
        logger.info "CALL #{call.id} BILLED"
      end
    end

    call.on_end do
      timer.cancel if timer
    end

    dial "SIP/200"
    
    hangup
  end
end
