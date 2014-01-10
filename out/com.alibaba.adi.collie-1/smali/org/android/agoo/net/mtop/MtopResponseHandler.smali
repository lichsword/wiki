.class public abstract Lorg/android/agoo/net/mtop/MtopResponseHandler;
.super Lorg/android/agoo/net/async/AsyncHttpResponseHandler;
.source "MtopResponseHandler.java"


# static fields
.field public static final ERROR_SERVICE_NOT_AVAILABLE:Ljava/lang/String; = "ERROR_SERVICE_NOT_AVAILABLE"

.field public static final FAIL:Ljava/lang/String; = "FAIL"

.field public static final SUCCESS:Ljava/lang/String; = "SUCCESS"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lorg/android/agoo/net/async/AsyncHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method protected handleSuccessMessage(Ljava/lang/String;)V
    .locals 4
    .parameter "responseBody"

    .prologue
    .line 21
    :try_start_0
    invoke-static {p1}, Lorg/android/agoo/net/mtop/MtopResponseHelper;->parse(Ljava/lang/String;)Lorg/android/agoo/net/mtop/Result;

    move-result-object v1

    .line 22
    .local v1, result:Lorg/android/agoo/net/mtop/Result;
    invoke-virtual {v1}, Lorg/android/agoo/net/mtop/Result;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 23
    invoke-virtual {v1}, Lorg/android/agoo/net/mtop/Result;->getData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/android/agoo/net/mtop/MtopResponseHandler;->onSuccess(Ljava/lang/String;)V

    .line 31
    .end local v1           #result:Lorg/android/agoo/net/mtop/Result;
    :goto_0
    return-void

    .line 25
    .restart local v1       #result:Lorg/android/agoo/net/mtop/Result;
    :cond_0
    invoke-virtual {v1}, Lorg/android/agoo/net/mtop/Result;->getRetCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lorg/android/agoo/net/mtop/Result;->getRetDesc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lorg/android/agoo/net/mtop/MtopResponseHandler;->onFailure(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 27
    .end local v1           #result:Lorg/android/agoo/net/mtop/Result;
    :catch_0
    move-exception v0

    .line 28
    .local v0, e:Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 29
    invoke-virtual {p0, v0, p1}, Lorg/android/agoo/net/mtop/MtopResponseHandler;->onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onFailure(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "errCode"
    .parameter "errDesc"

    .prologue
    .line 34
    return-void
.end method

.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 1
    .parameter "error"
    .parameter "content"

    .prologue
    .line 38
    const-string v0, "ERROR_SERVICE_NOT_AVAILABLE"

    invoke-virtual {p0, v0, p2}, Lorg/android/agoo/net/mtop/MtopResponseHandler;->onFailure(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    return-void
.end method
