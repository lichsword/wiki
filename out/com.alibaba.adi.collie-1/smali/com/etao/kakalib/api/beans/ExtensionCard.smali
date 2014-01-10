.class public Lcom/etao/kakalib/api/beans/ExtensionCard;
.super Lcom/etao/kakalib/api/beans/BaseCard;
.source "ExtensionCard.java"


# static fields
.field private static final serialVersionUID:J = 0x3fd0837cafae8d5eL


# instance fields
.field private content:Ljava/lang/String;

.field private endTime:Ljava/util/Date;

.field private id:I

.field private link:Ljava/lang/String;

.field private startTime:Ljava/util/Date;

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
.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/ExtensionCard;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getEndTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/ExtensionCard;->endTime:Ljava/util/Date;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/etao/kakalib/api/beans/ExtensionCard;->id:I

    return v0
.end method

.method public getLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/ExtensionCard;->link:Ljava/lang/String;

    return-object v0
.end method

.method public getStartTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/ExtensionCard;->startTime:Ljava/util/Date;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/ExtensionCard;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0
    .parameter "content"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/ExtensionCard;->content:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public setEndTime(Ljava/util/Date;)V
    .locals 0
    .parameter "endTime"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/ExtensionCard;->endTime:Ljava/util/Date;

    .line 63
    return-void
.end method

.method public setId(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 46
    iput p1, p0, Lcom/etao/kakalib/api/beans/ExtensionCard;->id:I

    .line 47
    return-void
.end method

.method public setLink(Ljava/lang/String;)V
    .locals 0
    .parameter "link"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/ExtensionCard;->link:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setStartTime(Ljava/util/Date;)V
    .locals 0
    .parameter "startTime"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/ExtensionCard;->startTime:Ljava/util/Date;

    .line 55
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 22
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/ExtensionCard;->title:Ljava/lang/String;

    .line 23
    return-void
.end method
