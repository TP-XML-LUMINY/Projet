package dom;

import javax.xml.transform.OutputKeys;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerConfigurationException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMResult;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;
import javax.xml.transform.stream.StreamSource;

public class Transformation_xslt {

	public static void main(String[] args) throws Exception {
		
	
		TransformerFactory factory = TransformerFactory.newInstance();
		Transformer xslt = factory.newTransformer( new StreamSource("./src/dom/test.xsl") );
		
		Transformer analyseur = factory.newTransformer();
		
		DOMResult xml = new DOMResult();
		analyseur.transform(new StreamSource("./src/dom/sortie.xml"), xml);
		//DOMSource xmlSrc = new DOMSource(xml.getNode());
		
		DOMResult out = new DOMResult();
		xslt.transform(new DOMSource(xml.getNode()), out);

		analyseur.setOutputProperty(OutputKeys.INDENT, "yes");
		analyseur.setOutputProperty(OutputKeys.ENCODING, "iso-8859-1");
		analyseur.transform(
				new DOMSource(out.getNode()),
				new StreamResult("./src/dom/test.xhtml")
				);

		

	}

}
