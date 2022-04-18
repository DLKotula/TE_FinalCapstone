package com.techelevator.model;


import org.hibernate.validator.constraints.NotBlank;
import org.springframework.beans.factory.annotation.Required;
import org.springframework.format.annotation.DateTimeFormat;

import javax.validation.constraints.NotNull;
import java.time.LocalDate;
import java.time.LocalDateTime;

public class Comic {

  private long comicId;

  @NotBlank (message= "Please enter the name of your Comic.")
  private String comicName;

  @NotNull(message = "Please enter the published Date of the Comic.")
  @DateTimeFormat(pattern = "yyyy-MM-dd")
  private LocalDate publishDate;

  @NotBlank(message = "Please provide an image of your Comic.")
  private String image;

  @NotBlank(message = "Please select the genre of the Comic you are adding.")
  private String genre;

  @NotNull(message = "Please enter the date you obtained this Comic.")
  @DateTimeFormat(pattern = "yyyy-MM-dd")
  private LocalDate dateObtained;

  @NotBlank(message = "Please enter the Imprint of the Comic.")
  private String imprint;

  @NotBlank(message = "Please enter the Lead Superhero of the Comic.")
  private String series;

  private String comicSerialNumber;
  private String storyArc;
  private String description;


  public long getComicId() {
    return comicId;
  }

  public void setComicId(long comicId) {
    this.comicId = comicId;
  }


  public String getComicName() {
    return comicName;
  }

  public void setComicName(String comicName) {
    this.comicName = comicName;
  }


  public LocalDate getPublishDate() {
    return publishDate;
  }

  public void setPublishDate(LocalDate publishDate) {
    this.publishDate = publishDate;
  }

  public String getImage() {
    return image;
  }

  public void setImage(String image) {
    this.image = image;
  }


  public String getGenre() {
    return genre;
  }

  public void setGenre(String genre) {
    this.genre = genre;
  }


  public LocalDate getDateObtained() {
    return dateObtained;
  }

  public void setDateObtained(LocalDate dateObtained) {
    this.dateObtained = dateObtained;
  }

  public String getImprint() {
    return imprint;
  }

  public void setImprint(String imprint) {
    this.imprint = imprint;
  }

  public String getSeries() {
    return series;
  }

  public void setSeries(String series) {
    this.series = series;
  }

  public String getComicSerialNumber() {
    return comicSerialNumber;
  }

  public void setComicSerialNumber(String comicSerialNumber) {
    this.comicSerialNumber = comicSerialNumber;
  }


  public String getStoryArc() {
    return storyArc;
  }

  public void setStoryArc(String storyArc) {
    this.storyArc = storyArc;
  }


  public String getDescription() {
    return description;
  }

  public void setDescription(String description) {
    this.description = description;
  }

}
