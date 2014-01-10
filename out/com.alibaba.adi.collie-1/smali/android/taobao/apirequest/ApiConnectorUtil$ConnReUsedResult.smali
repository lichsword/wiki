.class Landroid/taobao/apirequest/ApiConnectorUtil$ConnReUsedResult;
.super Ljava/lang/Object;
.source "ApiConnectorUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/taobao/apirequest/ApiConnectorUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ConnReUsedResult"
.end annotation


# instance fields
.field public m_exptime:J

.field public m_hashCode:I

.field public m_isSocketTimeoutReused:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 646
    const-wide/16 v0, 0x0

    invoke-direct {p0, v2, v0, v1, v2}, Landroid/taobao/apirequest/ApiConnectorUtil$ConnReUsedResult;-><init>(IJI)V

    .line 647
    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 1
    .parameter "hashCode"
    .parameter "exptime"

    .prologue
    .line 641
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/taobao/apirequest/ApiConnectorUtil$ConnReUsedResult;-><init>(IJI)V

    .line 642
    return-void
.end method

.method public constructor <init>(IJI)V
    .locals 0
    .parameter "hashCode"
    .parameter "exptime"
    .parameter "isSocketTimeoutReused"

    .prologue
    .line 634
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 635
    iput p1, p0, Landroid/taobao/apirequest/ApiConnectorUtil$ConnReUsedResult;->m_hashCode:I

    .line 636
    iput-wide p2, p0, Landroid/taobao/apirequest/ApiConnectorUtil$ConnReUsedResult;->m_exptime:J

    .line 637
    iput p4, p0, Landroid/taobao/apirequest/ApiConnectorUtil$ConnReUsedResult;->m_isSocketTimeoutReused:I

    .line 638
    return-void
.end method
