class ComponentItem {

  ComponentItem(String i,int quantity,String img,int itemId,String specs,String cat,String subcat,String hsn,String modelid,int cost,String manu,String desc,String dsl,String locc,String loccp,int vd ,String locr,String urll,String tut){
    this.itemName=i;
    this.quantity=quantity;
    this.image=img;
    this.itemId=itemId;
    this.url=urll;
    this.specs=specs;
    this.category=cat;
    this.subCategory=subcat;
    this.hsn=hsn;
    this.cost=cost;
    this.manufacturer=manu;
    this.description=desc;
    this.modelId=modelid;
    this.dataSheetLink=dsl;
    this.locationCabinet=locc;
    this.locationCupboard=loccp;
    this.vendorDetailsVendorId=vd;
    this.locationRoom=locr;
    this.tutorialsLink=tut;

  }
  int getItemId(){
    return itemId;
  }
  String getloccp(){
    return locationCupboard;
  }
  String gettut(){
    return tutorialsLink;
  }
  String getdsl(){
    return dataSheetLink;
  }
  int getvd(){
    return vendorDetailsVendorId;
  }
  String getlocc(){
    return locationCabinet;
  }
  String getlocr(){
    return locationRoom;
  }
  String getmodelid(){
    return modelId;
  }
  String getdescription(){
    return description;
  }
  int getcost(){
    return cost;
  }
  String getmanufacturer(){
    return manufacturer;
  }
  String gethsn(){
    return hsn;
  }
  String getsubCategory(){
    return subCategory;
  }
  String getcategory(){
    return category;
  }
  String geturll(){
    return url;
  }
  String getspecs(){
    return specs;
  }


  String getItemName(){
    return itemName;
  }

  String getimage(){
    return image;
  }
  int getquantity(){
    return quantity;
  }
  int itemId;
  String itemName;
  String category;
  String subCategory;
  String description;
  String image;
  String url;
  String specs;
  String hsn;
  int quantity;
  String manufacturer;
  String modelId;
  String dataSheetLink;
  String tutorialsLink;
  int cost;
  String locationCabinet;
  String locationCupboard;
  String locationRoom;
  int vendorDetailsVendorId;
}