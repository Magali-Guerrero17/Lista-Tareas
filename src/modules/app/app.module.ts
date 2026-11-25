import { Module } from '@nestjs/common';
import { AppController } from './app.controller';
import { ConfigModule } from '@nestjs/config';
import { AppService } from './app.service';
import { CategoriesModule } from '../categories/categories.module';
import { TasksModule } from '../tasks/tasks.module';

@Module({
  imports: [ConfigModule.forRoot({ isGlobal: true }), CategoriesModule, TasksModule],
  controllers: [AppController],
  providers: [AppService],

})
export class AppModule {}