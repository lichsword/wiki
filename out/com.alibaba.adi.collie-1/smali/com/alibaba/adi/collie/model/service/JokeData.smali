.class public Lcom/alibaba/adi/collie/model/service/JokeData;
.super Lcom/alibaba/adi/collie/model/service/ImageFunnyJokeBase;
.source "JokeData.java"


# instance fields
.field bury_count:I

.field comment_count:I

.field content:Ljava/lang/String;

.field digg_count:I

.field favorite_count:I

.field id:Ljava/lang/String;

.field toutiao_url:Ljava/lang/String;

.field type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/alibaba/adi/collie/model/service/ImageFunnyJokeBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getBury_count()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/alibaba/adi/collie/model/service/JokeData;->bury_count:I

    return v0
.end method

.method public getComment_count()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/alibaba/adi/collie/model/service/JokeData;->comment_count:I

    return v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/alibaba/adi/collie/model/service/JokeData;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getDigg_count()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/alibaba/adi/collie/model/service/JokeData;->digg_count:I

    return v0
.end method

.method public getFavorite_count()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/alibaba/adi/collie/model/service/JokeData;->favorite_count:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/alibaba/adi/collie/model/service/JokeData;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getToutiao_url()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alibaba/adi/collie/model/service/JokeData;->toutiao_url:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/alibaba/adi/collie/model/service/JokeData;->type:I

    return v0
.end method

.method public setBury_count(I)V
    .locals 0
    .parameter "bury_count"

    .prologue
    .line 50
    iput p1, p0, Lcom/alibaba/adi/collie/model/service/JokeData;->bury_count:I

    .line 51
    return-void
.end method

.method public setComment_count(I)V
    .locals 0
    .parameter "comment_count"

    .prologue
    .line 74
    iput p1, p0, Lcom/alibaba/adi/collie/model/service/JokeData;->comment_count:I

    .line 75
    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0
    .parameter "content"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/alibaba/adi/collie/model/service/JokeData;->content:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public setDigg_count(I)V
    .locals 0
    .parameter "digg_count"

    .prologue
    .line 58
    iput p1, p0, Lcom/alibaba/adi/collie/model/service/JokeData;->digg_count:I

    .line 59
    return-void
.end method

.method public setFavorite_count(I)V
    .locals 0
    .parameter "favorite_count"

    .prologue
    .line 98
    iput p1, p0, Lcom/alibaba/adi/collie/model/service/JokeData;->favorite_count:I

    .line 99
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/alibaba/adi/collie/model/service/JokeData;->id:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public setToutiao_url(Ljava/lang/String;)V
    .locals 0
    .parameter "toutiao_url"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/alibaba/adi/collie/model/service/JokeData;->toutiao_url:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 82
    iput p1, p0, Lcom/alibaba/adi/collie/model/service/JokeData;->type:I

    .line 83
    return-void
.end method

.method public toJsonStr()Ljava/lang/String;
    .locals 2

    .prologue
    .line 102
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 103
    .local v0, gson:Lcom/google/gson/Gson;
    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
