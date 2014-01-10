.class Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$5;
.super Ljava/lang/Object;
.source "TaoLoginManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager;->getCheckCode(Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$LogInOutNotifyHandler;)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager;

.field private final synthetic val$handler:Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$LogInOutNotifyHandler;


# direct methods
.method constructor <init>(Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager;Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$LogInOutNotifyHandler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$5;->this$0:Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager;

    iput-object p2, p0, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$5;->val$handler:Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$LogInOutNotifyHandler;

    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 279
    const/4 v4, 0x1

    invoke-static {v4}, Lcom/alibaba/adi/collie/business/ApiPropertyFactory;->newApiProperty(I)Landroid/taobao/apirequest/ApiProperty;

    move-result-object v0

    .line 280
    .local v0, apiProperty:Landroid/taobao/apirequest/ApiProperty;
    new-instance v2, Lcom/alibaba/adi/collie/business/taobao/login/mtop/LoginCheckCodeConnectorHelper;

    invoke-direct {v2}, Lcom/alibaba/adi/collie/business/taobao/login/mtop/LoginCheckCodeConnectorHelper;-><init>()V

    .line 281
    .local v2, checkCodeConnectorHelper:Lcom/alibaba/adi/collie/business/taobao/login/mtop/LoginCheckCodeConnectorHelper;
    invoke-static {}, Landroid/taobao/apirequest/ApiRequestMgr;->getInstance()Landroid/taobao/apirequest/ApiRequestMgr;

    move-result-object v4

    invoke-virtual {v4, v2, v0}, Landroid/taobao/apirequest/ApiRequestMgr;->syncConnect(Landroid/taobao/apirequest/ConnectorHelper;Landroid/taobao/apirequest/ApiProperty;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/adi/collie/model/taobao/TaoCheckCode;

    .line 283
    .local v1, checkCode:Lcom/alibaba/adi/collie/model/taobao/TaoCheckCode;
    iget-object v4, p0, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$5;->val$handler:Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$LogInOutNotifyHandler;

    if-eqz v4, :cond_0

    .line 284
    iget-object v4, p0, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$5;->val$handler:Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$LogInOutNotifyHandler;

    const/4 v5, 0x3

    invoke-virtual {v4, v5, v1}, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$LogInOutNotifyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 285
    .local v3, msg:Landroid/os/Message;
    iget-object v4, p0, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$5;->val$handler:Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$LogInOutNotifyHandler;

    invoke-virtual {v4, v3}, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$LogInOutNotifyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 289
    .end local v3           #msg:Landroid/os/Message;
    :goto_0
    return-void

    .line 287
    :cond_0
    const-string v4, "TaoLoginManager"

    const-string v5, "unable to reconnect with checkCode because no LoginNotifyHandler is given"

    invoke-static {v4, v5}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
