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
import static streaming.entity.Film_.genre;
import streaming.entity.Genre;
import streaming.service.GenreCrudService;

/**
 *
 * @author admin
 */
@Controller //pour declarer controlleur

public class GenreController {

    @Autowired
    private GenreCrudService service;

    @RequestMapping(value = "/supprimer_genre/{val}", method = RequestMethod.GET)
    public String supprimer(@PathVariable("val") long idGenreASupprimer) {

        service.delete(idGenreASupprimer);

        return "redirect:/genre_lister";

    }

    @RequestMapping(value = {"/genre_lister", "/"}, method = RequestMethod.GET)
    public String listerGenre(Model m) {

        m.addAttribute("mesGenres", service.findAllByOrderByNomAsc());

        return "genre_lister.jsp";

    }

    @RequestMapping(value = "/modifier_genre/{idGenre}", method = RequestMethod.GET)
    public String modifierGenre(@PathVariable("idGenre") long idGenre, Model model) {
        // recup genre
        Genre genre = service.findOne(idGenre);
        //prep attribut a destination jsp
        model.addAttribute("genreAct", genre);
        //renvoie vers lajsp
        return "modifier_genre.jsp";

    }

    @RequestMapping(value = "/modifier_genre", method = RequestMethod.POST)
    public String modifierPost(@ModelAttribute("genreAct") Genre genre) {

        service.save(genre);

        return "redirect:/genre_lister";
    }
    
    @RequestMapping(value="/ajouter_genre", method = RequestMethod.POST)
    public String ajouterGenrePost(@ModelAttribute("genreAct")Genre genre){
        
        service.save(genre);
        
        return "redirect:/genre_lister";
    }
    
    
    @RequestMapping(value="/ajouter_genre", method = RequestMethod.GET)
    public String ajouterGenreGet (Model model)  {  
    
            
            model.addAttribute("nouvGenre", new Genre());
            
            return "ajouter_genre.jsp";
                    
          
}
}