package net.menu.action;

public class ActionForward { //���۹�İ� ���� ������ ��θ� ����

	private boolean isRedirect=false; //Redirect �������� �����ҰŸ� true Forward������� �����ҰŸ� false
	private String path=null; // ���� ������ ��θ� ������ ����
	//setter, getter
	public boolean isRedirect() {
		return isRedirect;
	}
	public void setRedirect(boolean isRedirect) {
		this.isRedirect = isRedirect;
	}
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}
	
}
