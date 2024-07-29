/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/GUIForms/JPanel.java to edit this template
 */
package LMSMiniProject.TablePanels;

import LMSMiniProject.DbConnection;
import LMSMiniProject.TablePanels.BorrowPanel;
import LMSMiniProject.TablePanels.Modifier;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;
/**
 *
 * @author Vijay Srinivas K
 */
public class PatronLoginPanel extends javax.swing.JPanel {
    Connection con = null;
    PreparedStatement ps = null;
    /**
     * Creates new form PatronLoginPanel
     */
    public PatronLoginPanel() {
        initComponents();
        try {
            con = DbConnection.getConnection();
        } catch (SQLException ex) {
            Logger.getLogger(PatronLoginPanel.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(PatronLoginPanel.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jLabel6 = new javax.swing.JLabel();
        jLabel27 = new javax.swing.JLabel();
        jLabel28 = new javax.swing.JLabel();
        patPassword = new javax.swing.JTextField();
        patUserName = new javax.swing.JTextField();
        validateLogin = new javax.swing.JButton();

        setBackground(new java.awt.Color(153, 255, 255));

        jLabel6.setFont(new java.awt.Font("Segoe UI", 0, 24)); // NOI18N
        jLabel6.setText("PATRON LOGIN");

        jLabel27.setText("UserName :");

        jLabel28.setText("Password :");

        patPassword.setColumns(10);
        patPassword.setCursor(new java.awt.Cursor(java.awt.Cursor.TEXT_CURSOR));
        patPassword.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                patPasswordActionPerformed(evt);
            }
        });

        patUserName.setColumns(10);
        patUserName.setCursor(new java.awt.Cursor(java.awt.Cursor.TEXT_CURSOR));
        patUserName.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                patUserNameActionPerformed(evt);
            }
        });

        validateLogin.setBackground(new java.awt.Color(102, 153, 255));
        validateLogin.setText("ENTER");
        validateLogin.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                validateLoginActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(this);
        this.setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addGap(164, 164, 164)
                        .addComponent(jLabel6))
                    .addGroup(layout.createSequentialGroup()
                        .addGap(113, 113, 113)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(layout.createSequentialGroup()
                                .addComponent(jLabel27)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 109, Short.MAX_VALUE)
                                .addComponent(patUserName, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                            .addGroup(layout.createSequentialGroup()
                                .addComponent(jLabel28)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                .addComponent(patPassword, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)))))
                .addGap(103, 103, 103))
            .addGroup(layout.createSequentialGroup()
                .addGap(202, 202, 202)
                .addComponent(validateLogin)
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGap(80, 80, 80)
                .addComponent(jLabel6)
                .addGap(63, 63, 63)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel27)
                    .addComponent(patUserName))
                .addGap(35, 35, 35)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel28)
                    .addComponent(patPassword))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 75, Short.MAX_VALUE)
                .addComponent(validateLogin)
                .addGap(148, 148, 148))
        );
    }// </editor-fold>//GEN-END:initComponents

    private void patPasswordActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_patPasswordActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_patPasswordActionPerformed

    private void patUserNameActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_patUserNameActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_patUserNameActionPerformed

    private void validateLoginActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_validateLoginActionPerformed
        // TODO add your handling code here:
        try {
            String sql_fetch = "SELECT * FROM patron WHERE username = ? AND password = ?";
            ps = con.prepareStatement(sql_fetch);
            ps.setString(1, patUserName.getText());
            ps.setString(2, patPassword.getText()); // Use getPassword() for JPasswordField
            
            ResultSet rs = ps.executeQuery();
            
            if (rs.next()) {
                JOptionPane.showMessageDialog(null, "Login Successful.");

                Modifier.setPatron(rs.getString("patron_id")); // Assuming first column is patron_id
                Modifier.setLogged();
                Modifier.changeScreen(new BorrowPanel());
            } else {
                JOptionPane.showMessageDialog(null, "Login Unsuccessful. Retry");
            }
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "An error occurred: " + ex.getMessage());
        } finally {
            try {
                if (ps != null) ps.close();
                if (con != null) con.close();
            } catch (SQLException ex) {
                JOptionPane.showMessageDialog(null, "An error occurred while closing resources: " + ex.getMessage());
            }
        }
 
    }//GEN-LAST:event_validateLoginActionPerformed


    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JLabel jLabel27;
    private javax.swing.JLabel jLabel28;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JTextField patPassword;
    private javax.swing.JTextField patUserName;
    private javax.swing.JButton validateLogin;
    // End of variables declaration//GEN-END:variables
}