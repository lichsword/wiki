.class public Lcom/etao/kakalib/api/beans/TimeResult;
.super Lcom/etao/kakalib/api/beans/BaseResult;
.source "TimeResult.java"


# static fields
.field private static final serialVersionUID:J = 0x40ae311808b93530L


# instance fields
.field private time:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Lcom/etao/kakalib/api/beans/BaseResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/TimeResult;->time:Ljava/lang/String;

    return-object v0
.end method

.method public setTime(Ljava/lang/String;)V
    .locals 0
    .parameter "time"

    .prologue
    .line 18
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/TimeResult;->time:Ljava/lang/String;

    .line 19
    return-void
.end method
