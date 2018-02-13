package mm_local;

import org.testng.Assert;

import com.alibaba.fastjson.JSONPath;

public class JSONpathControllerTest {
	public static void main(String[] args) {
		 Entity entity = new Entity(123, new Object());

		  Assert.assertSame(entity.getValue(), JSONPath.eval(entity, "$.value")); 
		  Assert.assertTrue(JSONPath.contains(entity, "$.value"));
		  Assert.assertTrue(JSONPath.containsValue(entity, "$.id", 123));
		  Assert.assertTrue(JSONPath.containsValue(entity, "$.value", entity.getValue())); 
		  Assert.assertEquals(2, JSONPath.size(entity, "$"));
//		  Assert.assertEquals(0, JSONPath.size(new Object[], "$")); 
	}
}
