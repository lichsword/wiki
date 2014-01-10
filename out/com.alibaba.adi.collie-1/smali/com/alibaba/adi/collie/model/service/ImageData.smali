.class public Lcom/alibaba/adi/collie/model/service/ImageData;
.super Ljava/lang/Object;
.source "ImageData.java"


# instance fields
.field height:Ljava/lang/String;

.field urls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field width:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "width"
    .parameter "height"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 18
    .local p1, urls:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/alibaba/adi/collie/model/service/ImageData;->urls:Ljava/util/List;

    .line 20
    iput-object p2, p0, Lcom/alibaba/adi/collie/model/service/ImageData;->width:Ljava/lang/String;

    .line 21
    iput-object p3, p0, Lcom/alibaba/adi/collie/model/service/ImageData;->height:Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method public getHeight()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/alibaba/adi/collie/model/service/ImageData;->height:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/alibaba/adi/collie/model/service/ImageData;->urls:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/adi/collie/model/service/ImageData;->urls:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 26
    :cond_0
    const/4 v0, 0x0

    .line 29
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/alibaba/adi/collie/model/service/ImageData;->urls:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getUrls()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 33
    iget-object v0, p0, Lcom/alibaba/adi/collie/model/service/ImageData;->urls:Ljava/util/List;

    return-object v0
.end method

.method public getWidth()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/alibaba/adi/collie/model/service/ImageData;->width:Ljava/lang/String;

    return-object v0
.end method

.method public setHeight(Ljava/lang/String;)V
    .locals 0
    .parameter "mHeight"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/alibaba/adi/collie/model/service/ImageData;->height:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setUrls(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p1, urls:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/alibaba/adi/collie/model/service/ImageData;->urls:Ljava/util/List;

    .line 38
    return-void
.end method

.method public setWidth(Ljava/lang/String;)V
    .locals 0
    .parameter "mWidth"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/alibaba/adi/collie/model/service/ImageData;->width:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public toJsonStr()Ljava/lang/String;
    .locals 2

    .prologue
    .line 57
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 58
    .local v0, gson:Lcom/google/gson/Gson;
    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
