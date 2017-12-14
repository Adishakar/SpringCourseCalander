package co.edureka.validator;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import co.edureka.bean.UploadedFile;

@Component
public class FileValidator implements Validator {

	@Override
	public boolean supports(Class<?> clazz) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public void validate(Object target, Errors errors) {
		// TODO Auto-generated method stub
		
		UploadedFile file = (UploadedFile) target;
		
		if(0 == file.getMultipartFile().getSize()) {
			errors.rejectValue("file", "uploadForm.selectFile", "Please select a file");
		}
	}

}
