package web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Metier.CreditMetier;

public class Controleur  extends HttpServlet{

	private CreditMetier metier;
	@Override
	public void init() throws ServletException {
		metier=new CreditMetier();
	}
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setAttribute("model", new CreditModel());
		request.getRequestDispatcher("index.jsp").forward(request, response);
	}
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		double montant=Double.parseDouble(request.getParameter("montant"));
		int duree=Integer.parseInt(request.getParameter("duree"));
		double taux=Double.parseDouble(request.getParameter("taux"));
		CreditModel model=new CreditModel(montant,duree, taux,  0);
		
		double res=metier.calculMentualite(montant, duree, taux);
		model.setMentualite(res);
		
		request.setAttribute("model", model);
		request.getRequestDispatcher("index.jsp").forward(request, response);
	}

}
