package ch.bfh.infsem.aspectjdemo;

public aspect HelloWorld {

	pointcut MainMethod() : execution(public static void Main.main*(..));
	
	after() : MainMethod() {
		System.out.println("World!");
	}
	
}
