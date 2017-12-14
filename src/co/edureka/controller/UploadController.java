package co.edureka.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import co.edureka.bean.UploadedFile;
import co.edureka.validator.FileValidator;

@Controller
public class UploadController {

	@Autowired
	FileValidator fileValidator;

	/*
	 * @InitBinder private void initBinder(WebDataBinder webDataBinder) {
	 * webDataBinder.setValidator(fileValidator); }
	 */

	/*@RequestMapping("/fileUploadForm")
	public ModelAndView getUploadForm(
			@ModelAttribute("uploadedFile") UploadedFile uploadedFile,
			BindingResult bindingResult) {
		return new ModelAndView("uploadForm");

	}*/

	@RequestMapping("/fileUploadForm")
	public ModelAndView getUploadForm1(
			@ModelAttribute("uploadedFile") UploadedFile uploadedFile,
			BindingResult bindingResult) {
		return new ModelAndView("uploadForm");

	}

	@RequestMapping(value = "/fileUpload", method = RequestMethod.POST)
	public ModelAndView fileUploaded(@RequestParam("file") MultipartFile file) {

		System.out.println("what is file = " + file);

		// fileValidator.validate(file, bindingResult);

		String filename = file.getOriginalFilename();
		InputStream inputStream = null;
		OutputStream outputStream = null;
		String message = "File upload successful for --- ";

		try {
			// file.transferTo(null);
			inputStream = file.getInputStream();
			File newfile = new File("D:/" + filename);

			if (!newfile.exists()) {
				newfile.createNewFile();
			}
			outputStream = new FileOutputStream(newfile);
			FileCopyUtils.copy(inputStream, outputStream);

		} catch (Exception e) {
			e.printStackTrace();
		}

		message = message + filename;

		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("showfile");
		modelAndView.getModelMap().addAttribute("message", message);
		return modelAndView;
	}

}
