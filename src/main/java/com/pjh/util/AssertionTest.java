package com.pjh.util;

import org.testng.annotations.Test;

public class AssertionTest {
	
	@Test
	public void testAssert3(){
		Assertion.begin();//断言开始，即将flag赋值为true
		System.out.println("开始断言3");
		Assertion.verifyEquals(1, 2, "比较两个数是否相等：");
		System.out.println("结束断言3");
		Assertion.end();//断言结束，即判断测试方法是否通过
		}
	
	@Test
	public void testAssert4(){
		Assertion.begin();//断言开始，即将flag赋值为true
		System.out.println("开始断言4");
		Assertion.verifyEquals(2, 2, "比较两个数是否相等：");
		System.out.println("结束断言4");
		Assertion.end();//断言结束，即判断测试方法是否通过
		}
}