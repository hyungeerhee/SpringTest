package com.hyungeerhee.spring.test.jsp.repository;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.hyungeerhee.spring.test.jsp.domain.Seller;

@Mapper
public interface SellerRepository {
	public int insertSeller(
			@Param("nickname") String nickname
			, @Param("profileImage") String profileImage
			, @Param("temperature") double temperature);
			
	public Seller selectLastSeller();
	
	public Seller getSeller(@Param("id") int id);

	
}