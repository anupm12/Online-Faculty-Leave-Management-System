
package com.application;

import java.util.*;
import java.io.*;
public class properties
{
    public static void loadProperties(String s)
    {

        Properties loadProps = new Properties();
        FileInputStream fi = null;
        try
        {        	
          fi = new FileInputStream(s);
          loadProps.load(fi);

          Enumeration names = loadProps.propertyNames();
          while( names.hasMoreElements() )
          {
            String key = (String)names.nextElement();
            System.setProperty( key,loadProps.getProperty(key));
          }
	}catch(Exception e){System.out.println(e+"kkkkkkk"); }
    }   
}