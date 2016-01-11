/**
 * Created by david on 10.01.2016.
 */
public class Test {
    public static void main(String[] args) {

        System.out.println(testIt(16));
    }

    public static Boolean testIt(int x) {
        return (x & (x - 1)) == 0;
    }
}
