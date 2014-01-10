.class public Lcom/alibaba/adi/collie/service/task/BindTask;
.super Ljava/lang/Object;
.source "BindTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final TAG:Ljava/lang/String; = "BindTask"


# instance fields
.field private mAccountType:Ljava/lang/String;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter "context"
    .parameter "accountType"

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p2, p0, Lcom/alibaba/adi/collie/service/task/BindTask;->mAccountType:Ljava/lang/String;

    .line 23
    iput-object p1, p0, Lcom/alibaba/adi/collie/service/task/BindTask;->mContext:Landroid/content/Context;

    .line 24
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 29
    :try_start_0
    const-string v5, "BindTask"

    const-string v6, "bindTask start running ..."

    invoke-static {v5, v6}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-static {}, Lcom/alibaba/adi/collie/business/adiserver/account/AdiAccountManager;->getsInstance()Lcom/alibaba/adi/collie/business/adiserver/account/AdiAccountManager;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/adi/collie/service/task/BindTask;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/alibaba/adi/collie/service/task/BindTask;->mAccountType:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lcom/alibaba/adi/collie/business/adiserver/account/AdiAccountManager;->bind(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/adi/collie/model/adiserver/AdiAccountResult;

    move-result-object v0

    .line 31
    .local v0, bindResult:Lcom/alibaba/adi/collie/model/adiserver/AdiAccountResult;
    const-string v5, "BindTask"

    const-string v6, "bindTask completed"

    invoke-static {v5, v6}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/alibaba/adi/collie/business/adiserver/AdiNotRegisteredException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/alibaba/adi/collie/business/taobao/login/TaoNotLogedInException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/alibaba/adi/collie/business/weibo/api/WeiboNotLoginException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    .line 62
    .end local v0           #bindResult:Lcom/alibaba/adi/collie/model/adiserver/AdiAccountResult;
    :goto_0
    return-void

    .line 32
    :catch_0
    move-exception v1

    .line 33
    .local v1, e:Lcom/alibaba/adi/collie/business/adiserver/AdiNotRegisteredException;
    const-string v5, "BindTask"

    const-string v6, "bind to ADI failed, try register now ..."

    invoke-static {v5, v6}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    sget-object v5, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$OperationType;->OP_REG:Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$OperationType;

    invoke-static {v5}, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;->cancelOperation(Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$OperationType;)V

    .line 38
    new-instance v4, Lcom/alibaba/adi/collie/service/task/RegTask;

    invoke-direct {v4}, Lcom/alibaba/adi/collie/service/task/RegTask;-><init>()V

    .line 39
    .local v4, regTimerTask:Lcom/alibaba/adi/collie/service/task/RegTask;
    invoke-virtual {v4}, Lcom/alibaba/adi/collie/service/task/RegTask;->runDirectly()Z

    move-result v3

    .line 40
    .local v3, isRegistered:Z
    if-nez v3, :cond_0

    .line 41
    const-string v5, "BindTask"

    const-string v6, "bind to ADI failed because of registration failure"

    invoke-static {v5, v6}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 45
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/alibaba/adi/collie/business/adiserver/account/AdiAccountManager;->getsInstance()Lcom/alibaba/adi/collie/business/adiserver/account/AdiAccountManager;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/adi/collie/service/task/BindTask;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/alibaba/adi/collie/service/task/BindTask;->mAccountType:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lcom/alibaba/adi/collie/business/adiserver/account/AdiAccountManager;->bind(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/adi/collie/model/adiserver/AdiAccountResult;
    :try_end_1
    .catch Lcom/alibaba/adi/collie/business/adiserver/AdiNotRegisteredException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/alibaba/adi/collie/business/taobao/login/TaoNotLogedInException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/alibaba/adi/collie/business/weibo/api/WeiboNotLoginException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    .line 46
    :catch_1
    move-exception v2

    .line 47
    .local v2, e1:Lcom/alibaba/adi/collie/business/adiserver/AdiNotRegisteredException;
    invoke-virtual {v2}, Lcom/alibaba/adi/collie/business/adiserver/AdiNotRegisteredException;->printStackTrace()V

    goto :goto_0

    .line 48
    .end local v2           #e1:Lcom/alibaba/adi/collie/business/adiserver/AdiNotRegisteredException;
    :catch_2
    move-exception v2

    .line 49
    .local v2, e1:Lcom/alibaba/adi/collie/business/taobao/login/TaoNotLogedInException;
    invoke-virtual {v2}, Lcom/alibaba/adi/collie/business/taobao/login/TaoNotLogedInException;->printStackTrace()V

    goto :goto_0

    .line 50
    .end local v2           #e1:Lcom/alibaba/adi/collie/business/taobao/login/TaoNotLogedInException;
    :catch_3
    move-exception v2

    .line 51
    .local v2, e1:Lcom/alibaba/adi/collie/business/weibo/api/WeiboNotLoginException;
    invoke-virtual {v2}, Lcom/alibaba/adi/collie/business/weibo/api/WeiboNotLoginException;->printStackTrace()V

    goto :goto_0

    .line 54
    .end local v1           #e:Lcom/alibaba/adi/collie/business/adiserver/AdiNotRegisteredException;
    .end local v2           #e1:Lcom/alibaba/adi/collie/business/weibo/api/WeiboNotLoginException;
    .end local v3           #isRegistered:Z
    .end local v4           #regTimerTask:Lcom/alibaba/adi/collie/service/task/RegTask;
    :catch_4
    move-exception v1

    .line 55
    .local v1, e:Lcom/alibaba/adi/collie/business/taobao/login/TaoNotLogedInException;
    const-string v5, "BindTask"

    const-string v6, "bind to ADI failed, Taobao account not log in"

    invoke-static {v5, v6}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 56
    .end local v1           #e:Lcom/alibaba/adi/collie/business/taobao/login/TaoNotLogedInException;
    :catch_5
    move-exception v1

    .line 57
    .local v1, e:Lcom/alibaba/adi/collie/business/weibo/api/WeiboNotLoginException;
    const-string v5, "BindTask"

    const-string v6, "bind to ADI failed, Weibo account not log in"

    invoke-static {v5, v6}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 58
    .end local v1           #e:Lcom/alibaba/adi/collie/business/weibo/api/WeiboNotLoginException;
    :catch_6
    move-exception v1

    .line 59
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "BindTask"

    const-string v6, "bind to ADI failed"

    invoke-static {v5, v6}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
