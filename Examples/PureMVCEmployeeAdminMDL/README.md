## [PureMVC](http://puremvc.github.com/) [ActionScript 3] Demo: Employee Admin ([Apache Royale™](http://royale.apache.org/))
This example illustrates how the MDL Apache Royale™ [Employee Admin (Flex)](https://github.com/PureMVC/puremvc-as3-demo-flex-employeeadmin/) demo might look like.

[Live Example](https://transpiledactionscript.com/examples/PureMVCEmployeeAdminMDL/)

## How to build the example:

[Moonshine IDE](http://moonshine-ide.com/)
   - Setup the Apache Royale™ [Nightly build](http://royale.apache.org/download/) using the [Add the Royale SDK](https://github.com/apache/royale-asjs/wiki/Moonshine-IDE#add-the-royale-sdk) instruction. 
   - Clone the sources of the [PureMVC ActionScript 3 MultiCore Framework](https://github.com/PureMVC/puremvc-as3-multicore-framework)
   - In the "**Home**" tab, choose "**Open Apache Flex/JS Project...**" and select the folder with your example. 
   - Right click on the "**PureMVCEmployeeAdminMDL**" in the project tree and choose "**Settings**".
   - Go to the "**Path**" tab and add new "**Class paths**" to source folder ("**src**") of the cloned PureMVC repository.
   - Go to the "**Project**" menu and choose "**Build as JavaScript**" or "**Build & Run as JavaScript**".

[Visual Studio Code](https://nextgenactionscript.com/)

   Support for Apache Royale™ in VSCode will be added after the official release of the framework. More details can be found [here](https://github.com/BowlerHatLLC/vscode-nextgenas/issues/144).

[Apache Maven™](https://maven.apache.org/)

  - Install Apache Maven™ using the following [instruction](https://maven.apache.org/install.html).
  - The most recommended way for building this example is to prepare PureMVC Maven artifacts. The sources of PureMVC have to be build with Apache Royale™, because they are not available in the Maven central repository. Therefore, clone the following [fork of PureMVC](https://github.com/piotrzarzycki21/puremvc-as3-multicore-framework).
  - Use the maven pom file in the cloned sources by running the below command that uses the [settings-template.xml](https://github.com/apache/royale-asjs/blob/develop/settings-template.xml):
  
        mvn clean install -s settings-template.xml
        
  - Go to the folder root of the example and run the same command.
