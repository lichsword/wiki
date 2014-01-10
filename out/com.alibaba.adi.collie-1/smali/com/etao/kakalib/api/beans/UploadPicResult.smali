.class public Lcom/etao/kakalib/api/beans/UploadPicResult;
.super Lcom/etao/kakalib/api/beans/BaseResult;
.source "UploadPicResult.java"


# static fields
.field private static final serialVersionUID:J = 0x2d17f2f7fd3a35b0L


# instance fields
.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Lcom/etao/kakalib/api/beans/BaseResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/UploadPicResult;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 15
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/UploadPicResult;->url:Ljava/lang/String;

    .line 16
    return-void
.end method
