# Automation_Petstore

Despues de clonar el repositorio, se debe tener en cuenta lo siguiente:

  1. Se ingresa a "File", "Setting", "Build, Execution, Deployment", "Build Tools", "Gradle" y se tienen  en cuenta las siguientes configuraciones de la imagen.
    ![image](https://github.com/efsolora/Automation-SauceDemo/assets/90974818/7207639d-bee4-4f2a-adab-a8304e9ede18)

  2. Se ingresa a "File", "Proyects Structure", "Project" y se verifica que el proyecto tenga el SDK dl el Java que se descargo en el paso anterior temurin-17.0.11 y no jhay necesidad de         colocarlo como variable de entorno.
    ![image](https://github.com/efsolora/Automation-SauceDemo/assets/90974818/8fe77a55-159d-426d-bbe0-355108ac7e2e)

  3. Se ingresa a "File", "Proyects Structure", "SDKs" y se verifica que homePath este apuntando a donde descargó el Java
    ![image](https://github.com/efsolora/Automation-SauceDemo/assets/90974818/2c41a7ca-6bb1-4818-b69b-b4836dfc22e9)

  4. Lo puedes ejecutar desde el la clase ParallelTest.Java, dese cada Runner o directamente del build.gradle en test
    ![image](https://github.com/efsolora/Automation_Petstore/assets/90974818/07fabae4-09c5-4758-b6c9-c4b73b2f466d)
