.class public Lcom/alibaba/adi/collie/model/service/ImageFunnyJokeBase;
.super Ljava/lang/Object;
.source "ImageFunnyJokeBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/adi/collie/model/service/ImageFunnyJokeBase$Tag;
    }
.end annotation


# instance fields
.field display_time:Ljava/lang/String;

.field tag:Lcom/alibaba/adi/collie/model/service/ImageFunnyJokeBase$Tag;

.field toutiao_wap_url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDisplay_time()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/alibaba/adi/collie/model/service/ImageFunnyJokeBase;->display_time:Ljava/lang/String;

    return-object v0
.end method

.method public getTag()Lcom/alibaba/adi/collie/model/service/ImageFunnyJokeBase$Tag;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/alibaba/adi/collie/model/service/ImageFunnyJokeBase;->tag:Lcom/alibaba/adi/collie/model/service/ImageFunnyJokeBase$Tag;

    return-object v0
.end method

.method public getToutiao_wap_url()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/alibaba/adi/collie/model/service/ImageFunnyJokeBase;->toutiao_wap_url:Ljava/lang/String;

    return-object v0
.end method

.method public setDisplay_time(Ljava/lang/String;)V
    .locals 0
    .parameter "display_time"

    .prologue
    .line 26
    iput-object p1, p0, Lcom/alibaba/adi/collie/model/service/ImageFunnyJokeBase;->display_time:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public setTag(Lcom/alibaba/adi/collie/model/service/ImageFunnyJokeBase$Tag;)V
    .locals 0
    .parameter "tag"

    .prologue
    .line 18
    iput-object p1, p0, Lcom/alibaba/adi/collie/model/service/ImageFunnyJokeBase;->tag:Lcom/alibaba/adi/collie/model/service/ImageFunnyJokeBase$Tag;

    .line 19
    return-void
.end method

.method public setToutiao_wap_url(Ljava/lang/String;)V
    .locals 0
    .parameter "toutiao_wap_url"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/alibaba/adi/collie/model/service/ImageFunnyJokeBase;->toutiao_wap_url:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public toJsonStr()Ljava/lang/String;
    .locals 2

    .prologue
    .line 42
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 43
    .local v0, gson:Lcom/google/gson/Gson;
    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
