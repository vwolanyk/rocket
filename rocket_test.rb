require "minitest/autorun"
require_relative "rocket"

class RocketTest < Minitest::Test
def setup
  @rocket = Rocket.new
end


def test_initialize_default


assert @rocket.flying? == false

end

def test_initialize_option
rocket = Rocket.new(name: "Mephistopheles")

assert rocket.name == "Mephistopheles"

end

def test_name

@rocket.name = "Pocket"

assert @rocket.name == "Pocket"
end

def test_name=

@rocket.name=("Quasar")

assert @rocket.name == "Quasar"
end

def test_colour
  @rocket.colour = "Ruby"

  assert @rocket.colour == "Ruby"
end

def test_colour_with_number
  @rocket.colour = 5555555

  assert @rocket.colour == 5555555
end

def test_colour=

@rocket.colour=("Beige")

assert @rocket.colour == "Beige"
end

def test_flying?

rocket = Rocket.new(flying: true)

assert rocket.flying?

end

def test_flying_false

rocket = Rocket.new(flying: false)

refute rocket.flying?

end

def test_lift_off_if_not_flyng_true

  assert @rocket.lift_off

end

def test_lift_off_if_flyng_false
rocket = Rocket.new(flying: true)

  refute rocket.lift_off

end

def test_land_if_flying_true
rocket = Rocket.new(flying: true)

assert rocket.land

end
def test_land_if_not_flying_false
rocket = Rocket.new(flying: false)

refute rocket.land

end

def test_status_flying

rocket = Rocket.new(flying: true)
rocket.name = "Mighty"

assert rocket.status ==   "Rocket Mighty is flying through the sky!"
end


def test_status_not_flying

rocket = Rocket.new(flying: false)
rocket.name = "Mighty"

assert rocket.status ==   "Rocket Mighty is ready for lift off!"
end
end
