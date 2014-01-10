.class Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter$3;
.super Ljava/lang/Object;
.source "GridViewAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter;->loadBitmapAsync(Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter$HandlerPack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter;

.field private final synthetic val$handlerPack:Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter$HandlerPack;


# direct methods
.method constructor <init>(Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter;Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter$HandlerPack;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter$3;->this$0:Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter;

    iput-object p2, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter$3;->val$handlerPack:Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter$HandlerPack;

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 196
    invoke-static {}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->getInstance()Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter$3;->val$handlerPack:Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter$HandlerPack;

    iget-object v3, v3, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter$HandlerPack;->configItem:Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;

    invoke-virtual {v2, v3}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->getIconBitmap(Lcom/alibaba/adi/collie/business/wallpaper/WallpaperConfigItem;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 197
    .local v0, iconBitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 198
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter$3;->val$handlerPack:Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter$HandlerPack;

    iput-object v0, v2, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter$HandlerPack;->iconBitmap:Landroid/graphics/Bitmap;

    .line 199
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter$3;->this$0:Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter;

    #getter for: Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter;->access$1(Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x63

    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter$3;->val$handlerPack:Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter$HandlerPack;

    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 200
    .local v1, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter$3;->this$0:Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter;

    #getter for: Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter;->access$1(Lcom/alibaba/adi/collie/ui/wallpaperx/adapter/GridViewAdapter;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 202
    .end local v1           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method
