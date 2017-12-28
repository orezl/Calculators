/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package calculator;


import java.net.URL;
import java.util.ResourceBundle;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.Button;
import javafx.scene.control.TextField;

import javax.script.ScriptEngine;
import javax.script.ScriptEngineManager;
import javax.script.ScriptException;

/**
 *
 * @author RAHUL
 */
public class FXMLDocumentController implements Initializable {
    
    private double left;
    private double right;
    private double output;
    private String operator;
    private boolean input;
    
    
    @FXML
    private TextField op;
    
    public FXMLDocumentController(){
    this.input=false;
    this.left=0;
    this.right=0;
    this.output=0;
    this.operator="";
    }
    
   
    
    @FXML
    private void action(ActionEvent e) throws ScriptException {
    
        Button btn=(Button)e.getSource();
        String btntxt=btn.getText();
        
        if(btntxt.equals("C")){
            left=0;
            right=0;
            output=0;
            operator="";
            input=false;
            op.setText("0");
            return;
        }
        
        if(btntxt.matches("[0-9\\.]")){
            String temp="0";
            if(temp.equals(op.getText()))op.clear();
            if(!input){ // if no operator
            op.appendText(btntxt);
           // left=Double.parseDouble(op.getText());
            return;
            }
            else{
               if(operator.equals(op.getText()))op.clear();
               //op.clear();
            op.appendText(btntxt);
            return;
           // right=Double.parseDouble(op.getText());
            }
            
        }
        
        if(btntxt.equals("=")){
            if(input){
            calculate(op.getText(),operator);
            op.setText(Double.toString(output));
            return;}
            else{
                String temp=op.getText();
                ScriptEngineManager manager = new ScriptEngineManager();
                ScriptEngine engine = manager.getEngineByName("JavaScript");
                Object result = engine.eval(temp);
                temp=result.toString();
                op.setText(temp);
                output=Double.parseDouble(op.getText());
                left=output;
                return;
                
                    }
           // output=0;
            
        }
        if(btntxt.equals("<-")){
           // left=Double.parseDouble(op.getText());
           // String temp=Double.toString(left);
            //op.setText(temp);
            String temp=op.getText();
        op.deleteText(temp.length()-1,temp.length());
        return;}
        
        if(btntxt.equals("+-")){
            left=Double.parseDouble(op.getText());
        output=-1*left;
        op.setText(Double.toString(output));
        return;
        // output=0;
        }
        
        if(btntxt.equals("1/x")){
            left=Double.parseDouble(op.getText());
        output=1/left;
        op.setText(Double.toString(output));
        return;
         //output=0;
        }
        
        if(btntxt.equals("^0.5")){
            left=Double.parseDouble(op.getText());
        output=Math.pow(left,0.5);
        op.setText(Double.toString(output));
        return;
         //output=0;
        }
        
        else
            calculate(op.getText(),btntxt);
        return;
        
        
    }
    
    @Override
    public void initialize(URL url, ResourceBundle rb) {
        // TODO
    }    

    private void calculate(String text, String btntxt) {
        
        if(!input){ // for operator
        input=true;
        left=Double.parseDouble(op.getText());
        operator=btntxt;
        op.setText(btntxt);
        return;
        }
        
        else{ // for eqauls
        input=false;
        right=Double.parseDouble(op.getText());
        switch(operator){
        
            case "+": output=left+right;
                      break;
            case "-": output=left-right;
                        break;
            case "*": output=left*right;
                       break;
            case "/": output=left/right;
                        break;
            case "%": output=left%right;
                        break;
            case "^": output=Math.pow(left,right);
                        break;
        
        }
        
        operator="";
        right=0;
        left=output;
        return;
        }

// throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
