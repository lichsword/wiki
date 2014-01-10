.class public Lcom/etao/kakalib/api/KakaLibMTopRequestException;
.super Ljava/lang/Exception;
.source "KakaLibMTopRequestException.java"


# static fields
.field private static final serialVersionUID:J = -0x1d6cbd6808d2c61bL


# instance fields
.field private errorCode:Ljava/lang/String;

.field private errorInfo:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "errorCode"
    .parameter "errorInfo"

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/etao/kakalib/api/KakaLibMTopRequestException;->errorCode:Ljava/lang/String;

    .line 13
    iput-object p2, p0, Lcom/etao/kakalib/api/KakaLibMTopRequestException;->errorInfo:Ljava/lang/String;

    .line 14
    return-void
.end method


# virtual methods
.method public getErrorCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/etao/kakalib/api/KakaLibMTopRequestException;->errorCode:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/etao/kakalib/api/KakaLibMTopRequestException;->errorInfo:Ljava/lang/String;

    return-object v0
.end method

.method public setErrorCode(Ljava/lang/String;)V
    .locals 0
    .parameter "errorCode"

    .prologue
    .line 21
    iput-object p1, p0, Lcom/etao/kakalib/api/KakaLibMTopRequestException;->errorCode:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public setErrorInfo(Ljava/lang/String;)V
    .locals 0
    .parameter "errorInfo"

    .prologue
    .line 29
    iput-object p1, p0, Lcom/etao/kakalib/api/KakaLibMTopRequestException;->errorInfo:Ljava/lang/String;

    .line 30
    return-void
.end method
