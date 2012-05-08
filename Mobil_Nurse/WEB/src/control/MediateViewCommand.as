package control
{
	import org.puremvc.as3.interfaces.ICommand;
	import org.puremvc.as3.patterns.command.SimpleCommand;
	
	public class MediateViewCommand extends SimpleCommand implements ICommand
	{
		public function MediateViewCommand()
		{
			super();
		}
	}
}