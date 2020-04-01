package examples;

import org.apache.commons.io.FileUtils;
import com.intuit.karate.KarateOptions;
import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import static org.junit.jupiter.api.Assertions.*;
import org.junit.jupiter.api.Test;

import java.io.File;
import net.masterthought.cucumber.Configuration;
import net.masterthought.cucumber.ReportBuilder;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

@KarateOptions(tags = "@smoke2")     //@KarateOptions(features = {"karate.feature"})  @KarateOptions(features = "classpath:animals/cats/cats-post.feature")  @KarateOptions(features = "classpath:animals/cats", tags = "~@ignore")  @KarateOptions(features = { "classpath:animals/cats/cats-post.feature", "classpath:animals/cats/cats-get.feature"})
class JUnit5ParallelRunner {

    @Test
    void testParallel() {
        String outputPath = "target/surefire-reports";
        Results results = Runner.parallel(getClass(),4,outputPath);
   //     Results results = Runner.path("classpath:users").tags("@smoke2").parallel(4);
        generateReport(outputPath);
        assertTrue(results.getFailCount() == 0, results.getErrorMessages());
    }

    public static void generateReport (String outputPath){
        Collection<File> jsonFiles = FileUtils.listFiles(new File(outputPath), new String[]{"json"}, true);

        List<String> jsonPaths = new ArrayList(jsonFiles.size());
        jsonFiles.forEach(file -> jsonPaths.add(file.getAbsolutePath()));
        Configuration config = new Configuration(new File("target"),"demo2");
        ReportBuilder reportBuilder = new ReportBuilder(jsonPaths, config);
        reportBuilder.generateReports();
    }
}
