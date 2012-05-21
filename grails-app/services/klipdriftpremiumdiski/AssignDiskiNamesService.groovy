package klipdriftpremiumdiski

class AssignDiskiNamesService {

    def serviceMethod() {

    }

    def run(List dataSet){

        def diskinames = DiskiName.findAll()

        dataSet.each{
          if (it.diskiName == null || it.diskiName.size()<1){
            it.diskiName = diskinames[(int)Math.random()*diskinames.size()].diskiName
            it.save()
          }

     }
    }
}
