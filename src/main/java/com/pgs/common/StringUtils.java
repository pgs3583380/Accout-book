package com.pgs.common;

import com.google.gson.Gson;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.Calendar;
import java.util.Date;
import java.util.UUID;

/**
 * Created by Administrator on 2017/5/8.
 */
public abstract class StringUtils {

    public static String getUUID() {
        return UUID.randomUUID().toString();
    }

    public static boolean isEmpty(Object str) {
        return str == null || "".equals(str);
    }

    public static void JsonWrite(HttpServletResponse response, Object o) {
        Gson gson = new Gson();
        String json = gson.toJson(o);
        response.setContentType("text/html");
        response.setCharacterEncoding("UTF-8");
        response.setHeader("Cache-Control", "no-cache");
        PrintWriter out = null;
        try {
            out = response.getWriter();
            out.write(json);
            out.flush();
            out.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    /**
     * 判断是否为指定长度
     */
    public static boolean checkAppointLenth(Object obj, int len) {
        return !isEmpty(obj) && obj.toString().length() == len;
    }

    /**
     * 转换编码格式为utf-8
     *
     * @param str
     * @return
     */
    public static String convertToUTF8(String str) {
        if (StringUtils.isEmpty(str)) {
            return null;
        }
        try {
            return URLDecoder.decode(str, "utf-8");
        } catch (UnsupportedEncodingException e) {
            return str;
        }
    }

    public static String getYear() {
        Calendar c = Calendar.getInstance();
        return String.valueOf(c.get(Calendar.YEAR));
    }
}
