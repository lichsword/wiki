.class Lcom/alibaba/adi/collie/business/push/PushManager$2;
.super Ljava/lang/Object;
.source "PushManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/adi/collie/business/push/PushManager;->deleteMsgAsync(Lcom/alibaba/adi/collie/model/push/PushMsg;Lcom/alibaba/adi/collie/business/push/IDelInsCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/adi/collie/business/push/PushManager;

.field private final synthetic val$deleteCallback:Lcom/alibaba/adi/collie/business/push/IDelInsCallback;

.field private final synthetic val$id:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/adi/collie/business/push/PushManager;Ljava/lang/String;Lcom/alibaba/adi/collie/business/push/IDelInsCallback;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alibaba/adi/collie/business/push/PushManager$2;->this$0:Lcom/alibaba/adi/collie/business/push/PushManager;

    iput-object p2, p0, Lcom/alibaba/adi/collie/business/push/PushManager$2;->val$id:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/adi/collie/business/push/PushManager$2;->val$deleteCallback:Lcom/alibaba/adi/collie/business/push/IDelInsCallback;

    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 269
    sget-object v1, Lcom/alibaba/adi/collie/model/push/PushMsg;->TAG:Ljava/lang/String;

    const-string v2, "[delete] delete thread run"

    invoke-static {v1, v2}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    iget-object v1, p0, Lcom/alibaba/adi/collie/business/push/PushManager$2;->this$0:Lcom/alibaba/adi/collie/business/push/PushManager;

    iget-object v2, p0, Lcom/alibaba/adi/collie/business/push/PushManager$2;->val$id:Ljava/lang/String;

    #calls: Lcom/alibaba/adi/collie/business/push/PushManager;->deleteMsg(Ljava/lang/String;)Z
    invoke-static {v1, v2}, Lcom/alibaba/adi/collie/business/push/PushManager;->access$2(Lcom/alibaba/adi/collie/business/push/PushManager;Ljava/lang/String;)Z

    move-result v0

    .line 271
    .local v0, ret:Z
    iget-object v1, p0, Lcom/alibaba/adi/collie/business/push/PushManager$2;->val$deleteCallback:Lcom/alibaba/adi/collie/business/push/IDelInsCallback;

    if-nez v1, :cond_0

    .line 279
    :goto_0
    return-void

    .line 274
    :cond_0
    if-eqz v0, :cond_1

    .line 275
    iget-object v1, p0, Lcom/alibaba/adi/collie/business/push/PushManager$2;->val$deleteCallback:Lcom/alibaba/adi/collie/business/push/IDelInsCallback;

    invoke-interface {v1}, Lcom/alibaba/adi/collie/business/push/IDelInsCallback;->onSuccess()V

    goto :goto_0

    .line 277
    :cond_1
    iget-object v1, p0, Lcom/alibaba/adi/collie/business/push/PushManager$2;->val$deleteCallback:Lcom/alibaba/adi/collie/business/push/IDelInsCallback;

    invoke-interface {v1}, Lcom/alibaba/adi/collie/business/push/IDelInsCallback;->onError()V

    goto :goto_0
.end method
