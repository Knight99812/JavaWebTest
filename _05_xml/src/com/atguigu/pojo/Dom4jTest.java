package com.atguigu.pojo;

import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.Element;
import org.dom4j.io.SAXReader;
import org.junit.Test;

import java.math.BigDecimal;
import java.util.List;

public class Dom4jTest {

    @Test
    public void test1() throws Exception {
        SAXReader saxReader = new SAXReader();
        Document document = saxReader.read("src/books.xml");
        System.out.println(document);
    }

    @Test
    public void test2() throws Exception {
        SAXReader reader = new SAXReader();
        Document document = reader.read("src/books.xml");
        Element rootElement = document.getRootElement();
//        System.out.println(rootElement);
        List<Element> books = rootElement.elements("book");
        for (Element book : books) {
//            System.out.println(book.asXML());
            Element nameElement = book.element("name");
//            System.out.println(nameElement.asXML());
            String nameText = nameElement.getText();
            String priceText = book.elementText("price");
            String authorText = book.elementText("author");
            String snValue = book.attributeValue("sn");

            System.out.println(new Book(snValue, nameText, BigDecimal.valueOf(Double.parseDouble(priceText)), authorText));
        }
    }

}
