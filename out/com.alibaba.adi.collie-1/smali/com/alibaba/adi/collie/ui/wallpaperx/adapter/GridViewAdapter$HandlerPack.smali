.class Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter$HandlerPack;
.super Ljava/lang/Object;
.source "GridViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HandlerPack"
.end annotation


# instance fields
.field configItem:Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;

.field iconBitmap:Landroid/graphics/Bitmap;

.field imageView:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter;


# direct methods
.method constructor <init>(Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter;Landroid/widget/ImageView;Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;)V
    .locals 0
    .parameter
    .parameter "iv"
    .parameter "ci"

    .prologue
    .line 238
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter$HandlerPack;->this$0:Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 239
    iput-object p2, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter$HandlerPack;->imageView:Landroid/widget/ImageView;

    .line 240
    iput-object p3, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter$HandlerPack;->configItem:Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;

    .line 241
    return-void
.end method
