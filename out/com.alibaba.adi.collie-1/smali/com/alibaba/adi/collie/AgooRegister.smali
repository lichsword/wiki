.class public Lcom/alibaba/adi/collie/AgooRegister;
.super Ljava/lang/Object;
.source "AgooRegister.java"


# static fields
.field public static final TAG:Ljava/lang/String;

.field private static appKey:Ljava/lang/String;

.field private static appSecret:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/alibaba/adi/collie/AgooRegister;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/adi/collie/AgooRegister;->TAG:Ljava/lang/String;

    .line 23
    const-string v0, "21579970"

    sput-object v0, Lcom/alibaba/adi/collie/AgooRegister;->appKey:Ljava/lang/String;

    .line 24
    const-string v0, "ea09b68a69334390a4068421936e896f"

    sput-object v0, Lcom/alibaba/adi/collie/AgooRegister;->appSecret:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static register(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    .line 34
    const/4 v0, 0x1

    .line 35
    .local v0, debug:Z
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/android/agoo/client/AgooSettings;->setLog(Landroid/content/Context;ZZ)V

    .line 36
    sget-object v1, Lcom/alibaba/adi/collie/model/push/PushMsg;->TAG:Ljava/lang/String;

    const-string v2, "========[Agoo state info--start]========="

    invoke-static {v1, v2}, Lcom/alibaba/adi/collie/util/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    sget-object v1, Lcom/alibaba/adi/collie/model/push/PushMsg;->TAG:Ljava/lang/String;

    const-string v2, "[AgooSettings] Online mode"

    invoke-static {v1, v2}, Lcom/alibaba/adi/collie/util/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    sget-object v1, Lorg/android/agoo/client/AgooSettings$Mode;->TAOBAO:Lorg/android/agoo/client/AgooSettings$Mode;

    invoke-static {p0, v1}, Lorg/android/agoo/client/AgooSettings;->setAgooMode(Landroid/content/Context;Lorg/android/agoo/client/AgooSettings$Mode;)V

    .line 41
    const v1, 0x7f02007f

    invoke-static {p0, v1}, Lcom/taobao/agoo/TaobaoRegister;->setNotificationIcon(Landroid/content/Context;I)V

    .line 42
    invoke-static {p0, v3}, Lcom/taobao/agoo/TaobaoRegister;->setNotificationSound(Landroid/content/Context;Z)V

    .line 43
    invoke-static {p0, v3}, Lcom/taobao/agoo/TaobaoRegister;->setNotificationVibrate(Landroid/content/Context;Z)V

    .line 45
    invoke-static {p0}, Lcom/taobao/agoo/TaobaoRegister;->isRegistered(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 46
    sget-object v1, Lcom/alibaba/adi/collie/model/push/PushMsg;->TAG:Ljava/lang/String;

    const-string v2, "Not registed."

    invoke-static {v1, v2}, Lcom/alibaba/adi/collie/util/LogHelper;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    sget-object v1, Lcom/alibaba/adi/collie/AgooRegister;->appKey:Ljava/lang/String;

    sget-object v2, Lcom/alibaba/adi/collie/AgooRegister;->appSecret:Ljava/lang/String;

    sget-object v3, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    invoke-virtual {v3}, Lcom/alibaba/adi/collie/CoreApplication;->getGlobalTTID()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v1, v2, v3}, Lcom/taobao/agoo/TaobaoRegister;->register(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    :goto_0
    return-void

    .line 54
    :cond_0
    sget-object v1, Lcom/alibaba/adi/collie/model/push/PushMsg;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[lichsword]has registed, deviceId=\n"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/taobao/agoo/TaobaoRegister;->getRegistrationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/adi/collie/util/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    sget-object v1, Lcom/alibaba/adi/collie/model/push/PushMsg;->TAG:Ljava/lang/String;

    const-string v2, "========[Agoo state info--end]========="

    invoke-static {v1, v2}, Lcom/alibaba/adi/collie/util/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static unRegister(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 60
    invoke-static {p0}, Lcom/taobao/agoo/TaobaoRegister;->unregister(Landroid/content/Context;)V

    .line 61
    return-void
.end method
