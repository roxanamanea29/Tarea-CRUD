package com.example.demo_tarea.Controlador;


import com.example.demo_tarea.entity.Tarea;
import com.example.demo_tarea.service.GestorTarea;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 * @author Roxana
 * @date 18/04/2024
 */

@Controller
@RequestMapping("/tarea")
public class ControllerTarea {
    GestorTarea gestorTarea = new GestorTarea();

    @GetMapping("/")
    public String crud(Model model) {
        String valorfinal = "./tarea/index";
        try {
            model.addAttribute("tareas", gestorTarea.listarAllTareas());
        } catch (Exception ex) {
            Logger.getLogger(ControllerTarea.class.getName()).log(Level.SEVERE, null, ex);
            valorfinal = "error";
        }
        return valorfinal;
    }

    @GetMapping("/add")
    public String greetingForm(Model model) {
        model.addAttribute("tarea", new Tarea());
        return "./tarea/add";
    }
    @PostMapping("/add")
    public String greetingForm(@ModelAttribute Tarea tarea, Model model) {
        String valorfinal = "redirect:/tarea/";
        try {
            gestorTarea.anadirTarea(tarea);
            try {
                model.addAttribute("tareas", gestorTarea.listarAllTareas());
            } catch (SQLException ex) {
                Logger.getLogger(ControllerTarea.class.getName()).log(Level.SEVERE, null, ex);
                valorfinal="error";
            }
        } catch (SQLException e) {
            valorfinal = "error";
        }
        return valorfinal;
    }
    @GetMapping("/modificar")
    public String modificar(@RequestParam("cod_tarea") int id,Model model){
        String valorfinal="./tarea/modificar";
        try{
         model.addAttribute("tarea",gestorTarea.buscar(id));
        }catch (SQLException ex){
            Logger.getLogger(ControllerTarea.class.getName()).log(Level.SEVERE, null, ex);
            valorfinal="error";
        }
        return valorfinal;
    }
    @PostMapping("/modificar")
    public  String modificarBBDD(@ModelAttribute Tarea tarea,Model model){
        String valorfinal="redirect:/tarea/";
        try{
            GestorTarea.modificarTarea(tarea);
            model.addAttribute("tareas",gestorTarea.listarAllTareas());
        }catch (SQLException ex){
            Logger.getLogger(ControllerTarea.class.getName()).log(Level.SEVERE, null, ex);
            valorfinal ="error";
        }
        return valorfinal;
    }
    @GetMapping("/eliminar")
    public String SubmitB (@RequestParam("cod_tarea") int id, Model model){
        String valorfinal="redirect:/tarea/";
        try {
            gestorTarea.eliminar(id);
            model.addAttribute("tareas", gestorTarea.listarAllTareas());
        } catch (SQLException ex) {
            valorfinal="error";
        }
        return valorfinal;
    }
    @GetMapping("/home")
    public String home() {
        return "./tarea/home";
    }
    @GetMapping("/contacto")
    public String contacto(){
        return "./tarea/contacto";
    }

}


