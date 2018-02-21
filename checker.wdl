import "md5sum/md5sum.wdl" as f1
import "checker/md5sum_checker.wdl" as f2

workflow ga4ghChecker {
 File inputFile
 call f1.md5 { 
   input: inputFile=inputFile
 }
 call f2.checkmd5 { 
   input: inputFile=md5.value
 }
}
