import { Injectable } from '@nestjs/common';
import { ApiProperty } from '@nestjs/swagger';
import { IsNumber, IsOptional, IsString } from 'class-validator';

@Injectable()
export class ScoreInputDto {

    @ApiProperty()
    @IsString()
    current:number

    @ApiProperty()
    @IsString()
    userId:string
}