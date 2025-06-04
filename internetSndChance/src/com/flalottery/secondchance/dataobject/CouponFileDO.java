package com.flalottery.secondchance.dataobject;

import java.sql.Blob;
import java.sql.SQLException;

import javax.sql.rowset.serial.SerialBlob;
import javax.sql.rowset.serial.SerialException;

// @TODO only used during special promotions.
public class CouponFileDO {

	public CouponFileDO(final String pdfFilename, final Blob pdfFile, final String nameLast, final String nameFirst, final String statusFlag) {
		super();
		this.pdfFilename = pdfFilename;
		this.pdfFile = pdfFile;
		this.nameLast = nameLast;
		this.nameFirst = nameFirst;
		this.setStatusFlag(statusFlag);
	}

	public CouponFileDO() {
		// TODO Auto-generated constructor stub
	}

	private String pdfFilename = "";
	private Blob pdfFile;
	private String nameLast = "";
	private String nameFirst = "";
	private String statusFlag = "";

	public String getPdfFilename() {
		return this.pdfFilename;
	}

	public Blob getPdfFile() throws SerialException, SQLException {
		if (null == pdfFile) {
			createEmptyBlob();
		}
		return this.pdfFile;
	}

	private void createEmptyBlob() throws SerialException, SQLException {
		byte[] bytes = { 1 };
		pdfFile = new SerialBlob(bytes);
	}

	public String getFullName() {
		return getNameFirst() + " " + getNameLast();
	}

	private String getNameLast() {
		return nameLast;
	}

	private String getNameFirst() {
		return nameFirst;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("CouponFileDO [getPdfFilename()=").append(this.getPdfFilename()).append(", getPdfFile()=").append("oracle.sql.BLOB").append(", getFullName()=")
				.append(this.getFullName()).append(", getNameLast()=").append(this.getNameLast()).append(", getNameFirst()=").append(this.getNameFirst()).append("]");
		return builder.toString();
	}

	public final void setStatusFlag(final String statusFlag) {
		this.statusFlag = statusFlag;
	}

	public String getStatusFlag() {
		return statusFlag;
	}
}
