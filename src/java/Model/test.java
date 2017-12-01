/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

/**
 *
 * @author Computer
 */
public class test {

    public static void main(String[] args) {
        String s = "1000000";
        String[] ch = s.split("");
        StringBuffer t = null;
        String chuoi = "";
        System.out.println(ch[0]);
        for (int i = 0; i < ch.length; i++) {
            t = new StringBuffer(ch[i]);
            System.out.println(ch[i]);
        }
        System.out.println(chuoi);
    }
}
