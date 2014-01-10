.class Lcom/alibaba/adi/collie/business/weibo/api/WeiboHelper$3;
.super Ljava/lang/Object;
.source "WeiboHelper.java"

# interfaces
.implements Lcom/weibo/sdk/android/net/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/adi/collie/business/weibo/api/WeiboHelper;->getWeiboNewAtFromStatus(Lcom/weibo/sdk/android/Oauth2AccessToken;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$count:I


# direct methods
.method constructor <init>(I)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput p1, p0, Lcom/alibaba/adi/collie/business/weibo/api/WeiboHelper$3;->val$count:I

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 134
    sget-object v0, Lcom/alibaba/adi/collie/business/weibo/api/WeiboHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "xhh: @"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const-string v0, "weibo_at_from_status"

    .line 135
    invoke-static {v0, p1}, Lcom/alibaba/adi/collie/util/FileUtil;->writeStorage(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-static {}, Lcom/alibaba/adi/collie/business/weibo/api/WeiboHelper;->access$0()[B

    move-result-object v1

    monitor-enter v1

    .line 138
    :try_start_0
    invoke-static {}, Lcom/alibaba/adi/collie/business/weibo/api/WeiboHelper;->access$1()Lcom/alibaba/adi/collie/model/weibo/WeiboUnreadStatus;

    move-result-object v0

    iget v2, p0, Lcom/alibaba/adi/collie/business/weibo/api/WeiboHelper$3;->val$count:I

    invoke-virtual {v0, v2}, Lcom/alibaba/adi/collie/model/weibo/WeiboUnreadStatus;->setMentionStatus(I)V

    .line 139
    invoke-static {}, Lcom/alibaba/adi/collie/business/weibo/api/WeiboHelper;->access$1()Lcom/alibaba/adi/collie/model/weibo/WeiboUnreadStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/model/weibo/WeiboUnreadStatus;->getCount()I

    move-result v0

    #calls: Lcom/alibaba/adi/collie/business/weibo/api/WeiboHelper;->setSystemNotifyCount(I)V
    invoke-static {v0}, Lcom/alibaba/adi/collie/business/weibo/api/WeiboHelper;->access$6(I)V

    .line 137
    monitor-exit v1

    .line 141
    return-void

    .line 137
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onComplete4binary(Ljava/io/ByteArrayOutputStream;)V
    .locals 0
    .parameter "byteArrayOutputStream"

    .prologue
    .line 147
    return-void
.end method

.method public onError(Lcom/weibo/sdk/android/WeiboException;)V
    .locals 3
    .parameter "e"

    .prologue
    .line 157
    sget-object v0, Lcom/alibaba/adi/collie/business/weibo/api/WeiboHelper;->TAG:Ljava/lang/String;

    .line 158
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "new at from mStatus onError "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/weibo/sdk/android/WeiboException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 157
    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    return-void
.end method

.method public onIOException(Ljava/io/IOException;)V
    .locals 3
    .parameter "e"

    .prologue
    .line 151
    sget-object v0, Lcom/alibaba/adi/collie/business/weibo/api/WeiboHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "new at from status onIOException "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 151
    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    return-void
.end method
