package co.edureka.bean;

import org.springframework.web.multipart.MultipartFile;

public class UploadedFile {

	private MultipartFile file;

	public MultipartFile getMultipartFile() {
		return file;
	}

	public void setMultipartFile(MultipartFile file) {
		this.file = file;
	}
	
	
	
}
