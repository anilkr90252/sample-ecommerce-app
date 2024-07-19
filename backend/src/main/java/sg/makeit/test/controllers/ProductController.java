package sg.makeit.test.controllers;


import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;
import reactor.core.publisher.Mono;
import sg.makeit.test.dtos.ProductPageResponseDto;
import sg.makeit.test.models.Product;
import sg.makeit.test.services.ProductService;

@RestController
@RequestMapping("/product")
@RequiredArgsConstructor
public class ProductController {

    private final ProductService productService;

    @GetMapping
    public Mono<ProductPageResponseDto> getAllProducts(@RequestParam(defaultValue = "0") int page,
                                                       @RequestParam(defaultValue = "10") int size) {
        return productService.getAllProducts(page, size);
    }

    @GetMapping("/{slug}")
    public Mono<Product> getProductById(@PathVariable String slug) {
        return productService.getProductBySlug(slug);
    }

}
