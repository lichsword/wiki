.class public Lcom/etao/kakalib/api/beans/LoginCard;
.super Lcom/etao/kakalib/api/beans/BaseCard;
.source "LoginCard.java"


# static fields
.field private static final serialVersionUID:J = -0x2aa1ee896f40322aL


# instance fields
.field private direct:Ljava/lang/String;

.field private token:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Lcom/etao/kakalib/api/beans/BaseCard;-><init>()V

    return-void
.end method


# virtual methods
.method public getDirect()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/LoginCard;->direct:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/LoginCard;->token:Ljava/lang/String;

    return-object v0
.end method

.method public setDirect(Ljava/lang/String;)V
    .locals 0
    .parameter "direct"

    .prologue
    .line 24
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/LoginCard;->direct:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0
    .parameter "token"

    .prologue
    .line 16
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/LoginCard;->token:Ljava/lang/String;

    .line 17
    return-void
.end method
