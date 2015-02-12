package dom;

import java.io.File;
import java.util.ArrayList;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.stream.XMLOutputFactory;
import javax.xml.stream.XMLStreamWriter;
import javax.xml.transform.OutputKeys;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

public class Analyseur_dom {
	private String file="";
	DocumentBuilderFactory factory;
	DocumentBuilder builder;	
	Document document;
	ArrayList<String>Liste_unites;
	ArrayList<String>Liste_prof;
	Document sortie = null;

	public Analyseur_dom(String file){
		setFile(file);
		factory =  DocumentBuilderFactory.newInstance();
		try {
			builder = factory.newDocumentBuilder();
			document =  builder.parse(new File(getFile()));
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		Liste_unites = new ArrayList<String>();
		Liste_prof = new ArrayList<String>();
		
		
		Affichage_prof();
		Affichage_unites();
		try {
			create_document();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}


	public void Affichage_unites(){
		//sortie.createElement("liste_unites");
		NodeList list_node = document.getElementsByTagName("unite");
		
		for (int i = 0; i<list_node.getLength(); i++) {
			Node  name =  list_node.item(i);
			Element item = (Element) name;

			Node node = item.getElementsByTagName("nom").item(0);
			Liste_unites.add(node.getFirstChild().getNodeValue());
			//sortie.getElementsByTagName("liste_unites").item(i).appendChild(node);
			//System.out.println("Matier : "+(i+1)+" "+node.getFirstChild().getNodeValue());
			
		}
	
		
	}	


	public void Affichage_prof(){
		NodeList nList = document.getElementsByTagName("refprof");

		for (int temp = 0; temp < nList.getLength(); temp++) {
			Node nNode = nList.item(temp);

			if (nNode.getNodeType() == Node.ELEMENT_NODE) {

				Element eElement = (Element) nNode;
				//Liste_prof.add(eElement.getFirstChild().getNodeValue());
				Liste_prof.add(eElement.getAttribute("id"));

			}
		}

	}	
	
	public void create_document() throws Exception{
		// ca permet de crée un fichier vide
				Document doc = DocumentBuilderFactory.newInstance()
						.newDocumentBuilder().newDocument();
				// ajouter un nouveau node
				Element monElement_unite = doc.createElement("paquet_unites");
				Element paquet_prof = doc.createElement("paquet_prof");
				
				
				
				for (int i = 0; i < Liste_unites.size(); i++) {
					Element monElementFils = doc.createElement("unite");
					monElementFils.appendChild(doc.createTextNode(Liste_unites.get(i)));
					monElement_unite.appendChild(monElementFils);
				}
				doc.appendChild(monElement_unite);
				
				TransformerFactory myFactory = TransformerFactory.newInstance();
				Transformer transformer = myFactory.newTransformer();
				transformer.setOutputProperty(OutputKeys.ENCODING, "iso-8859-1");
				transformer.setOutputProperty(OutputKeys.INDENT, "yes");
				transformer.transform(new DOMSource(doc),
						new StreamResult(new File("./src/dom/sortie.xml")));
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
