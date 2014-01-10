.class public Lcom/alibaba/adi/collie/broadcast/WallpaperChangeBroadcaseReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WallpaperChangeBroadcaseReceiver.java"


# static fields
.field public static final INTENT_ACTION_BLUR_COMPLETE:Ljava/lang/String; = "com.alibaba.adi.collie.wallpaper.blurCompleted"

.field public static final INTENT_ACTION_NEED_CHANGE:Ljava/lang/String; = "com.alibaba.adi.collie.wallpaper.change"

.field private static final TAG:Ljava/lang/String; = "WallpaperChangeBroadcastReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 28
    const-string v1, "WallpaperChangeBroadcastReceiver"

    const-string v2, "wallpaper change broadcast received"

    invoke-static {v1, v2}, Lcom/alibaba/adi/collie/util/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 30
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.alibaba.adi.collie.wallpaper.change"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 33
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->setWallpaperNeedChange(ZZ)V

    .line 37
    :goto_0
    return-void

    .line 34
    :cond_0
    const-string v1, "com.alibaba.adi.collie.wallpaper.blurCompleted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    goto :goto_0
.end method
