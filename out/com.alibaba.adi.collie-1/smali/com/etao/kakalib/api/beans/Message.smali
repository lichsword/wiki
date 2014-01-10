.class public Lcom/etao/kakalib/api/beans/Message;
.super Ljava/lang/Object;
.source "Message.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x2386cc7899a19668L


# instance fields
.field private action:Ljava/lang/String;

.field private content:Ljava/lang/String;

.field private cycle:Ljava/lang/String;

.field private end:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private start:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/Message;->action:Ljava/lang/String;

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/Message;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getCycle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/Message;->cycle:Ljava/lang/String;

    return-object v0
.end method

.method public getEnd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/Message;->end:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/Message;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getStart()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/Message;->start:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/Message;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setAction(Ljava/lang/String;)V
    .locals 0
    .parameter "action"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/Message;->action:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0
    .parameter "content"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/Message;->content:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setCycle(Ljava/lang/String;)V
    .locals 0
    .parameter "cycle"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/Message;->cycle:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setEnd(Ljava/lang/String;)V
    .locals 0
    .parameter "end"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/Message;->end:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 22
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/Message;->id:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public setStart(Ljava/lang/String;)V
    .locals 0
    .parameter "start"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/Message;->start:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/Message;->type:Ljava/lang/String;

    .line 31
    return-void
.end method
