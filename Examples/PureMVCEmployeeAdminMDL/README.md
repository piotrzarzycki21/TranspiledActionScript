## [PureMVC](http://puremvc.github.com/) [ActionScript 3] Demo: Employee Admin ([Apache Royale™](http://royale.apache.org/))
This example illustrates how can look like the MDL Apache Royale™ port of original [Employee Admin (Flex)](https://github.com/PureMVC/puremvc-as3-demo-flex-employeeadmin/) demo.

[Live Example](https://transpiledactionscript.com/examples/PureMVCEmployeeAdminMDL/)

## How to build example:

[Moonshine IDE](http://moonshine-ide.com/)

[Visual Studio Code](https://nextgenactionscript.com/)

[Apache Maven™](https://maven.apache.org/)

  - Install Apache Maven™ using following [instruction](https://maven.apache.org/install.html).
  - The most recommended way of building this example is to prepare PureMVC Maven artifacts. Sources of PureMVC need to be build using         Apache Royale™, because they are not available in the Maven central repository. Clone following [fork of PureMVC](https://github.com/piotrzarzycki21/puremvc-as3-multicore-framework).
  - Use maven pom file in the cloned sources by running command using settings template [settings-template.xml](https://github.com/apache/royale-asjs/blob/develop/settings-template.xml):
  
        mvn clean install -s settings-template.xml
        
  - Go to the folder root of the example and run the same command.
