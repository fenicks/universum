# encoding: utf-8


class Greeter < Contract

  def initialize( greeting )
    @owner    = msg.sender
    @greeting = greeting
  end

  def greet
    @greeting
  end

  def kill
     selfdestruct( msg.sender )  if msg.sender == @owner
  end
end  # class Greeter
