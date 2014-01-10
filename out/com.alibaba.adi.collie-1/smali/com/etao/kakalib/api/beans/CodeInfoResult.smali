.class public Lcom/etao/kakalib/api/beans/CodeInfoResult;
.super Ljava/lang/Object;
.source "CodeInfoResult.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x12eba3b66aaf71b3L


# instance fields
.field private barcode:Ljava/lang/String;

.field private dataSource:Ljava/lang/String;

.field private epid:Ljava/lang/String;

.field private keyword:Ljava/lang/String;

.field private resultCode:Ljava/lang/String;

.field private resultMessage:Ljava/lang/String;

.field private success:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBarcode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/CodeInfoResult;->barcode:Ljava/lang/String;

    return-object v0
.end method

.method public getDataSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/CodeInfoResult;->dataSource:Ljava/lang/String;

    return-object v0
.end method

.method public getEpid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/CodeInfoResult;->epid:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/CodeInfoResult;->keyword:Ljava/lang/String;

    return-object v0
.end method

.method public getResultCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/CodeInfoResult;->resultCode:Ljava/lang/String;

    return-object v0
.end method

.method public getResultMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/CodeInfoResult;->resultMessage:Ljava/lang/String;

    return-object v0
.end method

.method public isSuccess()Z
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/etao/kakalib/api/beans/CodeInfoResult;->success:Z

    return v0
.end method

.method public setBarcode(Ljava/lang/String;)V
    .locals 0
    .parameter "barcode"

    .prologue
    .line 24
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/CodeInfoResult;->barcode:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 0
    .parameter "dataSource"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/CodeInfoResult;->dataSource:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setEpid(Ljava/lang/String;)V
    .locals 0
    .parameter "epid"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/CodeInfoResult;->epid:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setKeyword(Ljava/lang/String;)V
    .locals 0
    .parameter "keyword"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/CodeInfoResult;->keyword:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setResultCode(Ljava/lang/String;)V
    .locals 0
    .parameter "resultCode"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/CodeInfoResult;->resultCode:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setResultMessage(Ljava/lang/String;)V
    .locals 0
    .parameter "resultMessage"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/CodeInfoResult;->resultMessage:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setSuccess(Z)V
    .locals 0
    .parameter "success"

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/etao/kakalib/api/beans/CodeInfoResult;->success:Z

    .line 57
    return-void
.end method
