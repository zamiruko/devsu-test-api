import com.intuit.karate.junit5.Karate;

class KarateRunner {

    @Karate.Test
    Karate testAll() {
        return Karate.run().relativeTo(getClass());
    }

    @Karate.Test
    Karate testSignup() {
        return Karate.run("Signup").relativeTo(getClass());
    }

    @Karate.Test
    Karate testLogin() {
        return Karate.run("Login").relativeTo(getClass());
    }
}
