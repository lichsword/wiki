.class Lcom/alibaba/adi/collie/service/AdiKeyGuardService$3;
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
    iput-object p1, p0, Lcom/alibaba/adi/collie/service/AdiKeyGuardService$3;->this$0:Lcom/alibaba/adi/collie/service/AdiKeyGuardService;

    .line 384
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 389
    invoke-static {}, Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->access$2()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/adi/collie/service/AdiKeyGuardService$3;->this$0:Lcom/alibaba/adi/collie/service/AdiKeyGuardService;

    #calls: Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->isTopActivityInTask()Ljava/lang/Boolean;
    invoke-static {v0}, Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->access$4(Lcom/alibaba/adi/collie/service/AdiKeyGuardService;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 390
    iget-object v0, p0, Lcom/alibaba/adi/collie/service/AdiKeyGuardService$3;->this$0:Lcom/alibaba/adi/collie/service/AdiKeyGuardService;

    #calls: Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->isExcludeTopActivity()Z
    invoke-static {v0}, Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->access$5(Lcom/alibaba/adi/collie/service/AdiKeyGuardService;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 391
    iget-object v0, p0, Lcom/alibaba/adi/collie/service/AdiKeyGuardService$3;->this$0:Lcom/alibaba/adi/collie/service/AdiKeyGuardService;

    #calls: Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->startWatchCheck()V
    invoke-static {v0}, Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->access$6(Lcom/alibaba/adi/collie/service/AdiKeyGuardService;)V

    .line 396
    :cond_0
    :goto_0
    return-void

    .line 393
    :cond_1
    iget-object v0, p0, Lcom/alibaba/adi/collie/service/AdiKeyGuardService$3;->this$0:Lcom/alibaba/adi/collie/service/AdiKeyGuardService;

    iget-object v1, p0, Lcom/alibaba/adi/collie/service/AdiKeyGuardService$3;->this$0:Lcom/alibaba/adi/collie/service/AdiKeyGuardService;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "checkLockState"

    #calls: Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->launchMainActivity(Landroid/content/Context;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->access$7(Lcom/alibaba/adi/collie/service/AdiKeyGuardService;Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
