class PointItem {

  PointItem(String usn,String points,String status,String timestamp,String link){

    this.p_usn=usn;
    this.points=points;
    this.p_status=status;
    this.p_ts=timestamp;
    this.p_link=link;

  }
  String getpusn(){
    return p_usn;
  }
  String plink(){
    return p_link;
  }
  String getpoints(){
    return points;
  }

  String getpstatus(){
    return p_status;
  }
  String getpts(){
    return p_ts;
  }


  String p_usn;
  String points;
  String p_status;
  String p_ts;
  String p_link;

}