package com.knowledgeForest.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.knowledgeForest.config.MyBatisConfig;
import com.knowledgeForest.dto.StudyDTO;


public class MainDAO {

	private SqlSession sqlsession;

	public MainDAO() {
		sqlsession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}

	// 위시리스트 조회
	/*
	 * public List<String> getWishList(int userNum) {
	 * System.out.println("사용자 번호로 위시리스트 조회: " + userNum); List<String> wishList =
	 * sqlsession.selectList("MainMapper.getWishList", userNum); return wishList;
	 * 
	 * }
	 */

	// 신규 등록 스터디 조회
	public List<StudyDTO> getNewStudy() {
	    System.out.println("🔍 DAO: 신규 등록 스터디 조회 시작");
	    List<StudyDTO> newStudyList = sqlsession.selectList("MainMapper.newStudy");

	    if (newStudyList == null || newStudyList.isEmpty()) {
	        System.out.println("⚠️ DAO: 신규 등록 스터디가 없습니다!");
	    } else {
	        for (StudyDTO study : newStudyList) {
	            System.out.println("✅ DAO: 신규 등록 스터디 - " + study.getStudyTitle());
	        }
	    }

	    return newStudyList;
	}

	// 마감 임박 스터디 조회
	public List<StudyDTO> getDeadlineStudy() {
	    System.out.println("🔍 DAO: 마감 임박 스터디 조회 시작");
	    List<StudyDTO> endStudyList = sqlsession.selectList("MainMapper.getDeadlineStudy");

	    if (endStudyList == null || endStudyList.isEmpty()) {
	        System.out.println("⚠️ DAO: 마감 임박 스터디가 없습니다!");
	    } else {
	        for (StudyDTO study : endStudyList) {
	            System.out.println("✅ DAO: 마감 임박 스터디 - " + study.getStudyTitle());
	        }
	    }

	    return endStudyList;
	}
}