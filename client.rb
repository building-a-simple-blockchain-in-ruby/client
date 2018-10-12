require 'mqtt'
require 'json'
require 'pp'
# Publish example

host = ARGV[0] #mqtt server
device = ARGV[1] #设备
sign = ARGV[2] #签名
message = ARGV[3] #信息

# Subscribe example
def pow(host="localhost",device="0000",sign="0x00")
    # m = {}
    # m["device"] = device
    # m["sign"] = sign
    # m["message"] = message
    # m = {device:device,sign:sign}
    # pp JSON.parse(m)
    # pp m.to_json

    MQTT::Client.connect(host) do |c|
        c.get("message") do |topic,message|
            # pp message.to_json
            pp JSON.parse(message)
        end
        # c.publish("message",m.to_json.to_s)
    end
end

pow(host,device,sign)