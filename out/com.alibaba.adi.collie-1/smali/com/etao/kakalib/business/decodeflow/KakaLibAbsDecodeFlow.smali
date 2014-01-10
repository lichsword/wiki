.class public abstract Lcom/etao/kakalib/business/decodeflow/KakaLibAbsDecodeFlow;
.super Ljava/lang/Object;
.source "KakaLibAbsDecodeFlow.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "KakaLibDecodeFlow"


# instance fields
.field private decodeResultProcesser:Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsDecodeResultProcesser;

.field private flowName:Ljava/lang/String;

.field private scanController:Lcom/etao/kakalib/KakaLibScanController;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "flowName"

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/etao/kakalib/business/decodeflow/KakaLibAbsDecodeFlow;->flowName:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/etao/kakalib/KakaLibScanController;)V
    .locals 0
    .parameter "flowName"
    .parameter "scanController"

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/etao/kakalib/business/decodeflow/KakaLibAbsDecodeFlow;->flowName:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Lcom/etao/kakalib/business/decodeflow/KakaLibAbsDecodeFlow;->scanController:Lcom/etao/kakalib/KakaLibScanController;

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/etao/kakalib/KakaLibScanController;Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsDecodeResultProcesser;)V
    .locals 0
    .parameter "flowName"
    .parameter "scanController"
    .parameter "decodeResultProcesser"

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/etao/kakalib/business/decodeflow/KakaLibAbsDecodeFlow;->flowName:Ljava/lang/String;

    .line 43
    iput-object p2, p0, Lcom/etao/kakalib/business/decodeflow/KakaLibAbsDecodeFlow;->scanController:Lcom/etao/kakalib/KakaLibScanController;

    .line 44
    iput-object p3, p0, Lcom/etao/kakalib/business/decodeflow/KakaLibAbsDecodeFlow;->decodeResultProcesser:Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsDecodeResultProcesser;

    .line 45
    return-void
.end method


# virtual methods
.method public abstract decode(Lcom/etao/kakalib/business/KakaLibImageWrapper;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/etao/kakalib/business/KakaLibImageWrapper;",
            ")TT;"
        }
    .end annotation
.end method

.method public getDecodeResultProcesser()Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsDecodeResultProcesser;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/etao/kakalib/business/decodeflow/KakaLibAbsDecodeFlow;->decodeResultProcesser:Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsDecodeResultProcesser;

    return-object v0
.end method

.method protected getDefaultRectForPicture(II)Landroid/graphics/Rect;
    .locals 6
    .parameter "width"
    .parameter "height"

    .prologue
    .line 77
    sub-int v4, p1, p2

    div-int/lit8 v4, v4, 0x2

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 78
    .local v2, x1:I
    const/4 v3, 0x0

    .line 79
    .local v3, y1:I
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v4

    div-int/lit8 v4, v4, 0x8

    mul-int/lit8 v1, v4, 0x8

    .line 81
    .local v1, w1:I
    new-instance v0, Landroid/graphics/Rect;

    add-int v4, v2, v1

    add-int v5, v3, v1

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 82
    .local v0, rect:Landroid/graphics/Rect;
    return-object v0
.end method

.method public getFlowName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/etao/kakalib/business/decodeflow/KakaLibAbsDecodeFlow;->flowName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "flowNoName"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/etao/kakalib/business/decodeflow/KakaLibAbsDecodeFlow;->flowName:Ljava/lang/String;

    goto :goto_0
.end method

.method public getScanController()Lcom/etao/kakalib/KakaLibScanController;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/etao/kakalib/business/decodeflow/KakaLibAbsDecodeFlow;->scanController:Lcom/etao/kakalib/KakaLibScanController;

    return-object v0
.end method

.method public setDecodeResultProcesser(Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsDecodeResultProcesser;)V
    .locals 0
    .parameter "decodeResultProcesser"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/etao/kakalib/business/decodeflow/KakaLibAbsDecodeFlow;->decodeResultProcesser:Lcom/etao/kakalib/business/resultprocesser/KakaLibAbsDecodeResultProcesser;

    .line 53
    return-void
.end method

.method public setFlowName(Ljava/lang/String;)V
    .locals 0
    .parameter "flowName"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/etao/kakalib/business/decodeflow/KakaLibAbsDecodeFlow;->flowName:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setScanController(Lcom/etao/kakalib/KakaLibScanController;)V
    .locals 0
    .parameter "scanController"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/etao/kakalib/business/decodeflow/KakaLibAbsDecodeFlow;->scanController:Lcom/etao/kakalib/KakaLibScanController;

    .line 61
    return-void
.end method
