package com.flalottery.secondchance.utility;

import java.io.IOException;
import java.io.Writer;
import java.util.Arrays;
import java.util.List;

import org.jdom2.Content;
import org.jdom2.Element;
import org.jdom2.Namespace;
import org.jdom2.output.Format.TextMode;
import org.jdom2.output.support.AbstractXMLOutputProcessor;
import org.jdom2.output.support.FormatStack;
import org.jdom2.output.support.Walker;
import org.jdom2.util.NamespaceStack;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class HtmlOutputProcessor extends AbstractXMLOutputProcessor {

	private static final Logger logger = LoggerFactory.getLogger(HtmlOutputProcessor.class);

	private final static List<String> voidElements = Arrays.asList(new String[] { "area", "base", "br", "col", "command", "embed", "hr", "img", "input", "keygen", "link", "meta",
			"param", "source", "track", "wbr" });

	@Override
	protected void printElement(final Writer out, final FormatStack fstack, final NamespaceStack nstack, final Element element) throws IOException {
		nstack.push(element);
		try {
			final List<Content> content = element.getContent();
			write(out, "<");
			write(out, element.getQualifiedName());
			// Print the element's namespace, if appropriate
			for (final Namespace ns : nstack.addedForward()) {
				printNamespace(out, fstack, ns);
			}
			// Print out attributes
			if (element.hasAttributes()) {
				for (final org.jdom2.Attribute attribute : element.getAttributes()) {
					printAttribute(out, fstack, attribute);
				}
			}
			if (isVoidElement(element)) {
				write(out, " />");
			}
			else {
				fstack.push();
				try {
					// Check for xml:space and adjust format settings
					final String space = element.getAttributeValue("space", Namespace.XML_NAMESPACE);

					if ("default".equals(space)) {
						fstack.setTextMode(fstack.getDefaultMode());
					}
					else if ("preserve".equals(space)) {
						fstack.setTextMode(TextMode.PRESERVE);
					}
					// note we ensure the FStack is right before creating the
					// walker
					final Walker walker = buildWalker(fstack, content, true);
					if (!walker.hasNext()) {
						write(out, "></");
						write(out, element.getQualifiedName());
						write(out, ">");
						return;
					}
					// we have some content.
					write(out, ">");
					if (!walker.isAllText()) {
						// we need to newline/indent
						textRaw(out, fstack.getPadBetween());
					}
					printContent(out, fstack, nstack, walker);
					if (!walker.isAllText()) {
						// we need to newline/indent
						textRaw(out, fstack.getPadLast());
					}
					write(out, "</");
					write(out, element.getQualifiedName());
					write(out, ">");
				} finally {
					fstack.pop();
				}
			}
		} finally {
			nstack.pop();
		}
	}

	private Boolean isVoidElement(final Element element) {
		return voidElements.contains(element.getQualifiedName().toLowerCase()) ? true : false;
	}
}
