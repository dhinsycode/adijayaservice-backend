<?php

namespace App\Filament\Resources\HomeServices;

use App\Filament\Resources\HomeServices\Pages\CreateHomeService;
use App\Filament\Resources\HomeServices\Pages\EditHomeService;
use App\Filament\Resources\HomeServices\Pages\ListHomeServices;
use App\Filament\Resources\HomeServices\Schemas\HomeServiceForm;
use App\Filament\Resources\HomeServices\Tables\HomeServicesTable;
use App\Models\HomeService;
use BackedEnum;
use Filament\Resources\Resource;
use Filament\Schemas\Schema;
use Filament\Support\Icons\Heroicon;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use Filament\Forms\Components\TextInput;
use Filament\Schemas\Components\Fieldset;
use Filament\Forms\Components\FileUpload;
use Filament\Forms\Components\Repeater;
use Filament\Forms\Components\Select;
use Filament\Forms\Components\Textarea;
use Filament\Tables\Columns\ImageColumn;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Columns\IconColumn;
use Filament\Tables\Filters\TrashedFilter;
use Filament\Actions\EditAction;
use Filament\Actions\ViewAction;
use Filament\Tables\Actions;
use Filament\Actions\DeleteBulkAction;
use Filament\Actions\ForceDeleteBulkAction;
use Filament\Actions\RestoreBulkAction;
use Filament\Tables\Filters\SelectFilter;

use UnitEnum;

use Filament\Actions\BulkActionGroup;

class HomeServiceResource extends Resource
{
    protected static ?string $model = HomeService::class;

    protected static string|BackedEnum|null $navigationIcon = Heroicon::WrenchScrewdriver;

    protected static string|UnitEnum|null $navigationGroup = 'Product';
    

    public static function form(Schema $schema): Schema 
    { 
        return $schema
        ->schema ([ 
            Fieldset::make('Details')
                    ->schema([
                        TextInput::make('name')
                            ->maxLength(255)
                            ->required(),
                        FileUpload::make('thumbnail')
                            ->required()
                            ->image()
                            ->disk('cloudinary')
                            ->getUploadedFileNameForStorageUsing(function ($file) {
                                return basename($file->hashName()); 
                            }),
                        TextInput::make('price')
                            ->required()
                            ->numeric()
                            ->prefix('IDR'),
                        TextInput::make('duration')
                            ->required()
                            ->numeric()
                            ->prefix('Hours'),
                    ]),
                

                Fieldset::make('Additional')
    ->schema([
        Repeater::make('benefits')
            ->relationship('benefits')
            ->schema([
        TextInput::make('name')
                    ->required(),
            ]),
Textarea::make('about')
            ->required(),
        Select::make('is_popular')
            ->options([
                true => 'Popular',
                false => 'Not Popular',
            ])
            ->required(),
       Select::make('category_id')
            ->relationship('category', 'name')
            ->searchable()
            ->preload()
            ->required(),
            ]),
        ]);



    }


    public static function table(Table $table): Table
{
    return $table 
        ->columns([ 
            ImageColumn::make('thumbnail')
            ->disk('cloudinary'),
            TextColumn::make('name')
                ->searchable(),
            TextColumn::make('category.name'),
            IconColumn::make('is_popular')
            ->boolean()
            ->trueColor('success')
            ->falseColor('danger')
            ->trueIcon('heroicon-o-check-circle')
            ->falseIcon('heroicon-o-x-circle')
            ->label('Popular'),
        ]) 
        ->filters([ 
            TrashedFilter::make(),
            SelectFilter::make('category_id')
            ->label('Category')
            ->relationship('category' , 'name')
        ])

        ->recordActions([
            EditAction::make(),
            ViewAction::make(),
            
        ])
        ->bulkActions([
            BulkActionGroup::make([
            DeleteBulkAction::make(),
            ForceDeleteBulkAction::make(),
            RestoreBulkAction::make(),
            ]),

        ]);
        
}


    public static function getRelations(): array
    {
        return [
            //
            RelationManagers\TestimonialsRelationManager::class,

        ];
    }

    public static function getPages(): array
    {
        return [
            'index' => ListHomeServices::route('/'),
            'create' => CreateHomeService::route('/create'),
            'edit' => EditHomeService::route('/{record}/edit'),
        ];
    }

    public static function getRecordRouteBindingEloquentQuery(): Builder
    {
        return parent::getRecordRouteBindingEloquentQuery()
            ->withoutGlobalScopes([
                SoftDeletingScope::class,
            ]);
    }
}
