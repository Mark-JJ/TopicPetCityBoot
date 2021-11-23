package tw.JJ.model;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class MemberService {
	@Autowired
	private MemberRepository mPos;
	
//	public boolean checkLogin(Member users) {
//		return mPos.checkLogin(users);
//	}
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
}
