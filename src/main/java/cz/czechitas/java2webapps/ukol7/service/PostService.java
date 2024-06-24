package cz.czechitas.java2webapps.ukol7.service;

import cz.czechitas.java2webapps.ukol7.entity.Post;
import cz.czechitas.java2webapps.ukol7.repository.PostRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

@Service
public class PostService {
    private final PostRepository postRepository;

    @Autowired
    public PostService(PostRepository postRepository) {
        this.postRepository = postRepository;
    }

    public List<Post> findPostBySlug(String slug) {
        return postRepository.findBySlug(slug);
    }
    public List<Post> getAllPosts() {
        return postRepository.findAll();
    }

    public Page<Post> list() {
        Date currentDate = new Date(); // Aktuální datum
        return postRepository.findAllByPublishedBeforeOrderByPublishedDesc(currentDate, PageRequest.of(0, 20));
    }
}
