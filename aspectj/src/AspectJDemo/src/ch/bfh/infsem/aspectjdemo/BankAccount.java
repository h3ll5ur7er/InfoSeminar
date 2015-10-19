package ch.bfh.infsem.aspectjdemo;

public class BankAccount {
	
	private int balance;
	private Customer owner;
	
	public BankAccount () {
		
	}
	
	public BankAccount(int balance, Customer customer) {
		this.balance = balance;
		this.owner = customer;
	}
	
	public Customer getOwner() {
		return owner;
	}

	public int getBalance() {
		return balance;
	}

	public void deposit(int value) {
		balance += value;
	}
	
	public void deduct(int value) {
		balance -= value;
	}

}
