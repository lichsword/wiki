.class public Lcom/alibaba/adi/collie/business/weibo/api/WeiboHelper;
.super Ljava/lang/Object;
.source "WeiboHelper.java"


# static fields
.field public static final TAG:Ljava/lang/String;

.field private static mLock:[B

.field private static mStatus:Lcom/alibaba/adi/collie/model/weibo/WeiboUnreadStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/alibaba/adi/collie/business/weibo/api/WeiboHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/adi/collie/business/weibo/api/WeiboHelper;->TAG:Ljava/lang/String;

    .line 22
    new-instance v0, Lcom/alibaba/adi/collie/model/weibo/WeiboUnreadStatus;

    invoke-direct {v0}, Lcom/alibaba/adi/collie/model/weibo/WeiboUnreadStatus;-><init>()V

    sput-object v0, Lcom/alibaba/adi/collie/business/weibo/api/WeiboHelper;->mStatus:Lcom/alibaba/adi/collie/model/weibo/WeiboUnreadStatus;

    .line 23
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/alibaba/adi/collie/business/weibo/api/WeiboHelper;->mLock:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()[B
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/alibaba/adi/collie/business/weibo/api/WeiboHelper;->mLock:[B

    return-object v0
.end method

.method static synthetic access$1()Lcom/alibaba/adi/collie/model/weibo/WeiboUnreadStatus;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/alibaba/adi/collie/business/weibo/api/WeiboHelper;->mStatus:Lcom/alibaba/adi/collie/model/weibo/WeiboUnreadStatus;

    return-object v0
.end method

.method static synthetic access$2(Lcom/alibaba/adi/collie/business/weibo/api/CommentsAPI;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 164
    invoke-static {p0, p1}, Lcom/alibaba/adi/collie/business/weibo/api/WeiboHelper;->getWeiboNewComments(Lcom/alibaba/adi/collie/business/weibo/api/CommentsAPI;I)V

    return-void
.end method

.method static synthetic access$3(Lcom/weibo/sdk/android/Oauth2AccessToken;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 209
    invoke-static {p0, p1}, Lcom/alibaba/adi/collie/business/weibo/api/WeiboHelper;->getWeiboPrivateMsg(Lcom/weibo/sdk/android/Oauth2AccessToken;I)V

    return-void
.end method

.method static synthetic access$4(Lcom/alibaba/adi/collie/business/weibo/api/CommentsAPI;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 76
    invoke-static {p0, p1}, Lcom/alibaba/adi/collie/business/weibo/api/WeiboHelper;->getWeiboNewAtFromComment(Lcom/alibaba/adi/collie/business/weibo/api/CommentsAPI;I)V

    return-void
.end method

.method static synthetic access$5(Lcom/weibo/sdk/android/Oauth2AccessToken;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 122
    invoke-static {p0, p1}, Lcom/alibaba/adi/collie/business/weibo/api/WeiboHelper;->getWeiboNewAtFromStatus(Lcom/weibo/sdk/android/Oauth2AccessToken;I)V

    return-void
.end method

.method static synthetic access$6(I)V
    .locals 0
    .parameter

    .prologue
    .line 25
    invoke-static {p0}, Lcom/alibaba/adi/collie/business/weibo/api/WeiboHelper;->setSystemNotifyCount(I)V

    return-void
.end method

.method public static clearWeiboCache()V
    .locals 2

    .prologue
    .line 30
    const-string v0, "weibo_comment"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/FileUtil;->writeStorage(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    const-string v0, "weibo_at_from_comment"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/FileUtil;->writeStorage(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    const-string v0, "weibo_at_from_status"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/FileUtil;->writeStorage(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    const-string v0, "weibo_private_msg"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/FileUtil;->writeStorage(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method private static getWeiboNewAtFromComment(Lcom/alibaba/adi/collie/business/weibo/api/CommentsAPI;I)V
    .locals 10
    .parameter "commentsAPI"
    .parameter "count"

    .prologue
    const-wide/16 v1, 0x0

    .line 78
    if-nez p1, :cond_0

    .line 79
    const-string v0, "weibo_at_from_comment"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/FileUtil;->writeStorage(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    :goto_0
    return-void

    .line 82
    :cond_0
    const/4 v6, 0x1

    sget-object v7, Lcom/alibaba/adi/collie/business/weibo/api/WeiboAPI$AUTHOR_FILTER;->ALL:Lcom/alibaba/adi/collie/business/weibo/api/WeiboAPI$AUTHOR_FILTER;

    .line 83
    sget-object v8, Lcom/alibaba/adi/collie/business/weibo/api/WeiboAPI$SRC_FILTER;->ALL:Lcom/alibaba/adi/collie/business/weibo/api/WeiboAPI$SRC_FILTER;

    new-instance v9, Lcom/alibaba/adi/collie/business/weibo/api/WeiboHelper$2;

    invoke-direct {v9, p1}, Lcom/alibaba/adi/collie/business/weibo/api/WeiboHelper$2;-><init>(I)V

    move-object v0, p0

    move-wide v3, v1

    move v5, p1

    .line 82
    invoke-virtual/range {v0 .. v9}, Lcom/alibaba/adi/collie/business/weibo/api/CommentsAPI;->mentions(JJIILcom/alibaba/adi/collie/business/weibo/api/WeiboAPI$AUTHOR_FILTER;Lcom/alibaba/adi/collie/business/weibo/api/WeiboAPI$SRC_FILTER;Lcom/weibo/sdk/android/net/RequestListener;)V

    goto :goto_0
.end method

.method private static getWeiboNewAtFromStatus(Lcom/weibo/sdk/android/Oauth2AccessToken;I)V
    .locals 12
    .parameter "token"
    .parameter "count"

    .prologue
    const-wide/16 v1, 0x0

    const/4 v6, 0x1

    .line 124
    if-nez p1, :cond_0

    .line 125
    const-string v1, "weibo_at_from_status"

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/alibaba/adi/collie/util/FileUtil;->writeStorage(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    :goto_0
    return-void

    .line 128
    :cond_0
    new-instance v0, Lcom/alibaba/adi/collie/business/weibo/api/StatusesAPI;

    invoke-direct {v0, p0}, Lcom/alibaba/adi/collie/business/weibo/api/StatusesAPI;-><init>(Lcom/weibo/sdk/android/Oauth2AccessToken;)V

    .line 129
    .local v0, statusesAPI:Lcom/alibaba/adi/collie/business/weibo/api/StatusesAPI;
    sget-object v7, Lcom/alibaba/adi/collie/business/weibo/api/WeiboAPI$AUTHOR_FILTER;->ALL:Lcom/alibaba/adi/collie/business/weibo/api/WeiboAPI$AUTHOR_FILTER;

    .line 130
    sget-object v8, Lcom/alibaba/adi/collie/business/weibo/api/WeiboAPI$SRC_FILTER;->ALL:Lcom/alibaba/adi/collie/business/weibo/api/WeiboAPI$SRC_FILTER;

    sget-object v9, Lcom/alibaba/adi/collie/business/weibo/api/WeiboAPI$TYPE_FILTER;->ALL:Lcom/alibaba/adi/collie/business/weibo/api/WeiboAPI$TYPE_FILTER;

    .line 131
    new-instance v11, Lcom/alibaba/adi/collie/business/weibo/api/WeiboHelper$3;

    invoke-direct {v11, p1}, Lcom/alibaba/adi/collie/business/weibo/api/WeiboHelper$3;-><init>(I)V

    move-wide v3, v1

    move v5, p1

    move v10, v6

    .line 129
    invoke-virtual/range {v0 .. v11}, Lcom/alibaba/adi/collie/business/weibo/api/StatusesAPI;->mentions(JJIILcom/alibaba/adi/collie/business/weibo/api/WeiboAPI$AUTHOR_FILTER;Lcom/alibaba/adi/collie/business/weibo/api/WeiboAPI$SRC_FILTER;Lcom/alibaba/adi/collie/business/weibo/api/WeiboAPI$TYPE_FILTER;ZLcom/weibo/sdk/android/net/RequestListener;)V

    goto :goto_0
.end method

.method private static getWeiboNewComments(Lcom/alibaba/adi/collie/business/weibo/api/CommentsAPI;I)V
    .locals 10
    .parameter "commentsAPI"
    .parameter "count"

    .prologue
    const-wide/16 v1, 0x0

    .line 165
    if-nez p1, :cond_0

    .line 166
    const-string v0, "weibo_comment"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/FileUtil;->writeStorage(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    :goto_0
    return-void

    .line 169
    :cond_0
    const/4 v6, 0x1

    sget-object v7, Lcom/alibaba/adi/collie/business/weibo/api/WeiboAPI$AUTHOR_FILTER;->ALL:Lcom/alibaba/adi/collie/business/weibo/api/WeiboAPI$AUTHOR_FILTER;

    .line 170
    sget-object v8, Lcom/alibaba/adi/collie/business/weibo/api/WeiboAPI$SRC_FILTER;->ALL:Lcom/alibaba/adi/collie/business/weibo/api/WeiboAPI$SRC_FILTER;

    new-instance v9, Lcom/alibaba/adi/collie/business/weibo/api/WeiboHelper$4;

    invoke-direct {v9, p1}, Lcom/alibaba/adi/collie/business/weibo/api/WeiboHelper$4;-><init>(I)V

    move-object v0, p0

    move-wide v3, v1

    move v5, p1

    .line 169
    invoke-virtual/range {v0 .. v9}, Lcom/alibaba/adi/collie/business/weibo/api/CommentsAPI;->toME(JJIILcom/alibaba/adi/collie/business/weibo/api/WeiboAPI$AUTHOR_FILTER;Lcom/alibaba/adi/collie/business/weibo/api/WeiboAPI$SRC_FILTER;Lcom/weibo/sdk/android/net/RequestListener;)V

    goto :goto_0
.end method

.method private static getWeiboPrivateMsg(Lcom/weibo/sdk/android/Oauth2AccessToken;I)V
    .locals 4
    .parameter "token"
    .parameter "count"

    .prologue
    .line 210
    if-nez p1, :cond_0

    .line 211
    const-string v1, "weibo_private_msg"

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/alibaba/adi/collie/util/FileUtil;->writeStorage(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    :goto_0
    return-void

    .line 214
    :cond_0
    new-instance v0, Lcom/alibaba/adi/collie/business/weibo/api/AdiWeiboAPI;

    invoke-direct {v0, p0}, Lcom/alibaba/adi/collie/business/weibo/api/AdiWeiboAPI;-><init>(Lcom/weibo/sdk/android/Oauth2AccessToken;)V

    .line 215
    .local v0, adiWeiboAPI:Lcom/alibaba/adi/collie/business/weibo/api/AdiWeiboAPI;
    const-string v1, "2755412918"

    .line 216
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/alibaba/adi/collie/business/weibo/api/WeiboHelper$5;

    invoke-direct {v3, p1}, Lcom/alibaba/adi/collie/business/weibo/api/WeiboHelper$5;-><init>(I)V

    .line 215
    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/adi/collie/business/weibo/api/AdiWeiboAPI;->getPrivateMsg(Ljava/lang/String;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V

    goto :goto_0
.end method

.method public static getWeiboUnreadCount(Lcom/weibo/sdk/android/Oauth2AccessToken;J)V
    .locals 3
    .parameter "token"
    .parameter "id"

    .prologue
    .line 38
    new-instance v0, Lcom/alibaba/adi/collie/business/weibo/api/AdiWeiboAPI;

    invoke-direct {v0, p0}, Lcom/alibaba/adi/collie/business/weibo/api/AdiWeiboAPI;-><init>(Lcom/weibo/sdk/android/Oauth2AccessToken;)V

    .line 39
    .local v0, adiWeiboAPI:Lcom/alibaba/adi/collie/business/weibo/api/AdiWeiboAPI;
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alibaba/adi/collie/business/weibo/api/WeiboHelper$1;

    invoke-direct {v2, p0}, Lcom/alibaba/adi/collie/business/weibo/api/WeiboHelper$1;-><init>(Lcom/weibo/sdk/android/Oauth2AccessToken;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/adi/collie/business/weibo/api/AdiWeiboAPI;->getUnreadCount(Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V

    .line 74
    return-void
.end method

.method private static setSystemNotifyCount(I)V
    .locals 1
    .parameter "num"

    .prologue
    .line 26
    const-string v0, "com.adi.collie.ACTION_WEIBO_NUM_CHANGE"

    invoke-static {v0, p0}, Lcom/alibaba/adi/collie/broadcast/BroadcastHelper;->send(Ljava/lang/String;I)V

    .line 27
    return-void
.end method
