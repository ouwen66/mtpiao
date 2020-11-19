package com.newer.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.newer.bean.VerifyCode;
import com.newer.service.IVerifyCodeGen;
import com.newer.service.impl.VerifyCodeGenImpl;

/**
 * 生成验证码的控制器类
 * @author Administrator
 */
@Controller
public class VerifyCodeController {

	@GetMapping("/verifyCode")
	public void verifyCode(HttpServletRequest request, HttpServletResponse response) {
		IVerifyCodeGen iVerifyCodeGen = new VerifyCodeGenImpl();
		try {
			// 设置长宽
			VerifyCode verifyCode = iVerifyCodeGen.generate(80, 28);
			String code = verifyCode.getCode();
			// 将VerifyCode绑定session
			request.getSession().setAttribute("VerifyCode", code);
			// 设置响应头
			response.setHeader("Pragma", "no-cache");
			// 设置响应头
			response.setHeader("Cache-Control", "no-cache");
			// 在代理服务器端防止缓冲
			response.setDateHeader("Expires", 0);
			// 设置响应内容类型
			response.setContentType("image/jpeg");
			response.getOutputStream().write(verifyCode.getImgBytes());
			response.getOutputStream().flush();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}