.class public Lcom/etao/kakalib/api/beans/UserInfoResult;
.super Lcom/etao/kakalib/api/beans/BaseResult;
.source "UserInfoResult.java"


# static fields
.field private static final serialVersionUID:J = -0x172927fa24f96e6aL


# instance fields
.field private fullname:Ljava/lang/String;

.field private mobilePhone:Ljava/lang/String;

.field private nick:Ljava/lang/String;

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Lcom/etao/kakalib/api/beans/BaseResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getFullname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/UserInfoResult;->fullname:Ljava/lang/String;

    return-object v0
.end method

.method public getMobilePhone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/UserInfoResult;->mobilePhone:Ljava/lang/String;

    return-object v0
.end method

.method public getNick()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/UserInfoResult;->nick:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/UserInfoResult;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public setFullname(Ljava/lang/String;)V
    .locals 0
    .parameter "fullname"

    .prologue
    .line 26
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/UserInfoResult;->fullname:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public setMobilePhone(Ljava/lang/String;)V
    .locals 0
    .parameter "mobilePhone"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/UserInfoResult;->mobilePhone:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setNick(Ljava/lang/String;)V
    .locals 0
    .parameter "nick"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/UserInfoResult;->nick:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0
    .parameter "userId"

    .prologue
    .line 18
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/UserInfoResult;->userId:Ljava/lang/String;

    .line 19
    return-void
.end method
