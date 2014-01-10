.class Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$1;
.super Ljava/lang/Object;
.source "WallpaperManagerX.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->getWallpapers(Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$WallpaperSource;)[Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;

.field private final synthetic val$configItem:Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;


# direct methods
.method constructor <init>(Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$1;->this$0:Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;

    iput-object p2, p0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$1;->val$configItem:Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;

    .line 347
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 350
    iget-object v0, p0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$1;->this$0:Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;

    #getter for: Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->mWallpaperConfigMaintainer:Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigMaintainer;
    invoke-static {v0}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->access$1(Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;)Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigMaintainer;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX$1;->val$configItem:Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigMaintainer;->delete([Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;)V

    .line 351
    return-void
.end method
