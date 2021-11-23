package tw.JJ.model;

public interface IEmailSenderService {

	void sendEmail(String toEmail, String subject, String body);

}