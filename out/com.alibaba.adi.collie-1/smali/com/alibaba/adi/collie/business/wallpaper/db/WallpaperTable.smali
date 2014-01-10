.class public Lcom/alibaba/adi/collie/business/wallpaper/db/WallpaperTable;
.super Lcom/alibaba/adi/collie/util/db/DbTable;
.source "WallpaperTable.java"


# static fields
.field public static final DB_COL_BLUR_PATH_TEXT_1:Ljava/lang/String; = "blurPath"

.field public static final DB_COL_ICON_PATH_TEXT_1:Ljava/lang/String; = "iconPath"

.field public static final DB_COL_IMAGE_PATH_TEXT_1:Ljava/lang/String; = "imagePath"

.field public static final DB_COL_SOURCE_TEXT_1:Ljava/lang/String; = "source"

.field public static final DB_COL_STATUS_TEXT_1:Ljava/lang/String; = "status"

.field private static final TAG:Ljava/lang/String; = "WallpaperTable"


# direct methods
.method public constructor <init>(Lcom/alibaba/adi/collie/util/db/DbHelper;)V
    .locals 0
    .parameter "helper"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/alibaba/adi/collie/util/db/DbTable;-><init>(Lcom/alibaba/adi/collie/util/db/DbHelper;)V

    .line 32
    return-void
.end method


# virtual methods
.method public deleteWallpaperConfigItem(Ljava/lang/String;)V
    .locals 3
    .parameter "imagePath"

    .prologue
    .line 131
    if-nez p1, :cond_0

    .line 132
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 134
    :cond_0
    const-string v0, "imagePath=?"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/adi/collie/business/wallpaper/db/WallpaperTable;->delete(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 135
    return-void
.end method

.method public getWallpaperConfigItems()[Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;
    .locals 11

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 60
    const/4 v4, 0x5

    new-array v0, v4, [Ljava/lang/String;

    .line 61
    const-string v4, "imagePath"

    aput-object v4, v0, v6

    .line 62
    const-string v4, "iconPath"

    aput-object v4, v0, v7

    .line 63
    const-string v4, "blurPath"

    aput-object v4, v0, v8

    .line 64
    const-string v4, "status"

    aput-object v4, v0, v9

    .line 65
    const-string v4, "source"

    aput-object v4, v0, v10

    .line 67
    .local v0, columns:[Ljava/lang/String;
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0, v0, v4, v5, v7}, Lcom/alibaba/adi/collie/business/wallpaper/db/WallpaperTable;->__select([Ljava/lang/String;Landroid/content/ContentValues;[IZ)Landroid/database/Cursor;

    move-result-object v2

    .line 68
    .local v2, cursor:Landroid/database/Cursor;
    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-gtz v4, :cond_1

    .line 69
    :cond_0
    new-array v4, v6, [Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;

    .line 82
    :goto_0
    return-object v4

    .line 71
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 72
    .local v3, retValues:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;>;"
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 73
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 82
    new-array v4, v6, [Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;

    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;

    goto :goto_0

    .line 74
    :cond_2
    new-instance v1, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;

    invoke-direct {v1}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;-><init>()V

    .line 75
    .local v1, configItem:Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;->setImagePath(Ljava/lang/String;)V

    .line 76
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;->setIconPath(Ljava/lang/String;)V

    .line 77
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;->setBlurPath(Ljava/lang/String;)V

    .line 78
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperStatus;->valueOf(Ljava/lang/String;)Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperStatus;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;->setStatus(Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperStatus;)V

    .line 79
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperSource;->valueOf(Ljava/lang/String;)Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperSource;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;->setSource(Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperSource;)V

    .line 80
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1
.end method

.method public insertWallpaperConfigItem(Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;)V
    .locals 3
    .parameter "item"

    .prologue
    .line 87
    if-nez p1, :cond_0

    .line 88
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 90
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 91
    .local v0, cv:Landroid/content/ContentValues;
    const-string v1, "imagePath"

    invoke-virtual {p1}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;->getImagePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-string v1, "iconPath"

    invoke-virtual {p1}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;->getIconPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string v1, "blurPath"

    invoke-virtual {p1}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;->getBlurPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-string v1, "source"

    invoke-virtual {p1}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;->getSource()Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperSource;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperSource;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string v1, "status"

    invoke-virtual {p1}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;->getStatus()Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperStatus;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/business/wallpaper/db/WallpaperTable;->insert(Landroid/content/ContentValues;)Z

    .line 97
    return-void
.end method

.method public onTableCreated(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 9
    .parameter "db"

    .prologue
    const/16 v4, 0x9

    .line 36
    invoke-static {}, Lcom/alibaba/adi/collie/business/wallpaper/AssetWallpaperContainer;->getAssetWallpapers()Ljava/util/TreeMap;

    move-result-object v1

    .line 37
    .local v1, assetWallpaperMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v5

    if-le v4, v5, :cond_0

    .line 38
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v4

    .line 39
    .local v4, preAddNum:I
    :cond_0
    const/4 v3, 0x0

    .line 41
    .local v3, i:I
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 57
    return-void

    .line 41
    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 42
    .local v0, assetImage:Ljava/lang/String;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 43
    .local v2, cv:Landroid/content/ContentValues;
    const-string v5, "source"

    sget-object v7, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperSource;->PACKAGE:Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperSource;

    invoke-virtual {v7}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperSource;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const-string v5, "imagePath"

    invoke-virtual {v2, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const-string v7, "blurPath"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const-string v5, "iconPath"

    const-string v7, ""

    invoke-virtual {v2, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    if-ge v3, v4, :cond_2

    .line 49
    const-string v5, "status"

    sget-object v7, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperStatus;->USED:Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperStatus;

    invoke-virtual {v7}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperStatus;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    :goto_1
    invoke-virtual {p0, p1, v2}, Lcom/alibaba/adi/collie/business/wallpaper/db/WallpaperTable;->insert(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)Z

    .line 54
    const-string v5, "WallpaperTable"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "onDbCreated(): add default wallpaper "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 51
    :cond_2
    const-string v5, "status"

    sget-object v7, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperStatus;->AVAILABLE:Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperStatus;

    invoke-virtual {v7}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperStatus;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public updateWallpaperConfigItemBlurPath(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "imagePath"
    .parameter "blurPath"

    .prologue
    .line 122
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 123
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 125
    :cond_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 126
    .local v0, cv:Landroid/content/ContentValues;
    const-string v1, "blurPath"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    const-string v1, "imagePath=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/alibaba/adi/collie/business/wallpaper/db/WallpaperTable;->update(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)Z

    .line 128
    return-void
.end method

.method public updateWallpaperConfigItemIconPath(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "imagePath"
    .parameter "iconPath"

    .prologue
    .line 109
    if-nez p1, :cond_0

    .line 110
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 112
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 113
    .local v0, cv:Landroid/content/ContentValues;
    if-nez p2, :cond_1

    .line 114
    const-string v1, "iconPath"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    :goto_0
    const-string v1, "imagePath=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/alibaba/adi/collie/business/wallpaper/db/WallpaperTable;->update(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)Z

    .line 119
    return-void

    .line 116
    :cond_1
    const-string v1, "iconPath"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateWallpaperConfigItemStatus(Ljava/lang/String;Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperStatus;)V
    .locals 4
    .parameter "imagePath"
    .parameter "status"

    .prologue
    .line 100
    if-nez p1, :cond_0

    .line 101
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 103
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 104
    .local v0, cv:Landroid/content/ContentValues;
    const-string v1, "status"

    invoke-virtual {p2}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperStatus;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-string v1, "imagePath=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/alibaba/adi/collie/business/wallpaper/db/WallpaperTable;->update(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)Z

    .line 106
    return-void
.end method
