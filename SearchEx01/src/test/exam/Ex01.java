package test.exam;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.List;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;


public class Ex01 {

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
    
    //�۾�1��
    public List<String> getContentsXY(String point_x, String point_y) {
    	List<String> xylist = new ArrayList<>();
    	String apiKey = "3bae0d1bca94080850d3d2451479c7ee";

        try {
            String strSearch = URLEncoder.encode("��⵵ ������ �д籸 �Ǳ����� 235 ����ġ������ N�� 6��","UTF-8");
            String url = "https://apis.daum.net/local/geo/addr2coord?apikey="+apiKey+"&q="+strSearch+"&output=xml";

            DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
            
            //XML DOM Parser�� �����Ѵ�.
            DocumentBuilder builder = dbf.newDocumentBuilder();
            //XML�� ��� url������ �о�鿩�� DOM�� �����Ѵ�.
            Document doc = builder.parse(url);
            
            //root Element�� ���Ѵ�.
            Element root = doc.getDocumentElement();
            NodeList list = root.getElementsByTagName("item");
            
            for(int i=0; i<list.getLength(); i++) {
                Element element = (Element)list.item(i);
                
                //��� �ű�
                xylist.add(getContents(element, point_x));
                xylist.add(getContents(element, point_y));
                //title�� ���ؼ� pattern���� �±׸� �߶󳽴�.

                //pattern Ŭ������ ����ؼ� ġȯ�� ���� �ְ�, replaceAll�� �� ������ �־ �±׸� ġȯ�� �� �ִ�.
                /*String pattern = "<(\\/)?[A-Za-z]*>";
                Pattern tag = Pattern.compile(pattern);
                Matcher m = tag.matcher(title);
                title = m.replaceAll(""); //->Matcher�̿��ؼ� �ϴ� ���
                title = title.replaceAll(pattern, ""); //->
                */
                //retStr = retStr + getContents(element, "link") + "\n";
            }
            
        } catch (UnsupportedEncodingException e) {
            System.out.println("getXml()::::UnsupportedEncodingException::::"+e);
        } catch (ParserConfigurationException e) {
            System.out.println("getXml()::::ParserConfigurationException::::"+e);
        } catch (SAXException e) {
            System.out.println("getXml()::::SAXException::::"+e);
        } catch (IOException e) {
            System.out.println("getXml()::::IOException::::"+e);
        }
        
        return xylist;
    }
    
    public static void main(String[] args) {
        //�۾�����
        //1-1. �˻�api�� ���ؼ� ������ �����´�.
        //1-2. �������� ���� �ʿ��� ������ ��ũ�� �����´�.
    	String address = "��⵵ ������ �д籸 �Ǳ����� 235 ����ġ������ N�� 6��";
        Ex01 c = new Ex01();
        List<String> output = new ArrayList<>();
        output = c.getContentsXY("point_x","point_y"); //1���۾�
        System.out.println("xy ��ǥ");
        System.out.println("point_x : " + output.get(0));
        System.out.println("point_y : " + output.get(1));	
    }
} 


