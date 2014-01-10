.class Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$2;
.super Ljava/lang/Object;
.source "TaoLoginManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager;->fetechSsoSharedUserName()Ljava/util/concurrent/Future;
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
    iput-object p1, p0, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$2;->this$0:Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager;

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 127
    iget-object v1, p0, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$2;->this$0:Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager;

    #getter for: Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager;->mSsoLoginAdapter:Lcom/alibaba/adi/collie/business/taobao/login/sso/SsoLoginAdapter;
    invoke-static {v1}, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager;->access$0(Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager;)Lcom/alibaba/adi/collie/business/taobao/login/sso/SsoLoginAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/business/taobao/login/sso/SsoLoginAdapter;->getLoginUserName()Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, userName:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 129
    invoke-static {v0}, Lcom/alibaba/adi/collie/business/taobao/login/TaoAccountPersistence;->saveSsoSharedUserName(Ljava/lang/String;)V

    .line 131
    :cond_0
    return-void
.end method
