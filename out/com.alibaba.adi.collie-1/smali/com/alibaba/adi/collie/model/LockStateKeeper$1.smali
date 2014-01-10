.class Lcom/alibaba/adi/collie/model/LockStateKeeper$1;
.super Ljava/lang/Object;
.source "LockStateKeeper.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/adi/collie/model/LockStateKeeper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/adi/collie/model/LockStateKeeper;


# direct methods
.method constructor <init>(Lcom/alibaba/adi/collie/model/LockStateKeeper;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alibaba/adi/collie/model/LockStateKeeper$1;->this$0:Lcom/alibaba/adi/collie/model/LockStateKeeper;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .parameter "name"
    .parameter "service"

    .prologue
    .line 69
    iget-object v1, p0, Lcom/alibaba/adi/collie/model/LockStateKeeper$1;->this$0:Lcom/alibaba/adi/collie/model/LockStateKeeper;

    invoke-static {p2}, Lcom/alibaba/adi/collie/service/IAdiKeyGuardService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/alibaba/adi/collie/service/IAdiKeyGuardService;

    move-result-object v2

    #setter for: Lcom/alibaba/adi/collie/model/LockStateKeeper;->mBinder:Lcom/alibaba/adi/collie/service/IAdiKeyGuardService;
    invoke-static {v1, v2}, Lcom/alibaba/adi/collie/model/LockStateKeeper;->access$0(Lcom/alibaba/adi/collie/model/LockStateKeeper;Lcom/alibaba/adi/collie/service/IAdiKeyGuardService;)V

    .line 70
    iget-object v1, p0, Lcom/alibaba/adi/collie/model/LockStateKeeper$1;->this$0:Lcom/alibaba/adi/collie/model/LockStateKeeper;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    #setter for: Lcom/alibaba/adi/collie/model/LockStateKeeper;->mIsBound:Ljava/lang/Boolean;
    invoke-static {v1, v2}, Lcom/alibaba/adi/collie/model/LockStateKeeper;->access$1(Lcom/alibaba/adi/collie/model/LockStateKeeper;Ljava/lang/Boolean;)V

    .line 71
    sget-object v1, Lcom/alibaba/adi/collie/model/LockStateKeeper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onServiceConnected:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alibaba/adi/collie/model/LockStateKeeper$1;->this$0:Lcom/alibaba/adi/collie/model/LockStateKeeper;

    #getter for: Lcom/alibaba/adi/collie/model/LockStateKeeper;->mIsBound:Ljava/lang/Boolean;
    invoke-static {v3}, Lcom/alibaba/adi/collie/model/LockStateKeeper;->access$2(Lcom/alibaba/adi/collie/model/LockStateKeeper;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/adi/collie/model/LockStateKeeper$1;->this$0:Lcom/alibaba/adi/collie/model/LockStateKeeper;

    #getter for: Lcom/alibaba/adi/collie/model/LockStateKeeper;->mBinder:Lcom/alibaba/adi/collie/service/IAdiKeyGuardService;
    invoke-static {v1}, Lcom/alibaba/adi/collie/model/LockStateKeeper;->access$3(Lcom/alibaba/adi/collie/model/LockStateKeeper;)Lcom/alibaba/adi/collie/service/IAdiKeyGuardService;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/adi/collie/model/LockStateKeeper$1;->this$0:Lcom/alibaba/adi/collie/model/LockStateKeeper;

    #getter for: Lcom/alibaba/adi/collie/model/LockStateKeeper;->mLocked:Ljava/lang/Boolean;
    invoke-static {v2}, Lcom/alibaba/adi/collie/model/LockStateKeeper;->access$4(Lcom/alibaba/adi/collie/model/LockStateKeeper;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/alibaba/adi/collie/service/IAdiKeyGuardService;->setLockState(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :goto_0
    return-void

    .line 75
    :catch_0
    move-exception v0

    .line 76
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .parameter "name"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/alibaba/adi/collie/model/LockStateKeeper$1;->this$0:Lcom/alibaba/adi/collie/model/LockStateKeeper;

    const/4 v1, 0x0

    #setter for: Lcom/alibaba/adi/collie/model/LockStateKeeper;->mBinder:Lcom/alibaba/adi/collie/service/IAdiKeyGuardService;
    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/model/LockStateKeeper;->access$0(Lcom/alibaba/adi/collie/model/LockStateKeeper;Lcom/alibaba/adi/collie/service/IAdiKeyGuardService;)V

    .line 83
    iget-object v0, p0, Lcom/alibaba/adi/collie/model/LockStateKeeper$1;->this$0:Lcom/alibaba/adi/collie/model/LockStateKeeper;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    #setter for: Lcom/alibaba/adi/collie/model/LockStateKeeper;->mIsBound:Ljava/lang/Boolean;
    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/model/LockStateKeeper;->access$1(Lcom/alibaba/adi/collie/model/LockStateKeeper;Ljava/lang/Boolean;)V

    .line 84
    sget-object v0, Lcom/alibaba/adi/collie/model/LockStateKeeper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onServiceDisconnected:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alibaba/adi/collie/model/LockStateKeeper$1;->this$0:Lcom/alibaba/adi/collie/model/LockStateKeeper;

    #getter for: Lcom/alibaba/adi/collie/model/LockStateKeeper;->mIsBound:Ljava/lang/Boolean;
    invoke-static {v2}, Lcom/alibaba/adi/collie/model/LockStateKeeper;->access$2(Lcom/alibaba/adi/collie/model/LockStateKeeper;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    return-void
.end method
