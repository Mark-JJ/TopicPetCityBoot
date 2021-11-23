//package tw.JJ.controller;
//import java.io.IOException;
//import java.security.Principal;
//import java.util.LinkedHashMap;
//
//import org.codehaus.jackson.JsonGenerationException;
//import org.codehaus.jackson.map.JsonMappingException;
//import org.codehaus.jackson.map.ObjectMapper;
//import org.springframework.security.core.Authentication;
//import org.springframework.security.oauth2.provider.OAuth2Authentication;
//import org.springframework.web.bind.annotation.GetMapping;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestMethod;
//import org.springframework.web.bind.annotation.ResponseBody;
//import org.springframework.web.bind.annotation.RestController;
//
//import com.google.gson.JsonObject;
//import com.google.gson.JsonParser;
//
//@RestController
//public class GoogleController {
//
//    @GetMapping("/")
//    public String helloWorld() {
//        return "you don't need to be logged in";
//    }
//
//    @GetMapping("/not-restricted")
//    public String notRestricted() {
//        return "you don't need to be logged in";
//    }
//
//    @GetMapping("/restricted")
//    public String restricted() {
//        return "if you see this you are logged in";
//    }
//    
//    @RequestMapping(value = "/user")
//    public Principal user(Principal principal) throws JsonGenerationException, JsonMappingException, IOException {
//     System.out.println(principal.toString());
//        ObjectMapper mapper = new ObjectMapper();
//         String user = mapper.writeValueAsString(principal);
//         System.out.println(user);
//       return principal;
//    }
//    
//    @RequestMapping(value = "/username", method = RequestMethod.GET)
//    @ResponseBody
//    public String currentUserName(Authentication authentication) {
//        return authentication.toString();
//    }
//    
//}
