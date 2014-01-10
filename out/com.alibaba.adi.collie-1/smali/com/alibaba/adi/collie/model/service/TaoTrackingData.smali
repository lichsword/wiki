.class public Lcom/alibaba/adi/collie/model/service/TaoTrackingData;
.super Ljava/lang/Object;
.source "TaoTrackingData.java"


# instance fields
.field isNew:Z

.field items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/adi/collie/model/service/TaoItem;",
            ">;"
        }
    .end annotation
.end field

.field lastTransitSteps:Lcom/alibaba/adi/collie/model/service/TaoTransitStep;

.field logisticsCompanyName:Ljava/lang/String;

.field logisticsInvoiceNo:Ljava/lang/String;

.field logisticsModifiedTime:Ljava/lang/String;

.field publishTime:Ljava/lang/String;

.field totalItems:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/adi/collie/model/service/TaoItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 116
    iget-object v0, p0, Lcom/alibaba/adi/collie/model/service/TaoTrackingData;->items:Ljava/util/List;

    return-object v0
.end method

.method public getLastTransitSteps()Lcom/alibaba/adi/collie/model/service/TaoTransitStep;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/alibaba/adi/collie/model/service/TaoTrackingData;->lastTransitSteps:Lcom/alibaba/adi/collie/model/service/TaoTransitStep;

    return-object v0
.end method

.method public getLogisticsCompanyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/alibaba/adi/collie/model/service/TaoTrackingData;->logisticsCompanyName:Ljava/lang/String;

    return-object v0
.end method

.method public getLogisticsInvoiceNo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/alibaba/adi/collie/model/service/TaoTrackingData;->logisticsInvoiceNo:Ljava/lang/String;

    return-object v0
.end method

.method public getLogisticsModifiedTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/alibaba/adi/collie/model/service/TaoTrackingData;->logisticsModifiedTime:Ljava/lang/String;

    return-object v0
.end method

.method public getPublishTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/alibaba/adi/collie/model/service/TaoTrackingData;->publishTime:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalItems()I
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lcom/alibaba/adi/collie/model/service/TaoTrackingData;->totalItems:I

    return v0
.end method

.method public isNew()Z
    .locals 1

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/alibaba/adi/collie/model/service/TaoTrackingData;->isNew:Z

    return v0
.end method

.method public setItems(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/adi/collie/model/service/TaoItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 120
    .local p1, items:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/adi/collie/model/service/TaoItem;>;"
    iput-object p1, p0, Lcom/alibaba/adi/collie/model/service/TaoTrackingData;->items:Ljava/util/List;

    .line 121
    return-void
.end method

.method public setLastTransitSteps(Lcom/alibaba/adi/collie/model/service/TaoTransitStep;)V
    .locals 0
    .parameter "lastTransitSteps"

    .prologue
    .line 128
    iput-object p1, p0, Lcom/alibaba/adi/collie/model/service/TaoTrackingData;->lastTransitSteps:Lcom/alibaba/adi/collie/model/service/TaoTransitStep;

    .line 129
    return-void
.end method

.method public setLogisticsCompanyName(Ljava/lang/String;)V
    .locals 0
    .parameter "logisticsCompanyName"

    .prologue
    .line 96
    iput-object p1, p0, Lcom/alibaba/adi/collie/model/service/TaoTrackingData;->logisticsCompanyName:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public setLogisticsInvoiceNo(Ljava/lang/String;)V
    .locals 0
    .parameter "logisticsInvoiceNo"

    .prologue
    .line 104
    iput-object p1, p0, Lcom/alibaba/adi/collie/model/service/TaoTrackingData;->logisticsInvoiceNo:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public setLogisticsModifiedTime(Ljava/lang/String;)V
    .locals 0
    .parameter "logisticsModifiedTime"

    .prologue
    .line 112
    iput-object p1, p0, Lcom/alibaba/adi/collie/model/service/TaoTrackingData;->logisticsModifiedTime:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public setNew(Z)V
    .locals 0
    .parameter "aNew"

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/alibaba/adi/collie/model/service/TaoTrackingData;->isNew:Z

    .line 81
    return-void
.end method

.method public setPublishTime(Ljava/lang/String;)V
    .locals 0
    .parameter "publishTime"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/alibaba/adi/collie/model/service/TaoTrackingData;->publishTime:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public setTotalItems(I)V
    .locals 0
    .parameter "totalItems"

    .prologue
    .line 136
    iput p1, p0, Lcom/alibaba/adi/collie/model/service/TaoTrackingData;->totalItems:I

    .line 137
    return-void
.end method
