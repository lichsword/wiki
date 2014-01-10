.class Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$2;
.super Ljava/lang/Object;
.source "WallpaperManagerX.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->deleteWallpapers([Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;

.field private final synthetic val$items:[Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;


# direct methods
.method constructor <init>(Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;[Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$2;->this$0:Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;

    iput-object p2, p0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$2;->val$items:[Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;

    .line 459
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 462
    iget-object v5, p0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$2;->val$items:[Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;

    array-length v6, v5

    const/4 v4, 0x0

    :goto_0
    if-lt v4, v6, :cond_0

    .line 484
    return-void

    .line 462
    :cond_0
    aget-object v1, v5, v4

    .line 463
    .local v1, configItem:Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;
    if-eqz v1, :cond_3

    .line 464
    invoke-virtual {v1}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;->getSource()Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperSource;

    move-result-object v7

    sget-object v8, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperSource;->FILE:Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperSource;

    if-ne v7, v8, :cond_3

    .line 465
    invoke-virtual {v1}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;->getImagePath()Ljava/lang/String;

    move-result-object v3

    .line 466
    .local v3, imagePath:Ljava/lang/String;
    invoke-virtual {v1}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;->getBlurPath()Ljava/lang/String;

    move-result-object v0

    .line 467
    .local v0, blurPath:Ljava/lang/String;
    invoke-virtual {v1}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;->getIconPath()Ljava/lang/String;

    move-result-object v2

    .line 468
    .local v2, iconPath:Ljava/lang/String;
    if-eqz v3, :cond_1

    invoke-static {v3}, Lcom/alibaba/adi/collie/util/FileUtil;->isFileExist(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 469
    const-string v7, "WallpaperManagerX"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "deleting image "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    invoke-static {v3}, Lcom/alibaba/adi/collie/util/FileUtil;->deleteFile(Ljava/lang/String;)Z

    .line 473
    :cond_1
    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/alibaba/adi/collie/util/FileUtil;->isFileExist(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 474
    const-string v7, "WallpaperManagerX"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "deleting blurred image "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    invoke-static {v0}, Lcom/alibaba/adi/collie/util/FileUtil;->deleteFile(Ljava/lang/String;)Z

    .line 478
    :cond_2
    if-eqz v2, :cond_3

    invoke-static {v2}, Lcom/alibaba/adi/collie/util/FileUtil;->isFileExist(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 479
    const-string v7, "WallpaperManagerX"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "deleting image icon "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    invoke-static {v2}, Lcom/alibaba/adi/collie/util/FileUtil;->deleteFile(Ljava/lang/String;)Z

    .line 462
    .end local v0           #blurPath:Ljava/lang/String;
    .end local v2           #iconPath:Ljava/lang/String;
    .end local v3           #imagePath:Ljava/lang/String;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method
