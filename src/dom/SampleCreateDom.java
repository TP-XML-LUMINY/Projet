package dom;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.transform.OutputKeys;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
public class SampleCreateDom {
	
	public SampleCreateDom(){
		try {
			create_document();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public void create_document() throws Exception{
		// ca permet de crée un fichier vide
				Document doc = DocumentBuilderFactory.newInstance()
						.newDocumentBuilder().newDocument();
				// ajouter un nouveau node
				Element monElement = doc.createElement("paquet_unites");
				Element monElementFils = doc.createElement("unite");
				monElementFils.appendChild(doc.createTextNode("liste des unités"));
				monElement.appendChild(monElementFils);
				
				doc.appendChild(monElement);
				
				TransformerFactory myFactory = TransformerFactory.newInstance();
				Transformer transformer = myFactory.newTransformer();
				transformer.setOutputProperty(OutputKeys.ENCODING, "iso-8859-1");
				transformer.setOutputProperty(OutputKeys.INDENT, "yes");
				transformer.transform(new DOMSource(doc),
						new StreamResult(System.out));
	}
	
	
	
}
