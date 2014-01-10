.class public Lcom/alibaba/adi/collie/model/service/TaoItem;
.super Ljava/lang/Object;
.source "TaoItem.java"


# instance fields
.field auctionId:J

.field auctionPictUrl:Ljava/lang/String;

.field auctionPrice:I

.field auctionTitle:Ljava/lang/String;

.field orderId:J

.field sellerId:J

.field wapDetail:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAuctionId()J
    .locals 2

    .prologue
    .line 32
    iget-wide v0, p0, Lcom/alibaba/adi/collie/model/service/TaoItem;->auctionId:J

    return-wide v0
.end method

.method public getAuctionPictUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/alibaba/adi/collie/model/service/TaoItem;->auctionPictUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getAuctionPrice()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/alibaba/adi/collie/model/service/TaoItem;->auctionPrice:I

    return v0
.end method

.method public getAuctionTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/alibaba/adi/collie/model/service/TaoItem;->auctionTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderId()J
    .locals 2

    .prologue
    .line 24
    iget-wide v0, p0, Lcom/alibaba/adi/collie/model/service/TaoItem;->orderId:J

    return-wide v0
.end method

.method public getSellerId()J
    .locals 2

    .prologue
    .line 64
    iget-wide v0, p0, Lcom/alibaba/adi/collie/model/service/TaoItem;->sellerId:J

    return-wide v0
.end method

.method public getWapDetail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/alibaba/adi/collie/model/service/TaoItem;->wapDetail:Ljava/lang/String;

    return-object v0
.end method

.method public setAuctionId(J)V
    .locals 0
    .parameter "auctionId"

    .prologue
    .line 36
    iput-wide p1, p0, Lcom/alibaba/adi/collie/model/service/TaoItem;->auctionId:J

    .line 37
    return-void
.end method

.method public setAuctionPictUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "auctionPictUrl"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/alibaba/adi/collie/model/service/TaoItem;->auctionPictUrl:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setAuctionPrice(I)V
    .locals 0
    .parameter "auctionPrice"

    .prologue
    .line 52
    iput p1, p0, Lcom/alibaba/adi/collie/model/service/TaoItem;->auctionPrice:I

    .line 53
    return-void
.end method

.method public setAuctionTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "auctionTitle"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/alibaba/adi/collie/model/service/TaoItem;->auctionTitle:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setOrderId(J)V
    .locals 0
    .parameter "orderId"

    .prologue
    .line 28
    iput-wide p1, p0, Lcom/alibaba/adi/collie/model/service/TaoItem;->orderId:J

    .line 29
    return-void
.end method

.method public setSellerId(J)V
    .locals 0
    .parameter "sellerId"

    .prologue
    .line 68
    iput-wide p1, p0, Lcom/alibaba/adi/collie/model/service/TaoItem;->sellerId:J

    .line 69
    return-void
.end method

.method public setWapDetail(Ljava/lang/String;)V
    .locals 0
    .parameter "wapDetail"

    .prologue
    .line 20
    iput-object p1, p0, Lcom/alibaba/adi/collie/model/service/TaoItem;->wapDetail:Ljava/lang/String;

    .line 21
    return-void
.end method
