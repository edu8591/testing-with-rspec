class Actor
  def initialize(name)
    @name = name
  end

  def ready?
    sleep(3)
    true
  end

  def act
    'I love you baby'
  end

  def fall_off_ladder
    'No way, call my agent'
  end

  def light_on_fire
    false
  end
end
