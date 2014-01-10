.class public Lcom/alibaba/adi/collie/model/adiserver/AdiAccountResult;
.super Ljava/lang/Object;
.source "AdiAccountResult.java"


# static fields
.field private static final KEY_MAINID:Ljava/lang/String; = "mainId"

.field private static final KEY_PASSWD:Ljava/lang/String; = "passwd"


# instance fields
.field private retCode:I

.field private retData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMainId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/alibaba/adi/collie/model/adiserver/AdiAccountResult;->retData:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/adi/collie/model/adiserver/AdiAccountResult;->retData:Ljava/util/Map;

    const-string v1, "mainId"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/alibaba/adi/collie/model/adiserver/AdiAccountResult;->retData:Ljava/util/Map;

    const-string v1, "mainId"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 44
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPasswd()Ljava/lang/String;
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/alibaba/adi/collie/model/adiserver/AdiAccountResult;->retData:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/adi/collie/model/adiserver/AdiAccountResult;->retData:Ljava/util/Map;

    const-string v1, "passwd"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/alibaba/adi/collie/model/adiserver/AdiAccountResult;->retData:Ljava/util/Map;

    const-string v1, "passwd"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 52
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRetCode()I
    .locals 1

    .prologue
    .line 17
    iget v0, p0, Lcom/alibaba/adi/collie/model/adiserver/AdiAccountResult;->retCode:I

    return v0
.end method

.method public getRetData()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 33
    iget-object v0, p0, Lcom/alibaba/adi/collie/model/adiserver/AdiAccountResult;->retData:Ljava/util/Map;

    return-object v0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/model/adiserver/AdiAccountResult;->getMainId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/adi/collie/model/adiserver/AdiAccountResult;->getMainId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 58
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/model/adiserver/AdiAccountResult;->getPasswd()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/adi/collie/model/adiserver/AdiAccountResult;->getPasswd()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 57
    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setRetCode(I)V
    .locals 0
    .parameter "retCode"

    .prologue
    .line 21
    iput p1, p0, Lcom/alibaba/adi/collie/model/adiserver/AdiAccountResult;->retCode:I

    .line 22
    return-void
.end method

.method public setRetData(Ljava/util/Map;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p1, retData:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/alibaba/adi/collie/model/adiserver/AdiAccountResult;->retData:Ljava/util/Map;

    .line 38
    return-void
.end method
