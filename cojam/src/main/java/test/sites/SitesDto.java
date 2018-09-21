package test.sites;

import org.springframework.stereotype.Service;

@Service
public class SitesDto {
	private String imgtype;
	private String seq;
	private String previewtype;
	private String previewcontent;
	
	public String getPreviewcontent() {
		return previewcontent;
	}
	
	public void setPreviewcontent(String previewcontent) {
		this.previewcontent = previewcontent;
	}
	
	public String getImgtype() {
		return imgtype;
	}
	
	public void setImgtype(String imgtype) {
		this.imgtype = imgtype;
	}
	
	public String getSeq() {
		return seq;
	}
	
	public void setSeq(String seq) {
		this.seq = seq;
	}
	
	public String getPreviewtype() {
		return previewtype;
	}
	
	public void setPreviewtype(String previewtype) {
		this.previewtype = previewtype;
	}

}
