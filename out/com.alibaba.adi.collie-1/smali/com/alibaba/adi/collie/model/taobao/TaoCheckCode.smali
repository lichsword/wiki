.class public Lcom/alibaba/adi/collie/model/taobao/TaoCheckCode;
.super Ljava/lang/Object;
.source "TaoCheckCode.java"


# instance fields
.field private checkCode:Ljava/lang/String;

.field private checkCodeId:Ljava/lang/String;

.field private checkCodeUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCheckCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/alibaba/adi/collie/model/taobao/TaoCheckCode;->checkCode:Ljava/lang/String;

    return-object v0
.end method

.method public getCheckCodeId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/alibaba/adi/collie/model/taobao/TaoCheckCode;->checkCodeId:Ljava/lang/String;

    return-object v0
.end method

.method public getCheckCodeUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/alibaba/adi/collie/model/taobao/TaoCheckCode;->checkCodeUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setCheckCode(Ljava/lang/String;)V
    .locals 0
    .parameter "checkCode"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/alibaba/adi/collie/model/taobao/TaoCheckCode;->checkCode:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setCheckCodeId(Ljava/lang/String;)V
    .locals 0
    .parameter "checkCodeId"

    .prologue
    .line 16
    iput-object p1, p0, Lcom/alibaba/adi/collie/model/taobao/TaoCheckCode;->checkCodeId:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public setCheckCodeUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "checkCodeUrl"

    .prologue
    .line 24
    iput-object p1, p0, Lcom/alibaba/adi/collie/model/taobao/TaoCheckCode;->checkCodeUrl:Ljava/lang/String;

    .line 25
    return-void
.end method
