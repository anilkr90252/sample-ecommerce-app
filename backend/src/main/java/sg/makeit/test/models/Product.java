package sg.makeit.test.models;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.springframework.data.annotation.Id;
import org.springframework.data.relational.core.mapping.Column;
import org.springframework.data.relational.core.mapping.Table;

import java.math.BigDecimal;
import java.time.LocalDateTime;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Table("products")
public class Product {

    @Id
    private Long id;

    private String name;
    private String description;
    private BigDecimal price;
    private String brand;
    private String category;
    private String color;
    private String size;
    private String material;

    @Column("stock_quantity")
    private Integer stockQuantity;

    @Column("created_at")
    private LocalDateTime createdAt;

    @Column("updated_at")
    private LocalDateTime updatedAt;

    @Column("image_url")
    private String imageUrl;
    private String slug;

}
