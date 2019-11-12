package com.programmingjavaweb.utils;

import com.fasterxml.jackson.databind.ObjectMapper;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.util.EntityUtils;
import org.springframework.stereotype.Component;

import java.util.Map;

@Component
public class HttpClientUtils {

    private ObjectMapper mapper = new ObjectMapper();

    public String httpGet(String url, Map<String, String> headerParams) {
        DefaultHttpClient httpClient = new DefaultHttpClient();
        try {
            HttpGet httpGet = new HttpGet(url);

            headerParams.forEach((key, value) -> {
                httpGet.addHeader(key, value);
            });

            HttpResponse response = httpClient.execute(httpGet);
            int statusCode = response.getStatusLine().getStatusCode();
            if (statusCode == 200 && statusCode < 300) {
                HttpEntity httpEntity = response.getEntity();
                return EntityUtils.toString(httpEntity);
//                String apiOutput = EntityUtils.toString(httpEntity);
//                return mapper.readValue(apiOutput, clazz);
            }
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
        return null;
    }

    //Co the su dung Builder de giam tham so truyen vao trong ham
    public String httpPost(String url, Map<String, String> headerParams, String jsonValue) {
        DefaultHttpClient httpClient = new DefaultHttpClient();
        try {
            HttpPost httpPost = new HttpPost(url);
            headerParams.forEach((key, value) -> {
                httpPost.addHeader(key, value);
            });
            StringEntity entity = new StringEntity(jsonValue); //parse Object UserDTO -> JSON
            httpPost.setEntity(entity);
            HttpResponse response = httpClient.execute(httpPost);
            int statusCode = response.getStatusLine().getStatusCode();
            if (statusCode == 200 && statusCode < 300) {
                HttpEntity httpEntity = response.getEntity();
                return EntityUtils.toString(httpEntity);
//                String apiOutput = EntityUtils.toString(httpEntity);
//                return mapper.readValue(apiOutput, clazz);
            }
        } catch (Exception e) {
            return null;
        }
        return null;
    }
}
