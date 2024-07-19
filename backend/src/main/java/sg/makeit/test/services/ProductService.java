package sg.makeit.test.services;

import lombok.RequiredArgsConstructor;
import org.modelmapper.ModelMapper;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import reactor.core.publisher.Mono;
import sg.makeit.test.dtos.ProductDto;
import sg.makeit.test.dtos.ProductPageResponseDto;
import sg.makeit.test.models.Product;
import sg.makeit.test.repositories.ProductRepository;
import sg.makeit.test.exceptions.ProductNotFoundException;
import java.util.List;

@Service
@RequiredArgsConstructor
public class ProductService {

    private final ProductRepository productRepository;
    private final ModelMapper modelMapper;

    public Mono<ProductPageResponseDto> getAllProducts(int page, int size) {
        Pageable pageable = PageRequest.of(page, size);
        return productRepository.count()
                .flatMap(totalProduct -> this.productRepository.findAllBy(pageable)
                        .collectList()
                        .map(products -> new ProductPageResponseDto(totalProduct, page, size, this.getProductDtos(products)))
                );
    }

    private List<ProductDto> getProductDtos(List<Product> products) {
        return products.stream().map(product -> this.modelMapper.map(product, ProductDto.class)).toList();
    }

    public Mono<Product> getProductBySlug(String slug) {
        return productRepository.findFirstBySlug(slug)
                .switchIfEmpty(Mono.error(new ProductNotFoundException("Product with slug %snot found" .formatted(slug))));
    }

}
