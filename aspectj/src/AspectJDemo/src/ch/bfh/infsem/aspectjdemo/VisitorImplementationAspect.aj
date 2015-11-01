package ch.bfh.infsem.aspectjdemo;

public aspect VisitorImplementationAspect{
	declare parents: VisitorImpl implements Visitor;

	public void VisitorImpl.visitPoint(Point p){
		System.out.println("visited:"+p.toString());
	}
}