package cz.czechitas.java2webapps.ukol7.service;

import cz.czechitas.java2webapps.ukol7.entity.Post;
import cz.czechitas.java2webapps.ukol7.repository.PostRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class PostService {
    private final PostRepository postRepository;

    @Autowired
    public PostService(PostRepository postRepository) {
        this.postRepository = postRepository;
    }

    public List<Post> list() {
        List<Post> posts = postRepository.findAll();
        System.out.println("Number of posts: " + posts.size()); // Pro logování
        return posts;
    }

    public Optional<Post> singlePost(String slug) {
        return postRepository.findBySlug(slug);
    }
}
