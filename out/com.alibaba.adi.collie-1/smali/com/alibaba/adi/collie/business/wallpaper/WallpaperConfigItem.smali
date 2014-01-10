.class public Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;
.super Ljava/lang/Object;
.source "WallpaperConfigItem.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# instance fields
.field private volatile blurPath:Ljava/lang/String;

.field private volatile iconPath:Ljava/lang/String;

.field private imagePath:Ljava/lang/String;

.field private source:Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperSource;

.field private status:Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperStatus;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 90
    const/4 v0, 0x0

    .line 92
    .local v0, cloned:Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #cloned:Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;
    check-cast v0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    .restart local v0       #cloned:Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;->getImagePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;->setImagePath(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;->getBlurPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;->setBlurPath(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;->getIconPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;->setIconPath(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;->getSource()Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperSource;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;->setSource(Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperSource;)V

    .line 101
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;->getStatus()Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperStatus;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;->setStatus(Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperStatus;)V

    .line 102
    return-object v0

    .line 93
    .end local v0           #cloned:Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;
    :catch_0
    move-exception v1

    .line 94
    .local v1, e:Ljava/lang/CloneNotSupportedException;
    new-instance v0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;

    invoke-direct {v0}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;-><init>()V

    .restart local v0       #cloned:Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;
    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "o"

    .prologue
    const/4 v1, 0x0

    .line 61
    if-eqz p1, :cond_0

    instance-of v2, p1, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 62
    check-cast v0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;

    .line 63
    .local v0, otherConfigItem:Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;
    invoke-virtual {v0}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;->getImagePath()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 64
    invoke-virtual {v0}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;->getImagePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;->getImagePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 65
    invoke-virtual {v0}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;->getSource()Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperSource;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;->getSource()Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperSource;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 66
    invoke-virtual {v0}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;->getStatus()Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperStatus;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;->getStatus()Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperStatus;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 67
    const/4 v1, 0x1

    .line 72
    .end local v0           #otherConfigItem:Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;
    :cond_0
    return v1
.end method

.method public getBlurPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;->blurPath:Ljava/lang/String;

    return-object v0
.end method

.method public getIconPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;->iconPath:Ljava/lang/String;

    return-object v0
.end method

.method public getImagePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;->imagePath:Ljava/lang/String;

    return-object v0
.end method

.method public getSource()Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperSource;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;->source:Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperSource;

    return-object v0
.end method

.method public getStatus()Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperStatus;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;->status:Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperStatus;

    return-object v0
.end method

.method public isUsable()Z
    .locals 2

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;->getImagePath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;->getImagePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 78
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;->getSource()Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperSource;

    move-result-object v0

    sget-object v1, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperSource;->FILE:Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperSource;

    if-ne v0, v1, :cond_0

    .line 79
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;->getImagePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/adi/collie/util/FileUtil;->isFileExist(Ljava/lang/String;)Z

    move-result v0

    .line 84
    :goto_0
    return v0

    .line 81
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 84
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setBlurPath(Ljava/lang/String;)V
    .locals 0
    .parameter "blurPath"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;->blurPath:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setIconPath(Ljava/lang/String;)V
    .locals 0
    .parameter "iconPath"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;->iconPath:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setImagePath(Ljava/lang/String;)V
    .locals 0
    .parameter "imagePath"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;->imagePath:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setSource(Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperSource;)V
    .locals 0
    .parameter "source"

    .prologue
    .line 24
    iput-object p1, p0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;->source:Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperSource;

    .line 25
    return-void
.end method

.method public setStatus(Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperStatus;)V
    .locals 0
    .parameter "status"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;->status:Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperStatus;

    .line 33
    return-void
.end method
