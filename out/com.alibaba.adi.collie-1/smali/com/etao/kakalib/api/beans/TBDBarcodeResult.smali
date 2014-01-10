.class public Lcom/etao/kakalib/api/beans/TBDBarcodeResult;
.super Lcom/etao/kakalib/api/beans/BaseResult;
.source "TBDBarcodeResult.java"


# static fields
.field private static final serialVersionUID:J = 0x6cdb8414d5cb7d23L


# instance fields
.field private action:Ljava/lang/String;

.field private actionId:Ljava/lang/String;

.field private actionIdType:Ljava/lang/String;

.field private targetURL:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Lcom/etao/kakalib/api/beans/BaseResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/TBDBarcodeResult;->action:Ljava/lang/String;

    return-object v0
.end method

.method public getActionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/TBDBarcodeResult;->actionId:Ljava/lang/String;

    return-object v0
.end method

.method public getActionIdType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/TBDBarcodeResult;->actionIdType:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/TBDBarcodeResult;->targetURL:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/TBDBarcodeResult;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setAction(Ljava/lang/String;)V
    .locals 0
    .parameter "action"

    .prologue
    .line 26
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/TBDBarcodeResult;->action:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public setActionId(Ljava/lang/String;)V
    .locals 0
    .parameter "actionId"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/TBDBarcodeResult;->actionId:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setActionIdType(Ljava/lang/String;)V
    .locals 0
    .parameter "actionIdType"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/TBDBarcodeResult;->actionIdType:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setTargetURL(Ljava/lang/String;)V
    .locals 0
    .parameter "targetURL"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/TBDBarcodeResult;->targetURL:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 18
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/TBDBarcodeResult;->type:Ljava/lang/String;

    .line 19
    return-void
.end method
