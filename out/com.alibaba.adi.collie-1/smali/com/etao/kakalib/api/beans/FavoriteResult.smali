.class public Lcom/etao/kakalib/api/beans/FavoriteResult;
.super Lcom/etao/kakalib/api/beans/BaseResult;
.source "FavoriteResult.java"


# static fields
.field private static final serialVersionUID:J = -0x1dcf56af48d3cc4aL


# instance fields
.field count:Ljava/lang/String;

.field favs:[Lcom/etao/kakalib/api/beans/Favorite;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Lcom/etao/kakalib/api/beans/BaseResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/FavoriteResult;->count:Ljava/lang/String;

    return-object v0
.end method

.method public getFavs()[Lcom/etao/kakalib/api/beans/Favorite;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/FavoriteResult;->favs:[Lcom/etao/kakalib/api/beans/Favorite;

    return-object v0
.end method

.method public setCount(Ljava/lang/String;)V
    .locals 0
    .parameter "count"

    .prologue
    .line 15
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/FavoriteResult;->count:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public setFavs([Lcom/etao/kakalib/api/beans/Favorite;)V
    .locals 0
    .parameter "favs"

    .prologue
    .line 23
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/FavoriteResult;->favs:[Lcom/etao/kakalib/api/beans/Favorite;

    .line 24
    return-void
.end method
