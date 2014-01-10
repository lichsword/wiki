.class Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$1;
.super Ljava/lang/Object;
.source "TaoLoginManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager;->regSsoListener()Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager;


# direct methods
.method constructor <init>(Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$1;->this$0:Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 86
    iget-object v1, p0, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$1;->this$0:Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager;

    #getter for: Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager;->mSsoLoginAdapter:Lcom/alibaba/adi/collie/business/taobao/login/sso/SsoLoginAdapter;
    invoke-static {v1}, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager;->access$0(Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager;)Lcom/alibaba/adi/collie/business/taobao/login/sso/SsoLoginAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/business/taobao/login/sso/SsoLoginAdapter;->getmSsoLogin()Lcom/taobao/android/ssologin/SsoLogin;

    move-result-object v1

    if-nez v1, :cond_0

    .line 87
    iget-object v1, p0, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$1;->this$0:Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager;

    #getter for: Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager;->mSsoLoginAdapter:Lcom/alibaba/adi/collie/business/taobao/login/sso/SsoLoginAdapter;
    invoke-static {v1}, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager;->access$0(Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager;)Lcom/alibaba/adi/collie/business/taobao/login/sso/SsoLoginAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/business/taobao/login/sso/SsoLoginAdapter;->initSsoLogin()V

    .line 89
    :cond_0
    iget-object v1, p0, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$1;->this$0:Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager;

    #getter for: Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager;->mSsoLoginAdapter:Lcom/alibaba/adi/collie/business/taobao/login/sso/SsoLoginAdapter;
    invoke-static {v1}, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager;->access$0(Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager;)Lcom/alibaba/adi/collie/business/taobao/login/sso/SsoLoginAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/business/taobao/login/sso/SsoLoginAdapter;->getmSsoLogin()Lcom/taobao/android/ssologin/SsoLogin;

    move-result-object v0

    .line 90
    .local v0, ssoLogin:Lcom/taobao/android/ssologin/SsoLogin;
    if-eqz v0, :cond_1

    .line 91
    iget-object v1, p0, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$1;->this$0:Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager;

    invoke-virtual {v0, v1}, Lcom/taobao/android/ssologin/SsoLogin;->regSsoStateListener(Lcom/taobao/android/ssologin/SsoStatesChangedListener;)V

    .line 95
    :goto_0
    return-void

    .line 93
    :cond_1
    const-string v1, "TaoLoginManager"

    const-string v2, "failed to initialize SsoLogin through initSsoLogin()"

    invoke-static {v1, v2}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
