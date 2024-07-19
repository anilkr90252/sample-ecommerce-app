package sg.makeit.test.repositories;

import org.springframework.data.repository.reactive.ReactiveCrudRepository;
import org.springframework.stereotype.Repository;
import reactor.core.publisher.Flux;
import reactor.core.publisher.Mono;
import sg.makeit.test.models.Product;
import org.springframework.data.domain.Pageable;

@Repository
public interface ProductRepository extends ReactiveCrudRepository<Product, Long> {

    Flux<Product> findAllBy(Pageable pageable);
    Mono<Product> findFirstBySlug(String slug);
}
