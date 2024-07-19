package sg.makeit.test.factory;

import org.modelmapper.ModelMapper;
import sg.makeit.test.dtos.ProductDto;
import sg.makeit.test.dtos.ProductPageResponseDto;
import sg.makeit.test.models.Product;

import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.util.List;

public class ProductFactory {
    public static Product createProduct(String slug) {
        Product product = new Product();
        product.setName("Test Product");
        product.setDescription("This is a test product.");
        product.setPrice(BigDecimal.valueOf(29.99));
        product.setBrand("nike");
        product.setCategory("clothing");
        product.setColor("red");
        product.setSize("M");
        product.setMaterial("cotton");
        product.setStockQuantity(100);
        product.setCreatedAt(LocalDateTime.now());
        product.setUpdatedAt(LocalDateTime.now());
        product.setImageUrl("https://example.com/image.jpg");
        product.setSlug(slug);
        return product;
    }

    public static ProductPageResponseDto createProductPageResponseDto() {
        List<Product> products = List.of(createProduct("1"), createProduct("2"), createProduct("test-slug"));
        ModelMapper modelMapper = new ModelMapper();
        List<ProductDto> productDto = products.stream().map(p -> modelMapper.map(p, ProductDto.class)).toList();
        return new ProductPageResponseDto(3L, 0, 10, productDto);
    }
}
