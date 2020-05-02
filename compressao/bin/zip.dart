import 'dart:io';
import 'package:archive/archive.dart';
import 'package:path/path.dart' as p;

void main(List<String> args) {
  var file = <String>[];

  Directory.current.listSync().forEach((var fse){
    if(fse.statSync().type == FileSystemEntityType.file){
      file.add(fse.path);
    }
  });

  var zipFile = '${Directory.current.path}/comprimido.zip';

  zip(file, zipFile);
  
  unZip(zipFile, '${Directory.current.path}/descomprimido.zip');

}

void zip(List<String> files, String file){
  var archive = Archive();
  files.forEach((String path){
    var file = File(path);
    var archiveFile = ArchiveFile(p.basename(path), file.lengthSync(), file.readAsBytesSync());
    archive.addFile(archiveFile);
  });

  var encoder = ZipEncoder();

  var f = File(file);

  f.writeAsBytesSync(encoder.encode(archive));

  print('Comprimido com sucesso!!');

}

void unZip(String zip, String path){
  var file = File(zip);
  var archive = ZipDecoder().decodeBytes(file.readAsBytesSync());

  archive.forEach((ArchiveFile archiveFile){
    var file = File(path+'/'+archiveFile.name);
    file.createSync(recursive: true);
    file.writeAsBytesSync(archiveFile.content);
  });

  print('Descomprimido');
}