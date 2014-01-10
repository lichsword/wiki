.class Lcom/etao/kakalib/KakaLibScanController$2;
.super Landroid/os/AsyncTask;
.source "KakaLibScanController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etao/kakalib/KakaLibScanController;->performDecodeDecode(Ljava/lang/String;)V
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

.field private final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/etao/kakalib/KakaLibScanController;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/etao/kakalib/KakaLibScanController$2;->this$0:Lcom/etao/kakalib/KakaLibScanController;

    iput-object p2, p0, Lcom/etao/kakalib/KakaLibScanController$2;->val$path:Ljava/lang/String;

    .line 206
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

    invoke-virtual {p0, p1}, Lcom/etao/kakalib/KakaLibScanController$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Object;
    .locals 8
    .parameter "params"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 210
    const/4 v2, 0x0

    .line 211
    .local v2, result:Ljava/lang/Object;
    new-instance v1, Lcom/etao/kakalib/business/KakaLibImageWrapper;

    iget-object v3, p0, Lcom/etao/kakalib/KakaLibScanController$2;->val$path:Ljava/lang/String;

    invoke-direct {v1, v3}, Lcom/etao/kakalib/business/KakaLibImageWrapper;-><init>(Ljava/lang/String;)V

    .line 213
    .local v1, imageWrapper:Lcom/etao/kakalib/business/KakaLibImageWrapper;
    :try_start_0
    iget-object v3, p0, Lcom/etao/kakalib/KakaLibScanController$2;->this$0:Lcom/etao/kakalib/KakaLibScanController;

    invoke-virtual {v3}, Lcom/etao/kakalib/KakaLibScanController;->getmAlbumDecodeFlow()Lcom/etao/kakalib/business/decodeflow/KakaLibQRCodeFromAlbumDecodeFlow;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/etao/kakalib/business/decodeflow/KakaLibQRCodeFromAlbumDecodeFlow;->decode(Lcom/etao/kakalib/business/KakaLibImageWrapper;)Lcom/etao/kaka/decode/DecodeResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 219
    .end local v2           #result:Ljava/lang/Object;
    :goto_0
    if-nez v2, :cond_0

    .line 220
    new-array v3, v7, [Ljava/lang/Exception;

    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "decode result is null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    aput-object v4, v3, v6

    invoke-virtual {p0, v3}, Lcom/etao/kakalib/KakaLibScanController$2;->publishProgress([Ljava/lang/Object;)V

    .line 222
    :cond_0
    return-object v2

    .line 214
    .restart local v2       #result:Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 215
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "ScanController"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "currentDecodeFlow:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/etao/kakalib/KakaLibScanController$2;->this$0:Lcom/etao/kakalib/KakaLibScanController;

    invoke-virtual {v5}, Lcom/etao/kakalib/KakaLibScanController;->getmAlbumDecodeFlow()Lcom/etao/kakalib/business/decodeflow/KakaLibQRCodeFromAlbumDecodeFlow;

    move-result-object v5

    invoke-virtual {v5}, Lcom/etao/kakalib/business/decodeflow/KakaLibQRCodeFromAlbumDecodeFlow;->getFlowName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 216
    const-string v5, ",decode error:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 215
    invoke-static {v3, v4}, Lcom/etao/kakalib/util/KakaLibLog;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    new-array v3, v7, [Ljava/lang/Exception;

    aput-object v0, v3, v6

    invoke-virtual {p0, v3}, Lcom/etao/kakalib/KakaLibScanController$2;->publishProgress([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 233
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 234
    if-eqz p1, :cond_0

    .line 235
    iget-object v0, p0, Lcom/etao/kakalib/KakaLibScanController$2;->this$0:Lcom/etao/kakalib/KakaLibScanController;

    iget-object v1, p0, Lcom/etao/kakalib/KakaLibScanController$2;->this$0:Lcom/etao/kakalib/KakaLibScanController;

    invoke-virtual {v1}, Lcom/etao/kakalib/KakaLibScanController;->getmAlbumDecodeFlow()Lcom/etao/kakalib/business/decodeflow/KakaLibQRCodeFromAlbumDecodeFlow;

    move-result-object v1

    #calls: Lcom/etao/kakalib/KakaLibScanController;->handleDecodeSuccess(Landroid/os/AsyncTask;Lcom/etao/kakalib/business/decodeflow/KakaLibAbsDecodeFlow;Ljava/lang/Object;)V
    invoke-static {v0, p0, v1, p1}, Lcom/etao/kakalib/KakaLibScanController;->access$1(Lcom/etao/kakalib/KakaLibScanController;Landroid/os/AsyncTask;Lcom/etao/kakalib/business/decodeflow/KakaLibAbsDecodeFlow;Ljava/lang/Object;)V

    .line 237
    :cond_0
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Exception;)V
    .locals 2
    .parameter "values"

    .prologue
    .line 227
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 228
    iget-object v0, p0, Lcom/etao/kakalib/KakaLibScanController$2;->this$0:Lcom/etao/kakalib/KakaLibScanController;

    iget-object v1, p0, Lcom/etao/kakalib/KakaLibScanController$2;->this$0:Lcom/etao/kakalib/KakaLibScanController;

    invoke-virtual {v1}, Lcom/etao/kakalib/KakaLibScanController;->getmAlbumDecodeFlow()Lcom/etao/kakalib/business/decodeflow/KakaLibQRCodeFromAlbumDecodeFlow;

    move-result-object v1

    #calls: Lcom/etao/kakalib/KakaLibScanController;->handleDecodeFailed(Landroid/os/AsyncTask;Lcom/etao/kakalib/business/decodeflow/KakaLibAbsDecodeFlow;[Ljava/lang/Exception;)V
    invoke-static {v0, p0, v1, p1}, Lcom/etao/kakalib/KakaLibScanController;->access$0(Lcom/etao/kakalib/KakaLibScanController;Landroid/os/AsyncTask;Lcom/etao/kakalib/business/decodeflow/KakaLibAbsDecodeFlow;[Ljava/lang/Exception;)V

    .line 229
    return-void
.end method

.method protected bridge varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Exception;

    invoke-virtual {p0, p1}, Lcom/etao/kakalib/KakaLibScanController$2;->onProgressUpdate([Ljava/lang/Exception;)V

    return-void
.end method
