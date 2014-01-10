.class public Lcom/etao/kakalib/api/beans/CapsuleResult;
.super Ljava/lang/Object;
.source "CapsuleResult.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x189e3cdaf9351766L


# instance fields
.field private result:Lcom/etao/kakalib/api/beans/CodeInfoResult;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getResult()Lcom/etao/kakalib/api/beans/CodeInfoResult;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/CapsuleResult;->result:Lcom/etao/kakalib/api/beans/CodeInfoResult;

    return-object v0
.end method

.method public setResult(Lcom/etao/kakalib/api/beans/CodeInfoResult;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 17
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/CapsuleResult;->result:Lcom/etao/kakalib/api/beans/CodeInfoResult;

    .line 18
    return-void
.end method
