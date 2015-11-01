package ch.bfh.infsem.aspectjdemo;

public aspect LogAspect {
	
	private int logCount;
	private void increaseLogCount() {
		logCount++;
	}
	// pointcut <nameOfPointcut>() : <type>(
	//	<accessModifier> <returnType> <Class>.<Method>(<Parameters>)
	pointcut publicMethods() : execution(public * *.*(..));
	
	Object around() : publicMethods() {
		System.out.println("Executing:" + thisJoinPoint.getSignature());
		Object ret = proceed();
		System.out.println("Finished:" + thisJoinPoint.getSignature());
		return ret;
	}
}
