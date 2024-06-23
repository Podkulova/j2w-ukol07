package cz.czechitas.java2webapps.ukol7.controller;


import cz.czechitas.java2webapps.ukol7.Application;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.ResponseEntity;
import org.springframework.ui.Model;
import cz.czechitas.java2webapps.ukol7.entity.Post;
import cz.czechitas.java2webapps.ukol7.service.PostService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import java.util.List;
import java.util.Optional;

@Controller
public class PostController {

    private static final Logger logger = LoggerFactory.getLogger(Application.class);

    private final PostService postService;

    @Autowired
    public PostController(PostService postService) {
        this.postService = postService;
    }

    @GetMapping("/")
    public String getAllPosts(Model model) {
        List<Post> posts = postService.list();
        model.addAttribute("posts", posts);
        return "index";
    }


    @GetMapping("/post/{slug}")
    public String postDetail(@PathVariable String slug, Model model) {
        model.addAttribute("post", postService.getPostBySlug(slug));
        return "post";
    }
}
