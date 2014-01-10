.class Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$6;
.super Ljava/lang/Object;
.source "TaoLoginManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager;->logout(Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$LogInOutNotifyHandler;)V
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
    iput-object p1, p0, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$6;->this$0:Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager;

    iput-object p2, p0, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$6;->val$handler:Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$LogInOutNotifyHandler;

    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/16 v6, 0x6f

    .line 299
    :try_start_0
    invoke-static {}, Lcom/alibaba/adi/collie/business/adiserver/account/AdiAccountManager;->getsInstance()Lcom/alibaba/adi/collie/business/adiserver/account/AdiAccountManager;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$6;->this$0:Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager;

    #getter for: Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager;->mBaseContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager;->access$1(Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager;)Landroid/content/Context;

    move-result-object v4

    .line 300
    const-string v5, "taobao"

    .line 299
    invoke-virtual {v3, v4, v5}, Lcom/alibaba/adi/collie/business/adiserver/account/AdiAccountManager;->unbind(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/adi/collie/model/adiserver/AdiAccountResult;

    move-result-object v2

    .line 301
    .local v2, result:Lcom/alibaba/adi/collie/model/adiserver/AdiAccountResult;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/alibaba/adi/collie/model/adiserver/AdiAccountResult;->getRetCode()I

    move-result v3

    if-nez v3, :cond_0

    .line 302
    iget-object v3, p0, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$6;->this$0:Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager;

    #getter for: Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager;->mBaseContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager;->access$1(Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/adi/collie/business/taobao/login/TaoAccountPersistence;->deleteAccount(Landroid/content/Context;)V

    .line 303
    iget-object v3, p0, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$6;->val$handler:Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$LogInOutNotifyHandler;

    const/16 v4, 0x6f

    invoke-virtual {v3, v4}, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$LogInOutNotifyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 304
    .local v1, msg:Landroid/os/Message;
    iget-object v3, p0, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$6;->val$handler:Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$LogInOutNotifyHandler;

    invoke-virtual {v3, v1}, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$LogInOutNotifyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 322
    .end local v2           #result:Lcom/alibaba/adi/collie/model/adiserver/AdiAccountResult;
    :goto_0
    return-void

    .line 306
    .end local v1           #msg:Landroid/os/Message;
    .restart local v2       #result:Lcom/alibaba/adi/collie/model/adiserver/AdiAccountResult;
    :cond_0
    iget-object v3, p0, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$6;->val$handler:Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$LogInOutNotifyHandler;

    const/16 v4, 0x70

    invoke-virtual {v3, v4}, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$LogInOutNotifyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 307
    .restart local v1       #msg:Landroid/os/Message;
    iget-object v3, p0, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$6;->val$handler:Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$LogInOutNotifyHandler;

    invoke-virtual {v3, v1}, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$LogInOutNotifyHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Lcom/alibaba/adi/collie/business/adiserver/AdiNotBindedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/alibaba/adi/collie/business/taobao/login/TaoNotLogedInException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/alibaba/adi/collie/business/weibo/api/WeiboNotLoginException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 309
    .end local v1           #msg:Landroid/os/Message;
    .end local v2           #result:Lcom/alibaba/adi/collie/model/adiserver/AdiAccountResult;
    :catch_0
    move-exception v0

    .line 310
    .local v0, e:Lcom/alibaba/adi/collie/business/adiserver/AdiNotBindedException;
    invoke-virtual {v0}, Lcom/alibaba/adi/collie/business/adiserver/AdiNotBindedException;->printStackTrace()V

    .line 311
    iget-object v3, p0, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$6;->val$handler:Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$LogInOutNotifyHandler;

    invoke-virtual {v3, v6}, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$LogInOutNotifyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 312
    .restart local v1       #msg:Landroid/os/Message;
    iget-object v3, p0, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$6;->val$handler:Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$LogInOutNotifyHandler;

    invoke-virtual {v3, v1}, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$LogInOutNotifyHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 313
    .end local v0           #e:Lcom/alibaba/adi/collie/business/adiserver/AdiNotBindedException;
    .end local v1           #msg:Landroid/os/Message;
    :catch_1
    move-exception v0

    .line 314
    .local v0, e:Lcom/alibaba/adi/collie/business/taobao/login/TaoNotLogedInException;
    invoke-virtual {v0}, Lcom/alibaba/adi/collie/business/taobao/login/TaoNotLogedInException;->printStackTrace()V

    .line 315
    iget-object v3, p0, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$6;->val$handler:Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$LogInOutNotifyHandler;

    invoke-virtual {v3, v6}, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$LogInOutNotifyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 316
    .restart local v1       #msg:Landroid/os/Message;
    iget-object v3, p0, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$6;->val$handler:Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$LogInOutNotifyHandler;

    invoke-virtual {v3, v1}, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$LogInOutNotifyHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 317
    .end local v0           #e:Lcom/alibaba/adi/collie/business/taobao/login/TaoNotLogedInException;
    .end local v1           #msg:Landroid/os/Message;
    :catch_2
    move-exception v0

    .line 318
    .local v0, e:Lcom/alibaba/adi/collie/business/weibo/api/WeiboNotLoginException;
    invoke-virtual {v0}, Lcom/alibaba/adi/collie/business/weibo/api/WeiboNotLoginException;->printStackTrace()V

    .line 319
    iget-object v3, p0, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$6;->val$handler:Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$LogInOutNotifyHandler;

    invoke-virtual {v3, v6}, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$LogInOutNotifyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 320
    .restart local v1       #msg:Landroid/os/Message;
    iget-object v3, p0, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$6;->val$handler:Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$LogInOutNotifyHandler;

    invoke-virtual {v3, v1}, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$LogInOutNotifyHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
