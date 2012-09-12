Adhearsion::Events.draw do
 
  # eg. Handling Punchblock events
  punchblock do |event|
    EM.run do
      client = FayeClient.instance
      client.publish('/messages', 'text' => event.inspect) if event.respond_to? :name
    end
  end
 
end

class FayeClient
  def self.instance
    @instance ||= Faye::Client.new('http://localhost:3000/faye')
  end
end
