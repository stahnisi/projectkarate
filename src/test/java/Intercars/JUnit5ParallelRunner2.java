package Intercars;

import com.intuit.karate.KarateOptions;
import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import net.masterthought.cucumber.Configuration;
import net.masterthought.cucumber.ReportBuilder;
import org.apache.commons.io.FileUtils;
import org.junit.jupiter.api.Test;

import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Properties;

import static org.junit.jupiter.api.Assertions.assertTrue;

//@KarateOptions(tags = "@smoke2")     //@KarateOptions(features = {"karate.feature"})  @KarateOptions(features = "classpath:animals/cats/cats-post.feature")  @KarateOptions(features = "classpath:animals/cats", tags = "~@ignore")  @KarateOptions(features = { "classpath:animals/cats/cats-post.feature", "classpath:animals/cats/cats-get.feature"})

class JUnit5ParallelRunner2 {

    @Test
    void testParallel() {
        String outputPath = "target/surefire-reports";
   //     Results results = Runner.parallel(getClass(),4,outputPath);

        String country;
        String environment;
        Integer parallel;

        country = (System.getProperty("karate.cnt")).toUpperCase();
        environment = (System.getProperty("karate.env")).toUpperCase();
        parallel = Integer.parseInt(System.getProperty("karate.par"));

        System.out.println(environment);

        System.out.println("====== Tests are running now -> Country: "+country+" Environment: "+environment+" ======");
        Results results = Runner.path("classpath:Intercars").tags("@"+country,"@"+environment,"~@COMPONENT").parallel(parallel);
        System.out.println("====== Tests were successfully executed -> Country: "+country+" Environment: "+environment+" ======");
        generateReport(outputPath);
        assertTrue(results.getFailCount() == 0, results.getErrorMessages());
    }

    public static void generateReport (String outputPath){
        Collection<File> jsonFiles = FileUtils.listFiles(new File(outputPath), new String[]{"json"}, true);

        List<String> jsonPaths = new ArrayList(jsonFiles.size());
        jsonFiles.forEach(file -> jsonPaths.add(file.getAbsolutePath()));
        Configuration config = new Configuration(new File("target"),"Intercars");
        ReportBuilder reportBuilder = new ReportBuilder(jsonPaths, config);
        reportBuilder.generateReports();
    }
}
