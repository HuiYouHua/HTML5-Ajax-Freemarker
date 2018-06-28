package com.hhy;

import java.util.*;

import com.hhy.dao.ProduceContent;
import com.hhy.dao.AllProduce;
import com.hhy.dao.Produce;

public class FreemarkerTest1 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		FreemarkerUtil util = new FreemarkerUtil();
        Map<String, Object> map = new HashMap<String, Object>();
 
        Produce produce1 = new Produce();
        produce1.setProduceImageUrl("http://localhost:8080/freemarker/images/main_26.png");
        produce1.setProduceTitle("保20和30年中疾险11");
        produce1.setProduceDescription("保终身|百种疾病|可选轻症豁免");
        
        Produce produce2 = new Produce();
        produce2.setProduceImageUrl("http://localhost:8080/freemarker/images/main_29.png");
        produce2.setProduceTitle("成人及儿童终身重疾病12");
        produce2.setProduceDescription("150种疾病|身故返保费|赠绿通免");
         
        ArrayList<Produce> produces = new ArrayList<Produce>();
        produces.add(produce1);
        produces.add(produce2);
        produces.add(produce2);
        produces.add(produce2);
        
        ArrayList<Produce> produces1 = new ArrayList<Produce>();
        produces1.add(produce1);
        produces1.add(produce2);
        produces1.add(produce2);
        
        ArrayList<Produce> produces2 = new ArrayList<Produce>();
        produces2.add(produce1);
        
        
        ArrayList<Produce> produces3 = new ArrayList<Produce>();
        produces3.add(produce1);
        produces3.add(produce2);
        
        
        ProduceContent content = new ProduceContent();
        content.setLabelImageUrl("http://localhost:8080/freemarker/images/main_13.png");
        content.setLabelTitle("美食推荐11");
        content.setProduces(produces);

        ProduceContent content1 = new ProduceContent();
        content1.setLabelImageUrl("http://localhost:8080/freemarker/images/main_15.png");
        content1.setLabelTitle("饮品休闲11");
        content1.setProduces(produces1);
        
        ProduceContent content2 = new ProduceContent();
        content2.setLabelImageUrl("http://localhost:8080/freemarker/images/main_17.png");
        content2.setLabelTitle("酒店住宿11");
        content2.setProduces(produces2);
        
        ProduceContent content3 = new ProduceContent();
        content3.setLabelImageUrl("http://localhost:8080/freemarker/images/main_19.png");
        content3.setLabelTitle("电影优惠11");
        content3.setProduces(produces3);
        
        ArrayList<ProduceContent> allProduces = new ArrayList<ProduceContent>();
        allProduces.add(content);
        allProduces.add(content1);
        allProduces.add(content2);
        allProduces.add(content3);
        
        AllProduce allProduce = new AllProduce();
        allProduce.setProduceContents(allProduces);
        
        
        map.put("content", allProduce);
//
        util.fprint("index.ftl", map, "index.html");
		
	}

}
