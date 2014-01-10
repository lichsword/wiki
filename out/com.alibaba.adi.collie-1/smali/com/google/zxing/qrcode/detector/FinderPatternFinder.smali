.class public Lcom/google/zxing/qrcode/detector/FinderPatternFinder;
.super Ljava/lang/Object;
.source "FinderPatternFinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/qrcode/detector/FinderPatternFinder$CenterComparator;
    }
.end annotation


# static fields
.field private static final CENTER_QUORUM:I = 0x2

.field private static final INTEGER_MATH_SHIFT:I = 0x8

.field protected static final MAX_MODULES:I = 0x39

.field protected static final MIN_SKIP:I = 0x3


# instance fields
.field private final crossCheckStateCount:[I

.field private hasSkipped:Z

.field private final image:Lcom/google/zxing/common/BitMatrix;

.field private final possibleCenters:Ljava/util/Vector;

.field private final resultPointCallback:Lcom/google/zxing/ResultPointCallback;


# direct methods
.method public constructor <init>(Lcom/google/zxing/common/BitMatrix;)V
    .locals 1
    .parameter "image"

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;-><init>(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPointCallback;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPointCallback;)V
    .locals 1
    .parameter "image"
    .parameter "resultPointCallback"

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    .line 62
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/Vector;

    .line 63
    const/4 v0, 0x5

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->crossCheckStateCount:[I

    .line 64
    iput-object p2, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->resultPointCallback:Lcom/google/zxing/ResultPointCallback;

    .line 65
    return-void
.end method

.method private static centerFromEnd([II)F
    .locals 3
    .parameter "stateCount"
    .parameter "end"

    .prologue
    .line 187
    const/4 v0, 0x4

    aget v0, p0, v0

    sub-int v0, p1, v0

    const/4 v1, 0x3

    aget v1, p0, v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/4 v1, 0x2

    aget v1, p0, v1

    int-to-float v1, v1

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    return v0
.end method

.method private crossCheckHorizontal(IIII)F
    .locals 7
    .parameter "startJ"
    .parameter "centerI"
    .parameter "maxCount"
    .parameter "originalStateCountTotal"

    .prologue
    .line 311
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    .line 313
    .local v0, image:Lcom/google/zxing/common/BitMatrix;
    invoke-virtual {v0}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v2

    .line 314
    .local v2, maxJ:I
    invoke-direct {p0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->getCrossCheckStateCount()[I

    move-result-object v3

    .line 316
    .local v3, stateCount:[I
    move v1, p1

    .line 317
    .local v1, j:I
    :goto_0
    if-ltz v1, :cond_0

    invoke-virtual {v0, v1, p2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-nez v5, :cond_1

    .line 321
    :cond_0
    if-gez v1, :cond_3

    .line 322
    const/high16 v5, 0x7fc0

    .line 370
    :goto_1
    return v5

    .line 318
    :cond_1
    const/4 v5, 0x2

    aget v6, v3, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v3, v5

    .line 319
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 325
    :cond_2
    const/4 v5, 0x1

    aget v6, v3, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v3, v5

    .line 326
    add-int/lit8 v1, v1, -0x1

    .line 324
    :cond_3
    if-ltz v1, :cond_4

    invoke-virtual {v0, v1, p2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-nez v5, :cond_4

    const/4 v5, 0x1

    aget v5, v3, v5

    if-le v5, p3, :cond_2

    .line 328
    :cond_4
    if-ltz v1, :cond_5

    const/4 v5, 0x1

    aget v5, v3, v5

    if-le v5, p3, :cond_7

    .line 329
    :cond_5
    const/high16 v5, 0x7fc0

    goto :goto_1

    .line 332
    :cond_6
    const/4 v5, 0x0

    aget v6, v3, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v3, v5

    .line 333
    add-int/lit8 v1, v1, -0x1

    .line 331
    :cond_7
    if-ltz v1, :cond_8

    invoke-virtual {v0, v1, p2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-eqz v5, :cond_8

    const/4 v5, 0x0

    aget v5, v3, v5

    if-le v5, p3, :cond_6

    .line 335
    :cond_8
    const/4 v5, 0x0

    aget v5, v3, v5

    if-le v5, p3, :cond_9

    .line 336
    const/high16 v5, 0x7fc0

    goto :goto_1

    .line 339
    :cond_9
    add-int/lit8 v1, p1, 0x1

    .line 340
    :goto_2
    if-ge v1, v2, :cond_a

    invoke-virtual {v0, v1, p2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-nez v5, :cond_b

    .line 344
    :cond_a
    if-ne v1, v2, :cond_d

    .line 345
    const/high16 v5, 0x7fc0

    goto :goto_1

    .line 341
    :cond_b
    const/4 v5, 0x2

    aget v6, v3, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v3, v5

    .line 342
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 348
    :cond_c
    const/4 v5, 0x3

    aget v6, v3, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v3, v5

    .line 349
    add-int/lit8 v1, v1, 0x1

    .line 347
    :cond_d
    if-ge v1, v2, :cond_e

    invoke-virtual {v0, v1, p2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-nez v5, :cond_e

    const/4 v5, 0x3

    aget v5, v3, v5

    if-lt v5, p3, :cond_c

    .line 351
    :cond_e
    if-eq v1, v2, :cond_f

    const/4 v5, 0x3

    aget v5, v3, v5

    if-lt v5, p3, :cond_11

    .line 352
    :cond_f
    const/high16 v5, 0x7fc0

    goto/16 :goto_1

    .line 355
    :cond_10
    const/4 v5, 0x4

    aget v6, v3, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v3, v5

    .line 356
    add-int/lit8 v1, v1, 0x1

    .line 354
    :cond_11
    if-ge v1, v2, :cond_12

    invoke-virtual {v0, v1, p2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-eqz v5, :cond_12

    const/4 v5, 0x4

    aget v5, v3, v5

    if-lt v5, p3, :cond_10

    .line 358
    :cond_12
    const/4 v5, 0x4

    aget v5, v3, v5

    if-lt v5, p3, :cond_13

    .line 359
    const/high16 v5, 0x7fc0

    goto/16 :goto_1

    .line 364
    :cond_13
    const/4 v5, 0x0

    aget v5, v3, v5

    const/4 v6, 0x1

    aget v6, v3, v6

    add-int/2addr v5, v6

    const/4 v6, 0x2

    aget v6, v3, v6

    add-int/2addr v5, v6

    const/4 v6, 0x3

    aget v6, v3, v6

    add-int/2addr v5, v6

    .line 365
    const/4 v6, 0x4

    aget v6, v3, v6

    .line 364
    add-int v4, v5, v6

    .line 366
    .local v4, stateCountTotal:I
    sub-int v5, v4, p4

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    mul-int/lit8 v5, v5, 0x5

    if-lt v5, p4, :cond_14

    .line 367
    const/high16 v5, 0x7fc0

    goto/16 :goto_1

    .line 370
    :cond_14
    invoke-static {v3}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->foundPatternCross([I)Z

    move-result v5

    if-eqz v5, :cond_15

    invoke-static {v3, v1}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->centerFromEnd([II)F

    move-result v5

    goto/16 :goto_1

    :cond_15
    const/high16 v5, 0x7fc0

    goto/16 :goto_1
.end method

.method private crossCheckVertical(IIII)F
    .locals 7
    .parameter "startI"
    .parameter "centerJ"
    .parameter "maxCount"
    .parameter "originalStateCountTotal"

    .prologue
    .line 239
    iget-object v1, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    .line 241
    .local v1, image:Lcom/google/zxing/common/BitMatrix;
    invoke-virtual {v1}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v2

    .line 242
    .local v2, maxI:I
    invoke-direct {p0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->getCrossCheckStateCount()[I

    move-result-object v3

    .line 245
    .local v3, stateCount:[I
    move v0, p1

    .line 246
    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {v1, p2, v0}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-nez v5, :cond_1

    .line 250
    :cond_0
    if-gez v0, :cond_3

    .line 251
    const/high16 v5, 0x7fc0

    .line 301
    :goto_1
    return v5

    .line 247
    :cond_1
    const/4 v5, 0x2

    aget v6, v3, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v3, v5

    .line 248
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 254
    :cond_2
    const/4 v5, 0x1

    aget v6, v3, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v3, v5

    .line 255
    add-int/lit8 v0, v0, -0x1

    .line 253
    :cond_3
    if-ltz v0, :cond_4

    invoke-virtual {v1, p2, v0}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-nez v5, :cond_4

    const/4 v5, 0x1

    aget v5, v3, v5

    if-le v5, p3, :cond_2

    .line 258
    :cond_4
    if-ltz v0, :cond_5

    const/4 v5, 0x1

    aget v5, v3, v5

    if-le v5, p3, :cond_7

    .line 259
    :cond_5
    const/high16 v5, 0x7fc0

    goto :goto_1

    .line 262
    :cond_6
    const/4 v5, 0x0

    aget v6, v3, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v3, v5

    .line 263
    add-int/lit8 v0, v0, -0x1

    .line 261
    :cond_7
    if-ltz v0, :cond_8

    invoke-virtual {v1, p2, v0}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-eqz v5, :cond_8

    const/4 v5, 0x0

    aget v5, v3, v5

    if-le v5, p3, :cond_6

    .line 265
    :cond_8
    const/4 v5, 0x0

    aget v5, v3, v5

    if-le v5, p3, :cond_9

    .line 266
    const/high16 v5, 0x7fc0

    goto :goto_1

    .line 270
    :cond_9
    add-int/lit8 v0, p1, 0x1

    .line 271
    :goto_2
    if-ge v0, v2, :cond_a

    invoke-virtual {v1, p2, v0}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-nez v5, :cond_b

    .line 275
    :cond_a
    if-ne v0, v2, :cond_d

    .line 276
    const/high16 v5, 0x7fc0

    goto :goto_1

    .line 272
    :cond_b
    const/4 v5, 0x2

    aget v6, v3, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v3, v5

    .line 273
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 279
    :cond_c
    const/4 v5, 0x3

    aget v6, v3, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v3, v5

    .line 280
    add-int/lit8 v0, v0, 0x1

    .line 278
    :cond_d
    if-ge v0, v2, :cond_e

    invoke-virtual {v1, p2, v0}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-nez v5, :cond_e

    const/4 v5, 0x3

    aget v5, v3, v5

    if-lt v5, p3, :cond_c

    .line 282
    :cond_e
    if-eq v0, v2, :cond_f

    const/4 v5, 0x3

    aget v5, v3, v5

    if-lt v5, p3, :cond_11

    .line 283
    :cond_f
    const/high16 v5, 0x7fc0

    goto/16 :goto_1

    .line 286
    :cond_10
    const/4 v5, 0x4

    aget v6, v3, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v3, v5

    .line 287
    add-int/lit8 v0, v0, 0x1

    .line 285
    :cond_11
    if-ge v0, v2, :cond_12

    invoke-virtual {v1, p2, v0}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-eqz v5, :cond_12

    const/4 v5, 0x4

    aget v5, v3, v5

    if-lt v5, p3, :cond_10

    .line 289
    :cond_12
    const/4 v5, 0x4

    aget v5, v3, v5

    if-lt v5, p3, :cond_13

    .line 290
    const/high16 v5, 0x7fc0

    goto/16 :goto_1

    .line 295
    :cond_13
    const/4 v5, 0x0

    aget v5, v3, v5

    const/4 v6, 0x1

    aget v6, v3, v6

    add-int/2addr v5, v6

    const/4 v6, 0x2

    aget v6, v3, v6

    add-int/2addr v5, v6

    const/4 v6, 0x3

    aget v6, v3, v6

    add-int/2addr v5, v6

    .line 296
    const/4 v6, 0x4

    aget v6, v3, v6

    .line 295
    add-int v4, v5, v6

    .line 297
    .local v4, stateCountTotal:I
    sub-int v5, v4, p4

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    mul-int/lit8 v5, v5, 0x5

    mul-int/lit8 v6, p4, 0x2

    if-lt v5, v6, :cond_14

    .line 298
    const/high16 v5, 0x7fc0

    goto/16 :goto_1

    .line 301
    :cond_14
    invoke-static {v3}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->foundPatternCross([I)Z

    move-result v5

    if-eqz v5, :cond_15

    invoke-static {v3, v0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->centerFromEnd([II)F

    move-result v5

    goto/16 :goto_1

    :cond_15
    const/high16 v5, 0x7fc0

    goto/16 :goto_1
.end method

.method private findRowSkip()I
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 430
    iget-object v5, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v3

    .line 431
    .local v3, max:I
    if-gt v3, v7, :cond_1

    .line 452
    :cond_0
    :goto_0
    return v4

    .line 434
    :cond_1
    const/4 v1, 0x0

    .line 435
    .local v1, firstConfirmedCenter:Lcom/google/zxing/qrcode/detector/FinderPattern;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v3, :cond_0

    .line 436
    iget-object v5, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/Vector;

    invoke-virtual {v5, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 437
    .local v0, center:Lcom/google/zxing/qrcode/detector/FinderPattern;
    invoke-virtual {v0}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getCount()I

    move-result v5

    const/4 v6, 0x2

    if-lt v5, v6, :cond_2

    .line 438
    if-nez v1, :cond_3

    .line 439
    move-object v1, v0

    .line 435
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 446
    :cond_3
    iput-boolean v7, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->hasSkipped:Z

    .line 447
    invoke-virtual {v1}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getX()F

    move-result v4

    invoke-virtual {v0}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getX()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 448
    invoke-virtual {v1}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getY()F

    move-result v5

    invoke-virtual {v0}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getY()F

    move-result v6

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 447
    sub-float/2addr v4, v5

    float-to-int v4, v4

    div-int/lit8 v4, v4, 0x2

    goto :goto_0
.end method

.method protected static foundPatternCross([I)Z
    .locals 9
    .parameter "stateCount"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 196
    const/4 v4, 0x0

    .line 197
    .local v4, totalModuleSize:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/4 v7, 0x5

    if-lt v1, v7, :cond_1

    .line 204
    const/4 v7, 0x7

    if-ge v4, v7, :cond_2

    .line 210
    :cond_0
    :goto_1
    return v5

    .line 198
    :cond_1
    aget v0, p0, v1

    .line 199
    .local v0, count:I
    if-eqz v0, :cond_0

    .line 202
    add-int/2addr v4, v0

    .line 197
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 207
    .end local v0           #count:I
    :cond_2
    shl-int/lit8 v7, v4, 0x8

    div-int/lit8 v3, v7, 0x7

    .line 208
    .local v3, moduleSize:I
    div-int/lit8 v2, v3, 0x2

    .line 210
    .local v2, maxVariance:I
    aget v7, p0, v5

    shl-int/lit8 v7, v7, 0x8

    sub-int v7, v3, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    if-ge v7, v2, :cond_0

    .line 211
    aget v7, p0, v6

    shl-int/lit8 v7, v7, 0x8

    sub-int v7, v3, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    if-ge v7, v2, :cond_0

    .line 212
    mul-int/lit8 v7, v3, 0x3

    const/4 v8, 0x2

    aget v8, p0, v8

    shl-int/lit8 v8, v8, 0x8

    sub-int/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    mul-int/lit8 v8, v2, 0x3

    if-ge v7, v8, :cond_0

    .line 213
    const/4 v7, 0x3

    aget v7, p0, v7

    shl-int/lit8 v7, v7, 0x8

    sub-int v7, v3, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    if-ge v7, v2, :cond_0

    .line 214
    const/4 v7, 0x4

    aget v7, p0, v7

    shl-int/lit8 v7, v7, 0x8

    sub-int v7, v3, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    .line 210
    if-ge v7, v2, :cond_0

    move v5, v6

    goto :goto_1
.end method

.method private getCrossCheckStateCount()[I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 218
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->crossCheckStateCount:[I

    aput v2, v0, v2

    .line 219
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->crossCheckStateCount:[I

    const/4 v1, 0x1

    aput v2, v0, v1

    .line 220
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->crossCheckStateCount:[I

    const/4 v1, 0x2

    aput v2, v0, v1

    .line 221
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->crossCheckStateCount:[I

    const/4 v1, 0x3

    aput v2, v0, v1

    .line 222
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->crossCheckStateCount:[I

    const/4 v1, 0x4

    aput v2, v0, v1

    .line 223
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->crossCheckStateCount:[I

    return-object v0
.end method

.method private haveMultiplyConfirmedCenters()Z
    .locals 10

    .prologue
    const/4 v7, 0x0

    .line 461
    const/4 v1, 0x0

    .line 462
    .local v1, confirmedCount:I
    const/4 v6, 0x0

    .line 463
    .local v6, totalModuleSize:F
    iget-object v8, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/Vector;

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v3

    .line 464
    .local v3, max:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-lt v2, v3, :cond_1

    .line 471
    const/4 v8, 0x3

    if-ge v1, v8, :cond_3

    .line 484
    :cond_0
    :goto_1
    return v7

    .line 465
    :cond_1
    iget-object v8, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/Vector;

    invoke-virtual {v8, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 466
    .local v4, pattern:Lcom/google/zxing/qrcode/detector/FinderPattern;
    invoke-virtual {v4}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getCount()I

    move-result v8

    const/4 v9, 0x2

    if-lt v8, v9, :cond_2

    .line 467
    add-int/lit8 v1, v1, 0x1

    .line 468
    invoke-virtual {v4}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v8

    add-float/2addr v6, v8

    .line 464
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 478
    .end local v4           #pattern:Lcom/google/zxing/qrcode/detector/FinderPattern;
    :cond_3
    int-to-float v8, v3

    div-float v0, v6, v8

    .line 479
    .local v0, average:F
    const/4 v5, 0x0

    .line 480
    .local v5, totalDeviation:F
    const/4 v2, 0x0

    :goto_2
    if-lt v2, v3, :cond_4

    .line 484
    const v8, 0x3d4ccccd

    mul-float/2addr v8, v6

    cmpg-float v8, v5, v8

    if-gtz v8, :cond_0

    const/4 v7, 0x1

    goto :goto_1

    .line 481
    :cond_4
    iget-object v8, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/Vector;

    invoke-virtual {v8, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 482
    .restart local v4       #pattern:Lcom/google/zxing/qrcode/detector/FinderPattern;
    invoke-virtual {v4}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v8

    sub-float/2addr v8, v0

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    add-float/2addr v5, v8

    .line 480
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method private selectBestPatterns()[Lcom/google/zxing/qrcode/detector/FinderPattern;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x3

    .line 495
    iget-object v5, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v3

    .line 496
    .local v3, startSize:I
    if-ge v3, v8, :cond_0

    .line 498
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v5

    throw v5

    .line 502
    :cond_0
    if-le v3, v8, :cond_1

    .line 504
    const/4 v4, 0x0

    .line 505
    .local v4, totalModuleSize:F
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v3, :cond_3

    .line 508
    int-to-float v5, v3

    div-float v0, v4, v5

    .line 509
    .local v0, average:F
    const/4 v1, 0x0

    :goto_1
    iget-object v5, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-ge v1, v5, :cond_1

    iget-object v5, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-gt v5, v8, :cond_4

    .line 518
    .end local v0           #average:F
    .end local v1           #i:I
    .end local v4           #totalModuleSize:F
    :cond_1
    iget-object v5, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-le v5, v8, :cond_2

    .line 520
    iget-object v5, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/Vector;

    new-instance v6, Lcom/google/zxing/qrcode/detector/FinderPatternFinder$CenterComparator;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder$CenterComparator;-><init>(Lcom/google/zxing/qrcode/detector/FinderPatternFinder$CenterComparator;)V

    invoke-static {v5, v6}, Lcom/google/zxing/common/Collections;->insertionSort(Ljava/util/Vector;Lcom/google/zxing/common/Comparator;)V

    .line 521
    iget-object v5, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/Vector;

    invoke-virtual {v5, v8}, Ljava/util/Vector;->setSize(I)V

    .line 524
    :cond_2
    new-array v6, v8, [Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 525
    iget-object v5, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/Vector;

    invoke-virtual {v5, v9}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/zxing/qrcode/detector/FinderPattern;

    aput-object v5, v6, v9

    .line 526
    iget-object v5, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/Vector;

    invoke-virtual {v5, v10}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/zxing/qrcode/detector/FinderPattern;

    aput-object v5, v6, v10

    .line 527
    iget-object v5, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/Vector;

    invoke-virtual {v5, v11}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/zxing/qrcode/detector/FinderPattern;

    aput-object v5, v6, v11

    .line 524
    return-object v6

    .line 506
    .restart local v1       #i:I
    .restart local v4       #totalModuleSize:F
    :cond_3
    iget-object v5, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/Vector;

    invoke-virtual {v5, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/zxing/qrcode/detector/FinderPattern;

    invoke-virtual {v5}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v5

    add-float/2addr v4, v5

    .line 505
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 510
    .restart local v0       #average:F
    :cond_4
    iget-object v5, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/Vector;

    invoke-virtual {v5, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 511
    .local v2, pattern:Lcom/google/zxing/qrcode/detector/FinderPattern;
    invoke-virtual {v2}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v5

    sub-float/2addr v5, v0

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const v6, 0x3e4ccccd

    mul-float/2addr v6, v0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_5

    .line 512
    iget-object v5, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/Vector;

    invoke-virtual {v5, v1}, Ljava/util/Vector;->removeElementAt(I)V

    .line 513
    add-int/lit8 v1, v1, -0x1

    .line 509
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method find(Ljava/util/Hashtable;)Lcom/google/zxing/qrcode/detector/FinderPatternInfo;
    .locals 14
    .parameter "hints"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 76
    if-eqz p1, :cond_3

    sget-object v12, Lcom/google/zxing/DecodeHintType;->TRY_HARDER:Lcom/google/zxing/DecodeHintType;

    invoke-virtual {p1, v12}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    const/4 v11, 0x1

    .line 77
    .local v11, tryHarder:Z
    :goto_0
    iget-object v12, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v12}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v6

    .line 78
    .local v6, maxI:I
    iget-object v12, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v12}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v7

    .line 86
    .local v7, maxJ:I
    mul-int/lit8 v12, v6, 0x3

    div-int/lit16 v4, v12, 0xe4

    .line 87
    .local v4, iSkip:I
    const/4 v12, 0x3

    if-lt v4, v12, :cond_0

    if-eqz v11, :cond_1

    .line 88
    :cond_0
    const/4 v4, 0x3

    .line 91
    :cond_1
    const/4 v2, 0x0

    .line 92
    .local v2, done:Z
    const/4 v12, 0x5

    new-array v10, v12, [I

    .line 93
    .local v10, stateCount:[I
    add-int/lit8 v3, v4, -0x1

    .local v3, i:I
    :goto_1
    if-ge v3, v6, :cond_2

    if-eqz v2, :cond_4

    .line 176
    :cond_2
    invoke-direct {p0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->selectBestPatterns()[Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-result-object v8

    .line 177
    .local v8, patternInfo:[Lcom/google/zxing/qrcode/detector/FinderPattern;
    invoke-static {v8}, Lcom/google/zxing/ResultPoint;->orderBestPatterns([Lcom/google/zxing/ResultPoint;)V

    .line 179
    new-instance v12, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;

    invoke-direct {v12, v8}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;-><init>([Lcom/google/zxing/qrcode/detector/FinderPattern;)V

    return-object v12

    .line 76
    .end local v2           #done:Z
    .end local v3           #i:I
    .end local v4           #iSkip:I
    .end local v6           #maxI:I
    .end local v7           #maxJ:I
    .end local v8           #patternInfo:[Lcom/google/zxing/qrcode/detector/FinderPattern;
    .end local v10           #stateCount:[I
    .end local v11           #tryHarder:Z
    :cond_3
    const/4 v11, 0x0

    goto :goto_0

    .line 95
    .restart local v2       #done:Z
    .restart local v3       #i:I
    .restart local v4       #iSkip:I
    .restart local v6       #maxI:I
    .restart local v7       #maxJ:I
    .restart local v10       #stateCount:[I
    .restart local v11       #tryHarder:Z
    :cond_4
    const/4 v12, 0x0

    const/4 v13, 0x0

    aput v13, v10, v12

    .line 96
    const/4 v12, 0x1

    const/4 v13, 0x0

    aput v13, v10, v12

    .line 97
    const/4 v12, 0x2

    const/4 v13, 0x0

    aput v13, v10, v12

    .line 98
    const/4 v12, 0x3

    const/4 v13, 0x0

    aput v13, v10, v12

    .line 99
    const/4 v12, 0x4

    const/4 v13, 0x0

    aput v13, v10, v12

    .line 100
    const/4 v1, 0x0

    .line 101
    .local v1, currentState:I
    const/4 v5, 0x0

    .local v5, j:I
    :goto_2
    if-lt v5, v7, :cond_6

    .line 164
    invoke-static {v10}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->foundPatternCross([I)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 165
    invoke-virtual {p0, v10, v3, v7}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->handlePossibleCenter([III)Z

    move-result v0

    .line 166
    .local v0, confirmed:Z
    if-eqz v0, :cond_5

    .line 167
    const/4 v12, 0x0

    aget v4, v10, v12

    .line 168
    iget-boolean v12, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->hasSkipped:Z

    if-eqz v12, :cond_5

    .line 170
    invoke-direct {p0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->haveMultiplyConfirmedCenters()Z

    move-result v2

    .line 93
    .end local v0           #confirmed:Z
    :cond_5
    add-int/2addr v3, v4

    goto :goto_1

    .line 102
    :cond_6
    iget-object v12, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v12, v5, v3}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 104
    and-int/lit8 v12, v1, 0x1

    const/4 v13, 0x1

    if-ne v12, v13, :cond_7

    .line 105
    add-int/lit8 v1, v1, 0x1

    .line 107
    :cond_7
    aget v12, v10, v1

    add-int/lit8 v12, v12, 0x1

    aput v12, v10, v1

    .line 101
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 109
    :cond_8
    and-int/lit8 v12, v1, 0x1

    if-nez v12, :cond_f

    .line 110
    const/4 v12, 0x4

    if-ne v1, v12, :cond_e

    .line 111
    invoke-static {v10}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->foundPatternCross([I)Z

    move-result v12

    if-eqz v12, :cond_d

    .line 112
    invoke-virtual {p0, v10, v3, v5}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->handlePossibleCenter([III)Z

    move-result v0

    .line 113
    .restart local v0       #confirmed:Z
    if-eqz v0, :cond_b

    .line 116
    const/4 v4, 0x2

    .line 117
    iget-boolean v12, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->hasSkipped:Z

    if-eqz v12, :cond_a

    .line 118
    invoke-direct {p0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->haveMultiplyConfirmedCenters()Z

    move-result v2

    .line 142
    :cond_9
    :goto_4
    const/4 v1, 0x0

    .line 143
    const/4 v12, 0x0

    const/4 v13, 0x0

    aput v13, v10, v12

    .line 144
    const/4 v12, 0x1

    const/4 v13, 0x0

    aput v13, v10, v12

    .line 145
    const/4 v12, 0x2

    const/4 v13, 0x0

    aput v13, v10, v12

    .line 146
    const/4 v12, 0x3

    const/4 v13, 0x0

    aput v13, v10, v12

    .line 147
    const/4 v12, 0x4

    const/4 v13, 0x0

    aput v13, v10, v12

    goto :goto_3

    .line 120
    :cond_a
    invoke-direct {p0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->findRowSkip()I

    move-result v9

    .line 121
    .local v9, rowSkip:I
    const/4 v12, 0x2

    aget v12, v10, v12

    if-le v9, v12, :cond_9

    .line 130
    const/4 v12, 0x2

    aget v12, v10, v12

    sub-int v12, v9, v12

    sub-int/2addr v12, v4

    add-int/2addr v3, v12

    .line 131
    add-int/lit8 v5, v7, -0x1

    .line 134
    goto :goto_4

    .line 137
    .end local v9           #rowSkip:I
    :cond_b
    add-int/lit8 v5, v5, 0x1

    .line 138
    if-ge v5, v7, :cond_c

    iget-object v12, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v12, v5, v3}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 139
    :cond_c
    add-int/lit8 v5, v5, -0x1

    goto :goto_4

    .line 149
    .end local v0           #confirmed:Z
    :cond_d
    const/4 v12, 0x0

    const/4 v13, 0x2

    aget v13, v10, v13

    aput v13, v10, v12

    .line 150
    const/4 v12, 0x1

    const/4 v13, 0x3

    aget v13, v10, v13

    aput v13, v10, v12

    .line 151
    const/4 v12, 0x2

    const/4 v13, 0x4

    aget v13, v10, v13

    aput v13, v10, v12

    .line 152
    const/4 v12, 0x3

    const/4 v13, 0x1

    aput v13, v10, v12

    .line 153
    const/4 v12, 0x4

    const/4 v13, 0x0

    aput v13, v10, v12

    .line 154
    const/4 v1, 0x3

    .line 156
    goto :goto_3

    .line 157
    :cond_e
    add-int/lit8 v1, v1, 0x1

    aget v12, v10, v1

    add-int/lit8 v12, v12, 0x1

    aput v12, v10, v1

    goto :goto_3

    .line 160
    :cond_f
    aget v12, v10, v1

    add-int/lit8 v12, v12, 0x1

    aput v12, v10, v1

    goto/16 :goto_3
.end method

.method protected getImage()Lcom/google/zxing/common/BitMatrix;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    return-object v0
.end method

.method protected getPossibleCenters()Ljava/util/Vector;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/Vector;

    return-object v0
.end method

.method protected handlePossibleCenter([III)Z
    .locals 12
    .parameter "stateCount"
    .parameter "i"
    .parameter "j"

    .prologue
    .line 390
    const/4 v9, 0x0

    aget v9, p1, v9

    const/4 v10, 0x1

    aget v10, p1, v10

    add-int/2addr v9, v10

    const/4 v10, 0x2

    aget v10, p1, v10

    add-int/2addr v9, v10

    const/4 v10, 0x3

    aget v10, p1, v10

    add-int/2addr v9, v10

    .line 391
    const/4 v10, 0x4

    aget v10, p1, v10

    .line 390
    add-int v8, v9, v10

    .line 392
    .local v8, stateCountTotal:I
    invoke-static {p1, p3}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->centerFromEnd([II)F

    move-result v2

    .line 393
    .local v2, centerJ:F
    float-to-int v9, v2

    const/4 v10, 0x2

    aget v10, p1, v10

    invoke-direct {p0, p2, v9, v10, v8}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->crossCheckVertical(IIII)F

    move-result v1

    .line 394
    .local v1, centerI:F
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v9

    if-nez v9, :cond_3

    .line 396
    float-to-int v9, v2

    float-to-int v10, v1

    const/4 v11, 0x2

    aget v11, p1, v11

    invoke-direct {p0, v9, v10, v11, v8}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->crossCheckHorizontal(IIII)F

    move-result v2

    .line 397
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v9

    if-nez v9, :cond_3

    .line 398
    int-to-float v9, v8

    const/high16 v10, 0x40e0

    div-float v3, v9, v10

    .line 399
    .local v3, estimatedModuleSize:F
    const/4 v4, 0x0

    .line 400
    .local v4, found:Z
    iget-object v9, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/Vector;

    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v6

    .line 401
    .local v6, max:I
    const/4 v5, 0x0

    .local v5, index:I
    :goto_0
    if-lt v5, v6, :cond_1

    .line 410
    :goto_1
    if-nez v4, :cond_0

    .line 411
    new-instance v7, Lcom/google/zxing/qrcode/detector/FinderPattern;

    invoke-direct {v7, v2, v1, v3}, Lcom/google/zxing/qrcode/detector/FinderPattern;-><init>(FFF)V

    .line 412
    .local v7, point:Lcom/google/zxing/ResultPoint;
    iget-object v9, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/Vector;

    invoke-virtual {v9, v7}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 413
    iget-object v9, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->resultPointCallback:Lcom/google/zxing/ResultPointCallback;

    if-eqz v9, :cond_0

    .line 414
    iget-object v9, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->resultPointCallback:Lcom/google/zxing/ResultPointCallback;

    invoke-interface {v9, v7}, Lcom/google/zxing/ResultPointCallback;->foundPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V

    .line 417
    .end local v7           #point:Lcom/google/zxing/ResultPoint;
    :cond_0
    const/4 v9, 0x1

    .line 420
    .end local v3           #estimatedModuleSize:F
    .end local v4           #found:Z
    .end local v5           #index:I
    .end local v6           #max:I
    :goto_2
    return v9

    .line 402
    .restart local v3       #estimatedModuleSize:F
    .restart local v4       #found:Z
    .restart local v5       #index:I
    .restart local v6       #max:I
    :cond_1
    iget-object v9, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/Vector;

    invoke-virtual {v9, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 404
    .local v0, center:Lcom/google/zxing/qrcode/detector/FinderPattern;
    invoke-virtual {v0, v3, v1, v2}, Lcom/google/zxing/qrcode/detector/FinderPattern;->aboutEquals(FFF)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 405
    invoke-virtual {v0}, Lcom/google/zxing/qrcode/detector/FinderPattern;->incrementCount()V

    .line 406
    const/4 v4, 0x1

    .line 407
    goto :goto_1

    .line 401
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 420
    .end local v0           #center:Lcom/google/zxing/qrcode/detector/FinderPattern;
    .end local v3           #estimatedModuleSize:F
    .end local v4           #found:Z
    .end local v5           #index:I
    .end local v6           #max:I
    :cond_3
    const/4 v9, 0x0

    goto :goto_2
.end method
