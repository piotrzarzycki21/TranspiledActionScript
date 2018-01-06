## [PureMVC](http://puremvc.github.com/) [ActionScript 3] Demo: Employee Admin ([Apache Royale™](http://royale.apache.org/))
This example illustrates how can look like the MDL Apache Royale™ port of original [Employee Admin (Flex)](https://github.com/PureMVC/puremvc-as3-demo-flex-employeeadmin/) demo.

[Live Example](https://transpiledactionscript.com/examples/PureMVCEmployeeAdminMDL/)

## How to build example:

[Moonshine IDE](http://moonshine-ide.com/)
   - Setup [Nightly build](http://apacheflexbuild.cloudapp.net:8080/job/royale-asjs/lastSuccessfulBuild/artifact/out/) of Apache Royale™ using instruction [Add the Royale SDK](https://github.com/apache/royale-asjs/wiki/Moonshine-IDE#add-the-royale-sdk). 
   - Clone sources of [PureMVC ActionScript 3 MultiCore Framework](https://github.com/PureMVC/puremvc-as3-multicore-framework)
   - In the "**Home**" tab, choose "**Open Apache Flex/JS Project...**" and select the folder with your example. 
   - Right click on the "**PureMVCEmployeeAdminMDL**" in the project tree and choose "**Settings**"
   - Go to the "**Path**" tab and add new "**Class paths**" to source folder ("**src**") of cloned PureMVC repository 
   - Go to the "**Project**" menu and choose "**Build as JavaScript**" or "**Build & Run as JavaScript**".

[Visual Studio Code](https://nextgenactionscript.com/)

   Support for Apache Royale in VSCode will be added after official release of framework. More details [here](https://github.com/BowlerHatLLC/vscode-nextgenas/issues/144)

[Apache Maven™](https://maven.apache.org/)

  - Install Apache Maven™ using following [instruction](https://maven.apache.org/install.html).
  - The most recommended way of building this example is to prepare PureMVC Maven artifacts. Sources of PureMVC need to be build using         Apache Royale™, because they are not available in the Maven central repository. Clone following [fork of PureMVC](https://github.com/piotrzarzycki21/puremvc-as3-multicore-framework).
  - Use maven pom file in the cloned sources by running command using settings template [settings-template.xml](https://github.com/apache/royale-asjs/blob/develop/settings-template.xml):
  
        mvn clean install -s settings-template.xml
        
  - Go to the folder root of the example and run the same command.
