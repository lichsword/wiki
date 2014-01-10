.class public final Lcom/google/zxing/datamatrix/detector/Detector;
.super Ljava/lang/Object;
.source "Detector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;,
        Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitionsComparator;
    }
.end annotation


# static fields
.field private static final INTEGERS:[Ljava/lang/Integer;


# instance fields
.field private final image:Lcom/google/zxing/common/BitMatrix;

.field private final rectangleDetector:Lcom/google/zxing/common/detector/MonochromeRectangleDetector;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 45
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Integer;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v1, v0, v3

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v1, v0, v4

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v5}, Ljava/lang/Integer;-><init>(I)V

    aput-object v1, v0, v5

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v6}, Ljava/lang/Integer;-><init>(I)V

    aput-object v1, v0, v6

    .line 44
    sput-object v0, Lcom/google/zxing/datamatrix/detector/Detector;->INTEGERS:[Ljava/lang/Integer;

    .line 45
    return-void
.end method

.method public constructor <init>(Lcom/google/zxing/common/BitMatrix;)V
    .locals 1
    .parameter "image"

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/google/zxing/datamatrix/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    .line 53
    new-instance v0, Lcom/google/zxing/common/detector/MonochromeRectangleDetector;

    invoke-direct {v0, p1}, Lcom/google/zxing/common/detector/MonochromeRectangleDetector;-><init>(Lcom/google/zxing/common/BitMatrix;)V

    iput-object v0, p0, Lcom/google/zxing/datamatrix/detector/Detector;->rectangleDetector:Lcom/google/zxing/common/detector/MonochromeRectangleDetector;

    .line 54
    return-void
.end method

.method private static increment(Ljava/util/Hashtable;Lcom/google/zxing/ResultPoint;)V
    .locals 3
    .parameter "table"
    .parameter "key"

    .prologue
    .line 164
    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 165
    .local v0, value:Ljava/lang/Integer;
    if-nez v0, :cond_0

    sget-object v1, Lcom/google/zxing/datamatrix/detector/Detector;->INTEGERS:[Ljava/lang/Integer;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    :goto_0
    invoke-virtual {p0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    return-void

    .line 165
    :cond_0
    sget-object v1, Lcom/google/zxing/datamatrix/detector/Detector;->INTEGERS:[Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    aget-object v1, v1, v2

    goto :goto_0
.end method

.method private static sampleGrid(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;I)Lcom/google/zxing/common/BitMatrix;
    .locals 20
    .parameter "image"
    .parameter "topLeft"
    .parameter "bottomLeft"
    .parameter "bottomRight"
    .parameter "dimension"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 177
    invoke-virtual/range {p3 .. p3}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v2

    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v3

    add-float v14, v2, v3

    .line 178
    .local v14, topRightX:F
    invoke-virtual/range {p3 .. p3}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v2

    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v3

    add-float v15, v2, v3

    .line 182
    .local v15, topRightY:F
    invoke-static {}, Lcom/google/zxing/common/GridSampler;->getInstance()Lcom/google/zxing/common/GridSampler;

    move-result-object v1

    .line 186
    .local v1, sampler:Lcom/google/zxing/common/GridSampler;
    const/4 v4, 0x0

    .line 187
    const/4 v5, 0x0

    .line 188
    move/from16 v0, p4

    int-to-float v6, v0

    .line 189
    const/4 v7, 0x0

    .line 190
    move/from16 v0, p4

    int-to-float v8, v0

    .line 191
    move/from16 v0, p4

    int-to-float v9, v0

    .line 192
    const/4 v10, 0x0

    .line 193
    move/from16 v0, p4

    int-to-float v11, v0

    .line 194
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v12

    .line 195
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v13

    .line 198
    invoke-virtual/range {p3 .. p3}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v16

    .line 199
    invoke-virtual/range {p3 .. p3}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v17

    .line 200
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v18

    .line 201
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v19

    move-object/from16 v2, p0

    move/from16 v3, p4

    .line 183
    invoke-virtual/range {v1 .. v19}, Lcom/google/zxing/common/GridSampler;->sampleGrid(Lcom/google/zxing/common/BitMatrix;IFFFFFFFFFFFFFFFF)Lcom/google/zxing/common/BitMatrix;

    move-result-object v2

    return-object v2
.end method

.method private transitionsBetween(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;
    .locals 23
    .parameter "from"
    .parameter "to"

    .prologue
    .line 209
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v20

    move/from16 v0, v20

    float-to-int v7, v0

    .line 210
    .local v7, fromX:I
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v20

    move/from16 v0, v20

    float-to-int v8, v0

    .line 211
    .local v8, fromY:I
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v20

    move/from16 v0, v20

    float-to-int v13, v0

    .line 212
    .local v13, toX:I
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v20

    move/from16 v0, v20

    float-to-int v14, v0

    .line 213
    .local v14, toY:I
    sub-int v20, v14, v8

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(I)I

    move-result v20

    sub-int v21, v13, v7

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(I)I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_2

    const/4 v11, 0x1

    .line 214
    .local v11, steep:Z
    :goto_0
    if-eqz v11, :cond_0

    .line 215
    move v12, v7

    .line 216
    .local v12, temp:I
    move v7, v8

    .line 217
    move v8, v12

    .line 218
    move v12, v13

    .line 219
    move v13, v14

    .line 220
    move v14, v12

    .line 223
    .end local v12           #temp:I
    :cond_0
    sub-int v20, v13, v7

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 224
    .local v4, dx:I
    sub-int v20, v14, v8

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 225
    .local v5, dy:I
    neg-int v0, v4

    move/from16 v20, v0

    shr-int/lit8 v6, v20, 0x1

    .line 226
    .local v6, error:I
    if-ge v8, v14, :cond_3

    const/16 v19, 0x1

    .line 227
    .local v19, ystep:I
    :goto_1
    if-ge v7, v13, :cond_4

    const/16 v17, 0x1

    .line 228
    .local v17, xstep:I
    :goto_2
    const/4 v15, 0x0

    .line 229
    .local v15, transitions:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/datamatrix/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    move-object/from16 v22, v0

    if-eqz v11, :cond_5

    move/from16 v21, v8

    :goto_3
    if-eqz v11, :cond_6

    move/from16 v20, v7

    :goto_4
    move-object/from16 v0, v22

    move/from16 v1, v21

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v9

    .line 230
    .local v9, inBlack:Z
    move/from16 v16, v7

    .local v16, x:I
    move/from16 v18, v8

    .local v18, y:I
    :goto_5
    move/from16 v0, v16

    if-ne v0, v13, :cond_7

    .line 245
    :cond_1
    new-instance v20, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v21

    invoke-direct {v0, v1, v2, v15, v3}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;-><init>(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;ILcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;)V

    return-object v20

    .line 213
    .end local v4           #dx:I
    .end local v5           #dy:I
    .end local v6           #error:I
    .end local v9           #inBlack:Z
    .end local v11           #steep:Z
    .end local v15           #transitions:I
    .end local v16           #x:I
    .end local v17           #xstep:I
    .end local v18           #y:I
    .end local v19           #ystep:I
    :cond_2
    const/4 v11, 0x0

    goto :goto_0

    .line 226
    .restart local v4       #dx:I
    .restart local v5       #dy:I
    .restart local v6       #error:I
    .restart local v11       #steep:Z
    :cond_3
    const/16 v19, -0x1

    goto :goto_1

    .line 227
    .restart local v19       #ystep:I
    :cond_4
    const/16 v17, -0x1

    goto :goto_2

    .restart local v15       #transitions:I
    .restart local v17       #xstep:I
    :cond_5
    move/from16 v21, v7

    .line 229
    goto :goto_3

    :cond_6
    move/from16 v20, v8

    goto :goto_4

    .line 231
    .restart local v9       #inBlack:Z
    .restart local v16       #x:I
    .restart local v18       #y:I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/datamatrix/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    move-object/from16 v22, v0

    if-eqz v11, :cond_a

    move/from16 v21, v18

    :goto_6
    if-eqz v11, :cond_b

    move/from16 v20, v16

    :goto_7
    move-object/from16 v0, v22

    move/from16 v1, v21

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v10

    .line 232
    .local v10, isBlack:Z
    if-eq v10, v9, :cond_8

    .line 233
    add-int/lit8 v15, v15, 0x1

    .line 234
    move v9, v10

    .line 236
    :cond_8
    add-int/2addr v6, v5

    .line 237
    if-lez v6, :cond_9

    .line 238
    move/from16 v0, v18

    if-eq v0, v14, :cond_1

    .line 241
    add-int v18, v18, v19

    .line 242
    sub-int/2addr v6, v4

    .line 230
    :cond_9
    add-int v16, v16, v17

    goto :goto_5

    .end local v10           #isBlack:Z
    :cond_a
    move/from16 v21, v16

    .line 231
    goto :goto_6

    :cond_b
    move/from16 v20, v18

    goto :goto_7
.end method


# virtual methods
.method public detect()Lcom/google/zxing/common/DetectorResult;
    .locals 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 64
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/datamatrix/detector/Detector;->rectangleDetector:Lcom/google/zxing/common/detector/MonochromeRectangleDetector;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/google/zxing/common/detector/MonochromeRectangleDetector;->detect()[Lcom/google/zxing/ResultPoint;

    move-result-object v6

    .line 65
    .local v6, cornerPoints:[Lcom/google/zxing/ResultPoint;
    const/16 v24, 0x0

    aget-object v14, v6, v24

    .line 66
    .local v14, pointA:Lcom/google/zxing/ResultPoint;
    const/16 v24, 0x1

    aget-object v15, v6, v24

    .line 67
    .local v15, pointB:Lcom/google/zxing/ResultPoint;
    const/16 v24, 0x2

    aget-object v16, v6, v24

    .line 68
    .local v16, pointC:Lcom/google/zxing/ResultPoint;
    const/16 v24, 0x3

    aget-object v18, v6, v24

    .line 73
    .local v18, pointD:Lcom/google/zxing/ResultPoint;
    new-instance v22, Ljava/util/Vector;

    const/16 v24, 0x4

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    .line 74
    .local v22, transitions:Ljava/util/Vector;
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/google/zxing/datamatrix/detector/Detector;->transitionsBetween(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 75
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v14, v1}, Lcom/google/zxing/datamatrix/detector/Detector;->transitionsBetween(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 76
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v15, v1}, Lcom/google/zxing/datamatrix/detector/Detector;->transitionsBetween(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 77
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/datamatrix/detector/Detector;->transitionsBetween(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 78
    new-instance v24, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitionsComparator;

    const/16 v25, 0x0

    invoke-direct/range {v24 .. v25}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitionsComparator;-><init>(Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitionsComparator;)V

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/google/zxing/common/Collections;->insertionSort(Ljava/util/Vector;Lcom/google/zxing/common/Comparator;)V

    .line 82
    const/16 v24, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;

    .line 83
    .local v9, lSideOne:Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;
    const/16 v24, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;

    .line 87
    .local v10, lSideTwo:Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;
    new-instance v17, Ljava/util/Hashtable;

    invoke-direct/range {v17 .. v17}, Ljava/util/Hashtable;-><init>()V

    .line 88
    .local v17, pointCount:Ljava/util/Hashtable;
    invoke-virtual {v9}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;->getFrom()Lcom/google/zxing/ResultPoint;

    move-result-object v24

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/google/zxing/datamatrix/detector/Detector;->increment(Ljava/util/Hashtable;Lcom/google/zxing/ResultPoint;)V

    .line 89
    invoke-virtual {v9}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;->getTo()Lcom/google/zxing/ResultPoint;

    move-result-object v24

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/google/zxing/datamatrix/detector/Detector;->increment(Ljava/util/Hashtable;Lcom/google/zxing/ResultPoint;)V

    .line 90
    invoke-virtual {v10}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;->getFrom()Lcom/google/zxing/ResultPoint;

    move-result-object v24

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/google/zxing/datamatrix/detector/Detector;->increment(Ljava/util/Hashtable;Lcom/google/zxing/ResultPoint;)V

    .line 91
    invoke-virtual {v10}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;->getTo()Lcom/google/zxing/ResultPoint;

    move-result-object v24

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/google/zxing/datamatrix/detector/Detector;->increment(Ljava/util/Hashtable;Lcom/google/zxing/ResultPoint;)V

    .line 93
    const/4 v12, 0x0

    .line 94
    .local v12, maybeTopLeft:Lcom/google/zxing/ResultPoint;
    const/4 v4, 0x0

    .line 95
    .local v4, bottomLeft:Lcom/google/zxing/ResultPoint;
    const/4 v11, 0x0

    .line 96
    .local v11, maybeBottomRight:Lcom/google/zxing/ResultPoint;
    invoke-virtual/range {v17 .. v17}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v19

    .line 97
    .local v19, points:Ljava/util/Enumeration;
    :goto_0
    invoke-interface/range {v19 .. v19}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v24

    if-nez v24, :cond_1

    .line 112
    if-eqz v12, :cond_0

    if-eqz v4, :cond_0

    if-nez v11, :cond_4

    .line 113
    :cond_0
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v24

    throw v24

    .line 98
    :cond_1
    invoke-interface/range {v19 .. v19}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/zxing/ResultPoint;

    .line 99
    .local v13, point:Lcom/google/zxing/ResultPoint;
    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Integer;

    .line 100
    .local v23, value:Ljava/lang/Integer;
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v24

    const/16 v25, 0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_2

    .line 101
    move-object v4, v13

    .line 102
    goto :goto_0

    .line 104
    :cond_2
    if-nez v12, :cond_3

    .line 105
    move-object v12, v13

    .line 106
    goto :goto_0

    .line 107
    :cond_3
    move-object v11, v13

    goto :goto_0

    .line 117
    .end local v13           #point:Lcom/google/zxing/ResultPoint;
    .end local v23           #value:Ljava/lang/Integer;
    :cond_4
    const/16 v24, 0x3

    move/from16 v0, v24

    new-array v7, v0, [Lcom/google/zxing/ResultPoint;

    const/16 v24, 0x0

    aput-object v12, v7, v24

    const/16 v24, 0x1

    aput-object v4, v7, v24

    const/16 v24, 0x2

    aput-object v11, v7, v24

    .line 119
    .local v7, corners:[Lcom/google/zxing/ResultPoint;
    invoke-static {v7}, Lcom/google/zxing/ResultPoint;->orderBestPatterns([Lcom/google/zxing/ResultPoint;)V

    .line 122
    const/16 v24, 0x0

    aget-object v5, v7, v24

    .line 123
    .local v5, bottomRight:Lcom/google/zxing/ResultPoint;
    const/16 v24, 0x1

    aget-object v4, v7, v24

    .line 124
    const/16 v24, 0x2

    aget-object v20, v7, v24

    .line 128
    .local v20, topLeft:Lcom/google/zxing/ResultPoint;
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_6

    .line 129
    move-object/from16 v21, v14

    .line 148
    .local v21, topRight:Lcom/google/zxing/ResultPoint;
    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/datamatrix/detector/Detector;->transitionsBetween(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;->getTransitions()I

    move-result v24

    .line 149
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v5, v1}, Lcom/google/zxing/datamatrix/detector/Detector;->transitionsBetween(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;->getTransitions()I

    move-result v25

    .line 148
    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 150
    .local v8, dimension:I
    and-int/lit8 v24, v8, 0x1

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_5

    .line 152
    add-int/lit8 v8, v8, 0x1

    .line 154
    :cond_5
    add-int/lit8 v8, v8, 0x2

    .line 156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/datamatrix/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-static {v0, v1, v4, v5, v8}, Lcom/google/zxing/datamatrix/detector/Detector;->sampleGrid(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;I)Lcom/google/zxing/common/BitMatrix;

    move-result-object v3

    .line 157
    .local v3, bits:Lcom/google/zxing/common/BitMatrix;
    new-instance v24, Lcom/google/zxing/common/DetectorResult;

    const/16 v25, 0x4

    move/from16 v0, v25

    new-array v0, v0, [Lcom/google/zxing/ResultPoint;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    const/16 v26, 0x1

    aput-object v15, v25, v26

    const/16 v26, 0x2

    aput-object v16, v25, v26

    const/16 v26, 0x3

    aput-object v18, v25, v26

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-direct {v0, v3, v1}, Lcom/google/zxing/common/DetectorResult;-><init>(Lcom/google/zxing/common/BitMatrix;[Lcom/google/zxing/ResultPoint;)V

    return-object v24

    .line 130
    .end local v3           #bits:Lcom/google/zxing/common/BitMatrix;
    .end local v8           #dimension:I
    .end local v21           #topRight:Lcom/google/zxing/ResultPoint;
    :cond_6
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_7

    .line 131
    move-object/from16 v21, v15

    .line 132
    .restart local v21       #topRight:Lcom/google/zxing/ResultPoint;
    goto :goto_1

    .end local v21           #topRight:Lcom/google/zxing/ResultPoint;
    :cond_7
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_8

    .line 133
    move-object/from16 v21, v16

    .line 134
    .restart local v21       #topRight:Lcom/google/zxing/ResultPoint;
    goto :goto_1

    .line 135
    .end local v21           #topRight:Lcom/google/zxing/ResultPoint;
    :cond_8
    move-object/from16 v21, v18

    .restart local v21       #topRight:Lcom/google/zxing/ResultPoint;
    goto :goto_1
.end method
