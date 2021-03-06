package pdsu.dzyhp.utils;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import pdsu.dzyhp.bean.Users;



/**
 * 用于存放当前用户的上下文
 * @author Administrator
 *
 */
public class UserContext {
	
	public static final String USER_IN_SESSION="logininfo";
	public static final String VERIFYCODE_IN_SESSION="verifycode_in_session";
	
	
	
	/**
	 * 反向获取session的方法
	 * 可以参考RequestContextListener.requestInitialized的打包过程
	 * 
	 * @return
	 */
	
	private static HttpSession getsession(){
		return ((ServletRequestAttributes)RequestContextHolder.getRequestAttributes()).getRequest().getSession();
	}
	
	public static void putCurrent(Users user){
		//得到session,并把current放到session中
		getsession().setAttribute(USER_IN_SESSION,user);
	}
	
	public static Users getCurrent(){
		//得到session,获取loginininfo
		return (Users) getsession().getAttribute(USER_IN_SESSION);
	}
	
	
	
}
