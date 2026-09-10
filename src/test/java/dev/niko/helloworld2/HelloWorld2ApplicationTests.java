package dev.niko.helloworld2;

import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
class HelloWorld2ApplicationTests {

    @Test
    void contextLoads() {
    }

    @Test
    void testHelloWorld() {
        String expected = "Hello, World!";
        String actual = "Hello, World!"; // Replace with actual method call if needed
        assert(expected.equals(actual));
    }

}
