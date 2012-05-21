package klipdriftpremiumdiski

class CSVBuilderService {

    def serviceMethod() {

    }

    def buildCSV(List dataSet, String version){
        def out = new File('diskinames_'+version+'.csv')



        dataSet.each {
            System.out.println "/------------------------------- NEW LINE ------------------------------/"
            //it.properties)
            // PRINT TO CSV!!!!!
            /*
            def row = []
            def that = it
            it.properties.each{
                def thisProperty = it.key
                row.add(that.thisProperty)
            }    }
            out.append row.join(',')
            out.append '\n'  */
        }

        //return out

    }
}
