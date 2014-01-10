.class Lcom/alibaba/adi/collie/ui/MainActivity$ChooseWallpaperBroadcast;
.super Landroid/content/BroadcastReceiver;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/adi/collie/ui/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChooseWallpaperBroadcast"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/adi/collie/ui/MainActivity;


# direct methods
.method private constructor <init>(Lcom/alibaba/adi/collie/ui/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1167
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/MainActivity$ChooseWallpaperBroadcast;->this$0:Lcom/alibaba/adi/collie/ui/MainActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/adi/collie/ui/MainActivity;Lcom/alibaba/adi/collie/ui/MainActivity$ChooseWallpaperBroadcast;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1167
    invoke-direct {p0, p1}, Lcom/alibaba/adi/collie/ui/MainActivity$ChooseWallpaperBroadcast;-><init>(Lcom/alibaba/adi/collie/ui/MainActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1181
    const/4 v0, 0x1

    .line 1182
    .local v0, needToChange:Z
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->setWallpaperNeedChange(ZZ)V

    .line 1183
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/MainActivity$ChooseWallpaperBroadcast;->this$0:Lcom/alibaba/adi/collie/ui/MainActivity;

    #calls: Lcom/alibaba/adi/collie/ui/MainActivity;->changeWallpaper()V
    invoke-static {v1}, Lcom/alibaba/adi/collie/ui/MainActivity;->access$10(Lcom/alibaba/adi/collie/ui/MainActivity;)V

    .line 1184
    return-void
.end method

.method public register()V
    .locals 2

    .prologue
    .line 1170
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1171
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.alibaba.adi.collie.wallpaper.blurCompleted"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1172
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/MainActivity$ChooseWallpaperBroadcast;->this$0:Lcom/alibaba/adi/collie/ui/MainActivity;

    invoke-virtual {v1, p0, v0}, Lcom/alibaba/adi/collie/ui/MainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1173
    return-void
.end method

.method public unregister()V
    .locals 1

    .prologue
    .line 1176
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/MainActivity$ChooseWallpaperBroadcast;->this$0:Lcom/alibaba/adi/collie/ui/MainActivity;

    invoke-virtual {v0, p0}, Lcom/alibaba/adi/collie/ui/MainActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1177
    return-void
.end method
