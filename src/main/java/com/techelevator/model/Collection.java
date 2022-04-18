package com.techelevator.model;


import org.hibernate.validator.constraints.NotBlank;

import javax.validation.constraints.NotNull;

public class Collection {

  private long collectionId;

  @NotBlank(message = "Please enter a name for your collection.")
  private String collectionName;

  //commented out the annotations so we can create collection on registration page.
//  @NotNull(message = "Please select if you wish this collection to be private or not.")
  private Boolean isPrivate;

  private Boolean is_main;

  @NotBlank(message = "Please provide an image for us to use for your Collection.")
  private String image;

  private long numberOfComics;

  private String description;


  public long getCollectionId() {
    return collectionId;
  }

  public void setCollectionId(long collectionId) {
    this.collectionId = collectionId;
  }


  public String getCollectionName() {
    return collectionName;
  }

  public void setCollectionName(String collectionName) {
    this.collectionName = collectionName;
  }


  public Boolean getIsPrivate() {
    return isPrivate;
  }

  public void setIsPrivate(Boolean isPrivate) {
    this.isPrivate = isPrivate;
  }

  public Boolean getIs_main() {
    return is_main;
  }

  public void setIs_main(Boolean is_main) {
    this.is_main = is_main;
  }

  public String getImage() {
    return image;
  }

  public void setImage(String image) {
    this.image = image;
  }

  public long getNumberOfComics() {
    return numberOfComics;
  }

  public void setNumberOfComics(long numberOfComics) {
    this.numberOfComics = numberOfComics;
  }


  public String getDescription() {
    return description;
  }

  public void setDescription(String description) {
    this.description = description;
  }


}
