.class public Lcom/alibaba/adi/collie/ui/wallpaperx/WallPaperConfigItemIndex;
.super Ljava/lang/Object;
.source "WallPaperConfigItemIndex.java"


# instance fields
.field private mIndex:I

.field private mWallpaperConfigItem:Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;


# direct methods
.method public constructor <init>(Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;I)V
    .locals 0
    .parameter "wallpaperConfigItem"
    .parameter "index"

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallPaperConfigItemIndex;->mWallpaperConfigItem:Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;

    .line 14
    iput p2, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallPaperConfigItemIndex;->mIndex:I

    .line 15
    return-void
.end method


# virtual methods
.method public getIndex()I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallPaperConfigItemIndex;->mIndex:I

    return v0
.end method

.method public getmWallpaperConfigItem()Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallPaperConfigItemIndex;->mWallpaperConfigItem:Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;

    return-object v0
.end method
