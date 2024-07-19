package sg.makeit.test.dtos;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.math.BigDecimal;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class ProductDto {
    private Long id;

    private String name;
    private String description;
    private String price;
    private String brand;
    private String category;
    private String color;
    private String size;
    private String material;

    private Integer stockQuantity;
    private String imageUrl;
    private String slug;
}
