.class public Lcom/alibaba/adi/collie/business/taobao/login/mtop/ReconnectWithCheckCodeException;
.super Ljava/lang/RuntimeException;
.source "ReconnectWithCheckCodeException.java"


# instance fields
.field private checkCodeId:Ljava/lang/String;

.field private checkCodeUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "checkCodeId"
    .parameter "checkCodeUrl"

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/alibaba/adi/collie/business/taobao/login/mtop/ReconnectWithCheckCodeException;->checkCodeId:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lcom/alibaba/adi/collie/business/taobao/login/mtop/ReconnectWithCheckCodeException;->checkCodeUrl:Ljava/lang/String;

    .line 29
    return-void
.end method


# virtual methods
.method public getCheckCodeId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/alibaba/adi/collie/business/taobao/login/mtop/ReconnectWithCheckCodeException;->checkCodeId:Ljava/lang/String;

    return-object v0
.end method

.method public getCheckCodeUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/alibaba/adi/collie/business/taobao/login/mtop/ReconnectWithCheckCodeException;->checkCodeUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setCheckCodeId(Ljava/lang/String;)V
    .locals 0
    .parameter "checkCodeId"

    .prologue
    .line 23
    iput-object p1, p0, Lcom/alibaba/adi/collie/business/taobao/login/mtop/ReconnectWithCheckCodeException;->checkCodeId:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public setCheckCodeUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "checkCodeUrl"

    .prologue
    .line 15
    iput-object p1, p0, Lcom/alibaba/adi/collie/business/taobao/login/mtop/ReconnectWithCheckCodeException;->checkCodeUrl:Ljava/lang/String;

    .line 16
    return-void
.end method
