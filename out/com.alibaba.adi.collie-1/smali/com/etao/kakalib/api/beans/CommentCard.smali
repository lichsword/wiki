.class public Lcom/etao/kakalib/api/beans/CommentCard;
.super Lcom/etao/kakalib/api/beans/BaseCard;
.source "CommentCard.java"


# static fields
.field private static final serialVersionUID:J = 0x780366af6cb5c7d8L


# instance fields
.field private commentList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/etao/kakalib/api/beans/Comment;",
            ">;"
        }
    .end annotation
.end field

.field private count:Ljava/lang/String;

.field private score:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/etao/kakalib/api/beans/BaseCard;-><init>()V

    return-void
.end method


# virtual methods
.method public getCommentList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/etao/kakalib/api/beans/Comment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/CommentCard;->commentList:Ljava/util/List;

    return-object v0
.end method

.method public getCount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/CommentCard;->count:Ljava/lang/String;

    return-object v0
.end method

.method public getScore()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/CommentCard;->score:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/CommentCard;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setCommentList(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/etao/kakalib/api/beans/Comment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p1, commentList:Ljava/util/List;,"Ljava/util/List<Lcom/etao/kakalib/api/beans/Comment;>;"
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/CommentCard;->commentList:Ljava/util/List;

    .line 44
    return-void
.end method

.method public setCount(Ljava/lang/String;)V
    .locals 0
    .parameter "count"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/CommentCard;->count:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setScore(Ljava/lang/String;)V
    .locals 0
    .parameter "score"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/CommentCard;->score:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 19
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/CommentCard;->title:Ljava/lang/String;

    .line 20
    return-void
.end method
