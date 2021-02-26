package com.xiao.service;

import com.xiao.dto.JsonResult;
import com.xiao.dto.Page;
import com.xiao.pojo.Student;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * Created by Ming on 2018/2/9.
 */
public interface StudentService {

    Student findBySno(String sno);

    Page findAllToPage(Integer page, Integer rows);

    JsonResult removeById(Integer sid);

    Student findById(Integer sid);

    JsonResult add(MultipartFile studentIcon, Student student, HttpServletRequest request);

    JsonResult update(MultipartFile multipartFile,Student student,HttpServletRequest request);
}
