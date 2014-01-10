.class Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$4;
.super Ljava/lang/Object;
.source "TaoLoginManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager;->login(Lcom/alibaba/adi/collie/model/taobao/TaoLoginUserInput;Lcom/alibaba/adi/collie/model/taobao/TaoCheckCode;Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$LogInOutNotifyHandler;)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager;

.field private final synthetic val$checkCode:Lcom/alibaba/adi/collie/model/taobao/TaoCheckCode;

.field private final synthetic val$handler:Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$LogInOutNotifyHandler;

.field private final synthetic val$userInput:Lcom/alibaba/adi/collie/model/taobao/TaoLoginUserInput;


# direct methods
.method constructor <init>(Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager;Lcom/alibaba/adi/collie/model/taobao/TaoCheckCode;Lcom/alibaba/adi/collie/model/taobao/TaoLoginUserInput;Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$LogInOutNotifyHandler;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$4;->this$0:Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager;

    iput-object p2, p0, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$4;->val$checkCode:Lcom/alibaba/adi/collie/model/taobao/TaoCheckCode;

    iput-object p3, p0, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$4;->val$userInput:Lcom/alibaba/adi/collie/model/taobao/TaoLoginUserInput;

    iput-object p4, p0, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$4;->val$handler:Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$LogInOutNotifyHandler;

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 196
    const/4 v5, 0x0

    .line 197
    .local v5, mtopLoginAdapter:Lcom/alibaba/adi/collie/business/taobao/login/mtop/MtopLoginAdapter;
    :try_start_0
    iget-object v8, p0, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$4;->val$checkCode:Lcom/alibaba/adi/collie/model/taobao/TaoCheckCode;

    if-eqz v8, :cond_1

    .line 198
    new-instance v6, Lcom/alibaba/adi/collie/business/taobao/login/mtop/MtopLoginAdapter;

    iget-object v8, p0, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$4;->val$userInput:Lcom/alibaba/adi/collie/model/taobao/TaoLoginUserInput;

    iget-object v9, p0, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$4;->val$checkCode:Lcom/alibaba/adi/collie/model/taobao/TaoCheckCode;

    invoke-direct {v6, v8, v9}, Lcom/alibaba/adi/collie/business/taobao/login/mtop/MtopLoginAdapter;-><init>(Lcom/alibaba/adi/collie/model/taobao/TaoLoginUserInput;Lcom/alibaba/adi/collie/model/taobao/TaoCheckCode;)V

    .end local v5           #mtopLoginAdapter:Lcom/alibaba/adi/collie/business/taobao/login/mtop/MtopLoginAdapter;
    .local v6, mtopLoginAdapter:Lcom/alibaba/adi/collie/business/taobao/login/mtop/MtopLoginAdapter;
    move-object v5, v6

    .line 203
    .end local v6           #mtopLoginAdapter:Lcom/alibaba/adi/collie/business/taobao/login/mtop/MtopLoginAdapter;
    .restart local v5       #mtopLoginAdapter:Lcom/alibaba/adi/collie/business/taobao/login/mtop/MtopLoginAdapter;
    :goto_0
    invoke-virtual {v5}, Lcom/alibaba/adi/collie/business/taobao/login/mtop/MtopLoginAdapter;->login()Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;

    move-result-object v7

    .line 204
    .local v7, result:Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;->isValid()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 205
    const-string v8, "TaoLoginManager"

    const-string v9, "MTOP login succeeded"

    invoke-static {v8, v9}, Lcom/alibaba/adi/collie/util/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    invoke-static {v7}, Lcom/alibaba/adi/collie/business/taobao/login/TaoAccountPersistence;->saveAccount(Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;)V

    .line 229
    iget-object v8, p0, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$4;->val$handler:Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$LogInOutNotifyHandler;

    if-eqz v8, :cond_0

    .line 230
    iget-object v8, p0, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$4;->val$handler:Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$LogInOutNotifyHandler;

    const/4 v9, 0x1

    invoke-virtual {v8, v9, v7}, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$LogInOutNotifyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 231
    .local v4, msg:Landroid/os/Message;
    iget-object v8, p0, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$4;->val$handler:Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$LogInOutNotifyHandler;

    invoke-virtual {v8, v4}, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$LogInOutNotifyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 237
    new-instance v1, Lcom/alibaba/adi/collie/service/task/BindTask;

    iget-object v8, p0, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$4;->this$0:Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager;

    #getter for: Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager;->mBaseContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager;->access$1(Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager;)Landroid/content/Context;

    move-result-object v8

    const-string v9, "taobao"

    invoke-direct {v1, v8, v9}, Lcom/alibaba/adi/collie/service/task/BindTask;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 238
    .local v1, bindTask:Lcom/alibaba/adi/collie/service/task/BindTask;
    invoke-virtual {v1}, Lcom/alibaba/adi/collie/service/task/BindTask;->run()V

    .line 239
    const/4 v0, 0x0

    .line 240
    .local v0, bindResMsg:Landroid/os/Message;
    invoke-static {}, Lcom/alibaba/adi/collie/business/adiserver/AdiPersistence;->getStatus()Lcom/alibaba/adi/collie/business/adiserver/AdiPersistence$UserStatus;

    move-result-object v8

    sget-object v9, Lcom/alibaba/adi/collie/business/adiserver/AdiPersistence$UserStatus;->BINDED:Lcom/alibaba/adi/collie/business/adiserver/AdiPersistence$UserStatus;

    if-ne v8, v9, :cond_2

    .line 241
    iget-object v8, p0, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$4;->val$handler:Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$LogInOutNotifyHandler;

    const/16 v9, 0x65

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$LogInOutNotifyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 245
    :goto_1
    iget-object v8, p0, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$4;->val$handler:Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$LogInOutNotifyHandler;

    invoke-virtual {v8, v0}, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$LogInOutNotifyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 269
    .end local v0           #bindResMsg:Landroid/os/Message;
    .end local v1           #bindTask:Lcom/alibaba/adi/collie/service/task/BindTask;
    .end local v4           #msg:Landroid/os/Message;
    .end local v7           #result:Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;
    :cond_0
    :goto_2
    return-void

    .line 200
    :cond_1
    new-instance v6, Lcom/alibaba/adi/collie/business/taobao/login/mtop/MtopLoginAdapter;

    iget-object v8, p0, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$4;->val$userInput:Lcom/alibaba/adi/collie/model/taobao/TaoLoginUserInput;

    invoke-direct {v6, v8}, Lcom/alibaba/adi/collie/business/taobao/login/mtop/MtopLoginAdapter;-><init>(Lcom/alibaba/adi/collie/model/taobao/TaoLoginUserInput;)V

    .end local v5           #mtopLoginAdapter:Lcom/alibaba/adi/collie/business/taobao/login/mtop/MtopLoginAdapter;
    .restart local v6       #mtopLoginAdapter:Lcom/alibaba/adi/collie/business/taobao/login/mtop/MtopLoginAdapter;
    move-object v5, v6

    .end local v6           #mtopLoginAdapter:Lcom/alibaba/adi/collie/business/taobao/login/mtop/MtopLoginAdapter;
    .restart local v5       #mtopLoginAdapter:Lcom/alibaba/adi/collie/business/taobao/login/mtop/MtopLoginAdapter;
    goto :goto_0

    .line 243
    .restart local v0       #bindResMsg:Landroid/os/Message;
    .restart local v1       #bindTask:Lcom/alibaba/adi/collie/service/task/BindTask;
    .restart local v4       #msg:Landroid/os/Message;
    .restart local v7       #result:Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;
    :cond_2
    iget-object v8, p0, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$4;->val$handler:Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$LogInOutNotifyHandler;

    const/16 v9, 0x66

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$LogInOutNotifyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    goto :goto_1

    .line 248
    .end local v0           #bindResMsg:Landroid/os/Message;
    .end local v1           #bindTask:Lcom/alibaba/adi/collie/service/task/BindTask;
    .end local v4           #msg:Landroid/os/Message;
    :cond_3
    iget-object v8, p0, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$4;->val$handler:Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$LogInOutNotifyHandler;

    if-eqz v8, :cond_0

    .line 249
    const/4 v4, 0x0

    .line 250
    .restart local v4       #msg:Landroid/os/Message;
    if-eqz v7, :cond_4

    .line 251
    iget-object v8, p0, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$4;->val$handler:Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$LogInOutNotifyHandler;

    const/4 v9, -0x1

    invoke-virtual {v7}, Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;->getErrorMsg()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$LogInOutNotifyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 255
    :goto_3
    iget-object v8, p0, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$4;->val$handler:Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$LogInOutNotifyHandler;

    invoke-virtual {v8, v4}, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$LogInOutNotifyHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Lcom/alibaba/adi/collie/business/taobao/login/mtop/ReconnectWithCheckCodeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 258
    .end local v4           #msg:Landroid/os/Message;
    .end local v7           #result:Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;
    :catch_0
    move-exception v3

    .line 259
    .local v3, e:Lcom/alibaba/adi/collie/business/taobao/login/mtop/ReconnectWithCheckCodeException;
    iget-object v8, p0, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$4;->val$handler:Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$LogInOutNotifyHandler;

    if-eqz v8, :cond_5

    .line 260
    new-instance v2, Lcom/alibaba/adi/collie/model/taobao/TaoCheckCode;

    invoke-direct {v2}, Lcom/alibaba/adi/collie/model/taobao/TaoCheckCode;-><init>()V

    .line 261
    .local v2, checkCode:Lcom/alibaba/adi/collie/model/taobao/TaoCheckCode;
    invoke-virtual {v3}, Lcom/alibaba/adi/collie/business/taobao/login/mtop/ReconnectWithCheckCodeException;->getCheckCodeId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/alibaba/adi/collie/model/taobao/TaoCheckCode;->setCheckCodeId(Ljava/lang/String;)V

    .line 262
    invoke-virtual {v3}, Lcom/alibaba/adi/collie/business/taobao/login/mtop/ReconnectWithCheckCodeException;->getCheckCodeUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/alibaba/adi/collie/model/taobao/TaoCheckCode;->setCheckCodeUrl(Ljava/lang/String;)V

    .line 263
    iget-object v8, p0, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$4;->val$handler:Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$LogInOutNotifyHandler;

    const/4 v9, 0x3

    invoke-virtual {v8, v9, v2}, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$LogInOutNotifyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 264
    .restart local v4       #msg:Landroid/os/Message;
    iget-object v8, p0, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$4;->val$handler:Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$LogInOutNotifyHandler;

    invoke-virtual {v8, v4}, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$LogInOutNotifyHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    .line 253
    .end local v2           #checkCode:Lcom/alibaba/adi/collie/model/taobao/TaoCheckCode;
    .end local v3           #e:Lcom/alibaba/adi/collie/business/taobao/login/mtop/ReconnectWithCheckCodeException;
    .restart local v7       #result:Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;
    :cond_4
    :try_start_1
    iget-object v8, p0, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$4;->val$handler:Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$LogInOutNotifyHandler;

    const/4 v9, -0x1

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$LogInOutNotifyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;
    :try_end_1
    .catch Lcom/alibaba/adi/collie/business/taobao/login/mtop/ReconnectWithCheckCodeException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    goto :goto_3

    .line 266
    .end local v4           #msg:Landroid/os/Message;
    .end local v7           #result:Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;
    .restart local v3       #e:Lcom/alibaba/adi/collie/business/taobao/login/mtop/ReconnectWithCheckCodeException;
    :cond_5
    const-string v8, "TaoLoginManager"

    const-string v9, "unable to reconnect with checkCode because no LoginNotifyHandler is given"

    invoke-static {v8, v9}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method
