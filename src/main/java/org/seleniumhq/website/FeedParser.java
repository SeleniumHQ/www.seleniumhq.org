package org.seleniumhq.website;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import java.io.IOException;
import java.net.URL;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.TimeZone;

public class FeedParser {
    public static void main(String[] args) throws IOException, SAXException, ParseException, ParserConfigurationException {
        System.out.println(render());
    }

    public static String render() throws IOException, ParserConfigurationException, SAXException, ParseException {
        StringBuilder sb = new StringBuilder();

        SimpleDateFormat in = new SimpleDateFormat("EEE, dd MMM yyyy HH:mm:ss ZZZ");
        SimpleDateFormat out = new SimpleDateFormat("EEE, dd MMM yyyy");
        in.setTimeZone(TimeZone.getTimeZone("UTC"));
        out.setTimeZone(TimeZone.getTimeZone("UTC"));
        URL url = new URL("http://feeds.feedburner.com/Selenium");
        DocumentBuilder db = DocumentBuilderFactory.newInstance().newDocumentBuilder();
        Document doc = db.parse(url.openStream());
        NodeList items = doc.getElementsByTagName("item");
        for (int i = 0; i < items.getLength(); i++) {
            Element e = (Element) items.item(i);
            String link = e.getElementsByTagName("link").item(0).getFirstChild().getNodeValue();
            String title = e.getElementsByTagName("title").item(0).getFirstChild().getNodeValue();
            Date date = in.parse(e.getElementsByTagName("pubDate").item(0).getFirstChild().getNodeValue());
            sb.append("<li>");
            sb.append("<a href='").append(link).append("'>").append(title).append("</a> - <i>").append(out.format(date)).append("</i>");
            sb.append("</li>\n");
        }

        return sb.toString();
    }
}
