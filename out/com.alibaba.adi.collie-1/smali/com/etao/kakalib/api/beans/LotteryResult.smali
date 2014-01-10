.class public Lcom/etao/kakalib/api/beans/LotteryResult;
.super Lcom/etao/kakalib/api/beans/BaseResult;
.source "LotteryResult.java"


# static fields
.field private static final serialVersionUID:J = 0xea34ea96b7fb167L


# instance fields
.field private description:Ljava/lang/String;

.field private link:Ljava/lang/String;

.field private pic:Ljava/lang/String;

.field private type:Ljava/lang/String;


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
    .line 21
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/LotteryResult;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/LotteryResult;->link:Ljava/lang/String;

    return-object v0
.end method

.method public getPic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/LotteryResult;->pic:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/LotteryResult;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .parameter "description"

    .prologue
    .line 25
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/LotteryResult;->description:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public setLink(Ljava/lang/String;)V
    .locals 0
    .parameter "link"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/LotteryResult;->link:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setPic(Ljava/lang/String;)V
    .locals 0
    .parameter "pic"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/LotteryResult;->pic:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 17
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/LotteryResult;->type:Ljava/lang/String;

    .line 18
    return-void
.end method
