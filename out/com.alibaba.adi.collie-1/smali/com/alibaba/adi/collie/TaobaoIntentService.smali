.class public Lcom/alibaba/adi/collie/TaobaoIntentService;
.super Lcom/taobao/agoo/TaobaoNotificationBaseIntentService;
.source "TaobaoIntentService.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/alibaba/adi/collie/TaobaoIntentService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/adi/collie/TaobaoIntentService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/taobao/agoo/TaobaoNotificationBaseIntentService;-><init>()V

    return-void
.end method

.method private handleMessage(Ljava/lang/String;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 65
    invoke-static {}, Lcom/alibaba/adi/collie/business/push/PushManager;->getInstance()Lcom/alibaba/adi/collie/business/push/PushManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/alibaba/adi/collie/business/push/PushManager;->insertMsgAsync(Ljava/lang/String;Lcom/alibaba/adi/collie/business/push/IDelInsCallback;)V

    .line 66
    return-void
.end method


# virtual methods
.method protected onError(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "s"

    .prologue
    .line 37
    sget-object v0, Lcom/alibaba/adi/collie/model/push/PushMsg;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[lichsword]agoo err "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method protected onRegistered(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "s"

    .prologue
    .line 42
    sget-object v0, Lcom/alibaba/adi/collie/model/push/PushMsg;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[lichsword]agoo registered "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    sget-object v0, Lcom/alibaba/adi/collie/model/push/PushMsg;->TAG:Ljava/lang/String;

    const-string v1, "========[Agoo state info--end]========="

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method protected onUnregistered(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "s"

    .prologue
    .line 48
    sget-object v0, Lcom/alibaba/adi/collie/model/push/PushMsg;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[lichsword]agoo unRegistered "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method protected onUserMessage(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 53
    if-nez p2, :cond_0

    .line 54
    sget-object v2, Lcom/alibaba/adi/collie/model/push/PushMsg;->TAG:Ljava/lang/String;

    const-string v3, "[lichsword]intent is null"

    invoke-static {v2, v3}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    :goto_0
    return-void

    .line 57
    :cond_0
    const-string v2, "body"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 58
    .local v1, msg:Ljava/lang/String;
    const-string v2, "message_source"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, channel:Ljava/lang/String;
    sget-object v2, Lcom/alibaba/adi/collie/model/push/PushMsg;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[lichsword]msg : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    sget-object v2, Lcom/alibaba/adi/collie/model/push/PushMsg;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[lichsword]channel : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-direct {p0, v1}, Lcom/alibaba/adi/collie/TaobaoIntentService;->handleMessage(Ljava/lang/String;)V

    goto :goto_0
.end method
