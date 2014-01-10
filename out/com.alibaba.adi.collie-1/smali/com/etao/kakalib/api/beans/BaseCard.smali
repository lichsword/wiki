.class public Lcom/etao/kakalib/api/beans/BaseCard;
.super Ljava/lang/Object;
.source "BaseCard.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x538a925cd934b2b5L


# instance fields
.field private action:Ljava/lang/String;

.field private cardName:Ljava/lang/String;

.field private cardNo:Ljava/lang/String;

.field private color:Ljava/lang/String;

.field private icon:Ljava/lang/String;

.field private seq:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/BaseCard;->action:Ljava/lang/String;

    return-object v0
.end method

.method public getCardName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/BaseCard;->cardName:Ljava/lang/String;

    return-object v0
.end method

.method public getCardNo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/BaseCard;->cardNo:Ljava/lang/String;

    return-object v0
.end method

.method public getColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/BaseCard;->color:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/BaseCard;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public getSeq()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/BaseCard;->seq:Ljava/lang/String;

    return-object v0
.end method

.method public setAction(Ljava/lang/String;)V
    .locals 0
    .parameter "action"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/BaseCard;->action:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setCardName(Ljava/lang/String;)V
    .locals 0
    .parameter "cardName"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/BaseCard;->cardName:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setCardNo(Ljava/lang/String;)V
    .locals 0
    .parameter "cardNo"

    .prologue
    .line 29
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/BaseCard;->cardNo:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setColor(Ljava/lang/String;)V
    .locals 0
    .parameter "color"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/BaseCard;->color:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setIcon(Ljava/lang/String;)V
    .locals 0
    .parameter "icon"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/BaseCard;->icon:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setSeq(Ljava/lang/String;)V
    .locals 0
    .parameter "seq"

    .prologue
    .line 21
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/BaseCard;->seq:Ljava/lang/String;

    .line 22
    return-void
.end method
