package com.spring.control;

import java.io.PrintWriter;
import java.text.DateFormat;
import java.util.Date;
import java.util.Enumeration;
import java.util.List;
import java.util.Locale;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.spring.designinsert.DesignDetailMainDAO;
import com.spring.designinsert.DesignDetailMainVO;
import com.spring.designinsert.DesignDetailtopDAO;
import com.spring.designinsert.DesignDetailtopVO;
import com.spring.designinsert.DesignSelectDAO;
import com.spring.designinsert.DesignSelectVO;
import com.spring.designinsert.DesignUserProfile;
import com.spring.designinsert.DesignUserProfileDAO;
import com.spring.designinsert.DesigninsertDAO;
import com.spring.designinsert.JoinDetailDAO;
import com.spring.designinsert.JoinDetailVO;
import com.spring.designinsert.MainDesignDAO;
import com.spring.designinsert.MainDesignVO;
import com.spring.designinsert.SearchTextDAO;
import com.spring.designinsert.SearchTextVO;
import com.spring.insertTest.TestInsertDAO;
import com.spring.javaboard.JavaBoardDAO;
import com.spring.javaboard.JavaBoardDetailDAO;
import com.spring.javaboard.JavaBoardDetailVO;
import com.spring.javaboard.JavaBoardInsertDAO;
import com.spring.javaboard.JavaBoardMemoDAO;
import com.spring.javaboard.JavaBoardMemoSelect;
import com.spring.javaboard.JavaBoardMemoVO;
import com.spring.javaboard.JavaBoardMemodeleteDAO;
import com.spring.javaboard.JavaBoardSearchDAO;
import com.spring.javaboard.JavaBoardTOPDAO;
import com.spring.javaboard.JavaBoardTOPVO;
import com.spring.javaboard.JavaBoardVO;
import com.spring.jsoup.CrawSchool;
import com.spring.jsoup.Musiccraw;
import com.spring.jsoup.Musiccrawten;
import com.spring.jsoup.WeatherCraw;
import com.spring.jsoup.crawling;
import com.spring.jsoup.crawlingmovie;
import com.spring.login.LoginDAO;
import com.spring.login.LoginpwDAO;
import com.spring.main.MainJavaDAO;
import com.spring.main.MainJavaVO;
import com.spring.mysql.DAOimpl;
import com.spring.mysql.MemberVO;
import com.spring.mysql.UserDAO;
import com.spring.mysql.UserVO;
import com.spring.mysqltest.TestDAO;
import com.spring.mysqltest.TestVO;
import com.spring.paging.Counter;
import com.spring.paging.JavaBoardCounter;
import com.spring.paging.SearchCounter;
import com.spring.paging.SearchJavaBoard;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Inject
	private DAOimpl dao;
	@Inject
	private UserDAO user;
	@Inject
	private TestDAO main;
	@Inject
	private TestInsertDAO DAO;
	@Inject
	private LoginDAO login;
	@Inject
	private LoginpwDAO loginpw ;
	@Inject
	private crawling craw;
	@Inject
	private crawlingmovie crawS;	
	@Inject
	private DesigninsertDAO design;
	@Inject
	private DesignSelectDAO designselect;
	@Inject
	private DesignUserProfileDAO designselectDAODAO;
	@Inject
	private Musiccraw musicdetailone;
	@Inject
	private Musiccrawten crawmusicten;
	@Inject
	private JoinDetailDAO detaildesignuser;
	@Inject	
	private DesignDetailtopDAO designdetailtop;
	@Inject
	private DesignDetailMainDAO designdetailmain;
	@Inject
	private Counter counter;
	@Inject
	private SearchTextDAO SearchTextDAO;
	@Inject
	private SearchCounter SearchCounter;
	@Inject
	private MainDesignDAO MainDesignDAO;
	@Inject
	private JavaBoardDAO JavaBoardMainSELECTDAO;
	@Inject
	private CrawSchool CrawSchool;
	@Inject
	private JavaBoardMemoDAO JavaBoardMemoDAO;
	@Inject
	private JavaBoardMemoSelect JavaBoardMemoSelect;
	@Inject
	private	JavaBoardMemodeleteDAO JavaBoardMemodeleteDAO;
	@Inject
	private JavaBoardInsertDAO JavaBoardInsertDAO;
	@Inject
	private JavaBoardCounter JavaBoardCounter;
	@Inject
	private JavaBoardSearchDAO JavaBoardSearchDAO;
	@Inject
	private SearchJavaBoard counterjavasearch;
	@Inject
	private WeatherCraw WeatherCraw;
	@Inject
	private JavaBoardTOPDAO JavaBoardTOPDAO;
	@Inject
	private JavaBoardDetailDAO JavaBoardDetailDAO;
	@Inject
	private MainJavaDAO MainJavaDAO;
	
	
	
	@Inject
	HttpServletRequest req;

	/**
	 * Simply selects the home view to render by returning its name.
	 * @throws Exception 
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) throws Exception {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);

		
		List<UserVO> ZASDASD = user.selectMember();
		model.addAttribute("memberListTWO", ZASDASD);
		
		
		
			List<MemberVO> QWE = dao.selectMember();
			model.addAttribute("memberList", QWE);

			List<TestVO> mains = main.selectmain();
			model.addAttribute("memberListthree", mains);
			
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "home";
	}
	
    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String hometwo(Locale locale, Model model) throws Exception{	
        return "login/로그인";
    }
	
    @RequestMapping(value = "/login/check", method = {RequestMethod.POST, RequestMethod.GET})
    public String logincheck(Locale locale, Model model,@RequestParam(value="userid", required=false) String inputid,@RequestParam(value="userpw", required=false) String inputpw,HttpServletRequest request, HttpServletResponse response) throws Exception{
    	String abc = login.loginid(inputid);
    	String abcpw = loginpw.checkpw(inputpw);
    	if(abc !=null) {System.out.println("아이디 맞음");
    	if(abcpw !=null) {System.out.println("로그인 되었습니다.");    	
    	HttpSession session = req.getSession();
    	session.setAttribute("loginid", abc);
    	System.out.println("session 생성 완료");
    	String useradminid = (String)session.getAttribute("loginid");
    	System.out.println(useradminid);
    	response.setContentType("text/html; charset=UTF-8");
    	PrintWriter out = response.getWriter();
    	out.println("<script>location.href='http://localhost:8080/control/login/check/main' </script>");
    	out.flush();}
    	else{response.setContentType("text/html; charset=UTF-8");PrintWriter out = response.getWriter();out.println("<script>alert('비밀번호를 확인해주세요.');window.history.back();</script>");out.flush();}}
    	else {response.setContentType("text/html; charset=UTF-8");PrintWriter out = response.getWriter();out.println("<script>alert('아이디를 확인해주세요');window.history.back();</script>");out.flush();}
    	
        return "login/CHECK";
    }
    @RequestMapping(value = "/login/check/main", method = {RequestMethod.POST, RequestMethod.GET})
    public String logincheckASDSAD(Locale locale, Model model,HttpServletRequest request, HttpServletResponse response) throws Exception{
    	craw.craw();
    	List<MainDesignVO> qweqwe = MainDesignDAO.MainDesignSelect();
    	List<MainJavaVO> qweqweqwe = MainJavaDAO.JAVAmainselect();
    	
    	
    	model.addAttribute("design", qweqwe);
    	model.addAttribute("crawling", craw.movietext);
    	model.addAttribute("crawlingimg", craw.moiveimg);
    	model.addAttribute("qweqweasd", qweqweqwe);
    	model.addAttribute("titleone", qweqweqwe.get(0).getTitle());
    	model.addAttribute("NameONE", qweqweqwe.get(0).getName());
    	model.addAttribute("NameADMIN", qweqweqwe.get(0).getUserID());
    	model.addAttribute("NameTIMEONE", qweqweqwe.get(0).getTime());
    	model.addAttribute("fileone", qweqweqwe.get(0).getFile());
    	
    	
    	model.addAttribute("titleone2", qweqweqwe.get(1).getTitle());
    	model.addAttribute("NameONE2", qweqweqwe.get(1).getName());
    	model.addAttribute("NameADMIN2", qweqweqwe.get(1).getUserID());
    	model.addAttribute("NameTIMEONE2", qweqweqwe.get(1).getTime());
    	model.addAttribute("filetwo", qweqweqwe.get(1).getFile());
    	
    	
        return "login/로그인체크";
    }
    
    
    
	
    @RequestMapping(value = "/login/check/design", method = RequestMethod.GET)
    public String cssboard(Locale locale, Model model,HttpServletRequest request, HttpServletResponse response,@RequestParam(value="paging", defaultValue="1") int pagingint) throws Exception{	
    	HttpSession session = req.getSession();
    	String useradminid = (String)session.getAttribute("loginid");	
    	crawS.craw();
    	int counterz = counter.counterdesign();
    	counterz = (int)Math.ceil((double)counterz/(double)5);  //몇개 페이지 생기는 지 체크
    	int startpage =0;
    	startpage =(pagingint-1)*5;
    	List<DesignSelectVO> DDD = designselect.designSelect(startpage);
    	
    	model.addAttribute("counterdesign",counterz);
    	List<DesignUserProfile> QWE = designselectDAODAO.designUserfileSelect(useradminid);
    	model.addAttribute("DesignSelectVO",DDD);
    	model.addAttribute("abc",QWE);
    	model.addAttribute("crawlings", crawS.moiveimg);
    	model.addAttribute("count", counterz);
    	model.addAttribute("countM", pagingint-1);
    	model.addAttribute("countP", pagingint+1);
    	model.addAttribute("startpage", startpage);
    	model.addAttribute("pagingst", pagingint);
    	
        return "designboard/board/디자인게시판";
    }
	
    String seartext = null;
    @RequestMapping(value = "/login/check/design/search", method = RequestMethod.GET)
    public String cssboardasd(HttpServletRequest httpServletRequest,Locale locale, Model model,HttpServletRequest request, HttpServletResponse response,@RequestParam(value="paging", defaultValue="1") int pagingint) throws Exception{	
    	HttpSession session = req.getSession();
    	String useradminid = (String)session.getAttribute("loginid");	
    	crawS.craw();
        seartext = httpServletRequest.getParameter("q");
    	int counterz = SearchCounter.counterdesign('%'+seartext+'%');
    	counterz = (int)Math.ceil((double)counterz/(double)5);  //몇개 페이지 생기는 지 체크
    	int startpage =0;
    	startpage =(pagingint-1)*5;
    	List<DesignSelectVO> DDD = designselect.designSelect(startpage);
    	List<SearchTextVO> vvv = SearchTextDAO.searchtext('%'+seartext+'%',startpage);
    	int pagingssss = SearchCounter.counterdesign('%'+seartext+'%');

    	
    	model.addAttribute("counterdesign",counterz);
    	List<DesignUserProfile> QWE = designselectDAODAO.designUserfileSelect(useradminid);
    	model.addAttribute("DesignSelectVO",DDD);
    	model.addAttribute("abc",QWE);
    	model.addAttribute("crawlings", crawS.moiveimg);
    	model.addAttribute("count", pagingssss);
    	model.addAttribute("countM", pagingint-1);
    	model.addAttribute("countP", pagingint+1);
    	model.addAttribute("startpage", startpage);
    	model.addAttribute("pagingst", pagingint);
    	model.addAttribute("searchtext",vvv);
    	model.addAttribute("usertext",seartext);
    	model.addAttribute("totalpage",counterz);
    	
    	
    	
        return "designboard/board/디자인게시판_검색";
    }
    
    
    
    
    
	
    @RequestMapping(value = "/login/check/design/write", method = RequestMethod.GET)
    public String cssboardwrite(Locale locale, Model model,HttpServletRequest request, HttpServletResponse response) throws Exception{	

        return "designboard/board/디자인글쓰기";
    }
    
    @RequestMapping(value = "/login/check/insert", method = RequestMethod.POST)
    public String cssboardwriteinsert(Locale locale, Model model,HttpServletRequest request, HttpServletResponse response) throws Exception{	
    	HttpSession session = req.getSession();
    	String useradminid = (String)session.getAttribute("loginid");
    	String uploadPath = session.getServletContext().getRealPath("desingimgstore");

    	 int size = 10*1024*1024;
    	   try{
    		      MultipartRequest multi=new MultipartRequest(request,
    		                     uploadPath,
    		                     size, 
    		                     "utf-8",
    		            new DefaultFileRenamePolicy());      //파일 업로드 완료
    		      
    		      
    		     String title=multi.getParameter("title");
    		     String content=multi.getParameter("content");
    		      Enumeration files=multi.getFileNames();
    		      
    		      String file1 =(String)files.nextElement();              //첫번째 파일 name값 반환함(file1 = fileName1111(파라미터))
    		      file1=multi.getFilesystemName(file1);				  //첫번째 파일 name값을 파일이름으로 변경(test.jpg 실제이름)
    		      design.designinsert(title, content, useradminid, file1);
    		   }catch(Exception e){
    		      e.printStackTrace();
    		   }
    	
    	   
    	   
    	 	model.addAttribute("uploadPath",uploadPath);
        return "designboard/board/디자인게시판insert";
    }
	
    
    
    @RequestMapping(value = "/login/check/design/detail", method = RequestMethod.GET)
    public String details(Locale locale, Model model,HttpServletRequest request, HttpServletResponse response,@RequestParam("id") int pageid) throws Exception{	
    	HttpSession session = req.getSession();
    	String useradminid = (String)session.getAttribute("loginid");	
    	musicdetailone.craw();
    	crawmusicten.craw();
    	List<JoinDetailVO> detailuser = detaildesignuser.JoinDetailuserpro(pageid);
    	List<DesignDetailtopVO> detailtop = designdetailtop.designdetailtop();
    	List<DesignDetailMainVO> detailmain = designdetailmain.DesignDetailMain(pageid);


    	model.addAttribute("detailuserprofile",detailuser);
    	model.addAttribute("detailtop",detailtop);
    	model.addAttribute("detailmain",detailmain.get(0));
    	model.addAttribute("crawmusic",musicdetailone.musicchartg);
    	model.addAttribute("crawmusicten",crawmusicten.musicchartgten);
    	
        return "designboard/board/디자인게시판상세보기";
    }
    
    @RequestMapping(value = "/javaboard", method = RequestMethod.GET)
    public String javaboard(Locale locale, Model model,@RequestParam(value="paging", defaultValue="1") int pagingint) throws Exception{	   	
    	int totalwrite = JavaBoardCounter.javaboardcounter();   // totalwrite = 총 게시글 수 리턴
    	totalwrite = (int)Math.ceil((double)totalwrite/(double)5); //totalwrite = 페이징 수 리턴
    	int startpage =0;int endpage =6;      //0~6 limlt 0~6게시글 보여줌
    	startpage =(pagingint-1)*endpage;	  //1page => 
    	List<JavaBoardVO> MainSelect = JavaBoardMainSELECTDAO.JavaBoardMain(startpage,endpage);
    	CrawSchool.musicchartg.clear();
    	CrawSchool.craw();
    	List<JavaBoardMemoVO> javamemoselect = JavaBoardMemoSelect.javamemoselect();

    	
    	
    	
    	model.addAttribute("pagingint",pagingint);
    	model.addAttribute("totalwrite",totalwrite);
    	model.addAttribute("javamemoselect",javamemoselect);
    	model.addAttribute("MainSelect",MainSelect);
    	model.addAttribute("CrawSchool",CrawSchool.musicchartg);
    		
    	
        return "java/board/JAVAboard";
    }
    
    
    @RequestMapping(value = "/javaboard/Memo", method = RequestMethod.POST)
    public String javaboardMemo(Locale locale, Model model,HttpServletRequest request, HttpServletResponse response,@RequestParam("Memo") String Memo) throws Exception{	   	
    	HttpSession session = req.getSession();
    	String useradminid = (String)session.getAttribute("loginid");
    	JavaBoardMemoDAO.javaMemoinsert(Memo,useradminid);   	
        return "java/board/JAVAboardMemoinsert";
    }
    
    @RequestMapping(value = "/javaboard/Memo/delete", method = RequestMethod.GET)
    public String javaboardMemodelete(Locale locale, Model model,@RequestParam("id") int id) throws Exception{	   	
    	JavaBoardMemodeleteDAO.javaMemodelete(id);
        return "java/board/JAVAvoardMemodelete";
    }
    
    
    @RequestMapping(value = "/javaboard/write", method = RequestMethod.GET)
    public String javaboardwrite(Locale locale, Model model,HttpServletRequest request, HttpServletResponse response) throws Exception{	   	
        return "java/board/java글쓰기/java글쓰기";
    }
    
    @RequestMapping(value = "/javaboard/writeinsert", method = RequestMethod.POST)
    public String javaboardwriteinsert(Locale locale, Model model,HttpServletRequest request, HttpServletResponse response) throws Exception{	   	
    	HttpSession session = req.getSession();
    	String useradminid = (String)session.getAttribute("loginid");
    	String uploadPath = session.getServletContext().getRealPath("Javaboard");

    	 int size = 10*1024*1024;
    	   try{
    		      MultipartRequest multi=new MultipartRequest(request,
    		                     uploadPath,
    		                     size, 
    		                     "utf-8",
    		            new DefaultFileRenamePolicy());      //파일 업로드 완료
    		      
    		      
    		     String title=multi.getParameter("title");
    		     String content=multi.getParameter("content");
    		      Enumeration files=multi.getFileNames();
    		      
    		      String file1 =(String)files.nextElement();              //첫번째 파일 name값 반환함(file1 = fileName1111(파라미터))
    		      file1=multi.getFilesystemName(file1);				  //첫번째 파일 name값을 파일이름으로 변경(test.jpg 실제이름)
    		      if(file1 == null) {file1 = "asd.jpg";}
    		      JavaBoardInsertDAO.springjava621(title, content, useradminid, file1);
    		   }catch(Exception e){
    		      e.printStackTrace();
    		   }
    	
    	   
    	   
    	 	model.addAttribute("uploadPath",uploadPath);
    	
    	return "java/board/java글쓰기/글쓰기insert";
    }
	
    
    
    
    @RequestMapping(value = "/javaboard/search", method = RequestMethod.GET)
    public String javasearch(Locale locale, Model model,@RequestParam(value="paging", defaultValue="1") int pagingint,@RequestParam("q") String q) throws Exception{	   	
       	int totalwrite = counterjavasearch.counterjavasearch('%'+q+'%');   // totalwrite = 총 게시글 수 리턴
       	System.out.println(totalwrite);
    	totalwrite = (int)Math.ceil((double)totalwrite/(double)5); //totalwrite = 페이징 수 리턴
    	int startpage =0;int endpage =6;      //0~6 limlt 0~6게시글 보여줌
    	startpage =(pagingint-1)*endpage;	  //1page => 
    	List<JavaBoardVO> MainSelect = JavaBoardSearchDAO.JavaBoardMain('%'+q+'%',startpage,endpage);
    	CrawSchool.musicchartg.clear();
    	CrawSchool.craw();
    	List<JavaBoardMemoVO> javamemoselect = JavaBoardMemoSelect.javamemoselect();
    	System.out.println(totalwrite);
    	
    	
    	
    	model.addAttribute("qq",q);
    	model.addAttribute("pagingint",pagingint);
    	model.addAttribute("totalwrite",totalwrite);
    	model.addAttribute("javamemoselect",javamemoselect);
    	model.addAttribute("MainSelect",MainSelect);
    	model.addAttribute("CrawSchool",CrawSchool.musicchartg);
    	
    	return "java/board/JAVAboard검색";
    }
    
    
    
    
    @RequestMapping(value = "/javaboard/detail", method = RequestMethod.GET)
    public String javaboarddetail(Locale locale, Model model,HttpServletRequest request, HttpServletResponse response,@RequestParam("id") int idid) throws Exception{	   	
    	WeatherCraw.musicchartg.clear();
		WeatherCraw.craw();
		crawmusicten.musicchartgten.clear();
		crawmusicten.craw();
		List<JavaBoardTOPVO> JavaBoardTOPDAOqwe = JavaBoardTOPDAO.JAVAdetailtop();
		List<JavaBoardDetailVO> JavaBoarddetaill = JavaBoardDetailDAO.javaDetailmain(idid);
		
		
		
		
		model.addAttribute("weatherOO",WeatherCraw.musicchartg);
		model.addAttribute("weatherOOtwo",WeatherCraw.musicone);
		model.addAttribute("weatherOOthree",WeatherCraw.musictwo);
		model.addAttribute("crawmusicten",crawmusicten.musicchartgten);
		model.addAttribute("JavaBoardTOPTOP",JavaBoardTOPDAOqwe);
		model.addAttribute("JavaBoarddetaillll",JavaBoarddetaill.get(0));

    	
    	return "java/board/JAVA상세보기";
    }
    
    
    
    
    
}
