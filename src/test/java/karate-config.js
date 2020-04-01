function fn() {
  var env = karate.env; // get java system property 'karate.env'
  var cnt = karate.properties['karate.cnt'];
  var par = karate.properties['karate.par'];
//  karate.log('karate.env system property was:', env);
  var cfgUrlEshopHomepage;
  var cfgUrlBackoffice;

  switch (cnt) {
      case "cze":
          switch (env){
              case "dev":
                   cfgUrlEshopHomepage = "https://storefront-cz-v1-dev.stratox.nonprod.ic.oxuscloud.com/cz/eshop/"
                   break;
              case "int":
                   cfgUrlEshopHomepage = "https://storefront-cz-v1-int.cze.nonprod.ic.oxuscloud.com/cz/eshop"
                   break;
              case "sit":
                   cfgUrlEshopHomepage = "https://storefront-cz-v1-sit.cze.nonprod.ic.oxuscloud.com/cz/eshop"
                   break;
              case "uat":
                   cfgUrlEshopHomepage = "https://storefront-cz-v1-uat.cze.nonprod.ic.oxuscloud.com/cz/eshop"
                   break;
              case "ref":
                   cfgUrlEshopHomepage = "https://storefront-cz-v1-ref.cze.nonprod.ic.oxuscloud.com/cz/eshop"
                   break;
              case "prod":
                   cfgUrlEshopHomepage = "https://storefront-cz-v1-dev.stratox.nonprod.ic.oxuscloud.com/cz/eshop/"
                   break;
          }
          break;
    }

    var config = { // base config JSON
      environment: env,
      country: cnt,
      parallel: par,
      urlBackoffice: cfgUrlBackoffice,
      urlEshopHomepage: cfgUrlEshopHomepage
    };

 // var evars= java.lang.System.getenv();
 // karate.log(evars);

  karate.configure('afterScenario', read('afterScenarioScreenshot.js'))

  karate.configure('retry',{count:15, interval:3000});

 // karate.configure('driver', { addOptions: 'headless'});

//  driver = { type: 'chrome', addOptions: ['--headless'] }

//  karate.configure('driver',{type:'chrome'});

  //karate.configure('driver',{type:'chrome',headless:'headless mode'})
  //karate.configure('driver',{type:'chrome'};

  karate.configure('connectTimeout', 25000);
  karate.configure('readTimeout', 25000);
  return config;
}