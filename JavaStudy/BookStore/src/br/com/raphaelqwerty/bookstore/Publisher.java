package br.com.raphaelqwerty.bookstore;

public class Publisher {

    private String namePublisher;
    private String socialReason;
    private String documentation;

    void showDetails() {
        System.out.println("Showing publisher details ");
        System.out.println("Name: " + namePublisher);
        System.out.println("Social Reason: " + socialReason);
        System.out.println("Documentation: " + documentation);
    }

    public String getName() {
        return namePublisher;
    }

    public void setName(String namePublisher) {
        this.namePublisher = namePublisher;
    }

    public String getSocialReason() {
        return socialReason;
    }

    public void setSocialReason(String socialReason) {
        this.socialReason = socialReason;
    }

    public String getDocumentation() {
        return documentation;
    }

    public void setDocumentation(String documentation) {
        this.documentation = documentation;
    }
}