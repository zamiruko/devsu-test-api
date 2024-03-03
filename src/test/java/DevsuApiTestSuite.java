import com.intuit.karate.junit5.Karate;

public class DevsuApiTestSuite {

    @Karate.Test
    Karate runAllTests() {
        return Karate.run().relativeTo(getClass());
    }

    @Karate.Test
    Karate runSignupTests() {
        return Karate.run("Signup").relativeTo(getClass());
    }

    @Karate.Test
    Karate runLoginTests() {
        return Karate.run("Login").relativeTo(getClass());
    }
}
