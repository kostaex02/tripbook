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

    //DOM Tree에서 해당되는 태그의 값 가져오기
    public static String getContents(Element e, String tagName) {
        
        NodeList list = e.getElementsByTagName(tagName);
        Element element = (Element)list.item(0);
        
        if(element.getFirstChild() != null) {
            return element.getFirstChild().getNodeValue();
        }else {
            return "";
        }
    }
    
    //작업1번
    public List<String> getContentsXY(String point_x, String point_y) {
    	List<String> xylist = new ArrayList<>();
    	String apiKey = "3bae0d1bca94080850d3d2451479c7ee";

        try {
            String strSearch = URLEncoder.encode("경기도 성남시 분당구 판교역로 235 에이치스퀘어 N동 6층","UTF-8");
            String url = "https://apis.daum.net/local/geo/addr2coord?apikey="+apiKey+"&q="+strSearch+"&output=xml";

            DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
            
            //XML DOM Parser를 생성한다.
            DocumentBuilder builder = dbf.newDocumentBuilder();
            //XML이 담긴 url정보를 읽어들여서 DOM을 구성한다.
            Document doc = builder.parse(url);
            
            //root Element를 구한다.
            Element root = doc.getDocumentElement();
            NodeList list = root.getElementsByTagName("item");
            
            for(int i=0; i<list.getLength(); i++) {
                Element element = (Element)list.item(i);
                
                //출력 궈궈
                xylist.add(getContents(element, point_x));
                xylist.add(getContents(element, point_y));
                //title에 대해서 pattern으로 태그를 잘라낸다.

                //pattern 클래스를 사용해서 치환할 수도 있고, replaceAll할 때 패턴을 넣어서 태그만 치환할 수 있다.
                /*String pattern = "<(\\/)?[A-Za-z]*>";
                Pattern tag = Pattern.compile(pattern);
                Matcher m = tag.matcher(title);
                title = m.replaceAll(""); //->Matcher이용해서 하는 방법
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
        //작업정리
        //1-1. 검색api를 통해서 정보를 가져온다.
        //1-2. 정보에서 내가 필요한 동영상 링크만 가져온다.
    	String address = "경기도 성남시 분당구 판교역로 235 에이치스퀘어 N동 6층";
        Ex01 c = new Ex01();
        List<String> output = new ArrayList<>();
        output = c.getContentsXY("point_x","point_y"); //1번작업
        System.out.println("xy 좌표");
        System.out.println("point_x : " + output.get(0));
        System.out.println("point_y : " + output.get(1));	
    }
} 


