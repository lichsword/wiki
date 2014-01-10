.class Lcom/google/zxing/qrcode/detector/FinderPatternFinder$CenterComparator;
.super Ljava/lang/Object;
.source "FinderPatternFinder.java"

# interfaces
.implements Lcom/google/zxing/common/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/zxing/qrcode/detector/FinderPatternFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CenterComparator"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 534
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/zxing/qrcode/detector/FinderPatternFinder$CenterComparator;)V
    .locals 0
    .parameter

    .prologue
    .line 534
    invoke-direct {p0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder$CenterComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .parameter "center1"
    .parameter "center2"

    .prologue
    .line 536
    check-cast p2, Lcom/google/zxing/qrcode/detector/FinderPattern;

    .end local p2
    invoke-virtual {p2}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getCount()I

    move-result v0

    check-cast p1, Lcom/google/zxing/qrcode/detector/FinderPattern;

    .end local p1
    invoke-virtual {p1}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getCount()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method
