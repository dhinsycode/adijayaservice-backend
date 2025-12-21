<?php

namespace App\Filament\Resources\Categories;

use App\Filament\Resources\Categories\Pages\CreateCategory;
use App\Filament\Resources\Categories\Pages\EditCategory;
use App\Filament\Resources\Categories\Pages\ListCategories;
use App\Filament\Resources\Categories\Schemas\CategoryForm;
use App\Filament\Resources\Categories\Tables\CategoriesTable;
use App\Models\Category;
use BackedEnum;
use Filament\Resources\Resource;
use Filament\Schemas\Schema;
use Filament\Support\Icons\Heroicon;
use Filament\Tables\Table;
use Filament\Forms\Components\FileUpload;
use Filament\Forms\Components\TextInput;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use Filament\Tables;
use Filament\Tables\Actions;
use Filament\Actions\DeleteBulkAction;
use Filament\Actions\ForceDeleteBulkAction;
use Filament\Actions\RestoreBulkAction;
use Filament\Actions\EditAction;
use Filament\Actions\ViewAction;
use Filament\Actions\BulkActionGroup;
use UnitEnum;

class CategoryResource extends Resource
{
    protected static ?string $model = Category::class;

    protected static string|BackedEnum|null $navigationIcon = Heroicon::OutlinedRectangleStack;

    protected static string|UnitEnum|null $navigationGroup = 'Management';

    public static function form(Schema $schema): Schema 
    { 
        return $schema->schema
        ([ 
            TextInput::make('name') 
            ->required() 
            ->maxLength(255), 
            
            FileUpload::make('photo') 
            ->image() 
            ->required()
            ->disk('cloudinary')
            ->directory('categories'),
            
            FileUpload::make('photo_white') 
            ->image() 
            ->required()
            ->disk('cloudinary')
            ->directory('categories'),
        ]); 
    }

   public static function table(Table $table): Table
{
    return $table 
        ->columns([ 
            Tables\Columns\ImageColumn::make('photo')
            ->disk('cloudinary'),
            Tables\Columns\TextColumn::make('name')
                ->searchable()
                ->sortable(),
        ]) 
        ->filters([ 
            Tables\Filters\TrashedFilter::make(),
        ])

        ->recordActions([
            ViewAction::make(),
            EditAction::make(),
            
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
        ];
    }

    public static function getPages(): array
    {
        return [
            'index' => ListCategories::route('/'),
            'create' => CreateCategory::route('/create'),
            'edit' => EditCategory::route('/{record}/edit'),
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
