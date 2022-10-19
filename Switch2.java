/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package switch2;
import java.util.Scanner;
/**
 *
 * @author CSU21
 */
public class Switch2 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        Scanner S = new Scanner(System.in);
        System.out.println("Entra los numeros (1 a la vez)");
        int num_1 = S.nextInt();
        int num_2 = S.nextInt();
        char op;
        System.out.println("Entra un operador ");
        op = S.next().charAt(0);
        if (op == '/'){
            if (num_2 == 0) {
            System.out.println("No es posible dividir entre 0");
            System.exit(0);
            }
        }
        if (num_1 >= 0 && num_2 >= 0) {
            
            switch (op){
            case '+':
            System.out.println(num_1 + num_2);
            break;
            case '-':
            System.out.println(num_1 - num_2);
            break;
            case '*':
            System.out.println(num_1 * num_2);
            break;
            case '/':
            System.out.println(num_1 / num_2);
            break;
            } 
            } else { 
                System.out.println("Este programa no es compatible con numeros negativos");
                System.exit(0);
            }
    }
}
