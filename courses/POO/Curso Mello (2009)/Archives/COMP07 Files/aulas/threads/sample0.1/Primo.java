public class Primo extends Thread {
	private int start;
	private int end;

	public Primo(int start, int end) {
		this.start = start;
		this.end = end;
	}

	public void run() {
		long s = System.currentTimeMillis();
		for (int i = this.start; i < this.end; i++) {
			int count = 0;
			for (int j = 1; j <= i; j++) {
				if (i % j == 0)
					count++;
			}

//			if (count == 2)
//				System.out.println(i+" eh primo");
		}
		long e = System.currentTimeMillis();
		System.out.println("Tempo da Thread = "+(e-s));
	}

	public static void main(String args[]) {
		/*Primo p1 = new Primo(1, 100000);
		p1.start();*/
		
		Primo p1 = new Primo(1, 85000);
		Primo p2 = new Primo(85000, 100000);
		p1.start();
		p2.start();
	}
}
