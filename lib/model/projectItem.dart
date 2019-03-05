class ProjectItem {

  ProjectItem(int id,String name,String uid,String desc,String iid,String img,String urll,String sd,String ed,String sta,int budget,int cost){

    this.project_id=id;
    this.project_name=name;
    this.image=img;
    this.item_id=iid;
    this.user_id=uid;
    this.started_date=sd;
    this.end_date=ed;
    this.cost=cost;
    this.budget=budget;
    this.description=desc;
    this.url=urll;
    this.status=sta;

  }
  int getpid(){
    return project_id;
  }
  String getprojectName(){
    return project_name;
  }
  String getuid(){
    return user_id;
  }

  String getiid(){
    return item_id;
  }
  String getsd(){
    return started_date;
  }
  String geted(){
    return end_date;
  }

  String getdescription(){
    return description;
  }
  int getcost(){
    return cost;
  }
  int getbudget(){
    return budget;
  }

  String geturll(){
    return url;
  }
  String getsta(){
    return status;
  }



  String getimage(){
    return image;
  }

  int project_id;
  String project_name;
  String user_id;
  String description;
  String item_id;
  String image;
  String url;
  String started_date;
  String end_date;
  String status;
  int budget;
  int cost;
}