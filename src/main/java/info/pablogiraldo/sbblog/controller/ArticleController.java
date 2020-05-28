package info.pablogiraldo.sbblog.controller;

import java.util.Map;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import info.pablogiraldo.sbblog.entity.Article;
import info.pablogiraldo.sbblog.repository.IArticleJpaRepository;
import info.pablogiraldo.sbblog.service.IArticleService;
import info.pablogiraldo.sbblog.utils.RenderizadorPaginas;

@Controller
@RequestMapping("/")
public class ArticleController {

	@Autowired
	private IArticleService articleService;

	@Autowired
	private IArticleJpaRepository articleJpaRepository;

	@GetMapping("")
	public String listArticles(@RequestParam(name = "page", defaultValue = "0") int page, Model model) {

		Pageable articlePageable = PageRequest.of(page, 4);
		Page<Article> articles = articleJpaRepository.findAllByOrderByIdDesc(articlePageable);
		RenderizadorPaginas<Article> renderizadorPaginas = new RenderizadorPaginas<Article>(
				"http://www.pablogiraldo.info/", articles);

		model.addAttribute("renpag", renderizadorPaginas);
		model.addAttribute("articles", articles);

		return "inicio";
	}

	@GetMapping("/trueknic")
	public String trueknic() {
		return "trueknic";
	}

	@GetMapping("/admin")
	public String pagina2() {
		return "admin";
	}

	@GetMapping("/login")
	public String login() {
		return "login";
	}

	@GetMapping("/admin/articles/formarticle")
	public String formArticle(Model model) {
//		model.addAttribute("titulo", "Nuevo artículo");
		model.addAttribute("article", new Article());
		return "formArticle";
	}

	@PostMapping("/admin/articles/formarticle")
	public String addArticle(@Valid Article article, BindingResult result, Model model, RedirectAttributes flash) {
		if (result.hasErrors()) {
//			model.addAttribute("titulo", "Nuevo artículo");
			model.addAttribute("article", new Article());
			return "formArticle";
		}

		articleService.addArticle(article);
		flash.addFlashAttribute("success", "Artículo guardado con éxito.");

		return "redirect:/admin/articles/formarticle";
	}

}
