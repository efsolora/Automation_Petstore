package petStore.get.findPetWithStatus;

import com.intuit.karate.junit5.Karate;

public class GetRunner {
    @Karate.Test
    Karate get(){
        return Karate.run().relativeTo(getClass());
    }
}
