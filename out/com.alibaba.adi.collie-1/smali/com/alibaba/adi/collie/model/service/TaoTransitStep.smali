.class public Lcom/alibaba/adi/collie/model/service/TaoTransitStep;
.super Ljava/lang/Object;
.source "TaoTransitStep.java"


# instance fields
.field eventType:I

.field nodeDescription:Ljava/lang/String;

.field statusDesc:Ljava/lang/String;

.field statusTime:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEventType()I
    .locals 1

    .prologue
    .line 14
    iget v0, p0, Lcom/alibaba/adi/collie/model/service/TaoTransitStep;->eventType:I

    return v0
.end method

.method public getNodeDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/alibaba/adi/collie/model/service/TaoTransitStep;->nodeDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/alibaba/adi/collie/model/service/TaoTransitStep;->statusDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alibaba/adi/collie/model/service/TaoTransitStep;->statusTime:Ljava/lang/String;

    return-object v0
.end method

.method public setEventType(I)V
    .locals 0
    .parameter "eventType"

    .prologue
    .line 18
    iput p1, p0, Lcom/alibaba/adi/collie/model/service/TaoTransitStep;->eventType:I

    .line 19
    return-void
.end method

.method public setNodeDescription(Ljava/lang/String;)V
    .locals 0
    .parameter "nodeDescription"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/alibaba/adi/collie/model/service/TaoTransitStep;->nodeDescription:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setStatusDesc(Ljava/lang/String;)V
    .locals 0
    .parameter "statusDesc"

    .prologue
    .line 26
    iput-object p1, p0, Lcom/alibaba/adi/collie/model/service/TaoTransitStep;->statusDesc:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public setStatusTime(Ljava/lang/String;)V
    .locals 0
    .parameter "statusTime"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/alibaba/adi/collie/model/service/TaoTransitStep;->statusTime:Ljava/lang/String;

    .line 43
    return-void
.end method
