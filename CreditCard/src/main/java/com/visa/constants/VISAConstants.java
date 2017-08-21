package com.visa.constants;

public final class VISAConstants {

	private VISAConstants() {
	}

	public static final String REG_EXP_ALPHABETICAL = "^[a-z-A-Z]+$";
	public static final String REG_EXP_ALPHABETICAL_SPACE = "^[a-zA-Z'.\\-\\s]{0,50}$";
	public static final String REG_EXP_ALPHANUMERICAL = "^[a-zA-Z0-9]+$";
	public static final String DATE_VALIDATOR = "^(0[1-9]|1[012])[- /.](0[1-9]|[12][0-9]|3[01])[- /.](19|20)\\d\\d$";
	public static final String ZIPCODE_VALIDATOR = "^[0-9]{0,0}|[0-9]{6,6}$";
	public static final String DOB_FORMAT = "dd/MM/yyyy";
	

	public enum BooleanFlag {
		TRUE("T"), FALSE("F");

		private String flag;

		BooleanFlag(String flag) {
			this.flag = flag;
		}

		public String getFlag() {
			return this.flag;
		}

	}

	public enum VISAApplicationStatus {
		// REF_CODE_NAME = APPLICN_STATUS
		ISSUED(422, "VISA is issued successfully"), ALREADY_ISSUED(419, "Already issued"), FAIL(
				421, "Application rejected");

		private Integer code;
		private String decode;

		VISAApplicationStatus(Integer code, String decode) {
			this.code = code;
			this.decode = decode;
		}

		public Integer getCode() {
			return this.code;
		}

		public String getDecode() {
			return this.decode;
		}
	}
	
	public enum VISAApplicationPages {
		// REF_CODE_NAME = APPLICN_STATUS
		HOME(100, "home"),
			APP_FORM(101, "applicationForm"), REV_APP(102, "reviewApplication"), APP_STATUS(
				103, "applicationStatus");

		private Integer code;
		private String decode;

		VISAApplicationPages(Integer code, String decode) {
			this.code = code;
			this.decode = decode;
		}

		public Integer getCode() {
			return this.code;
		}

		public String getDecode() {
			return this.decode;
		}
	}
}
