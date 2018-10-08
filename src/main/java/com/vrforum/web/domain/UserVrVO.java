package com.vrforum.web.domain;

public class UserVrVO extends UserVO{
	private boolean vive;
	private boolean vivePro;
	private boolean oculus;
	private boolean mr;
	private boolean psVr;
	private boolean etc;
	private String etcName;
	public boolean isVive() {
		return vive;
	}
	public void setVive(boolean vive) {
		this.vive = vive;
	}
	public boolean isVivePro() {
		return vivePro;
	}
	@Override
	public String toString() {
		return super.toString() + "UserVrVO [vive=" + vive + ", vivePro=" + vivePro + ", oculus=" + oculus + ", mr=" + mr + ", etc=" + etc
				+ ", etcName=" + etcName + "]";
	}
	public void setVivePro(boolean vivePro) {
		this.vivePro = vivePro;
	}
	public boolean isOculus() {
		return oculus;
	}
	public void setOculus(boolean oculus) {
		this.oculus = oculus;
	}
	public boolean isMr() {
		return mr;
	}
	public void setMr(boolean mr) {
		this.mr = mr;
	}
	public boolean isEtc() {
		return etc;
	}
	public void setEtc(boolean etc) {
		this.etc = etc;
	}
	public String getEtcName() {
		return etcName;
	}
	public void setEtcName(String etcName) {
		this.etcName = etcName;
	}
	public boolean isPsVr() {
		return psVr;
	}
	public void setPsVr(boolean psVr) {
		this.psVr = psVr;
	}
	

}
