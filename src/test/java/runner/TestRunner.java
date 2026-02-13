package runner;

import com.intuit.karate.junit5.Karate;

class TestRunner {

    @Karate.Test
    Karate runTests() {
        return Karate.run("classpath:createUser.feature")
                .reportDir("target/allure-results");
    }
}
