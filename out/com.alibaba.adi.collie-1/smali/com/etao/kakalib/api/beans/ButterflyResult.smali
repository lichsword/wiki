.class public Lcom/etao/kakalib/api/beans/ButterflyResult;
.super Lcom/etao/kakalib/api/beans/BaseResult;
.source "ButterflyResult.java"


# static fields
.field private static final serialVersionUID:J = 0x41d19cfd3950bf1bL


# instance fields
.field private description:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private logo:Ljava/lang/String;

.field private name:Ljava/lang/String;

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
.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/ButterflyResult;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/ButterflyResult;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLogo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/ButterflyResult;->logo:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/ButterflyResult;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/ButterflyResult;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .parameter "description"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/ButterflyResult;->description:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 19
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/ButterflyResult;->id:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public setLogo(Ljava/lang/String;)V
    .locals 0
    .parameter "logo"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/ButterflyResult;->logo:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/ButterflyResult;->name:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/ButterflyResult;->url:Ljava/lang/String;

    .line 52
    return-void
.end method
