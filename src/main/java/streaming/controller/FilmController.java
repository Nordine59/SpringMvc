/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package streaming.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import streaming.entity.Film;
import streaming.service.FilmCrudService;
import streaming.service.GenreCrudService;

/**
 *
 * @author tom
 */
@Controller
public class FilmController {

    @Autowired
    public FilmCrudService service;

    @Autowired
    private GenreCrudService Service;

    @RequestMapping(value = "/supprimer_film/{val}", method = RequestMethod.GET)
    public String supprimer(@PathVariable("val") long idFilmASupprimer) {

        service.delete(idFilmASupprimer);

        return "redirect:/film_lister";

    }

    @RequestMapping(value = {"/film_lister"}, method = RequestMethod.GET)
    public String listerFilm(Model m) {

        m.addAttribute("mesFilms", service.findAllByOrderByAnneeProdDesc());

        return "film_lister.jsp";

    }

    @RequestMapping(value = "/modifier_film/{idFilm}", method = RequestMethod.GET)
    public String modifierFilm(@PathVariable("idFilm") long idFilm, Model model) {
        // recup film
        Film film = service.findOne(idFilm);
        //prep attribut a destination jsp
        model.addAttribute("nouveauFilm", film);
        //renvoie vers la jsp
        return "modifier_film.jsp";
    }

    @RequestMapping(value = "/modifier_film", method = RequestMethod.POST)
    public String modifierPost(@ModelAttribute("nouveauFilm") Film film) {

        service.save(film);

        return "redirect:/film_lister";

    }

    @RequestMapping(value = "/ajouter_film", method = RequestMethod.GET)
    public String ajouterFilm(Model model) {

        Film f = new Film();
       // f.setSynopsis("ici petit");

        model.addAttribute("nouveauFilm", new Film());
        model.addAttribute("genres", Service.findAll());

        return "ajouter_film.jsp";
    }
    
    @RequestMapping(value="/ajouter_film", method = RequestMethod.POST)
    public String ajouterFilmPost(@ModelAttribute("nouveauFilm")Film film){
    
    
    service.save(film);
    
   return "redirect:/film_lister";

}
    
}