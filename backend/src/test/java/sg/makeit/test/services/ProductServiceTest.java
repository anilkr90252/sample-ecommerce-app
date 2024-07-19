package sg.makeit.test.services;

import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.modelmapper.ModelMapper;
import org.springframework.data.domain.PageRequest;
import org.springframework.test.context.ActiveProfiles;
import org.springframework.test.context.junit.jupiter.SpringExtension;
import reactor.core.publisher.Flux;
import reactor.core.publisher.Mono;
import reactor.test.StepVerifier;
import sg.makeit.test.dtos.ProductDto;
import sg.makeit.test.exceptions.ProductNotFoundException;
import sg.makeit.test.factory.ProductFactory;
import sg.makeit.test.models.Product;
import sg.makeit.test.repositories.ProductRepository;

import static org.mockito.ArgumentMatchers.any;
import static org.mockito.Mockito.*;

@ExtendWith(SpringExtension.class)
@ActiveProfiles("test")
class ProductServiceTest {

    private final ProductRepository productRepository = mock(ProductRepository.class);
    private final ModelMapper modelMapper = new ModelMapper();
    private final ProductService productService = new ProductService(productRepository, modelMapper);

    @Test
    @DisplayName("Should return all productDtos with total")
    void getAllProducts() {
        Flux<Product> products = Flux.just(ProductFactory.createProduct("p-1"), ProductFactory.createProduct("p-2"));
        when(productRepository.findAllBy(any())).thenReturn(products);
        when(productRepository.count()).thenReturn(Mono.just(2L));

        StepVerifier.create(productService.getAllProducts(0, 10))
                .expectSubscription()
                .expectNextMatches(pdo -> pdo.getTotal() == 2L
                        && pdo.getProduct().size() == 2
                        && pdo.getProduct().get(0) instanceof ProductDto
                )
                .verifyComplete();

        verify(productRepository, times(1)).findAllBy(PageRequest.of(0, 10));
        verify(productRepository, times(1)).count();
    }

    @Test
    @DisplayName("Should return a productDto by slug")
    void getProductBySlug() {
        Product product = ProductFactory.createProduct("test-slug");
        when(productRepository.findFirstBySlug("test-slug")).thenReturn(Mono.just(product));

        StepVerifier.create(productService.getProductBySlug("test-slug"))
                .expectSubscription()
                .expectNextMatches(productDto -> productDto.getSlug().equals("test-slug"))
                .verifyComplete();

        verify(productRepository, times(1)).findFirstBySlug("test-slug");
    }

    @Test
    @DisplayName("Should return error when product not found by slug")
    void getProductBySlugNotFound() {
        String slug = "non-existent-slug";
        when(productRepository.findFirstBySlug(slug)).thenReturn(Mono.empty());

        StepVerifier.create(productService.getProductBySlug(slug))
                .expectSubscription()
                .expectErrorMatches(throwable -> throwable instanceof ProductNotFoundException)
                .verify();

        verify(productRepository, times(1)).findFirstBySlug(slug);
    }
}