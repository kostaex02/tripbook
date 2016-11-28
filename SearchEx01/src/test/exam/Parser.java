package test.exam;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.NodeList;

public class Parser {
	//DOM Tree���� �ش�Ǵ� �±��� �� ��������
    public static String getContents(Element e, String tagName) {
        
        NodeList list = e.getElementsByTagName(tagName);
        Element element = (Element)list.item(0);
        
        if(element.getFirstChild() != null) {
            return element.getFirstChild().getNodeValue();
        }else {
            return "";
        }
    }
	
	public static void main(String[] args) {
        String clientId = "I_W5jgwRrL2iG_9SjWgA";//���ø����̼� Ŭ���̾�Ʈ ���̵�";
        String clientSecret = "1Yll4esUNb";//���ø����̼� Ŭ���̾�Ʈ ��ũ����";
        try {
            String text = URLEncoder.encode("�׸����丮", "UTF-8");
            String apiURL = "https://openapi.naver.com/v1/search/local.xml?query="+ text;
            URL url = new URL(apiURL);
            HttpURLConnection con = (HttpURLConnection)url.openConnection();
            con.setRequestMethod("GET");
            con.setRequestProperty("X-Naver-Client-Id", clientId);
            con.setRequestProperty("X-Naver-Client-Secret", clientSecret);
            int responseCode = con.getResponseCode();
            BufferedReader br;
            if(responseCode==200) { // ���� ȣ��
                br = new BufferedReader(new InputStreamReader(con.getInputStream()));
            } else {  // ���� �߻�
                br = new BufferedReader(new InputStreamReader(con.getErrorStream()));
            }
            String inputLine;
            StringBuffer response = new StringBuffer();
            
            DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
            DocumentBuilder builder = factory.newDocumentBuilder();
            Document doc = builder.parse(apiURL);
            
            //root Element�� ���Ѵ�.
            Element root = doc.getDocumentElement();
            NodeList list = root.getElementsByTagName("item");
            
            for(int i=0; i<list.getLength(); i++) {
                Element element = (Element)list.item(i);
                
                //��� �ű�
                String title = getContents(element, "title");
            }
            while ((inputLine = br.readLine()) != null) {
                response.append(inputLine);
            }
            
            br.close();
            System.out.println(response.toString());
            
            
        } catch (Exception e) {
            System.out.println(e);
        }
    }
}
