.class Lcom/alibaba/adi/collie/service/AdiKeyGuardService$6;
.super Landroid/content/BroadcastReceiver;
.source "AdiKeyGuardService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->initUserPresentReceiver()V
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
    iput-object p1, p0, Lcom/alibaba/adi/collie/service/AdiKeyGuardService$6;->this$0:Lcom/alibaba/adi/collie/service/AdiKeyGuardService;

    .line 338
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 341
    const-string v0, "android.intent.action.USER_PRESENT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 342
    sget-object v0, Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->TAG:Ljava/lang/String;

    const-string v1, "xhh user present received"

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    iget-object v0, p0, Lcom/alibaba/adi/collie/service/AdiKeyGuardService$6;->this$0:Lcom/alibaba/adi/collie/service/AdiKeyGuardService;

    const/4 v1, 0x0

    #calls: Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->setKeyguardStatus(Z)V
    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/service/AdiKeyGuardService;->access$11(Lcom/alibaba/adi/collie/service/AdiKeyGuardService;Z)V

    .line 345
    :cond_0
    return-void
.end method
