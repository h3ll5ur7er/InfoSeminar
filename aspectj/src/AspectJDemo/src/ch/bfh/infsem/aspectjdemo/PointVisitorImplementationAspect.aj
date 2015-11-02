package ch.bfh.infsem.aspectjdemo;

public aspect PointVisitorImplementationAspect {
	declare parents: @PointVisitor * extends VisitorImpl;
}
