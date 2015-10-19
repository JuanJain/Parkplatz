/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import java.awt.Button;
import java.net.URL;
import java.util.ResourceBundle;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;

/**
 * FXML Controller class
 *
 * @author Dell
 */
public class PrincipalController implements Initializable {

    /**
     * Initializes the controller class.
     */
    @FXML //Para usar una variable con el SceneBuilder se necesita poner esto antes de cada variable o metodo
    private Button boton1; //Este nombre tiene que ser el mismo que el fxid de su representacion grafica
    @Override
    public void initialize(URL url, ResourceBundle rb) {
        // TODO
    }    
    
}
