package examples;

import com.intuit.karate.junit5.Karate;

class ExamplesTest {
    
    // this will run all *.feature files that exist in sub-directories
    // see https://github.com/intuit/karate#naming-conventions   
    @Karate.Test
    Karate testSample() {
        return new Karate().feature("sample").relativeTo(getClass());
    }

    @Karate.Test
    Karate testTags() {
        return new Karate().feature("tags").tags("").relativeTo(getClass());
    }

    @Karate.Test
    Karate testFullPath() {
        return new Karate().relativeTo(getClass());
    }
    
}
