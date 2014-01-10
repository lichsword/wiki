.class public Lcom/taobao/statistic/module/g/c;
.super Ljava/lang/Object;
.source "StrategyResult.java"


# instance fields
.field private oQ:I

.field private oS:Z

.field private oT:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public A(Z)V
    .locals 0
    .parameter "pIsNotExist"

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/taobao/statistic/module/g/c;->oT:Z

    .line 30
    return-void
.end method

.method public W(I)V
    .locals 0
    .parameter "pCP"

    .prologue
    .line 21
    iput p1, p0, Lcom/taobao/statistic/module/g/c;->oQ:I

    .line 22
    return-void
.end method

.method public dQ()Z
    .locals 1

    .prologue
    .line 9
    iget-boolean v0, p0, Lcom/taobao/statistic/module/g/c;->oS:Z

    return v0
.end method

.method public dR()I
    .locals 1

    .prologue
    .line 17
    iget v0, p0, Lcom/taobao/statistic/module/g/c;->oQ:I

    return v0
.end method

.method public dS()Z
    .locals 1

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/taobao/statistic/module/g/c;->oT:Z

    return v0
.end method

.method public z(Z)V
    .locals 0
    .parameter "pIsOk"

    .prologue
    .line 13
    iput-boolean p1, p0, Lcom/taobao/statistic/module/g/c;->oS:Z

    .line 14
    return-void
.end method
