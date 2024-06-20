# Simulate an LED (you can replace this with actual hardware)
class LED:
    def __init__(self):
        self.is_on = False
        print("LED initialized and turned OFF")

    def turn_on(self):
        self.is_on = True
        print("LED turn ON")

    def turn_off(self):
        self.is_on = False
        print("LED turn OFF")

# Create an instance of the LED class
my_led = LED()

# Usage
my_led.turn_on()
my_led.turn_off()
