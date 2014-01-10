.class Lcom/alibaba/adi/collie/service/AdiKeyGuardService$4;
.super Ljava/lang/Object;
.source "AdiKeyGuardService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/adi/collie/service/AdiKeyGuardService;
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
    iput-object p1, p0, Lcom/alibaba/adi/collie/service/AdiKeyGuardService$4;->this$0:Lcom/alibaba/adi/collie/service/AdiKeyGuardService;

    .line 446
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 450
    invoke-static {}, Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->access$2()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/adi/collie/service/AdiKeyGuardService$4;->this$0:Lcom/alibaba/adi/collie/service/AdiKeyGuardService;

    #calls: Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->isTopActivityInTask()Ljava/lang/Boolean;
    invoke-static {v0}, Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->access$4(Lcom/alibaba/adi/collie/service/AdiKeyGuardService;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 451
    iget-object v0, p0, Lcom/alibaba/adi/collie/service/AdiKeyGuardService$4;->this$0:Lcom/alibaba/adi/collie/service/AdiKeyGuardService;

    #calls: Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->isExcludeTopActivity()Z
    invoke-static {v0}, Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->access$5(Lcom/alibaba/adi/collie/service/AdiKeyGuardService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 452
    iget-object v0, p0, Lcom/alibaba/adi/collie/service/AdiKeyGuardService$4;->this$0:Lcom/alibaba/adi/collie/service/AdiKeyGuardService;

    #getter for: Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->access$0(Lcom/alibaba/adi/collie/service/AdiKeyGuardService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/adi/collie/service/AdiKeyGuardService$4;->this$0:Lcom/alibaba/adi/collie/service/AdiKeyGuardService;

    #getter for: Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->mWatchCheckRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->access$8(Lcom/alibaba/adi/collie/service/AdiKeyGuardService;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 460
    :goto_0
    return-void

    .line 454
    :cond_0
    iget-object v0, p0, Lcom/alibaba/adi/collie/service/AdiKeyGuardService$4;->this$0:Lcom/alibaba/adi/collie/service/AdiKeyGuardService;

    iget-object v1, p0, Lcom/alibaba/adi/collie/service/AdiKeyGuardService$4;->this$0:Lcom/alibaba/adi/collie/service/AdiKeyGuardService;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "ActivityWatchCheck"

    #calls: Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->launchMainActivity(Landroid/content/Context;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->access$7(Lcom/alibaba/adi/collie/service/AdiKeyGuardService;Landroid/content/Context;Ljava/lang/String;)V

    .line 455
    iget-object v0, p0, Lcom/alibaba/adi/collie/service/AdiKeyGuardService$4;->this$0:Lcom/alibaba/adi/collie/service/AdiKeyGuardService;

    #calls: Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->stopWatchCheck()V
    invoke-static {v0}, Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->access$9(Lcom/alibaba/adi/collie/service/AdiKeyGuardService;)V

    goto :goto_0

    .line 458
    :cond_1
    iget-object v0, p0, Lcom/alibaba/adi/collie/service/AdiKeyGuardService$4;->this$0:Lcom/alibaba/adi/collie/service/AdiKeyGuardService;

    #calls: Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->stopWatchCheck()V
    invoke-static {v0}, Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->access$9(Lcom/alibaba/adi/collie/service/AdiKeyGuardService;)V

    goto :goto_0
.end method
