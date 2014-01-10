.class Lcom/alibaba/adi/collie/model/weibo/WeiboDataParser$1;
.super Ljava/lang/Object;
.source "WeiboDataParser.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/adi/collie/model/weibo/WeiboDataParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/alibaba/adi/collie/model/weibo/WeiboComment;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public compare(Lcom/alibaba/adi/collie/model/weibo/WeiboComment;Lcom/alibaba/adi/collie/model/weibo/WeiboComment;)I
    .locals 6
    .parameter "weiboComment"
    .parameter "weiboComment2"

    .prologue
    .line 263
    invoke-virtual {p1}, Lcom/alibaba/adi/collie/model/weibo/WeiboComment;->getCreatedAt()Ljava/lang/String;

    move-result-object v4

    .line 264
    const-string v5, "yyyy-MM-dd HH:mm:ss"

    .line 263
    invoke-static {v4, v5}, Lcom/alibaba/adi/collie/util/DateUtil;->getTimeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    .line 265
    .local v0, firstTime:J
    invoke-virtual {p2}, Lcom/alibaba/adi/collie/model/weibo/WeiboComment;->getCreatedAt()Ljava/lang/String;

    move-result-object v4

    .line 266
    const-string v5, "yyyy-MM-dd HH:mm:ss"

    .line 265
    invoke-static {v4, v5}, Lcom/alibaba/adi/collie/util/DateUtil;->getTimeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    .line 267
    .local v2, secondTime:J
    sub-long v4, v0, v2

    long-to-int v4, v4

    return v4
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/alibaba/adi/collie/model/weibo/WeiboComment;

    check-cast p2, Lcom/alibaba/adi/collie/model/weibo/WeiboComment;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/adi/collie/model/weibo/WeiboDataParser$1;->compare(Lcom/alibaba/adi/collie/model/weibo/WeiboComment;Lcom/alibaba/adi/collie/model/weibo/WeiboComment;)I

    move-result v0

    return v0
.end method
