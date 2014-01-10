.class Lcom/alibaba/adi/collie/business/taobao/login/sso/SsoLoginAdapter$1;
.super Ljava/lang/Object;
.source "SsoLoginAdapter.java"

# interfaces
.implements Lcom/taobao/android/ssologin/net/TSDKParam;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/adi/collie/business/taobao/login/sso/SsoLoginAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/adi/collie/business/taobao/login/sso/SsoLoginAdapter;


# direct methods
.method constructor <init>(Lcom/alibaba/adi/collie/business/taobao/login/sso/SsoLoginAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alibaba/adi/collie/business/taobao/login/sso/SsoLoginAdapter$1;->this$0:Lcom/alibaba/adi/collie/business/taobao/login/sso/SsoLoginAdapter;

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDeviceId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 150
    invoke-static {}, Landroid/taobao/deviceid/DeviceIDManager;->getInstance()Landroid/taobao/deviceid/DeviceIDManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/adi/collie/business/taobao/login/sso/SsoLoginAdapter$1;->this$0:Lcom/alibaba/adi/collie/business/taobao/login/sso/SsoLoginAdapter;

    #getter for: Lcom/alibaba/adi/collie/business/taobao/login/sso/SsoLoginAdapter;->mBaseContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/alibaba/adi/collie/business/taobao/login/sso/SsoLoginAdapter;->access$0(Lcom/alibaba/adi/collie/business/taobao/login/sso/SsoLoginAdapter;)Landroid/content/Context;

    move-result-object v1

    .line 151
    invoke-static {}, Landroid/taobao/common/SDKConfig;->getInstance()Landroid/taobao/common/SDKConfig;

    move-result-object v2

    invoke-virtual {v2}, Landroid/taobao/common/SDKConfig;->getGlobalAppkey()Ljava/lang/String;

    move-result-object v2

    .line 150
    invoke-virtual {v0, v1, v2}, Landroid/taobao/deviceid/DeviceIDManager;->getLocalDeviceID(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServiceTime()Ljava/lang/String;
    .locals 4

    .prologue
    .line 145
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTopToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "s"
    .parameter "s2"

    .prologue
    .line 156
    const-string v0, ""

    return-object v0
.end method
