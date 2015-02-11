package dom;

import java.io.File;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

public class Analyseur_dom {
	private String file="";
	
	public Analyseur_dom(String file){
		setFile(file);
		Affichage();
	}
	

	public void Affichage(){
	
		final DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
		
		try {
		    final DocumentBuilder builder = factory.newDocumentBuilder();		
		    final Document document= builder.parse(new File(getFile()));
		    
		  //Affiche la version de XML
		    System.out.println("Fichier Version : "+document.getXmlVersion());
		    //Affiche l'encodage
		    System.out.println("L'encodage : "+document.getXmlEncoding());	
		    
		    //Récuperation de l'element racine.
		    final Element racine = document.getDocumentElement();
		    
		    final NodeList racineNoeuds = racine.getChildNodes();
		    final int nbRacineNoeuds = racineNoeuds.getLength();
			NodeList list_node = document.getElementsByTagName("unite");
		    
		    
		    for (int i = 0; i<list_node.getLength(); i++) {
		    	Node  name =  list_node.item(i);
		    	Element item = (Element) name;
		    	
		    	Node node = item.getElementsByTagName("nom").item(0);
		    	System.out.println("Matier : "+(i+1)+" "+node.getFirstChild().getNodeValue());
		    	
		    }
		    
		    
		}
		catch (final ParserConfigurationException e) {
		    e.printStackTrace();
		}
		catch (final Exception e) {
		    e.printStackTrace();
		}
	}	
	
	public String getFile(){
		return this.file;
	}
	public void setFile(String file){
		this.file=file;
	}
	public static void main(String [] args){
	
	}
}
