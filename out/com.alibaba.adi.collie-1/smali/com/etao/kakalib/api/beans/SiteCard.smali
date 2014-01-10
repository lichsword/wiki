.class public Lcom/etao/kakalib/api/beans/SiteCard;
.super Lcom/etao/kakalib/api/beans/BaseCard;
.source "SiteCard.java"


# static fields
.field private static final serialVersionUID:J = -0xfcc695f93e7670bL


# instance fields
.field private description:Ljava/lang/String;

.field private icon:Ljava/lang/String;

.field private link:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Lcom/etao/kakalib/api/beans/BaseCard;-><init>()V

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/SiteCard;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/SiteCard;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public getLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/SiteCard;->link:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/SiteCard;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .parameter "description"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/SiteCard;->description:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setIcon(Ljava/lang/String;)V
    .locals 0
    .parameter "icon"

    .prologue
    .line 17
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/SiteCard;->icon:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public setLink(Ljava/lang/String;)V
    .locals 0
    .parameter "link"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/SiteCard;->link:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 25
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/SiteCard;->title:Ljava/lang/String;

    .line 26
    return-void
.end method
