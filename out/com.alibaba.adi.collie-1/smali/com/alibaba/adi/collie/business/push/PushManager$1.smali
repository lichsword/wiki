.class Lcom/alibaba/adi/collie/business/push/PushManager$1;
.super Ljava/lang/Object;
.source "PushManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/adi/collie/business/push/PushManager;->doInsertMsgAsync(Lcom/alibaba/adi/collie/model/push/PushMsg;Lcom/alibaba/adi/collie/business/push/IDelInsCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/adi/collie/business/push/PushManager;

.field private final synthetic val$insertCallback:Lcom/alibaba/adi/collie/business/push/IDelInsCallback;

.field private final synthetic val$msg:Lcom/alibaba/adi/collie/model/push/PushMsg;


# direct methods
.method constructor <init>(Lcom/alibaba/adi/collie/business/push/PushManager;Lcom/alibaba/adi/collie/model/push/PushMsg;Lcom/alibaba/adi/collie/business/push/IDelInsCallback;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alibaba/adi/collie/business/push/PushManager$1;->this$0:Lcom/alibaba/adi/collie/business/push/PushManager;

    iput-object p2, p0, Lcom/alibaba/adi/collie/business/push/PushManager$1;->val$msg:Lcom/alibaba/adi/collie/model/push/PushMsg;

    iput-object p3, p0, Lcom/alibaba/adi/collie/business/push/PushManager$1;->val$insertCallback:Lcom/alibaba/adi/collie/business/push/IDelInsCallback;

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 136
    sget-object v1, Lcom/alibaba/adi/collie/model/push/PushMsg;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[insert] msg thread run "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alibaba/adi/collie/business/push/PushManager$1;->val$msg:Lcom/alibaba/adi/collie/model/push/PushMsg;

    invoke-virtual {v3}, Lcom/alibaba/adi/collie/model/push/PushMsg;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    iget-object v1, p0, Lcom/alibaba/adi/collie/business/push/PushManager$1;->this$0:Lcom/alibaba/adi/collie/business/push/PushManager;

    iget-object v2, p0, Lcom/alibaba/adi/collie/business/push/PushManager$1;->val$msg:Lcom/alibaba/adi/collie/model/push/PushMsg;

    #calls: Lcom/alibaba/adi/collie/business/push/PushManager;->insertMsg(Lcom/alibaba/adi/collie/model/push/PushMsg;)Z
    invoke-static {v1, v2}, Lcom/alibaba/adi/collie/business/push/PushManager;->access$1(Lcom/alibaba/adi/collie/business/push/PushManager;Lcom/alibaba/adi/collie/model/push/PushMsg;)Z

    move-result v0

    .line 138
    .local v0, ret:Z
    iget-object v1, p0, Lcom/alibaba/adi/collie/business/push/PushManager$1;->val$insertCallback:Lcom/alibaba/adi/collie/business/push/IDelInsCallback;

    if-nez v1, :cond_0

    .line 146
    :goto_0
    return-void

    .line 141
    :cond_0
    if-eqz v0, :cond_1

    .line 142
    iget-object v1, p0, Lcom/alibaba/adi/collie/business/push/PushManager$1;->val$insertCallback:Lcom/alibaba/adi/collie/business/push/IDelInsCallback;

    invoke-interface {v1}, Lcom/alibaba/adi/collie/business/push/IDelInsCallback;->onSuccess()V

    goto :goto_0

    .line 144
    :cond_1
    iget-object v1, p0, Lcom/alibaba/adi/collie/business/push/PushManager$1;->val$insertCallback:Lcom/alibaba/adi/collie/business/push/IDelInsCallback;

    invoke-interface {v1}, Lcom/alibaba/adi/collie/business/push/IDelInsCallback;->onError()V

    goto :goto_0
.end method
