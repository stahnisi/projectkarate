package examples.tags;

import com.intuit.karate.junit5.Karate;

class JUnit5TagsRunner {

    @Karate.Test
    Karate testSmoke(){
        return new Karate().tags("smoke").relativeTo(getClass());
    }

    @Karate.Test
    Karate testRegression(){
        return new Karate().tags("regression").relativeTo(getClass());
    }

    @Karate.Test
    Karate testAPI(){
        return new Karate().tags("API").relativeTo(getClass());
    }

}
