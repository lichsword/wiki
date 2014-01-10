.class Lcom/alibaba/adi/collie/business/push/PushManager$LoadValidPushMsgTask;
.super Landroid/os/AsyncTask;
.source "PushManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/adi/collie/business/push/PushManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadValidPushMsgTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Lcom/alibaba/adi/collie/model/push/ValidPushMsg;",
        ">;"
    }
.end annotation


# instance fields
.field private callback:Lcom/alibaba/adi/collie/business/push/IGetMsgCallback;

.field private isRunning:Z

.field final synthetic this$0:Lcom/alibaba/adi/collie/business/push/PushManager;


# direct methods
.method public constructor <init>(Lcom/alibaba/adi/collie/business/push/PushManager;Lcom/alibaba/adi/collie/business/push/IGetMsgCallback;)V
    .locals 1
    .parameter
    .parameter "callback"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/alibaba/adi/collie/business/push/PushManager$LoadValidPushMsgTask;->this$0:Lcom/alibaba/adi/collie/business/push/PushManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/adi/collie/business/push/PushManager$LoadValidPushMsgTask;->callback:Lcom/alibaba/adi/collie/business/push/IGetMsgCallback;

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/adi/collie/business/push/PushManager$LoadValidPushMsgTask;->isRunning:Z

    .line 93
    iput-object p2, p0, Lcom/alibaba/adi/collie/business/push/PushManager$LoadValidPushMsgTask;->callback:Lcom/alibaba/adi/collie/business/push/IGetMsgCallback;

    .line 94
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Lcom/alibaba/adi/collie/model/push/ValidPushMsg;
    .locals 3
    .parameter "objects"

    .prologue
    .line 109
    sget-object v1, Lcom/alibaba/adi/collie/model/push/PushMsg;->TAG:Ljava/lang/String;

    const-string v2, "getValidPushMsgAsync...[running]"

    invoke-static {v1, v2}, Lcom/alibaba/adi/collie/util/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iget-object v1, p0, Lcom/alibaba/adi/collie/business/push/PushManager$LoadValidPushMsgTask;->this$0:Lcom/alibaba/adi/collie/business/push/PushManager;

    #calls: Lcom/alibaba/adi/collie/business/push/PushManager;->getValidPushMsg()Lcom/alibaba/adi/collie/model/push/ValidPushMsg;
    invoke-static {v1}, Lcom/alibaba/adi/collie/business/push/PushManager;->access$0(Lcom/alibaba/adi/collie/business/push/PushManager;)Lcom/alibaba/adi/collie/model/push/ValidPushMsg;

    move-result-object v0

    .line 111
    .local v0, result:Lcom/alibaba/adi/collie/model/push/ValidPushMsg;
    return-object v0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/alibaba/adi/collie/business/push/PushManager$LoadValidPushMsgTask;->doInBackground([Ljava/lang/Object;)Lcom/alibaba/adi/collie/model/push/ValidPushMsg;

    move-result-object v0

    return-object v0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/alibaba/adi/collie/business/push/PushManager$LoadValidPushMsgTask;->isRunning:Z

    return v0
.end method

.method protected onPostExecute(Lcom/alibaba/adi/collie/model/push/ValidPushMsg;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 116
    sget-object v0, Lcom/alibaba/adi/collie/model/push/PushMsg;->TAG:Ljava/lang/String;

    const-string v1, "getValidPushMsgAsync...[end]"

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 118
    if-eqz p1, :cond_0

    .line 119
    iget-object v0, p0, Lcom/alibaba/adi/collie/business/push/PushManager$LoadValidPushMsgTask;->callback:Lcom/alibaba/adi/collie/business/push/IGetMsgCallback;

    invoke-interface {v0, p1}, Lcom/alibaba/adi/collie/business/push/IGetMsgCallback;->onSuccess(Lcom/alibaba/adi/collie/model/push/ValidPushMsg;)V

    .line 123
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/adi/collie/business/push/PushManager$LoadValidPushMsgTask;->isRunning:Z

    .line 124
    return-void

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/alibaba/adi/collie/business/push/PushManager$LoadValidPushMsgTask;->callback:Lcom/alibaba/adi/collie/business/push/IGetMsgCallback;

    const-string v1, "No valid push message."

    invoke-interface {v0, v1}, Lcom/alibaba/adi/collie/business/push/IGetMsgCallback;->onFailed(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/alibaba/adi/collie/model/push/ValidPushMsg;

    invoke-virtual {p0, p1}, Lcom/alibaba/adi/collie/business/push/PushManager$LoadValidPushMsgTask;->onPostExecute(Lcom/alibaba/adi/collie/model/push/ValidPushMsg;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 102
    sget-object v0, Lcom/alibaba/adi/collie/model/push/PushMsg;->TAG:Ljava/lang/String;

    const-string v1, "getValidPushMsgAsync...[start]"

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/adi/collie/business/push/PushManager$LoadValidPushMsgTask;->isRunning:Z

    .line 104
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 105
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/adi/collie/business/push/PushManager$LoadValidPushMsgTask;->callback:Lcom/alibaba/adi/collie/business/push/IGetMsgCallback;

    .line 98
    return-void
.end method
