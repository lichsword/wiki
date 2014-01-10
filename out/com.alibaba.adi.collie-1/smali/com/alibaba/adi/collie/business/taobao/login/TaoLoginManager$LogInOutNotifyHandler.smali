.class public abstract Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$LogInOutNotifyHandler;
.super Landroid/os/Handler;
.source "TaoLoginManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "LogInOutNotifyHandler"
.end annotation


# static fields
.field public static final WHAT_ADI_BINDED:I = 0x65

.field public static final WHAT_ADI_BIND_FAILED:I = 0x66

.field public static final WHAT_ADI_UNBINDED:I = 0x6f

.field public static final WHAT_ADI_UNBIND_FAILED:I = 0x70

.field public static final WHAT_LOGIN_DOWNGRADE:I = 0x2

.field public static final WHAT_LOGIN_FAIL:I = -0x1

.field public static final WHAT_LOGIN_SUCC:I = 0x1

.field public static final WHAT_LOGIN_WITH_CHECKCODE:I = 0x3

.field public static final WHAT_LOGOUT_FAIL:I = -0xb

.field public static final WHAT_LOGOUT_SUCC:I = 0xb


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 358
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 374
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    .line 413
    :goto_0
    return-void

    .line 376
    :sswitch_0
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;

    .line 377
    .local v3, result:Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;
    invoke-virtual {p0, v3}, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$LogInOutNotifyHandler;->onLoginSucceeded(Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;)V

    goto :goto_0

    .line 380
    .end local v3           #result:Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;
    :sswitch_1
    const/4 v2, 0x0

    .line 381
    .local v2, errMsg:Ljava/lang/String;
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v4, :cond_0

    .line 382
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v2           #errMsg:Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 384
    .restart local v2       #errMsg:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, v2}, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$LogInOutNotifyHandler;->onLoginFailed(Ljava/lang/String;)V

    goto :goto_0

    .line 387
    .end local v2           #errMsg:Ljava/lang/String;
    :sswitch_2
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$LogInOutNotifyHandler;->onLoginDowngrade()V

    goto :goto_0

    .line 390
    :sswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/alibaba/adi/collie/model/taobao/TaoCheckCode;

    .line 391
    .local v0, checkCode:Lcom/alibaba/adi/collie/model/taobao/TaoCheckCode;
    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$LogInOutNotifyHandler;->onLoginWithCheckCode(Lcom/alibaba/adi/collie/model/taobao/TaoCheckCode;)V

    goto :goto_0

    .line 394
    .end local v0           #checkCode:Lcom/alibaba/adi/collie/model/taobao/TaoCheckCode;
    :sswitch_4
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 395
    .local v1, err:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$LogInOutNotifyHandler;->onLogoutFailed(Ljava/lang/String;)V

    goto :goto_0

    .line 398
    .end local v1           #err:Ljava/lang/String;
    :sswitch_5
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$LogInOutNotifyHandler;->onLogoutSucceeded()V

    goto :goto_0

    .line 401
    :sswitch_6
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$LogInOutNotifyHandler;->onAdiBinded()V

    goto :goto_0

    .line 404
    :sswitch_7
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$LogInOutNotifyHandler;->onAdiBindFailed()V

    goto :goto_0

    .line 407
    :sswitch_8
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$LogInOutNotifyHandler;->onAdiUnbindFailed()V

    goto :goto_0

    .line 410
    :sswitch_9
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$LogInOutNotifyHandler;->onAdiUnbinded()V

    goto :goto_0

    .line 374
    nop

    :sswitch_data_0
    .sparse-switch
        -0xb -> :sswitch_4
        -0x1 -> :sswitch_1
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0xb -> :sswitch_5
        0x65 -> :sswitch_6
        0x66 -> :sswitch_7
        0x6f -> :sswitch_9
        0x70 -> :sswitch_8
    .end sparse-switch
.end method

.method protected abstract onAdiBindFailed()V
.end method

.method protected abstract onAdiBinded()V
.end method

.method protected abstract onAdiUnbindFailed()V
.end method

.method protected abstract onAdiUnbinded()V
.end method

.method protected abstract onLoginDowngrade()V
.end method

.method protected abstract onLoginFailed(Ljava/lang/String;)V
.end method

.method protected abstract onLoginSucceeded(Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;)V
.end method

.method protected abstract onLoginWithCheckCode(Lcom/alibaba/adi/collie/model/taobao/TaoCheckCode;)V
.end method

.method protected abstract onLogoutFailed(Ljava/lang/String;)V
.end method

.method protected abstract onLogoutSucceeded()V
.end method
