package com.saiha.saihaWeb.filter;


import com.saiha.saihaWeb.AES128;
import lombok.extern.slf4j.Slf4j;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Arrays;


@Slf4j
public class AppFilter implements Filter {

    boolean isHeaderCheck=false;

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        Filter.super.init(filterConfig);
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        HttpServletRequest req = (HttpServletRequest) request;
        HttpServletResponse res = (HttpServletResponse) response;
        String requestURI = req.getRequestURI();
        String userAgent= req.getHeader("user-agent");

        if(isHeaderCheck) {

            boolean isCheck = true;
            String[] etc = {"/sample"};
            for (String s : etc) {
                if (requestURI.contains(s)) {
                    isCheck = false;
                    break;
                }
            }


            if (isCheck) {

                if (!Arrays.asList(etc).contains(requestURI)) {
                    try {

                        String[] arr = userAgent.split("\\|::\\|");

                        String agent = AES128.decByKey("saihatKey!@34567", arr[1]);

                        String[] arr2 = agent.split("!!!");

                        long time = Long.parseLong(arr2[1]);

                        long cTime = System.currentTimeMillis();

                        long d = cTime - time;
                        String key = "saihaAndroid";

                        //안드로이드 에이전트 체크
                        if (!agent.contains(key) && !requestURI.contains("/error")) {
                            res.sendError(399, "잘못된 접속입니다.");
                            return;
                        }

                    } catch (Exception e) {
                        e.printStackTrace();
                        res.sendError(399, "잘못된 접속입니다.");
                        return;
                    }
                }
            }

        }
        chain.doFilter(request, response);
    }

    @Override
    public void destroy() {
        Filter.super.destroy();
    }
}
