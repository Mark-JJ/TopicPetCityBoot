package tw.JJ.model;

import java.util.List;
import java.util.Map;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import tw.JJ.exception.UserNotFoundException;

@Service
@Transactional
public class MemberService {
	@Autowired
	private MemberRepository mPos;
	
	public Member findBymail(String mail){
		Optional<Member> oa = mPos.findBymail(mail);
		if(oa.isEmpty()) {
			throw new UserNotFoundException("找不到管理者帳號");
		}
		return oa.get();
	}
	public Boolean findBymail2(String mail){
		Optional<Member> oa = mPos.findBymail(mail);
		if(oa.isEmpty()) {
			return false;
		}
		return true;
	}
	public List<Member> findAll() {
		return mPos.findAll();
	}
	public Member inser(Member ms) {
		return mPos.save(ms);
	}
	public Member update(Member upBean) {
		return mPos.save(upBean);
	}
	public Member findById(int id) {
		Optional<Member> mo = mPos.findById(id);
		return mo.get();
	}
	public void deleteById(Integer id) {
		mPos.deleteById(id);
	}
	
	public Member setWhoIsOnline(Map<String, String> authDetail, String name) {
		return null;
	}

	public void removeWhoisOnline(String string) {
	}
}
