.class Lcom/alibaba/adi/collie/business/weibo/api/WeiboHelper$4;
.super Ljava/lang/Object;
.source "WeiboHelper.java"

# interfaces
.implements Lcom/weibo/sdk/android/net/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/adi/collie/business/weibo/api/WeiboHelper;->getWeiboNewComments(Lcom/alibaba/adi/collie/business/weibo/api/CommentsAPI;I)V
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
    iput p1, p0, Lcom/alibaba/adi/collie/business/weibo/api/WeiboHelper$4;->val$count:I

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/String;)V
    .locals 3
    .parameter "response"

    .prologue
    .line 192
    sget-object v0, Lcom/alibaba/adi/collie/business/weibo/api/WeiboHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "xhh: comments"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    const-string v0, "weibo_comment"

    invoke-static {v0, p1}, Lcom/alibaba/adi/collie/util/FileUtil;->writeStorage(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    invoke-static {}, Lcom/alibaba/adi/collie/business/weibo/api/WeiboHelper;->access$0()[B

    move-result-object v1

    monitor-enter v1

    .line 196
    :try_start_0
    invoke-static {}, Lcom/alibaba/adi/collie/business/weibo/api/WeiboHelper;->access$1()Lcom/alibaba/adi/collie/model/weibo/WeiboUnreadStatus;

    move-result-object v0

    iget v2, p0, Lcom/alibaba/adi/collie/business/weibo/api/WeiboHelper$4;->val$count:I

    invoke-virtual {v0, v2}, Lcom/alibaba/adi/collie/model/weibo/WeiboUnreadStatus;->setCmt(I)V

    .line 197
    invoke-static {}, Lcom/alibaba/adi/collie/business/weibo/api/WeiboHelper;->access$1()Lcom/alibaba/adi/collie/model/weibo/WeiboUnreadStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/model/weibo/WeiboUnreadStatus;->getCount()I

    move-result v0

    #calls: Lcom/alibaba/adi/collie/business/weibo/api/WeiboHelper;->setSystemNotifyCount(I)V
    invoke-static {v0}, Lcom/alibaba/adi/collie/business/weibo/api/WeiboHelper;->access$6(I)V

    .line 195
    monitor-exit v1

    .line 199
    return-void

    .line 195
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
    .line 205
    return-void
.end method

.method public onError(Lcom/weibo/sdk/android/WeiboException;)V
    .locals 4
    .parameter "arg0"

    .prologue
    .line 180
    sget-object v1, Lcom/alibaba/adi/collie/business/weibo/api/WeiboHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "xhh: onError"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/weibo/sdk/android/WeiboException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    invoke-virtual {p1}, Lcom/weibo/sdk/android/WeiboException;->getStatusCode()I

    move-result v0

    .line 183
    .local v0, statusCode:I
    sget-object v1, Lcom/alibaba/adi/collie/business/weibo/api/WeiboHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "statusCode"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/weibo/sdk/android/WeiboException;->getStatusCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    const/16 v1, 0x193

    if-eq v0, v1, :cond_0

    const v1, 0x9caf

    if-eq v0, v1, :cond_0

    .line 185
    const v1, 0x9d6e

    if-ne v0, v1, :cond_1

    .line 186
    :cond_0
    sget-object v1, Lcom/alibaba/adi/collie/business/weibo/api/WeiboHelper;->TAG:Ljava/lang/String;

    const-string v2, "xhh get comments error"

    invoke-static {v1, v2}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    :cond_1
    return-void
.end method

.method public onIOException(Ljava/io/IOException;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 173
    sget-object v0, Lcom/alibaba/adi/collie/business/weibo/api/WeiboHelper;->TAG:Ljava/lang/String;

    .line 174
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "xhh: onIOException"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 173
    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    return-void
.end method
