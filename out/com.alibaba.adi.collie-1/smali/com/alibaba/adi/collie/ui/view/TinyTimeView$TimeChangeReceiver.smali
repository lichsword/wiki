.class public Lcom/alibaba/adi/collie/ui/view/TinyTimeView$TimeChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TinyTimeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/adi/collie/ui/view/TinyTimeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TimeChangeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/adi/collie/ui/view/TinyTimeView;


# direct methods
.method constructor <init>(Lcom/alibaba/adi/collie/ui/view/TinyTimeView;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/view/TinyTimeView$TimeChangeReceiver;->this$0:Lcom/alibaba/adi/collie/ui/view/TinyTimeView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 42
    return-void
.end method

.method private onTimeChanged()V
    .locals 3

    .prologue
    .line 64
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/TinyTimeView$TimeChangeReceiver;->this$0:Lcom/alibaba/adi/collie/ui/view/TinyTimeView;

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "HH:mm"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/adi/collie/ui/view/TinyTimeView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter "paramContext"
    .parameter "paramIntent"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/view/TinyTimeView$TimeChangeReceiver;->onTimeChanged()V

    .line 48
    return-void
.end method

.method public register()V
    .locals 2

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/view/TinyTimeView$TimeChangeReceiver;->onTimeChanged()V

    .line 52
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 53
    .local v0, localIntentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 54
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 56
    sget-object v1, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    invoke-virtual {v1, p0, v0}, Lcom/alibaba/adi/collie/CoreApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 57
    return-void
.end method

.method public unregister()V
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    invoke-virtual {v0, p0}, Lcom/alibaba/adi/collie/CoreApplication;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 61
    return-void
.end method
