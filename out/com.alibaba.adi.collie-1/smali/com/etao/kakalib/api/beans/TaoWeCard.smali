.class public Lcom/etao/kakalib/api/beans/TaoWeCard;
.super Lcom/etao/kakalib/api/beans/BaseCard;
.source "TaoWeCard.java"


# static fields
.field private static final serialVersionUID:J = 0x6ecf66a4911cb570L


# instance fields
.field private desc:Ljava/lang/String;

.field private link:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private notes:Ljava/lang/String;

.field private pic:Ljava/lang/String;

.field private wid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Lcom/etao/kakalib/api/beans/BaseCard;-><init>()V

    return-void
.end method


# virtual methods
.method public getDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/TaoWeCard;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public getLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/TaoWeCard;->link:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/TaoWeCard;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNotes()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/TaoWeCard;->notes:Ljava/lang/String;

    return-object v0
.end method

.method public getPic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/TaoWeCard;->pic:Ljava/lang/String;

    return-object v0
.end method

.method public getWid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/TaoWeCard;->wid:Ljava/lang/String;

    return-object v0
.end method

.method public setDesc(Ljava/lang/String;)V
    .locals 0
    .parameter "desc"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/TaoWeCard;->desc:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setLink(Ljava/lang/String;)V
    .locals 0
    .parameter "link"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/TaoWeCard;->link:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/TaoWeCard;->name:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setNotes(Ljava/lang/String;)V
    .locals 0
    .parameter "notes"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/TaoWeCard;->notes:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setPic(Ljava/lang/String;)V
    .locals 0
    .parameter "pic"

    .prologue
    .line 28
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/TaoWeCard;->pic:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public setWid(Ljava/lang/String;)V
    .locals 0
    .parameter "wid"

    .prologue
    .line 20
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/TaoWeCard;->wid:Ljava/lang/String;

    .line 21
    return-void
.end method
