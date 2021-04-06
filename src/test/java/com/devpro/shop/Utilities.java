package com.devpro.shop;

import com.github.slugify.Slugify;

public class Utilities {
	public static void main(String[] args) {
		Slugify slg = new Slugify();
		String result = slg.slugify("tôi muốn tạo seo cho liên kết này" + "-" + System.currentTimeMillis());
		System.out.println(result);
	}
}
