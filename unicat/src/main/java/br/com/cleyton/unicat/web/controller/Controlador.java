package br.com.cleyton.unicat.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import br.com.cleyton.unicat.dao.AnimalDAO;
import br.com.cleyton.unicat.model.Animal;

@Controller
public class Controlador {
	
	@Autowired
	private AnimalDAO dao;
	
	@RequestMapping(value = "/formulario", method = RequestMethod.GET)
	public ModelAndView formulario(Model model) {
		ModelAndView view = new ModelAndView("formulario");
		model.addAttribute("animal", new Animal());
		view.addObject("animais", dao.getAll());
		return view;
	}
	
	@RequestMapping(value = "/formulario", method = RequestMethod.POST)
	public ModelAndView exibefrase(@ModelAttribute Animal animal) {
		ModelAndView view = new ModelAndView("formulario");
		dao.salvar(animal);
		view.addObject("mensagem", "Animal cadastrado!");
		return view;
	}
	
	@GetMapping(value="/excluir/{id}")
	public String excluirAnimal(@PathVariable("id") Long id, Model model) {
		dao.excluir(id);
		return "redirect:../animaiscadastrados";
	}
	
	@GetMapping(value="/editar/{id}")
	public ModelAndView exibeEditarAnimal(@PathVariable("id") Long id, Model model) {
		ModelAndView view = new ModelAndView("editar");
		model.addAttribute("animal", dao.getId(id));
		return view;
	}
	
	@PostMapping(value="/editar/{id}")
	public ModelAndView confirmaEdicaoAnimal(@PathVariable("id") int id, 
	                                         @ModelAttribute @Validated Animal animal, 
	                                         BindingResult result) {
	    if (result.hasErrors()) {
	        ModelAndView view = new ModelAndView("editar");
	        view.addObject("animal", animal);
	        return view;
	    }
	    dao.editar(animal);
	    return new ModelAndView("redirect:../animaiscadastrados");
	}

	@RequestMapping(value = "/animaiscadastrados", method = RequestMethod.GET)
	public ModelAndView cadastros(Model model) {
		ModelAndView view = new ModelAndView("visualizarcadastros");
		model.addAttribute("animal", new Animal());
		view.addObject("animais", dao.getAll());
		return view;
	}
	
	@RequestMapping(value = "/animaiscadastrados", method = RequestMethod.POST)
	public ModelAndView exibircadastrados(@ModelAttribute Animal animal) {
		ModelAndView view = new ModelAndView("visualizarcadastros");
		dao.salvar(animal);
		view.addObject("animais", dao.getAll());
		return view;
	}
}
