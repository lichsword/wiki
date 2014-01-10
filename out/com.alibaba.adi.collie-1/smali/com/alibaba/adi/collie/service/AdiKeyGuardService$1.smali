.class Lcom/alibaba/adi/collie/service/AdiKeyGuardService$1;
.super Lcom/alibaba/adi/collie/service/IAdiKeyGuardService$Stub;
.source "AdiKeyGuardService.java"


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
    iput-object p1, p0, Lcom/alibaba/adi/collie/service/AdiKeyGuardService$1;->this$0:Lcom/alibaba/adi/collie/service/AdiKeyGuardService;

    .line 47
    invoke-direct {p0}, Lcom/alibaba/adi/collie/service/IAdiKeyGuardService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public checkLockState()V
    .locals 4

    .prologue
    .line 53
    sget-object v0, Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->TAG:Ljava/lang/String;

    const-string v1, "AdiKeyGuard.checkLockState()"

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/alibaba/adi/collie/service/AdiKeyGuardService$1;->this$0:Lcom/alibaba/adi/collie/service/AdiKeyGuardService;

    #getter for: Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->access$0(Lcom/alibaba/adi/collie/service/AdiKeyGuardService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/adi/collie/service/AdiKeyGuardService$1;->this$0:Lcom/alibaba/adi/collie/service/AdiKeyGuardService;

    #getter for: Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->mRunCheckLockState:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->access$1(Lcom/alibaba/adi/collie/service/AdiKeyGuardService;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x10

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 55
    return-void
.end method

.method public isLocked()Z
    .locals 3

    .prologue
    .line 70
    sget-object v0, Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AdiKeyGuard.isLocked() == "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->access$2()Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-static {}, Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->access$2()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public setLockState(Z)V
    .locals 5
    .parameter "locked"

    .prologue
    .line 79
    sget-object v0, Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->TAG:Ljava/lang/String;

    const-string v1, "AdiKeyGuard.setLockState(%s)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->access$3(Ljava/lang/Boolean;)V

    .line 81
    return-void
.end method

.method public stopCheckLockState()V
    .locals 2

    .prologue
    .line 61
    sget-object v0, Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->TAG:Ljava/lang/String;

    const-string v1, "AdiKeyGuard.stopCheckLockState()"

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/alibaba/adi/collie/service/AdiKeyGuardService$1;->this$0:Lcom/alibaba/adi/collie/service/AdiKeyGuardService;

    #getter for: Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->access$0(Lcom/alibaba/adi/collie/service/AdiKeyGuardService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/adi/collie/service/AdiKeyGuardService$1;->this$0:Lcom/alibaba/adi/collie/service/AdiKeyGuardService;

    #getter for: Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->mRunCheckLockState:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->access$1(Lcom/alibaba/adi/collie/service/AdiKeyGuardService;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 63
    return-void
.end method
