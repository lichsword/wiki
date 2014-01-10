.class Lcom/alibaba/adi/collie/business/weibo/api/WeiboHelper$1;
.super Ljava/lang/Object;
.source "WeiboHelper.java"

# interfaces
.implements Lcom/weibo/sdk/android/net/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/adi/collie/business/weibo/api/WeiboHelper;->getWeiboUnreadCount(Lcom/weibo/sdk/android/Oauth2AccessToken;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$token:Lcom/weibo/sdk/android/Oauth2AccessToken;


# direct methods
.method constructor <init>(Lcom/weibo/sdk/android/Oauth2AccessToken;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alibaba/adi/collie/business/weibo/api/WeiboHelper$1;->val$token:Lcom/weibo/sdk/android/Oauth2AccessToken;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/String;)V
    .locals 5
    .parameter "s"

    .prologue
    .line 42
    sget-object v2, Lcom/alibaba/adi/collie/business/weibo/api/WeiboHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "xhh: unreadcount onComplete"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-static {p1}, Lcom/alibaba/adi/collie/model/weibo/WeiboDataParser;->getWeiboUnreadStatus(Ljava/lang/String;)Lcom/alibaba/adi/collie/model/weibo/WeiboUnreadStatus;

    move-result-object v1

    .line 45
    .local v1, unreadStatus:Lcom/alibaba/adi/collie/model/weibo/WeiboUnreadStatus;
    invoke-static {}, Lcom/alibaba/adi/collie/business/weibo/api/WeiboHelper;->access$0()[B

    move-result-object v3

    monitor-enter v3

    .line 46
    :try_start_0
    invoke-static {}, Lcom/alibaba/adi/collie/business/weibo/api/WeiboHelper;->access$1()Lcom/alibaba/adi/collie/model/weibo/WeiboUnreadStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/adi/collie/model/weibo/WeiboUnreadStatus;->init()V

    .line 45
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    new-instance v0, Lcom/alibaba/adi/collie/business/weibo/api/CommentsAPI;

    iget-object v2, p0, Lcom/alibaba/adi/collie/business/weibo/api/WeiboHelper$1;->val$token:Lcom/weibo/sdk/android/Oauth2AccessToken;

    invoke-direct {v0, v2}, Lcom/alibaba/adi/collie/business/weibo/api/CommentsAPI;-><init>(Lcom/weibo/sdk/android/Oauth2AccessToken;)V

    .line 49
    .local v0, commentsAPI:Lcom/alibaba/adi/collie/business/weibo/api/CommentsAPI;
    invoke-virtual {v1}, Lcom/alibaba/adi/collie/model/weibo/WeiboUnreadStatus;->getCmt()I

    move-result v2

    #calls: Lcom/alibaba/adi/collie/business/weibo/api/WeiboHelper;->getWeiboNewComments(Lcom/alibaba/adi/collie/business/weibo/api/CommentsAPI;I)V
    invoke-static {v0, v2}, Lcom/alibaba/adi/collie/business/weibo/api/WeiboHelper;->access$2(Lcom/alibaba/adi/collie/business/weibo/api/CommentsAPI;I)V

    .line 50
    iget-object v2, p0, Lcom/alibaba/adi/collie/business/weibo/api/WeiboHelper$1;->val$token:Lcom/weibo/sdk/android/Oauth2AccessToken;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/model/weibo/WeiboUnreadStatus;->getDm()I

    move-result v3

    #calls: Lcom/alibaba/adi/collie/business/weibo/api/WeiboHelper;->getWeiboPrivateMsg(Lcom/weibo/sdk/android/Oauth2AccessToken;I)V
    invoke-static {v2, v3}, Lcom/alibaba/adi/collie/business/weibo/api/WeiboHelper;->access$3(Lcom/weibo/sdk/android/Oauth2AccessToken;I)V

    .line 52
    invoke-virtual {v1}, Lcom/alibaba/adi/collie/model/weibo/WeiboUnreadStatus;->getMentionCmt()I

    move-result v2

    .line 51
    #calls: Lcom/alibaba/adi/collie/business/weibo/api/WeiboHelper;->getWeiboNewAtFromComment(Lcom/alibaba/adi/collie/business/weibo/api/CommentsAPI;I)V
    invoke-static {v0, v2}, Lcom/alibaba/adi/collie/business/weibo/api/WeiboHelper;->access$4(Lcom/alibaba/adi/collie/business/weibo/api/CommentsAPI;I)V

    .line 53
    iget-object v2, p0, Lcom/alibaba/adi/collie/business/weibo/api/WeiboHelper$1;->val$token:Lcom/weibo/sdk/android/Oauth2AccessToken;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/model/weibo/WeiboUnreadStatus;->getMentionStatus()I

    move-result v3

    #calls: Lcom/alibaba/adi/collie/business/weibo/api/WeiboHelper;->getWeiboNewAtFromStatus(Lcom/weibo/sdk/android/Oauth2AccessToken;I)V
    invoke-static {v2, v3}, Lcom/alibaba/adi/collie/business/weibo/api/WeiboHelper;->access$5(Lcom/weibo/sdk/android/Oauth2AccessToken;I)V

    .line 54
    return-void

    .line 45
    .end local v0           #commentsAPI:Lcom/alibaba/adi/collie/business/weibo/api/CommentsAPI;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public onComplete4binary(Ljava/io/ByteArrayOutputStream;)V
    .locals 0
    .parameter "byteArrayOutputStream"

    .prologue
    .line 60
    return-void
.end method

.method public onError(Lcom/weibo/sdk/android/WeiboException;)V
    .locals 3
    .parameter "e"

    .prologue
    .line 70
    sget-object v0, Lcom/alibaba/adi/collie/business/weibo/api/WeiboHelper;->TAG:Ljava/lang/String;

    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "xhh: unreadcount onIOException"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/weibo/sdk/android/WeiboException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 70
    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public onIOException(Ljava/io/IOException;)V
    .locals 3
    .parameter "e"

    .prologue
    .line 64
    sget-object v0, Lcom/alibaba/adi/collie/business/weibo/api/WeiboHelper;->TAG:Ljava/lang/String;

    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "xhh: unreadcount onIOException"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 64
    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    return-void
.end method
