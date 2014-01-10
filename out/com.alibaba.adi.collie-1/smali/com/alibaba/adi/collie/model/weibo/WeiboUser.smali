.class public Lcom/alibaba/adi/collie/model/weibo/WeiboUser;
.super Ljava/lang/Object;
.source "WeiboUser.java"


# instance fields
.field followersCount:I

.field friendsCount:I

.field id:Ljava/lang/Long;

.field name:Ljava/lang/String;

.field profileImageUrl:Ljava/lang/String;

.field screenName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFollowersCount()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/alibaba/adi/collie/model/weibo/WeiboUser;->followersCount:I

    return v0
.end method

.method public getFriendsCount()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/alibaba/adi/collie/model/weibo/WeiboUser;->friendsCount:I

    return v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/alibaba/adi/collie/model/weibo/WeiboUser;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/alibaba/adi/collie/model/weibo/WeiboUser;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getProfileImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/alibaba/adi/collie/model/weibo/WeiboUser;->profileImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getScreenName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/alibaba/adi/collie/model/weibo/WeiboUser;->screenName:Ljava/lang/String;

    return-object v0
.end method

.method public setFollowersCount(I)V
    .locals 0
    .parameter "followersCount"

    .prologue
    .line 43
    iput p1, p0, Lcom/alibaba/adi/collie/model/weibo/WeiboUser;->followersCount:I

    .line 44
    return-void
.end method

.method public setFriendsCount(I)V
    .locals 0
    .parameter "friendsCount"

    .prologue
    .line 51
    iput p1, p0, Lcom/alibaba/adi/collie/model/weibo/WeiboUser;->friendsCount:I

    .line 52
    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 19
    iput-object p1, p0, Lcom/alibaba/adi/collie/model/weibo/WeiboUser;->id:Ljava/lang/Long;

    .line 20
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/alibaba/adi/collie/model/weibo/WeiboUser;->name:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public setProfileImageUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "profileImageUrl"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/alibaba/adi/collie/model/weibo/WeiboUser;->profileImageUrl:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setScreenName(Ljava/lang/String;)V
    .locals 0
    .parameter "screenName"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/alibaba/adi/collie/model/weibo/WeiboUser;->screenName:Ljava/lang/String;

    .line 36
    return-void
.end method
