.class Lcom/etao/kakalib/KakaLibScanController$1;
.super Landroid/os/AsyncTask;
.source "KakaLibScanController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etao/kakalib/KakaLibScanController;->performDecodeDecode(Lcom/etao/kakalib/business/KakaLibImageWrapper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Exception;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/etao/kakalib/KakaLibScanController;

.field private final synthetic val$imageWrapper:Lcom/etao/kakalib/business/KakaLibImageWrapper;


# direct methods
.method constructor <init>(Lcom/etao/kakalib/KakaLibScanController;Lcom/etao/kakalib/business/KakaLibImageWrapper;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/etao/kakalib/KakaLibScanController$1;->this$0:Lcom/etao/kakalib/KakaLibScanController;

    iput-object p2, p0, Lcom/etao/kakalib/KakaLibScanController$1;->val$imageWrapper:Lcom/etao/kakalib/business/KakaLibImageWrapper;

    .line 154
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/etao/kakalib/KakaLibScanController$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Object;
    .locals 7
    .parameter "params"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 158
    const/4 v1, 0x0

    .line 160
    .local v1, result:Ljava/lang/Object;
    :try_start_0
    iget-object v2, p0, Lcom/etao/kakalib/KakaLibScanController$1;->this$0:Lcom/etao/kakalib/KakaLibScanController;

    invoke-virtual {v2}, Lcom/etao/kakalib/KakaLibScanController;->getCurrentPreviewDecodeFlow()Lcom/etao/kakalib/business/decodeflow/KakaLibAbsDecodeFlow;

    move-result-object v2

    iget-object v3, p0, Lcom/etao/kakalib/KakaLibScanController$1;->val$imageWrapper:Lcom/etao/kakalib/business/KakaLibImageWrapper;

    invoke-virtual {v2, v3}, Lcom/etao/kakalib/business/decodeflow/KakaLibAbsDecodeFlow;->decode(Lcom/etao/kakalib/business/KakaLibImageWrapper;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 167
    .end local v1           #result:Ljava/lang/Object;
    :goto_0
    if-nez v1, :cond_0

    .line 168
    new-array v2, v6, [Ljava/lang/Exception;

    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "decode result is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    invoke-virtual {p0, v2}, Lcom/etao/kakalib/KakaLibScanController$1;->publishProgress([Ljava/lang/Object;)V

    .line 170
    :cond_0
    return-object v1

    .line 161
    .restart local v1       #result:Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 162
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "ScanController"

    .line 163
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "currentDecodeFlow:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/etao/kakalib/KakaLibScanController$1;->this$0:Lcom/etao/kakalib/KakaLibScanController;

    invoke-virtual {v4}, Lcom/etao/kakalib/KakaLibScanController;->getCurrentPreviewDecodeFlow()Lcom/etao/kakalib/business/decodeflow/KakaLibAbsDecodeFlow;

    move-result-object v4

    invoke-virtual {v4}, Lcom/etao/kakalib/business/decodeflow/KakaLibAbsDecodeFlow;->getFlowName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 164
    const-string v4, ",decode error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 163
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 162
    invoke-static {v2, v3}, Lcom/etao/kakalib/util/KakaLibLog;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    new-array v2, v6, [Ljava/lang/Exception;

    aput-object v0, v2, v5

    invoke-virtual {p0, v2}, Lcom/etao/kakalib/KakaLibScanController$1;->publishProgress([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 181
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 182
    if-eqz p1, :cond_0

    .line 183
    iget-object v0, p0, Lcom/etao/kakalib/KakaLibScanController$1;->this$0:Lcom/etao/kakalib/KakaLibScanController;

    iget-object v1, p0, Lcom/etao/kakalib/KakaLibScanController$1;->this$0:Lcom/etao/kakalib/KakaLibScanController;

    invoke-virtual {v1}, Lcom/etao/kakalib/KakaLibScanController;->getCurrentPreviewDecodeFlow()Lcom/etao/kakalib/business/decodeflow/KakaLibAbsDecodeFlow;

    move-result-object v1

    #calls: Lcom/etao/kakalib/KakaLibScanController;->handleDecodeSuccess(Landroid/os/AsyncTask;Lcom/etao/kakalib/business/decodeflow/KakaLibAbsDecodeFlow;Ljava/lang/Object;)V
    invoke-static {v0, p0, v1, p1}, Lcom/etao/kakalib/KakaLibScanController;->access$1(Lcom/etao/kakalib/KakaLibScanController;Landroid/os/AsyncTask;Lcom/etao/kakalib/business/decodeflow/KakaLibAbsDecodeFlow;Ljava/lang/Object;)V

    .line 185
    :cond_0
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Exception;)V
    .locals 2
    .parameter "values"

    .prologue
    .line 175
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 176
    iget-object v0, p0, Lcom/etao/kakalib/KakaLibScanController$1;->this$0:Lcom/etao/kakalib/KakaLibScanController;

    iget-object v1, p0, Lcom/etao/kakalib/KakaLibScanController$1;->this$0:Lcom/etao/kakalib/KakaLibScanController;

    invoke-virtual {v1}, Lcom/etao/kakalib/KakaLibScanController;->getCurrentPreviewDecodeFlow()Lcom/etao/kakalib/business/decodeflow/KakaLibAbsDecodeFlow;

    move-result-object v1

    #calls: Lcom/etao/kakalib/KakaLibScanController;->handleDecodeFailed(Landroid/os/AsyncTask;Lcom/etao/kakalib/business/decodeflow/KakaLibAbsDecodeFlow;[Ljava/lang/Exception;)V
    invoke-static {v0, p0, v1, p1}, Lcom/etao/kakalib/KakaLibScanController;->access$0(Lcom/etao/kakalib/KakaLibScanController;Landroid/os/AsyncTask;Lcom/etao/kakalib/business/decodeflow/KakaLibAbsDecodeFlow;[Ljava/lang/Exception;)V

    .line 177
    return-void
.end method

.method protected bridge varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Exception;

    invoke-virtual {p0, p1}, Lcom/etao/kakalib/KakaLibScanController$1;->onProgressUpdate([Ljava/lang/Exception;)V

    return-void
.end method
