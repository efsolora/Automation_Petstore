package petStore.post.createPet;

import com.intuit.karate.junit5.Karate;

public class PostRunner {
    @Karate.Test
    Karate post(){
        return Karate.run().relativeTo(getClass());
    }
}
