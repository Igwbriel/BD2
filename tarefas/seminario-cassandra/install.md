## instalação com typescript

```bash
  npm install @datastax/astra-db-ts
```
## implementação com typescript

```bash
import { DataAPIClient } from "@datastax/astra-db-ts";

// Initialize the client
const client = new DataAPIClient('YOUR_TOKEN');
const db = client.db('https://921c4869-d20a-41e8-a1c6-b39922cf400a-us-east-2.apps.astra.datastax.com');

(async () => {
  const colls = await db.listCollections();
  console.log('Connected to AstraDB:', colls);
})();
```
## instalação com Java

```bash
<dependency>
  <groupId>com.datastax.astra</groupId>
  <artifactId>astra-db-java</artifactId>
  <version>1.0.0</version>
</dependency>
```

## implementação em Java

```bash
import com.datastax.astra.client.DataAPIClient;
import com.datastax.astra.client.Database;

public class QuickStart {
  public static void main(String[] args) {
    // Initialize the client
    DataAPIClient client = new DataAPIClient("YOUR_TOKEN");
    Database db = client.getDatabase("https://921c4869-d20a-41e8-a1c6-b39922cf400a-us-east-2.apps.astra.datastax.com");
    System.out.println("Connected to AstraDB " + db.listCollectionNames());
  }
}
```

Vale pontuar que os códigos acima foram fornecidos pela plataforma datastax, eles também fornecem o parâmetro YOUR_TOKEN, necessário como parâmetro para o DataAPIClient.