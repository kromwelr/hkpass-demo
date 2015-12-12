import com.accenture.hkha.rest.core.RestUtility;


public class RestUtilityTest{

	public static void main(String[] args) {

		RestUtility util = new RestUtility();
		String response = util.getResponse();
		assertNotNull(response);
	}
}
