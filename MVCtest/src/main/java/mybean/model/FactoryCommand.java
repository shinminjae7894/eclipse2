package mybean.model;

public class FactoryCommand {//싱글톤으로 만듦,공장은 하나면 됨
	private FactoryCommand() {}//생성자를 private로 막음
	
	private static FactoryCommand instance =
			new FactoryCommand();
	
	public static FactoryCommand newInstance() {
		return instance;
	}
	
	public Icommand createInstance(String cmd) {
		if(cmd.equals("register")) {
			return new RegisterCommand();//여러개를 받아야하므로 세개가 모두 포함된 Icommand 인터페이스를 상속받음
		}
		else if(cmd.equals("confirm")) {
			return new ConfirmCommand();
		}
		else {
			return new CompleteCommand();
		}
	}
}
