.class public Lcom/alibaba/adi/collie/model/service/VideoData;
.super Ljava/lang/Object;
.source "VideoData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/adi/collie/model/service/VideoData$LogoPic;
    }
.end annotation


# instance fields
.field desc:Ljava/lang/String;

.field id:Ljava/lang/String;

.field logopic:Lcom/alibaba/adi/collie/model/service/VideoData$LogoPic;

.field name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/alibaba/adi/collie/model/service/VideoData;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/alibaba/adi/collie/model/service/VideoData;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLogopic()Lcom/alibaba/adi/collie/model/service/VideoData$LogoPic;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alibaba/adi/collie/model/service/VideoData;->logopic:Lcom/alibaba/adi/collie/model/service/VideoData$LogoPic;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/alibaba/adi/collie/model/service/VideoData;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setDesc(Ljava/lang/String;)V
    .locals 0
    .parameter "desc"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/alibaba/adi/collie/model/service/VideoData;->desc:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 19
    iput-object p1, p0, Lcom/alibaba/adi/collie/model/service/VideoData;->id:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public setLogopic(Lcom/alibaba/adi/collie/model/service/VideoData$LogoPic;)V
    .locals 0
    .parameter "logopic"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/alibaba/adi/collie/model/service/VideoData;->logopic:Lcom/alibaba/adi/collie/model/service/VideoData$LogoPic;

    .line 44
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/alibaba/adi/collie/model/service/VideoData;->name:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public toJsonStr()Ljava/lang/String;
    .locals 2

    .prologue
    .line 47
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 48
    .local v0, gson:Lcom/google/gson/Gson;
    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
