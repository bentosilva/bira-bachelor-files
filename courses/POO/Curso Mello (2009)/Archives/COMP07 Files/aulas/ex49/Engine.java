import java.util.*;

class Car {
	protected double speed;
	protected double angle;
	public void push(double speed) { this.speed += speed; }
	public void stop() {}
	public void steering(double angle) { this.angle = angle; }
	public void print() {
		System.out.println("Speed = "+speed+" Angle = "+angle);
	}
}

class Ferrari extends Car {
	public void push(double speed) { this.speed += (2 * speed); }
	public void stop() { this.speed = 0; }
}

class Corvette extends Car {
	public void push(double speed) { this.speed += (1.9 * speed); }
	public void stop() { this.speed = speed / 2; }
}

public class Engine {
	Vector cars;
	public Engine() { this.cars = new Vector(); }
	public void addCars(Car c) { this.cars.add(c); }
	public void run() {
		for (int i = 0; i < this.cars.size(); i++) {
			Car c = (Car) this.cars.elementAt(i);
			c.push(10);
			c.print();
		}
	}

	public static void main(String args[]) {
		Engine e = new Engine();
		e.addCars(new Ferrari());
		e.addCars(new Corvette());
		e.run();
	}
}
