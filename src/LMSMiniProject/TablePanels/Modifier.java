/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package LMSMiniProject.TablePanels;

import LMSMiniProject.TableFrame;
import javax.swing.JPanel;

/**
 *
 * @author Vishal
 */

public class Modifier {
    private static TableFrame tf;
    private static String library = null;
    private static String patron = null;
    private static boolean loggedIn = false;
    
    public static void init(TableFrame tableFrame) {
        tf = tableFrame;
    }
    
    public static void changeScreen(JPanel screen) {
        if (tf == null)
            return;
        tf.setScreenPanel(screen);
    }
    
    public static String getLibrary() {
        return library;
    }
    
    public static void setLibrary(String libId) {
        library = libId;
    }
    
    public static String getPatron() {
        return patron;
    }
    
    public static void setPatron(String patronId) {
        patron = patronId;
    }
    
    public static void setLogged() {
        loggedIn = true;
    }
    
    public static boolean getLogged() {
        return loggedIn;
    }
    /*private static HashMap<String, JPanel> list;
    
    public static void addScreen(JPanel panel, String screenName) {
        list.put(screenName, panel);
    }
    public static void addScreen(JPanel panel) {
        list.put(panel.getClass().getSimpleName(), panel);
    }
    
    public static JPanel getScreen(String screenName) {
        return list.get("screenName");
    }*/
    
}
