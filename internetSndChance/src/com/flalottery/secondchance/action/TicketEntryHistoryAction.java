package com.flalottery.secondchance.action;

import java.util.ArrayList;
import java.util.List;

import org.jdom2.Element;
import org.jdom2.output.XMLOutputter;
import org.jdom2.util.IteratorIterable;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.flalottery.secondchance.dao.TicketEntryDAO;
import com.flalottery.secondchance.dataobject.TicketEntryDO;
import com.flalottery.secondchance.domain.Constants;
import com.flalottery.secondchance.domain.TicketEntrySummary;
import com.flalottery.secondchance.domain.TicketEntryYear;
import com.flalottery.secondchance.utility.ElementClassFilter;
import com.flalottery.secondchance.utility.Html;

public class TicketEntryHistoryAction extends SecondChanceAction {

	private static final long serialVersionUID = 1L;
	private static final Logger logger = LoggerFactory.getLogger(TicketEntryHistoryAction.class.getName());
	private static final String SUMMARY = "summary";
	private static final String ENTRIES = "entries";
	private static final String SELECTED = "selected";

	private final TicketEntryDAO dao = new TicketEntryDAO();
	private List<TicketEntryDO> ticketEntryList = new ArrayList<TicketEntryDO>(10);
	private TicketEntrySummary ticketEntrySummary;

	private Boolean isAllEntries = Boolean.FALSE;
	private Integer year = -1;
	private Integer promotionId = -1;

	private String h2Title = "";

	@Override
	public String execute() throws Exception {
		messages.setPageTitle(getText("ticketEntryHistory.pageTitle", new String[] { Constants.PAGE_TITLE_BASE }));
		messages.setH1Title(getText("ticketEntryHistory.h1Title"));
		ticketEntrySummary = dao.getTicketEntrySummary(getLoginDO().getPlayerId());
		// All Entries
		if (isAllEntries) {
			ticketEntryList = dao.getTicketEntryHistory(getLoginDO().getPlayerId());
			h2Title = "All Entries"; 
			return ENTRIES;
		}
		// Year
		else if (0 < year) {
			if (ticketEntrySummary.getTicketEntryYears().containsKey(year) && ticketEntrySummary.getTicketEntryYears().get(year).getHasTicketEntry()) {
				ticketEntryList = dao.getTicketEntryHistoryByYear(getLoginDO().getPlayerId(), Integer.valueOf(year));
				h2Title = year.toString();
				return ENTRIES;
			}
			else {
				return ERROR;
			}
		}
		// Promotion
		else if (0 < promotionId) {
			ticketEntryList = dao.getTicketEntriesByPromo(getLoginDO().getPlayerId(), promotionId);
			if (ticketEntryList.isEmpty()) {
				return ERROR;
			}
			else {
				h2Title = ticketEntryList.get(0).getPromotionName();
				return ENTRIES;
			}
		}
		// Summary
		else {
			h2Title = "Summary";
			return SUMMARY;
		}
	}

	public Integer getYear() {
		return year;
	}

	public void setYear(final String year) {
		if (year.equalsIgnoreCase("all")) {
			this.isAllEntries = Boolean.TRUE;
		}
		else {
			try {
				this.year = Integer.valueOf(year);
			} catch (final NumberFormatException e) {
				logger.debug("NumberFormatException: " + e);
			}
		}
	}

	public Integer getPromotionId() {
		return promotionId;
	}

	public void setPromotionId(final Integer promotionId) {
		this.promotionId = promotionId;
	}

	public List<TicketEntryDO> getTicketEntryList() {
		return ticketEntryList;
	}

	public String getH2Title() {
		return h2Title;
	}

	public String getEntryYearsAsHtmlOrderedList() {
		Element summary = new Element("a").setAttribute("href", "ticketEntryHistory").setText("Summary");
		final Element span = new Element("span");
		final Element li = new Element("li");
		final Element ol = new Element("ol");
		if (year.equals(-1) && promotionId.equals(-1)) {
			summary = Html.addClass(span.clone().setText(summary.getText()), SELECTED);
		}
		summary = li.clone().setContent(summary);
		ol.addContent(summary);
		final List<Element> list = new ArrayList<Element>();
		list.add(summary);
		for (final TicketEntryYear entry : ticketEntrySummary.getTicketEntryYears().values()) {
			final String y = String.valueOf(entry.getInterval().getStart().getYear());

			Element year = span.clone().setText(y);
			if (entry.getHasTicketEntry()) {
				if (y.equals(getYear().toString())) {
					year = Html.addClass(year, SELECTED);
				}
				else {
					year = new Element("a").setAttribute("href", "ticketEntryHistory?year=".concat(y)).setText(y);
				}
			}

			year = li.clone().setContent(year);
			ol.addContent(year);
		}
		return new XMLOutputter().outputString(ol);
	}

	public String getHtmlContent() {
		if (!ticketEntryList.isEmpty()) {
			final Element thead = new Element("thead").addContent(Html.tableHeaderRow("Game Name", "Ticket or Voucher Number", "Date Entered", "Draw Date", "Entries Awarded"));
			final Element tbody = new Element("tbody");
			for (final TicketEntryDO t : ticketEntryList) {
				final Element tr = Html.tableRow(t.getPromotionName(), t.getTicketNumber(), t.getCreateDateFormatted(), t.getDrawDateFormatted(), t.getTicketWeight().toString());
				final IteratorIterable<Element> i = tr.getDescendants(new ElementClassFilter("column1"));
				if (i.hasNext()) {
					final Element e = i.next();
					e.setContent(new Element("a").setText(e.getText()).setAttribute("href", "ticketEntryHistory?promotionId=".concat(t.getPromoId().toString())));
				}
				tbody.addContent(tr);
			}
			return new XMLOutputter().outputString(Html.addClass(new Element("table").addContent(thead).addContent(tbody), "ticketEntries"));
		}
		return "";
	}

	public String getSummary() {

		return "<a href='ticketEntryHistory?year=all'>All Entries</a>";
	}
}
