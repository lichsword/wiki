.class public Lcom/alibaba/adi/collie/model/service/YuebaoData;
.super Ljava/lang/Object;
.source "YuebaoData.java"


# instance fields
.field date:Ljava/lang/String;

.field id:Ljava/lang/String;

.field publishTime:Ljava/lang/String;

.field qrnh:D

.field type:I

.field wfsy:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/alibaba/adi/collie/model/service/YuebaoData;->date:Ljava/lang/String;

    return-object v0
.end method

.method public getDateObj()Ljava/util/Date;
    .locals 3

    .prologue
    .line 43
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 45
    .local v1, simpleDateFormat:Ljava/text/SimpleDateFormat;
    :try_start_0
    iget-object v2, p0, Lcom/alibaba/adi/collie/model/service/YuebaoData;->date:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 48
    :goto_0
    return-object v2

    .line 46
    :catch_0
    move-exception v0

    .line 47
    .local v0, e:Ljava/text/ParseException;
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    .line 48
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/alibaba/adi/collie/model/service/YuebaoData;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getPublishTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/alibaba/adi/collie/model/service/YuebaoData;->publishTime:Ljava/lang/String;

    return-object v0
.end method

.method public getQrnh()D
    .locals 2

    .prologue
    .line 61
    iget-wide v0, p0, Lcom/alibaba/adi/collie/model/service/YuebaoData;->qrnh:D

    return-wide v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/alibaba/adi/collie/model/service/YuebaoData;->type:I

    return v0
.end method

.method public getWfsy()D
    .locals 2

    .prologue
    .line 53
    iget-wide v0, p0, Lcom/alibaba/adi/collie/model/service/YuebaoData;->wfsy:D

    return-wide v0
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 0
    .parameter "date"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/alibaba/adi/collie/model/service/YuebaoData;->date:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 89
    iput-object p1, p0, Lcom/alibaba/adi/collie/model/service/YuebaoData;->id:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setPublishTime(Ljava/lang/String;)V
    .locals 0
    .parameter "publishTime"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/alibaba/adi/collie/model/service/YuebaoData;->publishTime:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setQrnh(D)V
    .locals 0
    .parameter "qrnh"

    .prologue
    .line 65
    iput-wide p1, p0, Lcom/alibaba/adi/collie/model/service/YuebaoData;->qrnh:D

    .line 66
    return-void
.end method

.method public setType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 81
    iput p1, p0, Lcom/alibaba/adi/collie/model/service/YuebaoData;->type:I

    .line 82
    return-void
.end method

.method public setWfsy(D)V
    .locals 0
    .parameter "wfsy"

    .prologue
    .line 57
    iput-wide p1, p0, Lcom/alibaba/adi/collie/model/service/YuebaoData;->wfsy:D

    .line 58
    return-void
.end method
