
import javax.swing.table.DefaultTableModel;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author user
 */
public class Inmate {
    
    
    DefaultTableModel inmate = new javax.swing.table.DefaultTableModel(
    new Object [][] {
        {null, null, null, null, null, null},
        {null, null, null, null, null, null}
    },
    new String [] {
        "id", "Name", "Age", "Address", "Crime Committed", "Date Committed"
    }
) {
    Class[] types = new Class [] {
        java.lang.String.class, java.lang.Object.class, java.lang.Object.class, java.lang.Object.class, java.lang.Object.class, java.lang.Object.class
    };

    public Class getColumnClass(int columnIndex) {
        return types [columnIndex];
    }
};

}