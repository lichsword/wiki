.class public Lcom/etao/kakalib/api/beans/PosterCard;
.super Lcom/etao/kakalib/api/beans/BaseCard;
.source "PosterCard.java"


# static fields
.field private static final serialVersionUID:J = 0x17565adc5fe98d6aL


# instance fields
.field private content:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Lcom/etao/kakalib/api/beans/BaseCard;-><init>()V

    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/PosterCard;->content:Ljava/lang/String;

    return-object v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0
    .parameter "content"

    .prologue
    .line 14
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/PosterCard;->content:Ljava/lang/String;

    .line 15
    return-void
.end method
