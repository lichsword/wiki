.class public Lcom/alibaba/adi/collie/model/service/ImageFunnyData;
.super Lcom/alibaba/adi/collie/model/service/ImageFunnyJokeBase;
.source "ImageFunnyData.java"


# instance fields
.field bury_count:I

.field comment_count:I

.field description:Ljava/lang/String;

.field digg_count:I

.field favorite_count:I

.field id:Ljava/lang/String;

.field middle_image:Lcom/alibaba/adi/collie/model/service/ImageData;

.field origin_image:Lcom/alibaba/adi/collie/model/service/ImageData;

.field thumb_image:Lcom/alibaba/adi/collie/model/service/ImageData;

.field toutiao_url:Ljava/lang/String;

.field type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/alibaba/adi/collie/model/service/ImageFunnyJokeBase;-><init>()V

    return-void
.end method

.method private getUrlFromImage(Lcom/alibaba/adi/collie/model/service/ImageData;)Ljava/lang/String;
    .locals 1
    .parameter "image"

    .prologue
    .line 165
    if-eqz p1, :cond_0

    .line 166
    invoke-virtual {p1}, Lcom/alibaba/adi/collie/model/service/ImageData;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 168
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getBury_count()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/alibaba/adi/collie/model/service/ImageFunnyData;->bury_count:I

    return v0
.end method

.method public getComment_count()I
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lcom/alibaba/adi/collie/model/service/ImageFunnyData;->comment_count:I

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/alibaba/adi/collie/model/service/ImageFunnyData;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getDigg_count()I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcom/alibaba/adi/collie/model/service/ImageFunnyData;->digg_count:I

    return v0
.end method

.method public getFavorite_count()I
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Lcom/alibaba/adi/collie/model/service/ImageFunnyData;->favorite_count:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/alibaba/adi/collie/model/service/ImageFunnyData;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getMiddleImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/alibaba/adi/collie/model/service/ImageFunnyData;->middle_image:Lcom/alibaba/adi/collie/model/service/ImageData;

    invoke-direct {p0, v0}, Lcom/alibaba/adi/collie/model/service/ImageFunnyData;->getUrlFromImage(Lcom/alibaba/adi/collie/model/service/ImageData;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMiddle_image()Lcom/alibaba/adi/collie/model/service/ImageData;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/alibaba/adi/collie/model/service/ImageFunnyData;->middle_image:Lcom/alibaba/adi/collie/model/service/ImageData;

    return-object v0
.end method

.method public getOriginImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/alibaba/adi/collie/model/service/ImageFunnyData;->origin_image:Lcom/alibaba/adi/collie/model/service/ImageData;

    invoke-direct {p0, v0}, Lcom/alibaba/adi/collie/model/service/ImageFunnyData;->getUrlFromImage(Lcom/alibaba/adi/collie/model/service/ImageData;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOrigin_image()Lcom/alibaba/adi/collie/model/service/ImageData;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/alibaba/adi/collie/model/service/ImageFunnyData;->origin_image:Lcom/alibaba/adi/collie/model/service/ImageData;

    return-object v0
.end method

.method public getThumbImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/alibaba/adi/collie/model/service/ImageFunnyData;->thumb_image:Lcom/alibaba/adi/collie/model/service/ImageData;

    invoke-direct {p0, v0}, Lcom/alibaba/adi/collie/model/service/ImageFunnyData;->getUrlFromImage(Lcom/alibaba/adi/collie/model/service/ImageData;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getThumb_image()Lcom/alibaba/adi/collie/model/service/ImageData;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/alibaba/adi/collie/model/service/ImageFunnyData;->thumb_image:Lcom/alibaba/adi/collie/model/service/ImageData;

    return-object v0
.end method

.method public getToutiao_url()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/alibaba/adi/collie/model/service/ImageFunnyData;->toutiao_url:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Lcom/alibaba/adi/collie/model/service/ImageFunnyData;->type:I

    return v0
.end method

.method public setBury_count(I)V
    .locals 0
    .parameter "bury_count"

    .prologue
    .line 105
    iput p1, p0, Lcom/alibaba/adi/collie/model/service/ImageFunnyData;->bury_count:I

    .line 106
    return-void
.end method

.method public setComment_count(I)V
    .locals 0
    .parameter "comment_count"

    .prologue
    .line 121
    iput p1, p0, Lcom/alibaba/adi/collie/model/service/ImageFunnyData;->comment_count:I

    .line 122
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .parameter "description"

    .prologue
    .line 89
    iput-object p1, p0, Lcom/alibaba/adi/collie/model/service/ImageFunnyData;->description:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setDigg_count(I)V
    .locals 0
    .parameter "digg_count"

    .prologue
    .line 113
    iput p1, p0, Lcom/alibaba/adi/collie/model/service/ImageFunnyData;->digg_count:I

    .line 114
    return-void
.end method

.method public setFavorite_count(I)V
    .locals 0
    .parameter "favorite_count"

    .prologue
    .line 137
    iput p1, p0, Lcom/alibaba/adi/collie/model/service/ImageFunnyData;->favorite_count:I

    .line 138
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/alibaba/adi/collie/model/service/ImageFunnyData;->id:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public setMiddle_image(Lcom/alibaba/adi/collie/model/service/ImageData;)V
    .locals 0
    .parameter "middle_image"

    .prologue
    .line 161
    iput-object p1, p0, Lcom/alibaba/adi/collie/model/service/ImageFunnyData;->middle_image:Lcom/alibaba/adi/collie/model/service/ImageData;

    .line 162
    return-void
.end method

.method public setOrigin_image(Lcom/alibaba/adi/collie/model/service/ImageData;)V
    .locals 0
    .parameter "origin_image"

    .prologue
    .line 153
    iput-object p1, p0, Lcom/alibaba/adi/collie/model/service/ImageFunnyData;->origin_image:Lcom/alibaba/adi/collie/model/service/ImageData;

    .line 154
    return-void
.end method

.method public setThumb_image(Lcom/alibaba/adi/collie/model/service/ImageData;)V
    .locals 0
    .parameter "thumb_image"

    .prologue
    .line 145
    iput-object p1, p0, Lcom/alibaba/adi/collie/model/service/ImageFunnyData;->thumb_image:Lcom/alibaba/adi/collie/model/service/ImageData;

    .line 146
    return-void
.end method

.method public setToutiao_url(Ljava/lang/String;)V
    .locals 0
    .parameter "toutiao_url"

    .prologue
    .line 97
    iput-object p1, p0, Lcom/alibaba/adi/collie/model/service/ImageFunnyData;->toutiao_url:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public setType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 129
    iput p1, p0, Lcom/alibaba/adi/collie/model/service/ImageFunnyData;->type:I

    .line 130
    return-void
.end method

.method public toJsonStr()Ljava/lang/String;
    .locals 2

    .prologue
    .line 172
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 173
    .local v0, gson:Lcom/google/gson/Gson;
    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
