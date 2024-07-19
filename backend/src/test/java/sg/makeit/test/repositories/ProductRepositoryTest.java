package sg.makeit.test.repositories;

import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.data.r2dbc.DataR2dbcTest;
import org.springframework.data.domain.PageRequest;
import org.springframework.test.context.ActiveProfiles;
import org.springframework.test.context.DynamicPropertyRegistry;
import org.springframework.test.context.DynamicPropertySource;
import org.springframework.test.context.junit.jupiter.SpringExtension;
import org.testcontainers.containers.PostgreSQLContainer;
import org.testcontainers.junit.jupiter.Container;
import org.testcontainers.junit.jupiter.Testcontainers;
import org.testcontainers.utility.DockerImageName;
import reactor.test.StepVerifier;
import sg.makeit.test.factory.ProductFactory;
import sg.makeit.test.models.Product;

import java.math.BigDecimal;
import java.time.Duration;
import java.time.LocalDateTime;
import java.util.List;

@ExtendWith(SpringExtension.class)
@ActiveProfiles("test")
@Testcontainers
@DataR2dbcTest
class ProductRepositoryTest {
    @Autowired
    ProductRepository productRepository;

    @Container
    static PostgreSQLContainer<?> postgres = new PostgreSQLContainer<>(DockerImageName.parse("postgres:14-alpine"))
            .withStartupTimeout(Duration.ofMillis(30000));

    @DynamicPropertySource
    static void registerPgProperties(DynamicPropertyRegistry registry) {
        registry.add("spring.datasource.url", postgres::getJdbcUrl);
        registry.add("spring.datasource.username", postgres::getUsername);
        registry.add("spring.datasource.password", postgres::getPassword);
    }

    private Product createProduct(String slug) {
        return ProductFactory.createProduct(slug);
    }

    @AfterEach
    void tearDown() {
        StepVerifier.create(productRepository.deleteAll())
                .expectSubscription()
                .expectNext()
                .verifyComplete();
    }

    @Test
    @DisplayName("Should return all products")
    void testFindAllByReturnTwo() {
        StepVerifier.create(productRepository.saveAll(List.of(this.createProduct("p-1"), this.createProduct("p-2"))))
                .expectNextCount(2)
                .verifyComplete();

        StepVerifier.create(productRepository.findAllBy(PageRequest.of(0, 10)))
                .expectNextCount(2)
                .verifyComplete();
    }

    @Test
    @DisplayName("Should return 1 product")
    void testFindAllByReturnOne() {
        StepVerifier.create(productRepository.saveAll(List.of(this.createProduct("p-1"), this.createProduct("p-2"))))
                .expectNextCount(2)
                .verifyComplete();

        StepVerifier.create(productRepository.findAllBy(PageRequest.of(0, 1)))
                .expectNextCount(1)
                .verifyComplete();
    }

    @Test
    @DisplayName("Should return product by slug")
    void findFirstBySlug() {
        StepVerifier.create(productRepository.saveAll(List.of(this.createProduct("nike-shoes"), this.createProduct("p-2"))))
                .expectNextCount(2)
                .verifyComplete();

        StepVerifier.create(productRepository.findFirstBySlug("nike-shoes"))
                .expectSubscription()
                .expectNextMatches(product -> product.getSlug().equals("nike-shoes"))
                .verifyComplete();
    }
}