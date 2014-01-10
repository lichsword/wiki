.class public Lcom/etao/kakalib/api/beans/MessageResult;
.super Lcom/etao/kakalib/api/beans/BaseResult;
.source "MessageResult.java"


# static fields
.field private static final serialVersionUID:J = 0x3a824231674602cfL


# instance fields
.field private msgs:[Lcom/etao/kakalib/api/beans/Message;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Lcom/etao/kakalib/api/beans/BaseResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getMsgs()[Lcom/etao/kakalib/api/beans/Message;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/MessageResult;->msgs:[Lcom/etao/kakalib/api/beans/Message;

    return-object v0
.end method

.method public setMsgs([Lcom/etao/kakalib/api/beans/Message;)V
    .locals 0
    .parameter "msgs"

    .prologue
    .line 14
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/MessageResult;->msgs:[Lcom/etao/kakalib/api/beans/Message;

    .line 15
    return-void
.end method
