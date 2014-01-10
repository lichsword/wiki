.class public Lcom/etao/kakalib/api/beans/ShareBriefResult;
.super Lcom/etao/kakalib/api/beans/BaseResult;
.source "ShareBriefResult.java"


# static fields
.field private static final serialVersionUID:J = -0x48f912602991b66cL


# instance fields
.field private briefs:[Lcom/etao/kakalib/api/beans/ShareBrief;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Lcom/etao/kakalib/api/beans/BaseResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getBriefs()[Lcom/etao/kakalib/api/beans/ShareBrief;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/ShareBriefResult;->briefs:[Lcom/etao/kakalib/api/beans/ShareBrief;

    return-object v0
.end method

.method public setBriefs([Lcom/etao/kakalib/api/beans/ShareBrief;)V
    .locals 0
    .parameter "briefs"

    .prologue
    .line 14
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/ShareBriefResult;->briefs:[Lcom/etao/kakalib/api/beans/ShareBrief;

    .line 15
    return-void
.end method
