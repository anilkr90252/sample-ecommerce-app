package sg.makeit.test.controllers;

import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.reactive.WebFluxTest;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.context.annotation.Import;
import org.springframework.test.context.ActiveProfiles;
import org.springframework.test.context.junit.jupiter.SpringExtension;
import org.springframework.test.web.reactive.server.WebTestClient;
import reactor.core.publisher.Mono;
import sg.makeit.test.dtos.ProductPageResponseDto;
import sg.makeit.test.factory.ProductFactory;
import sg.makeit.test.services.ProductService;

import static org.mockito.Mockito.*;

@ExtendWith(SpringExtension.class)
@ActiveProfiles("test")
@WebFluxTest(ProductController.class)
@Import(value = {ProductService.class})
class ProductControllerTest {

    @MockBean
    private ProductService productService;

    @Autowired
    private WebTestClient webClient;

    @Test
    void getProductById() {
        ProductPageResponseDto products = ProductFactory.createProductPageResponseDto();
        when(productService.getAllProducts(0, 10)).thenReturn(Mono.just(products));

        webClient
                .get()
                .uri("/product")
                .exchange()
                .expectStatus()
                .isOk()
                .expectBody()
                .jsonPath("$.total").isEqualTo(3)
                .jsonPath("$.product[0].slug").isEqualTo("1");
        //same jsonPath can be used to test the response structure

        verify(productService, times(1)).getAllProducts(0, 10);
    }
}