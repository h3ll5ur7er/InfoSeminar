package ch.bfh.infsem.aspectjdemo;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.*;

@Aspect
public class LogAspectAlt {
	@Pointcut("execution(public * *.*(..))")
	public void publicMethods() {}
	@Around("publicMethods()")
	public Object logItAll(ProceedingJoinPoint point) throws Throwable {
		System.out.println("Executing(Alt):" + point.getSignature());
		Object ret = point.proceed();
		System.out.println("Finished(Alt):" + point.getSignature());
		return ret;
	}
}