package petStore.put.updateNameAndStatus;

import com.intuit.karate.junit5.Karate;

public class PutRunner {
    @Karate.Test
    Karate put(){
        return Karate.run().relativeTo(getClass());
    }
}
