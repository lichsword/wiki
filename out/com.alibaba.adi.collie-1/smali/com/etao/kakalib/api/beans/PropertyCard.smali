.class public Lcom/etao/kakalib/api/beans/PropertyCard;
.super Lcom/etao/kakalib/api/beans/BaseCard;
.source "PropertyCard.java"


# static fields
.field private static final serialVersionUID:J = -0x3ee290b0765f027L


# instance fields
.field private propertyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/etao/kakalib/api/beans/Property;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/etao/kakalib/api/beans/BaseCard;-><init>()V

    return-void
.end method


# virtual methods
.method public getPropertyList()Ljava/util/List;
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
    .line 12
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/PropertyCard;->propertyList:Ljava/util/List;

    return-object v0
.end method

.method public setPropertyList(Ljava/util/List;)V
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
    .line 16
    .local p1, propertyList:Ljava/util/List;,"Ljava/util/List<Lcom/etao/kakalib/api/beans/Property;>;"
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/PropertyCard;->propertyList:Ljava/util/List;

    .line 17
    return-void
.end method
