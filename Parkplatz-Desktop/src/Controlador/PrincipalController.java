/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import java.awt.Button;
import java.io.IOException;
import java.net.URL;
import java.util.ResourceBundle;
import java.util.logging.Level;
import javafx.application.Application;
import java.util.logging.Logger;
import javafx.event.ActionEvent;
import javafx.event.Event;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.fxml.Initializable;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.stage.Stage;

/**
 * FXML Controller class
 *
 * @author Dell
 */
public class PrincipalController implements Initializable{

    /**
     * Initializes the controller class.
     */
   @FXML
   private javafx.scene.control.Button btn_R, cerrar_btn;
   
    @Override
    public void initialize(URL url, ResourceBundle rb) {
        
    }    
    @FXML
    private void onClickRegistrar(ActionEvent ev) throws IOException{
        Parent root = (Parent)FXMLLoader.load(getClass().getResource("/Vista/Registrar_Estacionamiento.fxml"));
        Stage stage = new Stage();
        Scene scene = new Scene(root);
        stage.setScene(scene);
        stage.setResizable(false);
        ((Stage)btn_R.getScene().getWindow()).close();
        stage.show();
        
    }
    
}
