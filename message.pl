# ~/message.pl
use Device::MiniLED;
my $sign=Device::MiniLED->new(devicetype => "sign");

$sign->addMsg(
  data => `curl <web-address> --retry 5 --retry-delay 4`,
  effect => "scroll",
  speed => 2
);
$sign->send(device => "/dev/ttyUSB0");
