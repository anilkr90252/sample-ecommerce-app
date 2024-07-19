package sg.makeit.test.dtos;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import sg.makeit.test.models.Product;

import java.util.List;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class ProductPageResponseDto {
    private long total;
    private int page;
    private int size;
    private List<ProductDto> product;
}
