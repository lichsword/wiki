.class Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$3;
.super Ljava/lang/Object;
.source "TaoLoginManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager;->login(Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$LogInOutNotifyHandler;)Ljava/util/concurrent/Future;
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
    iput-object p1, p0, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$3;->this$0:Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager;

    iput-object p2, p0, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$3;->val$handler:Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$LogInOutNotifyHandler;

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 149
    :try_start_0
    iget-object v5, p0, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$3;->this$0:Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager;

    #getter for: Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager;->mSsoLoginAdapter:Lcom/alibaba/adi/collie/business/taobao/login/sso/SsoLoginAdapter;
    invoke-static {v5}, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager;->access$0(Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager;)Lcom/alibaba/adi/collie/business/taobao/login/sso/SsoLoginAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/adi/collie/business/taobao/login/sso/SsoLoginAdapter;->login()Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;

    move-result-object v4

    .line 150
    .local v4, result:Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;->isValid()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 151
    invoke-static {v4}, Lcom/alibaba/adi/collie/business/taobao/login/TaoAccountPersistence;->saveAccount(Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;)V

    .line 152
    iget-object v5, p0, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$3;->val$handler:Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$LogInOutNotifyHandler;

    if-eqz v5, :cond_0

    .line 153
    iget-object v5, p0, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$3;->val$handler:Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$LogInOutNotifyHandler;

    const/4 v6, 0x1

    invoke-virtual {v5, v6, v4}, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$LogInOutNotifyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 154
    .local v3, msg:Landroid/os/Message;
    iget-object v5, p0, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$3;->val$handler:Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$LogInOutNotifyHandler;

    invoke-virtual {v5, v3}, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$LogInOutNotifyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 156
    new-instance v1, Lcom/alibaba/adi/collie/service/task/BindTask;

    iget-object v5, p0, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$3;->this$0:Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager;

    #getter for: Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager;->mBaseContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager;->access$1(Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager;)Landroid/content/Context;

    move-result-object v5

    const-string v6, "taobao"

    invoke-direct {v1, v5, v6}, Lcom/alibaba/adi/collie/service/task/BindTask;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 157
    .local v1, bindTask:Lcom/alibaba/adi/collie/service/task/BindTask;
    invoke-virtual {v1}, Lcom/alibaba/adi/collie/service/task/BindTask;->run()V

    .line 158
    const/4 v0, 0x0

    .line 159
    .local v0, bindResMsg:Landroid/os/Message;
    invoke-static {}, Lcom/alibaba/adi/collie/business/adiserver/AdiPersistence;->getStatus()Lcom/alibaba/adi/collie/business/adiserver/AdiPersistence$UserStatus;

    move-result-object v5

    sget-object v6, Lcom/alibaba/adi/collie/business/adiserver/AdiPersistence$UserStatus;->BINDED:Lcom/alibaba/adi/collie/business/adiserver/AdiPersistence$UserStatus;

    if-ne v5, v6, :cond_1

    .line 160
    iget-object v5, p0, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$3;->val$handler:Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$LogInOutNotifyHandler;

    const/16 v6, 0x65

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$LogInOutNotifyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 164
    :goto_0
    iget-object v5, p0, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$3;->val$handler:Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$LogInOutNotifyHandler;

    invoke-virtual {v5, v0}, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$LogInOutNotifyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 177
    .end local v0           #bindResMsg:Landroid/os/Message;
    .end local v1           #bindTask:Lcom/alibaba/adi/collie/service/task/BindTask;
    .end local v3           #msg:Landroid/os/Message;
    .end local v4           #result:Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;
    :cond_0
    :goto_1
    return-void

    .line 162
    .restart local v0       #bindResMsg:Landroid/os/Message;
    .restart local v1       #bindTask:Lcom/alibaba/adi/collie/service/task/BindTask;
    .restart local v3       #msg:Landroid/os/Message;
    .restart local v4       #result:Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;
    :cond_1
    iget-object v5, p0, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$3;->val$handler:Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$LogInOutNotifyHandler;

    const/16 v6, 0x66

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$LogInOutNotifyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    goto :goto_0

    .line 167
    .end local v0           #bindResMsg:Landroid/os/Message;
    .end local v1           #bindTask:Lcom/alibaba/adi/collie/service/task/BindTask;
    .end local v3           #msg:Landroid/os/Message;
    :cond_2
    const-string v5, "TaoLoginManager"

    const-string v6, "TaoLoginResult from SSO login is invalid, try downgraded login method(s)"

    invoke-static {v5, v6}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    new-instance v5, Lcom/alibaba/adi/collie/business/taobao/login/sso/LoginDowngradeException;

    invoke-direct {v5}, Lcom/alibaba/adi/collie/business/taobao/login/sso/LoginDowngradeException;-><init>()V

    throw v5
    :try_end_0
    .catch Lcom/alibaba/adi/collie/business/taobao/login/sso/LoginDowngradeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    .end local v4           #result:Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;
    :catch_0
    move-exception v2

    .line 171
    .local v2, e:Lcom/alibaba/adi/collie/business/taobao/login/sso/LoginDowngradeException;
    const-string v5, "TaoLoginManager"

    const-string v6, "SSO login failed, switch to downgraded methodology"

    invoke-static {v5, v6}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    iget-object v5, p0, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$3;->val$handler:Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$LogInOutNotifyHandler;

    if-eqz v5, :cond_0

    .line 173
    iget-object v5, p0, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$3;->val$handler:Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$LogInOutNotifyHandler;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$LogInOutNotifyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 174
    .restart local v3       #msg:Landroid/os/Message;
    iget-object v5, p0, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$3;->val$handler:Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$LogInOutNotifyHandler;

    invoke-virtual {v5, v3}, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$LogInOutNotifyHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1
.end method
