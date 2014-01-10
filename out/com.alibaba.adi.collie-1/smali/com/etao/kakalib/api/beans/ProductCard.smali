.class public Lcom/etao/kakalib/api/beans/ProductCard;
.super Lcom/etao/kakalib/api/beans/BaseCard;
.source "ProductCard.java"


# static fields
.field private static final serialVersionUID:J = 0x195b4a626b338769L


# instance fields
.field private pic:Ljava/lang/String;

.field propList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/etao/kakalib/api/beans/Property;",
            ">;"
        }
    .end annotation
.end field

.field private propStr:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/etao/kakalib/api/beans/BaseCard;-><init>()V

    return-void
.end method


# virtual methods
.method public getPic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/ProductCard;->pic:Ljava/lang/String;

    return-object v0
.end method

.method public getPropList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/etao/kakalib/api/beans/Property;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/ProductCard;->propList:Ljava/util/List;

    return-object v0
.end method

.method public getPropStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/ProductCard;->propStr:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/ProductCard;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setPic(Ljava/lang/String;)V
    .locals 0
    .parameter "pic"

    .prologue
    .line 19
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/ProductCard;->pic:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public setPropList(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/etao/kakalib/api/beans/Property;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p1, propList:Ljava/util/List;,"Ljava/util/List<Lcom/etao/kakalib/api/beans/Property;>;"
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/ProductCard;->propList:Ljava/util/List;

    .line 44
    return-void
.end method

.method public setPropStr(Ljava/lang/String;)V
    .locals 0
    .parameter "propStr"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/ProductCard;->propStr:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/ProductCard;->title:Ljava/lang/String;

    .line 28
    return-void
.end method
