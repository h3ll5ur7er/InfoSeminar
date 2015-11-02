package ch.bfh.infsem.aspectjdemo;


public aspect PointVisitorAspect {
	private java.util.ArrayList<Visitor> Point.visitors =
            new java.util.ArrayList<Visitor>();

	public <T extends Visitor> void Point.visit(T v){
		this.visitors.add(v);
		v.visitPoint(this);
	}
}
