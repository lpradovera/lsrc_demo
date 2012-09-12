# encoding: utf-8

class SimpleController < Adhearsion::CallController
  def run
    answer
    play "tt-weasels"
    hangup
  end
end
