package tw.JJ.controller;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class UploadController {
  // 因為uploadPage.jsp 在WEB-INF下，不能直接從瀏覽器訪問，所以要在這裡加一個uploadPage跳轉，這樣就可以通過
  @GetMapping("/uploadPage")
  public String uploadPage() {
    return "uploadPage";  //過度跳轉頁
  }

  @PostMapping("/upload")
  //1. 用@RequestParam抓取圖片名稱
  public String uplaod(HttpServletRequest req,@RequestParam("file") MultipartFile file,Model m) {
    try {
      //2.根據時間戳建立新的檔名，這樣即便是第二次上傳相同名稱的檔案，也不會把第一次的檔案覆蓋了
      String fileName = System.currentTimeMillis() + file.getOriginalFilename();
      //3.通過req.getServletContext().getRealPath("") 獲取當前專案的真實路徑，然後拼接前面的檔名
      String destFileName = req.getServletContext().getRealPath("") + "uploaded" + File.separator + fileName;
      //4.建立目錄（webapp下uploaded資料夾下）
      File destFile = new File(destFileName);
      destFile.getParentFile().mkdirs();
      //5.把瀏覽器上傳的檔案複製到希望的位置
      file.transferTo(destFile);
      //6.把檔名放在model裡，以便後續顯示用
      m.addAttribute("fileName",fileName);
    } catch (FileNotFoundException e) {
      e.printStackTrace();
      return "上傳失敗," + e.getMessage();
    } catch (IOException e) {
      e.printStackTrace();
      return "上傳失敗," + e.getMessage();
    }

    return "showImg";
  }
}