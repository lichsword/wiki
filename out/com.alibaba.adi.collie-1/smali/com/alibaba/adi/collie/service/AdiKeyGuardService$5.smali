.class Lcom/alibaba/adi/collie/service/AdiKeyGuardService$5;
.super Landroid/content/BroadcastReceiver;
.source "AdiKeyGuardService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->initScreenBroadcastReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/adi/collie/service/AdiKeyGuardService;


# direct methods
.method constructor <init>(Lcom/alibaba/adi/collie/service/AdiKeyGuardService;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alibaba/adi/collie/service/AdiKeyGuardService$5;->this$0:Lcom/alibaba/adi/collie/service/AdiKeyGuardService;

    .line 116
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x1

    .line 119
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, action:Ljava/lang/String;
    sget-object v3, Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "xhh: service receive "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const-string v3, "android.intent.action.SCREEN_ON"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 127
    const-string v3, "STARTTIME"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.alibaba.adi.collie.SCREEN_ON"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 129
    .local v2, screenOnIntent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/alibaba/adi/collie/service/AdiKeyGuardService$5;->this$0:Lcom/alibaba/adi/collie/service/AdiKeyGuardService;

    invoke-virtual {v3, v2}, Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->sendBroadcast(Landroid/content/Intent;)V

    .line 131
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->access$3(Ljava/lang/Boolean;)V

    .line 132
    iget-object v3, p0, Lcom/alibaba/adi/collie/service/AdiKeyGuardService$5;->this$0:Lcom/alibaba/adi/collie/service/AdiKeyGuardService;

    #calls: Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->isTopActivityInTask()Ljava/lang/Boolean;
    invoke-static {v3}, Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->access$4(Lcom/alibaba/adi/collie/service/AdiKeyGuardService;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_0

    .line 133
    iget-object v3, p0, Lcom/alibaba/adi/collie/service/AdiKeyGuardService$5;->this$0:Lcom/alibaba/adi/collie/service/AdiKeyGuardService;

    #calls: Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->startWatchCheck()V
    invoke-static {v3}, Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->access$6(Lcom/alibaba/adi/collie/service/AdiKeyGuardService;)V

    .line 137
    :cond_0
    iget-object v3, p0, Lcom/alibaba/adi/collie/service/AdiKeyGuardService$5;->this$0:Lcom/alibaba/adi/collie/service/AdiKeyGuardService;

    #getter for: Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->mAlarmReceiver:Lcom/alibaba/adi/collie/broadcast/AlarmBroadcastReceiver;
    invoke-static {v3}, Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->access$10(Lcom/alibaba/adi/collie/service/AdiKeyGuardService;)Lcom/alibaba/adi/collie/broadcast/AlarmBroadcastReceiver;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/adi/collie/broadcast/AlarmBroadcastReceiver;->reset()V

    .line 140
    .end local v2           #screenOnIntent:Landroid/content/Intent;
    :cond_1
    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 141
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.alibaba.adi.collie.SCREEN_OFF"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 142
    .local v1, screenOffIntent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/alibaba/adi/collie/service/AdiKeyGuardService$5;->this$0:Lcom/alibaba/adi/collie/service/AdiKeyGuardService;

    invoke-virtual {v3, v1}, Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->sendBroadcast(Landroid/content/Intent;)V

    .line 144
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->access$3(Ljava/lang/Boolean;)V

    .line 145
    iget-object v3, p0, Lcom/alibaba/adi/collie/service/AdiKeyGuardService$5;->this$0:Lcom/alibaba/adi/collie/service/AdiKeyGuardService;

    #calls: Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->stopWatchCheck()V
    invoke-static {v3}, Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->access$9(Lcom/alibaba/adi/collie/service/AdiKeyGuardService;)V

    .line 146
    iget-object v3, p0, Lcom/alibaba/adi/collie/service/AdiKeyGuardService$5;->this$0:Lcom/alibaba/adi/collie/service/AdiKeyGuardService;

    #calls: Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->launchMainActivity(Landroid/content/Context;Ljava/lang/String;)V
    invoke-static {v3, p1, v0}, Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->access$7(Lcom/alibaba/adi/collie/service/AdiKeyGuardService;Landroid/content/Context;Ljava/lang/String;)V

    .line 148
    .end local v1           #screenOffIntent:Landroid/content/Intent;
    :cond_2
    return-void
.end method
