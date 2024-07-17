package sg.makeit.test;

import org.springframework.boot.SpringApplication;

public class TestTestApplication {

	public static void main(String[] args) {
		SpringApplication.from(EcommerceApplication::main).with(TestcontainersConfiguration.class).run(args);
	}

}
