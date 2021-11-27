package tw.JJ.controller;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import tw.JJ.model.Member;
import tw.JJ.model.MemberService;

@Controller
public class UploadController {
	@Autowired
	private MemberService mService;
  // 因為uploadPage.jsp 在WEB-INF下，不能直接從瀏覽器訪問，所以要在這裡加一個uploadPage跳轉，這樣就可以通過
  @PostMapping("/MemberPhoto.controller")
  public String uploadPage(@RequestParam("mail") String mail,HttpSession session
		  ,Model m) {
	  mService.findBymail(mail);
      Member mb = mService.findBymail(mail);
      session.setAttribute("member", mb);
      m.addAttribute("fileName",mb.getPhoto());
      System.out.println("圖片檔名ㄚㄚㄚㄚ"+mb.getPhoto());
    return "uploadPage";  //過度跳轉頁
  }

  @PostMapping("/upload")
  //1. 用@RequestParam抓取圖片名稱
  public String uplaod(HttpServletRequest req,
		  @RequestParam("file") MultipartFile file,Model m,HttpSession session,
		  @RequestParam("mail") String mail
		  ) {
    try {
      //2.根據時間戳建立新的檔名，這樣即便是第二次上傳相同名稱的檔案，也不會把第一次的檔案覆蓋了
      String fileName = System.currentTimeMillis() + file.getOriginalFilename();
//      String fileName = file.getOriginalFilename();
      //3.通過req.getServletContext().getRealPath("") 獲取當前專案的真實路徑，然後拼接前面的檔名
      String destFileName = req.getServletContext().getRealPath("") + "uploaded" + File.separator + fileName;
      //4.建立目錄（webapp下uploaded資料夾下）
      File destFile = new File(destFileName);
      destFile.getParentFile().mkdirs();
      //5.把瀏覽器上傳的檔案複製到希望的位置
      file.transferTo(destFile);
      //6.把檔名放在model裡，以便後續顯示用
      m.addAttribute("fileName",fileName);
      //記錄在資料庫
      System.out.println("覆蓋圖片檔名ㄚㄚㄚㄚ"+fileName);
      
      System.out.println("mailㄚㄚㄚㄚ"+mail);
      mService.findBymail(mail);
      Member mb = mService.findBymail(mail);
      mb.setPhoto(fileName);
      mService.update(mb);
    } catch (FileNotFoundException e) {
      e.printStackTrace();
      return "上傳失敗," + e.getMessage();
    } catch (IOException e) {
      e.printStackTrace();
      return "上傳失敗," + e.getMessage();
    }

    return "uploadPage";
  }
}