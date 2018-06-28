package com.hhy;

import java.util.*;

public class FreemarkerTest {

	public static void main(String[] args) {
		
		System.out.println(Class.class.getClass().getResource("/").getPath());
		System.out.println(System.getProperty("user.dir"));
		
		// TODO Auto-generated method stub
		FreemarkerUtil util = new FreemarkerUtil();
        Map<String, Object> map = new HashMap<String, Object>();
 
        Group group = new Group();
        group.setName("IT");
         
        User user = new User();
        user.setId(001);
        user.setName("张三");
        user.setAge(12);
        user.setGroup(group);
         
        List<User> users = new ArrayList<User>();
        users.add(user);
        users.add(user);
        users.add(user);
         
        map.put("user", user);
        //普通EL赋值
        //util.print("01.ftl", map );
        //判断
        //util.print("03.ftl", map, "03.html");
        //遍历
        //util.print("05.ftl", map);
        //子元素判断
        util.print("06.ftl", map);
        util.fprint("06.ftl", map, "06.html");
	}


}
