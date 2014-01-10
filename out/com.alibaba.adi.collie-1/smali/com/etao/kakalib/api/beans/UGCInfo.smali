.class public Lcom/etao/kakalib/api/beans/UGCInfo;
.super Ljava/lang/Object;
.source "UGCInfo.java"


# instance fields
.field private barcode:Ljava/lang/String;

.field private comment:Ljava/lang/String;

.field private reward:Ljava/lang/String;

.field private status:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBarcode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/UGCInfo;->barcode:Ljava/lang/String;

    return-object v0
.end method

.method public getComment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/UGCInfo;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public getReward()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/UGCInfo;->reward:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/etao/kakalib/api/beans/UGCInfo;->status:Ljava/lang/String;

    return-object v0
.end method

.method public setBarcode(Ljava/lang/String;)V
    .locals 0
    .parameter "barcode"

    .prologue
    .line 15
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/UGCInfo;->barcode:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 0
    .parameter "comment"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/UGCInfo;->comment:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setReward(Ljava/lang/String;)V
    .locals 0
    .parameter "reward"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/UGCInfo;->reward:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0
    .parameter "status"

    .prologue
    .line 23
    iput-object p1, p0, Lcom/etao/kakalib/api/beans/UGCInfo;->status:Ljava/lang/String;

    .line 24
    return-void
.end method
