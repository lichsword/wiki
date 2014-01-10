.class public Lcom/alibaba/adi/collie/business/wallpaper/AssetWallpaperContainer;
.super Ljava/lang/Object;
.source "AssetWallpaperContainer.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AssetWallpaperContainer"

.field private static final sAssetsWallpaperBluredDir:Ljava/lang/String; = "wallpaper/blured"

.field private static final sAssetsWallpaperDir:Ljava/lang/String; = "wallpaper"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAssetWallpapers()Ljava/util/TreeMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 27
    const/16 v4, 0x9

    new-array v0, v4, [Ljava/lang/String;

    .line 28
    const-string v4, "selected_01.jpg"

    aput-object v4, v0, v3

    const/4 v4, 0x1

    const-string v5, "selected_02.jpg"

    aput-object v5, v0, v4

    const/4 v4, 0x2

    const-string v5, "selected_03.jpg"

    aput-object v5, v0, v4

    const/4 v4, 0x3

    .line 29
    const-string v5, "selected_04.jpg"

    aput-object v5, v0, v4

    const/4 v4, 0x4

    const-string v5, "selected_05.jpg"

    aput-object v5, v0, v4

    const/4 v4, 0x5

    const-string v5, "selected_06.jpg"

    aput-object v5, v0, v4

    const/4 v4, 0x6

    .line 30
    const-string v5, "selected_07.jpg"

    aput-object v5, v0, v4

    const/4 v4, 0x7

    const-string v5, "selected_08.jpg"

    aput-object v5, v0, v4

    const/16 v4, 0x8

    const-string v5, "selected_09.jpg"

    aput-object v5, v0, v4

    .line 32
    .local v0, hardCodedWallpapers:[Ljava/lang/String;
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 33
    .local v1, retMap:Ljava/util/TreeMap;,"Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    array-length v4, v0

    :goto_0
    if-lt v3, v4, :cond_0

    .line 37
    return-object v1

    .line 33
    :cond_0
    aget-object v2, v0, v3

    .line 34
    .local v2, wallpaper:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "wallpaper"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 35
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "wallpaper/blured"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 34
    invoke-virtual {v1, v5, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method
