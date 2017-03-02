package com.pjh.util;

import org.testng.Assert;

public class Assertion {
	//断言封装，执行错误之后不中断测试
	public static boolean flag = true;
	
	public static void begin(){
		flag = true;
		}
	
	public static void end(){
			Assert.assertTrue(flag);
		}
		
	public static void verifyEquals(Object actual, Object expected){
			try{
				Assert.assertEquals(actual, expected);
				}catch(Error e){
					flag = false;
					}
			}
		
		public static void verifyEquals(Object actual, Object expected, String	message){
			try{
				Assert.assertEquals(actual, expected, message);
				}catch(Error e){
					flag = false;
					}
			}
	}
