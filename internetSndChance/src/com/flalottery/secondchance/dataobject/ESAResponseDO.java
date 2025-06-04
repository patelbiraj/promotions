package com.flalottery.secondchance.dataobject;

public class ESAResponseDO {

    private String responseMessage;
    private String responseStatus;
    private boolean accepted;
    private String ticketPrice;

    public String getResponseMessage() {
        return responseMessage;
    }

    public void setResponseMessage(String responseMessage) {
        this.responseMessage = responseMessage;
    }

    public String getResponseStatus() {
        return responseStatus;
    }

    public void setResponseStatus(String responseStatus) {
        this.responseStatus = responseStatus;
    }

    public boolean isAccepted() {
        return accepted;
    }

    public void setAccepted(boolean accepted) {
        this.accepted = accepted;
    }

	public String getTicketPrice() {
		return ticketPrice;
	}

	public void setTicketPrice(String ticketPrice) {
		this.ticketPrice = ticketPrice;
	}
    
    
}
