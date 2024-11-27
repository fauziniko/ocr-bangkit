import { Module } from '@nestjs/common';
import { AppController } from './app.controller';
import { AppService } from './app.service';
import { OcrModule } from './ocr/ocr.module'; // Impor modul OCR

@Module({
  imports: [OcrModule], // Tambahkan modul OCR ke bagian impor
  controllers: [AppController],
  providers: [AppService],
})
export class AppModule {}
