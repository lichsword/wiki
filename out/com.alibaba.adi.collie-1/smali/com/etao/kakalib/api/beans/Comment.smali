.class public Lcom/etao/kakalib/api/beans/Comment;
.super Ljava/lang/Object;
.source "Comment.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1fc5305e1c2ef92cL


# instance fields
.field private bad:Ljava/lang/String;

.field private good:Ljava/lang/String;

.field private nickname:Ljava/lang/String;

.field private score:Ljava/lang/String;

.field private source:Ljava/lang/String;

.field private summary:Ljava/lang/String;

.field private time:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBad()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/Comment;->bad:Ljava/lang/String;

    return-object v0
.end method

.method public getGood()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/Comment;->good:Ljava/lang/String;

    return-object v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/Comment;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public getScore()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/Comment;->score:Ljava/lang/String;

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/Comment;->source:Ljava/lang/String;

    return-object v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/Comment;->summary:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/Comment;->time:Ljava/lang/String;

    return-object v0
.end method

.method public setBad(Ljava/lang/String;)V
    .locals 0
    .parameter "bad"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/Comment;->bad:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public setGood(Ljava/lang/String;)V
    .locals 0
    .parameter "good"

    .prologue
    .line 22
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/Comment;->good:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public setNickname(Ljava/lang/String;)V
    .locals 0
    .parameter "nickname"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/Comment;->nickname:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setScore(Ljava/lang/String;)V
    .locals 0
    .parameter "score"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/Comment;->score:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setSource(Ljava/lang/String;)V
    .locals 0
    .parameter "source"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/Comment;->source:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setSummary(Ljava/lang/String;)V
    .locals 0
    .parameter "summary"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/Comment;->summary:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .locals 0
    .parameter "time"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/Comment;->time:Ljava/lang/String;

    .line 63
    return-void
.end method
