.class public Lcom/taobao/statistic/core/k$a;
.super Ljava/lang/Object;
.source "SOManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/statistic/core/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private lV:Z

.field private lW:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    iput-boolean v0, p0, Lcom/taobao/statistic/core/k$a;->lV:Z

    .line 197
    iput-boolean v0, p0, Lcom/taobao/statistic/core/k$a;->lW:Z

    return-void
.end method


# virtual methods
.method public cb()Z
    .locals 1

    .prologue
    .line 200
    iget-boolean v0, p0, Lcom/taobao/statistic/core/k$a;->lV:Z

    return v0
.end method

.method public l(Z)V
    .locals 0
    .parameter "isSuccess"

    .prologue
    .line 204
    iput-boolean p1, p0, Lcom/taobao/statistic/core/k$a;->lV:Z

    .line 205
    return-void
.end method

.method public m(Z)V
    .locals 0
    .parameter "loadBySoManager"

    .prologue
    .line 212
    iput-boolean p1, p0, Lcom/taobao/statistic/core/k$a;->lW:Z

    .line 213
    return-void
.end method
