.class Lcom/alibaba/adi/collie/ui/MainActivity$4;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/adi/collie/ui/MainActivity;->initWallpaper()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/adi/collie/ui/MainActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/adi/collie/ui/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/MainActivity$4;->this$0:Lcom/alibaba/adi/collie/ui/MainActivity;

    .line 976
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 979
    invoke-static {}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->getInstance()Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->getCachedWallpaper()[Landroid/graphics/Bitmap;

    move-result-object v1

    .line 980
    .local v1, wallpapers:[Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    .line 981
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/MainActivity$4;->this$0:Lcom/alibaba/adi/collie/ui/MainActivity;

    #getter for: Lcom/alibaba/adi/collie/ui/MainActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/alibaba/adi/collie/ui/MainActivity;->access$14(Lcom/alibaba/adi/collie/ui/MainActivity;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 982
    .local v0, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/MainActivity$4;->this$0:Lcom/alibaba/adi/collie/ui/MainActivity;

    #getter for: Lcom/alibaba/adi/collie/ui/MainActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/alibaba/adi/collie/ui/MainActivity;->access$14(Lcom/alibaba/adi/collie/ui/MainActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 984
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method
