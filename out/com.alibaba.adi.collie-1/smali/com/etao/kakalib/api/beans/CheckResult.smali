.class public Lcom/etao/kakalib/api/beans/CheckResult;
.super Lcom/etao/kakalib/api/beans/BaseResult;
.source "CheckResult.java"


# static fields
.field private static final serialVersionUID:J = 0xd1214c9adb15ba4L


# instance fields
.field private result:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Lcom/etao/kakalib/api/beans/BaseResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getResult()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/CheckResult;->result:Ljava/lang/String;

    return-object v0
.end method

.method public setResult(Ljava/lang/String;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 14
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/CheckResult;->result:Ljava/lang/String;

    .line 15
    return-void
.end method
