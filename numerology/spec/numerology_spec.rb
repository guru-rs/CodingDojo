# require  'numerology'

#require File.dirname(__FILE__) + '/../lib/numerology'

$LOAD_PATH.unshift(File.dirname(__FILE__))
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
require 'numerology'

describe Numerology do
  it "when it receives a it should return 1" do
    n = Numerology.new('a')
    n.life_path.should == 1
  end
  
  it "when it receives b it should return 2" do
    n = Numerology.new('b')
    n.life_path.should == 2
  end
  
  it "when it receives ab it should return 3" do
    n = Numerology.new('ab')
    n.life_path.should == 3
  end
  
  it "when it receives j it should return 1" do
    n = Numerology.new('j')
    n.life_path.should == 1
  end  
  
  it "when it receives s it should return 1" do
    n = Numerology.new('s')
    n.life_path.should == 1
  end
  
  it "when it receives c it should return 3" do
    n = Numerology.new('c')
    n.life_path.should == 3
  end
  
  it "when it receives d it should return 4" do
    n = Numerology.new('d')
    n.life_path.should == 4
  end
  
  it "when it receives k it should return 2" do
    n = Numerology.new('k')
    n.life_path.should == 2
  end
  
  it "when it receives ac it should return 4" do
    n = Numerology.new('ac')
    n.life_path.should == 4
  end
  
  it "when it receives gg it should return 5" do
    n = Numerology.new('gg')
    n.life_path.should == 5
  end
  it "when it receives ggg it should return 3" do
    n = Numerology.new('ggg')
    n.life_path.should == 3
  end
  
  it "when it receives juan it should return 1" do
    n = Numerology.new('juan')
    n.life_path.should == 1
  end

  it "should return 1 when it receives 'air'" do
    n = Numerology.new('air')
    n.life_path.should == 1
  end
  
  it "should return 1 when it receives 'AiR'" do
    n = Numerology.new('AiR')
    n.life_path.should == 1
  end
  
  it "should return 2 when it receives 'air air'" do
    n = Numerology.new('air air')
    n.life_path.should == 2
  end
   
  it "should return 3 when it receives 'Diogo de Oliveira Biazus'" do
    n = Numerology.new('Diogo de Oliveira Biazus')
    n.life_path.should == 3
  end
end




