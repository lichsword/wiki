.class public Lcom/taobao/gcm/GCMBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "GCMBroadcastReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GCMBroadcastReceiver"


# instance fields
.field private volatile mReceiverSet:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/taobao/gcm/GCMBroadcastReceiver;->mReceiverSet:Z

    return-void
.end method


# virtual methods
.method protected getGCMIntentServiceClassName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 54
    const-string v0, "com.taobao.gcm.GCMIntentService"

    return-object v0
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 36
    :try_start_0
    const-string v3, "GCMBroadcastReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/android/agoo/log/AgooLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    iget-boolean v3, p0, Lcom/taobao/gcm/GCMBroadcastReceiver;->mReceiverSet:Z

    if-nez v3, :cond_0

    .line 39
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/taobao/gcm/GCMBroadcastReceiver;->mReceiverSet:Z

    .line 40
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 41
    .local v2, myClass:Ljava/lang/String;
    const-class v3, Lcom/taobao/gcm/GCMBroadcastReceiver;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 42
    invoke-static {v2}, Lcom/taobao/gcm/GCMRegistrar;->setRetryReceiverClassName(Ljava/lang/String;)V

    .line 45
    .end local v2           #myClass:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/taobao/gcm/GCMBroadcastReceiver;->getGCMIntentServiceClassName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, className:Ljava/lang/String;
    invoke-static {p1, p2, v0}, Lcom/taobao/gcm/GCMIntentService;->runIntentInService(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .end local v0           #className:Ljava/lang/String;
    :goto_0
    return-void

    .line 47
    :catch_0
    move-exception v1

    .line 48
    .local v1, e:Ljava/lang/Throwable;
    const-string v3, "GCMBroadcastReceiver"

    const-string v4, "GCMBroadcastReceiver onReceive"

    invoke-static {v3, v4, v1}, Lorg/android/agoo/log/AgooLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
