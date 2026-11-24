import { IsBoolean, IsInt, IsNotEmpty, IsOptional, IsString, Max, Min } from 'class-validator';

export class CreateTaskDto {
  @IsString()
  @IsNotEmpty()
  titulo: string;

  @IsOptional()
  @IsString()
  descripcion?: string;

  @IsInt()
  @Min(1)
  @Max(5)
  prioridad: number;

  @IsBoolean()
  completada: boolean;

  @IsInt()
  categoryId: number;
}
