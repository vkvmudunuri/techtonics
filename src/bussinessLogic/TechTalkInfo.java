/*	<td style="font-size:x-large;width:12% "> <c:out value="${current.emp_id}" /> </td>
        				<td style="font-size:x-large;"> <c:out value="${current.story_title}" /> </td>
          				<td style="font-size:x-large;"><c:out value="${current.story_desc}" /></td>
          				
*/
package bussinessLogic;

public class TechTalkInfo {

	private String techtalk_date;
	private String techtalk_title;
	private String techtalk_description;
	private String techtalk_speaker;

	public TechTalkInfo(String techtalk_date, String techtalk_title, String techtalk_description,
			String techtalk_speaker) {
		super();
		this.techtalk_date = techtalk_date;
		this.techtalk_title = techtalk_title;
		this.techtalk_description = techtalk_description;
		this.techtalk_speaker = techtalk_speaker;
	}

	public TechTalkInfo() {
		super();
	}

	public String getTechtalk_date() {
		return techtalk_date;
	}

	public void setTechtalk_date(String techtalk_date) {
		this.techtalk_date = techtalk_date;
	}

	public String getTechtalk_title() {
		return techtalk_title;
	}

	public void setTechtalk_title(String techtalk_title) {
		this.techtalk_title = techtalk_title;
	}

	public String getTechtalk_description() {
		return techtalk_description;
	}

	public void setTechtalk_description(String techtalk_description) {
		this.techtalk_description = techtalk_description;
	}

	public String getTechtalk_speaker() {
		return techtalk_speaker;
	}

	public void setTechtalk_speaker(String techtalk_speaker) {
		this.techtalk_speaker = techtalk_speaker;
	}

}
