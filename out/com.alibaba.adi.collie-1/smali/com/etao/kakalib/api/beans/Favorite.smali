.class public Lcom/etao/kakalib/api/beans/Favorite;
.super Ljava/lang/Object;
.source "Favorite.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final TYPE_BARCODE:Ljava/lang/String; = "1"

.field public static final TYPE_COMMODITY:Ljava/lang/String; = "4"

.field public static final TYPE_QRCODE:Ljava/lang/String; = "2"

.field public static final TYPE_SHARE:Ljava/lang/String; = "3"

.field public static final TYPE_STORE:Ljava/lang/String; = "5"

.field private static final serialVersionUID:J = -0x27febf50c1a42b48L


# instance fields
.field private content:Ljava/lang/String;

.field private time:Ljava/lang/String;

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
.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/Favorite;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/Favorite;->time:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/Favorite;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0
    .parameter "content"

    .prologue
    .line 24
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/Favorite;->content:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .locals 0
    .parameter "time"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/Favorite;->time:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/Favorite;->type:Ljava/lang/String;

    .line 33
    return-void
.end method
