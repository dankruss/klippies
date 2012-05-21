package klipdriftpremiumdiski

import org.apache.poi.hssf.usermodel.HSSFWorkbook
import org.apache.poi.ss.usermodel.Row
import org.apache.poi.ss.usermodel.WorkbookFactory
import org.springframework.web.multipart.commons.CommonsMultipartFile

class DiskiNameImporterService {

    def serviceMethod() {

    }

    def importFromXLS(CommonsMultipartFile fileSent){

        def file = new File('temp')
        fileSent.transferTo(file)

        FileInputStream f = new FileInputStream(file)
        HSSFWorkbook wb = WorkbookFactory.create(f)

        def sheet = wb.getSheetAt(0)
        for (Row row:sheet){
            def cell = row.getCell(0)
            def cellContent = (cell.getCellType()==1)? cell.getStringCellValue(): (String) ((int)cell.getNumericCellValue())


            def temp = new DiskiName(
                    diskiName: cellContent
            )
            temp.save()
        }
        f.close()
    }
}
