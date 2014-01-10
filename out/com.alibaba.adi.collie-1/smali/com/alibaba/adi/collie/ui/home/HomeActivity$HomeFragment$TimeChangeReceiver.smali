.class Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment$TimeChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "HomeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TimeChangeReceiver"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 746
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment$TimeChangeReceiver;->this$1:Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 747
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "paramContext"
    .parameter "paramIntent"

    .prologue
    .line 753
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment$TimeChangeReceiver;->this$1:Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;

    #calls: Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->onTimeChanged()V
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->access$0(Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;)V

    .line 754
    return-void
.end method

.method public register()V
    .locals 2

    .prologue
    .line 757
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment$TimeChangeReceiver;->this$1:Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;

    #calls: Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->onTimeChanged()V
    invoke-static {v1}, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->access$0(Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;)V

    .line 758
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 759
    .local v0, localIntentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 760
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 762
    sget-object v1, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    invoke-virtual {v1, p0, v0}, Lcom/alibaba/adi/collie/CoreApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 764
    return-void
.end method

.method public unregister()V
    .locals 1

    .prologue
    .line 767
    sget-object v0, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    invoke-virtual {v0, p0}, Lcom/alibaba/adi/collie/CoreApplication;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 768
    return-void
.end method
