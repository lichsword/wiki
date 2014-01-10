.class public Lcom/etao/kakalib/api/beans/Property;
.super Ljava/lang/Object;
.source "Property.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x602ea2feeeb6f4b3L


# instance fields
.field private name:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/Property;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/Property;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 17
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/Property;->name:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 25
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/Property;->value:Ljava/lang/String;

    .line 26
    return-void
.end method
