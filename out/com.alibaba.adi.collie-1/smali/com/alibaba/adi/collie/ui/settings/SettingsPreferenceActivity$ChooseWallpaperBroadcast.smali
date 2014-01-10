.class Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity$ChooseWallpaperBroadcast;
.super Landroid/content/BroadcastReceiver;
.source "SettingsPreferenceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChooseWallpaperBroadcast"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;


# direct methods
.method private constructor <init>(Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 534
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity$ChooseWallpaperBroadcast;->this$0:Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity$ChooseWallpaperBroadcast;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 534
    invoke-direct {p0, p1}, Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity$ChooseWallpaperBroadcast;-><init>(Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 548
    sget-object v0, Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;->TAG:Ljava/lang/String;

    const-string v1, "Settings.onReceive() called"

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity$ChooseWallpaperBroadcast;->this$0:Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;

    #calls: Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;->bindWallpaper()V
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;->access$0(Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;)V

    .line 550
    return-void
.end method

.method public register()V
    .locals 2

    .prologue
    .line 537
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 538
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.alibaba.adi.collie.wallpaper.blurCompleted"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 539
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity$ChooseWallpaperBroadcast;->this$0:Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;

    invoke-virtual {v1, p0, v0}, Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 540
    return-void
.end method

.method public unregister()V
    .locals 1

    .prologue
    .line 543
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity$ChooseWallpaperBroadcast;->this$0:Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;

    invoke-virtual {v0, p0}, Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 544
    return-void
.end method
