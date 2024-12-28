/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */

package main;

import javax.swing.UIManager;
import javax.swing.UnsupportedLookAndFeelException;


import com.formdev.flatlaf.themes.FlatMacLightLaf;

import view.*;

public class App {
    public static void main(String[] args) {
        try {
            UIManager.setLookAndFeel(new FlatMacLightLaf());
        } catch (UnsupportedLookAndFeelException e) {
            e.printStackTrace();
        }
        Login view = new Login();
        view.setVisible(true);
    }
}