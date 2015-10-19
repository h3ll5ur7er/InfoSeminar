package ch.bfh.infsem.aspectjdemo;

public aspect LogAspectShort {
	private int logCount;
	private void increaseLogCount() {
		logCount++;
	}
	//pointcut, advices
}
