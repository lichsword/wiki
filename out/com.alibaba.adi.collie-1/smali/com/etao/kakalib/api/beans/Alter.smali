.class public Lcom/etao/kakalib/api/beans/Alter;
.super Ljava/lang/Object;
.source "Alter.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x7595e0004d6c8a3fL


# instance fields
.field private description:Ljava/lang/String;

.field private experience:Ljava/lang/String;

.field private rank:Ljava/lang/String;

.field private score:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/Alter;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getExperience()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/Alter;->experience:Ljava/lang/String;

    return-object v0
.end method

.method public getRank()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/Alter;->rank:Ljava/lang/String;

    return-object v0
.end method

.method public getScore()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/Alter;->score:Ljava/lang/String;

    return-object v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .parameter "description"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/Alter;->description:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setExperience(Ljava/lang/String;)V
    .locals 0
    .parameter "experience"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/Alter;->experience:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public setRank(Ljava/lang/String;)V
    .locals 0
    .parameter "rank"

    .prologue
    .line 19
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/Alter;->rank:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public setScore(Ljava/lang/String;)V
    .locals 0
    .parameter "score"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/Alter;->score:Ljava/lang/String;

    .line 36
    return-void
.end method
