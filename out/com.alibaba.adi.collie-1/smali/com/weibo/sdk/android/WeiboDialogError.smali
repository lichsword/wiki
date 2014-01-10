.class public Lcom/weibo/sdk/android/WeiboDialogError;
.super Ljava/lang/Throwable;
.source "WeiboDialogError.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mErrorCode:I

.field private mFailingUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter "message"
    .parameter "errorCode"
    .parameter "failingUrl"

    .prologue
    .line 16
    invoke-direct {p0, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 17
    iput p2, p0, Lcom/weibo/sdk/android/WeiboDialogError;->mErrorCode:I

    .line 18
    iput-object p3, p0, Lcom/weibo/sdk/android/WeiboDialogError;->mFailingUrl:Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method getErrorCode()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/weibo/sdk/android/WeiboDialogError;->mErrorCode:I

    return v0
.end method

.method getFailingUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/weibo/sdk/android/WeiboDialogError;->mFailingUrl:Ljava/lang/String;

    return-object v0
.end method
