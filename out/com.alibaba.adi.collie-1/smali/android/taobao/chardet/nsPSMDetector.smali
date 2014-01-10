.class public abstract Landroid/taobao/chardet/nsPSMDetector;
.super Ljava/lang/Object;
.source "nsPSMDetector.java"


# static fields
.field public static final ALL:I = 0x0

.field public static final CHINESE:I = 0x2

.field public static final JAPANESE:I = 0x1

.field public static final KOREAN:I = 0x5

.field public static final MAX_VERIFIERS:I = 0x10

.field public static final NO_OF_LANGUAGES:I = 0x6

.field public static final SIMPLIFIED_CHINESE:I = 0x3

.field public static final TRADITIONAL_CHINESE:I = 0x4


# instance fields
.field private charset:Ljava/lang/String;

.field mClassItems:I

.field mClassRunSampler:Z

.field mDone:Z

.field mItemIdx:[I

.field mItems:I

.field mRunSampler:Z

.field mSampler:Landroid/taobao/chardet/nsEUCSampler;

.field mState:[B

.field mStatisticsData:[Landroid/taobao/chardet/nsEUCStatistics;

.field mVerifier:[Landroid/taobao/chardet/nsVerifier;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x10

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Landroid/taobao/chardet/nsEUCSampler;

    invoke-direct {v0}, Landroid/taobao/chardet/nsEUCSampler;-><init>()V

    iput-object v0, p0, Landroid/taobao/chardet/nsPSMDetector;->mSampler:Landroid/taobao/chardet/nsEUCSampler;

    .line 53
    new-array v0, v1, [B

    iput-object v0, p0, Landroid/taobao/chardet/nsPSMDetector;->mState:[B

    .line 54
    new-array v0, v1, [I

    iput-object v0, p0, Landroid/taobao/chardet/nsPSMDetector;->mItemIdx:[I

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/taobao/chardet/nsPSMDetector;->charset:Ljava/lang/String;

    .line 66
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/taobao/chardet/nsPSMDetector;->initVerifiers(I)V

    .line 67
    invoke-virtual {p0}, Landroid/taobao/chardet/nsPSMDetector;->Reset()V

    .line 68
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .parameter "langFlag"

    .prologue
    const/16 v1, 0x10

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Landroid/taobao/chardet/nsEUCSampler;

    invoke-direct {v0}, Landroid/taobao/chardet/nsEUCSampler;-><init>()V

    iput-object v0, p0, Landroid/taobao/chardet/nsPSMDetector;->mSampler:Landroid/taobao/chardet/nsEUCSampler;

    .line 53
    new-array v0, v1, [B

    iput-object v0, p0, Landroid/taobao/chardet/nsPSMDetector;->mState:[B

    .line 54
    new-array v0, v1, [I

    iput-object v0, p0, Landroid/taobao/chardet/nsPSMDetector;->mItemIdx:[I

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/taobao/chardet/nsPSMDetector;->charset:Ljava/lang/String;

    .line 71
    invoke-virtual {p0, p1}, Landroid/taobao/chardet/nsPSMDetector;->initVerifiers(I)V

    .line 72
    invoke-virtual {p0}, Landroid/taobao/chardet/nsPSMDetector;->Reset()V

    .line 73
    return-void
.end method

.method public constructor <init>(I[Landroid/taobao/chardet/nsVerifier;[Landroid/taobao/chardet/nsEUCStatistics;)V
    .locals 2
    .parameter "aItems"
    .parameter "aVerifierSet"
    .parameter "aStatisticsSet"

    .prologue
    const/16 v1, 0x10

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Landroid/taobao/chardet/nsEUCSampler;

    invoke-direct {v0}, Landroid/taobao/chardet/nsEUCSampler;-><init>()V

    iput-object v0, p0, Landroid/taobao/chardet/nsPSMDetector;->mSampler:Landroid/taobao/chardet/nsEUCSampler;

    .line 53
    new-array v0, v1, [B

    iput-object v0, p0, Landroid/taobao/chardet/nsPSMDetector;->mState:[B

    .line 54
    new-array v0, v1, [I

    iput-object v0, p0, Landroid/taobao/chardet/nsPSMDetector;->mItemIdx:[I

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/taobao/chardet/nsPSMDetector;->charset:Ljava/lang/String;

    .line 77
    if-eqz p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/taobao/chardet/nsPSMDetector;->mClassRunSampler:Z

    .line 78
    iput-object p3, p0, Landroid/taobao/chardet/nsPSMDetector;->mStatisticsData:[Landroid/taobao/chardet/nsEUCStatistics;

    .line 79
    iput-object p2, p0, Landroid/taobao/chardet/nsPSMDetector;->mVerifier:[Landroid/taobao/chardet/nsVerifier;

    .line 81
    iput p1, p0, Landroid/taobao/chardet/nsPSMDetector;->mClassItems:I

    .line 82
    invoke-virtual {p0}, Landroid/taobao/chardet/nsPSMDetector;->Reset()V

    .line 83
    return-void

    .line 77
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public DataEnd()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 340
    iget-boolean v1, p0, Landroid/taobao/chardet/nsPSMDetector;->mDone:Z

    if-ne v1, v3, :cond_1

    .line 341
    iget-object v0, p0, Landroid/taobao/chardet/nsPSMDetector;->charset:Ljava/lang/String;

    .line 360
    :cond_0
    :goto_0
    return-object v0

    .line 343
    :cond_1
    iget v1, p0, Landroid/taobao/chardet/nsPSMDetector;->mItems:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 344
    iget-object v1, p0, Landroid/taobao/chardet/nsPSMDetector;->mVerifier:[Landroid/taobao/chardet/nsVerifier;

    iget-object v2, p0, Landroid/taobao/chardet/nsPSMDetector;->mItemIdx:[I

    aget v2, v2, v4

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/taobao/chardet/nsVerifier;->charset()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GB18030"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 345
    iget-object v0, p0, Landroid/taobao/chardet/nsPSMDetector;->mVerifier:[Landroid/taobao/chardet/nsVerifier;

    iget-object v1, p0, Landroid/taobao/chardet/nsPSMDetector;->mItemIdx:[I

    aget v1, v1, v3

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/taobao/chardet/nsVerifier;->charset()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/taobao/chardet/nsPSMDetector;->charset:Ljava/lang/String;

    .line 347
    iput-boolean v3, p0, Landroid/taobao/chardet/nsPSMDetector;->mDone:Z

    .line 348
    iget-object v0, p0, Landroid/taobao/chardet/nsPSMDetector;->charset:Ljava/lang/String;

    goto :goto_0

    .line 349
    :cond_2
    iget-object v1, p0, Landroid/taobao/chardet/nsPSMDetector;->mVerifier:[Landroid/taobao/chardet/nsVerifier;

    iget-object v2, p0, Landroid/taobao/chardet/nsPSMDetector;->mItemIdx:[I

    aget v2, v2, v3

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/taobao/chardet/nsVerifier;->charset()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GB18030"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 350
    iget-object v0, p0, Landroid/taobao/chardet/nsPSMDetector;->mVerifier:[Landroid/taobao/chardet/nsVerifier;

    iget-object v1, p0, Landroid/taobao/chardet/nsPSMDetector;->mItemIdx:[I

    aget v1, v1, v4

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/taobao/chardet/nsVerifier;->charset()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/taobao/chardet/nsPSMDetector;->charset:Ljava/lang/String;

    .line 352
    iput-boolean v3, p0, Landroid/taobao/chardet/nsPSMDetector;->mDone:Z

    .line 353
    iget-object v0, p0, Landroid/taobao/chardet/nsPSMDetector;->charset:Ljava/lang/String;

    goto :goto_0

    .line 357
    :cond_3
    iget-boolean v1, p0, Landroid/taobao/chardet/nsPSMDetector;->mRunSampler:Z

    if-eqz v1, :cond_0

    .line 358
    invoke-virtual {p0, v0, v4, v3}, Landroid/taobao/chardet/nsPSMDetector;->Sample([BIZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public HandleData([BI)Ljava/lang/String;
    .locals 11
    .parameter "aBuf"
    .parameter "len"

    .prologue
    const/4 v10, 0x1

    .line 261
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, p2, :cond_9

    .line 262
    aget-byte v0, p1, v1

    .line 264
    .local v0, b:B
    const/4 v2, 0x0

    .local v2, j:I
    :cond_0
    :goto_1
    iget v7, p0, Landroid/taobao/chardet/nsPSMDetector;->mItems:I

    if-ge v2, v7, :cond_3

    .line 266
    iget-object v7, p0, Landroid/taobao/chardet/nsPSMDetector;->mVerifier:[Landroid/taobao/chardet/nsVerifier;

    iget-object v8, p0, Landroid/taobao/chardet/nsPSMDetector;->mItemIdx:[I

    aget v8, v8, v2

    aget-object v7, v7, v8

    iget-object v8, p0, Landroid/taobao/chardet/nsPSMDetector;->mState:[B

    aget-byte v8, v8, v2

    invoke-static {v7, v0, v8}, Landroid/taobao/chardet/nsVerifier;->getNextState(Landroid/taobao/chardet/nsVerifier;BB)B

    move-result v6

    .line 271
    .local v6, st:B
    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    .line 274
    iget-object v7, p0, Landroid/taobao/chardet/nsPSMDetector;->mVerifier:[Landroid/taobao/chardet/nsVerifier;

    iget-object v8, p0, Landroid/taobao/chardet/nsPSMDetector;->mItemIdx:[I

    aget v8, v8, v2

    aget-object v7, v7, v8

    invoke-virtual {v7}, Landroid/taobao/chardet/nsVerifier;->charset()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Landroid/taobao/chardet/nsPSMDetector;->charset:Ljava/lang/String;

    .line 276
    iput-boolean v10, p0, Landroid/taobao/chardet/nsPSMDetector;->mDone:Z

    .line 277
    iget-object v7, p0, Landroid/taobao/chardet/nsPSMDetector;->charset:Ljava/lang/String;

    .line 334
    .end local v0           #b:B
    .end local v2           #j:I
    .end local v6           #st:B
    :goto_2
    return-object v7

    .line 280
    .restart local v0       #b:B
    .restart local v2       #j:I
    .restart local v6       #st:B
    :cond_1
    if-ne v6, v10, :cond_2

    .line 283
    iget v7, p0, Landroid/taobao/chardet/nsPSMDetector;->mItems:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Landroid/taobao/chardet/nsPSMDetector;->mItems:I

    .line 284
    iget v7, p0, Landroid/taobao/chardet/nsPSMDetector;->mItems:I

    if-ge v2, v7, :cond_0

    .line 285
    iget-object v7, p0, Landroid/taobao/chardet/nsPSMDetector;->mItemIdx:[I

    iget-object v8, p0, Landroid/taobao/chardet/nsPSMDetector;->mItemIdx:[I

    iget v9, p0, Landroid/taobao/chardet/nsPSMDetector;->mItems:I

    aget v8, v8, v9

    aput v8, v7, v2

    .line 286
    iget-object v7, p0, Landroid/taobao/chardet/nsPSMDetector;->mState:[B

    iget-object v8, p0, Landroid/taobao/chardet/nsPSMDetector;->mState:[B

    iget v9, p0, Landroid/taobao/chardet/nsPSMDetector;->mItems:I

    aget-byte v8, v8, v9

    aput-byte v8, v7, v2

    goto :goto_1

    .line 291
    :cond_2
    iget-object v7, p0, Landroid/taobao/chardet/nsPSMDetector;->mState:[B

    add-int/lit8 v3, v2, 0x1

    .end local v2           #j:I
    .local v3, j:I
    aput-byte v6, v7, v2

    move v2, v3

    .end local v3           #j:I
    .restart local v2       #j:I
    goto :goto_1

    .line 296
    .end local v6           #st:B
    :cond_3
    iget v7, p0, Landroid/taobao/chardet/nsPSMDetector;->mItems:I

    if-gt v7, v10, :cond_5

    .line 298
    iget v7, p0, Landroid/taobao/chardet/nsPSMDetector;->mItems:I

    if-ne v10, v7, :cond_4

    .line 299
    iget-object v7, p0, Landroid/taobao/chardet/nsPSMDetector;->mVerifier:[Landroid/taobao/chardet/nsVerifier;

    iget-object v8, p0, Landroid/taobao/chardet/nsPSMDetector;->mItemIdx:[I

    const/4 v9, 0x0

    aget v8, v8, v9

    aget-object v7, v7, v8

    invoke-virtual {v7}, Landroid/taobao/chardet/nsVerifier;->charset()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Landroid/taobao/chardet/nsPSMDetector;->charset:Ljava/lang/String;

    .line 302
    :cond_4
    iput-boolean v10, p0, Landroid/taobao/chardet/nsPSMDetector;->mDone:Z

    .line 303
    iget-object v7, p0, Landroid/taobao/chardet/nsPSMDetector;->charset:Ljava/lang/String;

    goto :goto_2

    .line 308
    :cond_5
    const/4 v5, 0x0

    .line 309
    .local v5, nonUCS2Num:I
    const/4 v4, 0x0

    .line 311
    .local v4, nonUCS2Idx:I
    const/4 v2, 0x0

    :goto_3
    iget v7, p0, Landroid/taobao/chardet/nsPSMDetector;->mItems:I

    if-ge v2, v7, :cond_7

    .line 312
    iget-object v7, p0, Landroid/taobao/chardet/nsPSMDetector;->mVerifier:[Landroid/taobao/chardet/nsVerifier;

    iget-object v8, p0, Landroid/taobao/chardet/nsPSMDetector;->mItemIdx:[I

    aget v8, v8, v2

    aget-object v7, v7, v8

    invoke-virtual {v7}, Landroid/taobao/chardet/nsVerifier;->isUCS2()Z

    move-result v7

    if-nez v7, :cond_6

    iget-object v7, p0, Landroid/taobao/chardet/nsPSMDetector;->mVerifier:[Landroid/taobao/chardet/nsVerifier;

    iget-object v8, p0, Landroid/taobao/chardet/nsPSMDetector;->mItemIdx:[I

    aget v8, v8, v2

    aget-object v7, v7, v8

    invoke-virtual {v7}, Landroid/taobao/chardet/nsVerifier;->isUCS2()Z

    move-result v7

    if-nez v7, :cond_6

    .line 315
    add-int/lit8 v5, v5, 0x1

    .line 316
    move v4, v2

    .line 311
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 320
    :cond_7
    if-ne v10, v5, :cond_8

    .line 321
    iget-object v7, p0, Landroid/taobao/chardet/nsPSMDetector;->mVerifier:[Landroid/taobao/chardet/nsVerifier;

    iget-object v8, p0, Landroid/taobao/chardet/nsPSMDetector;->mItemIdx:[I

    aget v8, v8, v4

    aget-object v7, v7, v8

    invoke-virtual {v7}, Landroid/taobao/chardet/nsVerifier;->charset()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Landroid/taobao/chardet/nsPSMDetector;->charset:Ljava/lang/String;

    .line 323
    iput-boolean v10, p0, Landroid/taobao/chardet/nsPSMDetector;->mDone:Z

    .line 324
    iget-object v7, p0, Landroid/taobao/chardet/nsPSMDetector;->charset:Ljava/lang/String;

    goto/16 :goto_2

    .line 261
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 331
    .end local v0           #b:B
    .end local v2           #j:I
    .end local v4           #nonUCS2Idx:I
    .end local v5           #nonUCS2Num:I
    :cond_9
    iget-boolean v7, p0, Landroid/taobao/chardet/nsPSMDetector;->mRunSampler:Z

    if-eqz v7, :cond_a

    .line 332
    invoke-virtual {p0, p1, p2}, Landroid/taobao/chardet/nsPSMDetector;->Sample([BI)V

    .line 334
    :cond_a
    iget-object v7, p0, Landroid/taobao/chardet/nsPSMDetector;->charset:Ljava/lang/String;

    goto/16 :goto_2
.end method

.method public Reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 87
    iget-boolean v1, p0, Landroid/taobao/chardet/nsPSMDetector;->mClassRunSampler:Z

    iput-boolean v1, p0, Landroid/taobao/chardet/nsPSMDetector;->mRunSampler:Z

    .line 88
    iput-boolean v2, p0, Landroid/taobao/chardet/nsPSMDetector;->mDone:Z

    .line 89
    iget v1, p0, Landroid/taobao/chardet/nsPSMDetector;->mClassItems:I

    iput v1, p0, Landroid/taobao/chardet/nsPSMDetector;->mItems:I

    .line 91
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Landroid/taobao/chardet/nsPSMDetector;->mItems:I

    if-ge v0, v1, :cond_0

    .line 92
    iget-object v1, p0, Landroid/taobao/chardet/nsPSMDetector;->mState:[B

    aput-byte v2, v1, v0

    .line 93
    iget-object v1, p0, Landroid/taobao/chardet/nsPSMDetector;->mItemIdx:[I

    aput v0, v1, v0

    .line 91
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 96
    :cond_0
    iget-object v1, p0, Landroid/taobao/chardet/nsPSMDetector;->mSampler:Landroid/taobao/chardet/nsEUCSampler;

    invoke-virtual {v1}, Landroid/taobao/chardet/nsEUCSampler;->Reset()V

    .line 97
    return-void
.end method

.method public Sample([BIZ)Ljava/lang/String;
    .locals 16
    .parameter "aBuf"
    .parameter "aLen"
    .parameter "aLastChance"

    .prologue
    .line 369
    const/4 v8, 0x0

    .line 371
    .local v8, possibleCandidateNum:I
    const/4 v6, 0x0

    .line 373
    .local v6, eucNum:I
    const/4 v7, 0x0

    .local v7, j:I
    :goto_0
    move-object/from16 v0, p0

    iget v10, v0, Landroid/taobao/chardet/nsPSMDetector;->mItems:I

    if-ge v7, v10, :cond_2

    .line 374
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/taobao/chardet/nsPSMDetector;->mStatisticsData:[Landroid/taobao/chardet/nsEUCStatistics;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/taobao/chardet/nsPSMDetector;->mItemIdx:[I

    aget v11, v11, v7

    aget-object v10, v10, v11

    if-eqz v10, :cond_0

    .line 375
    add-int/lit8 v6, v6, 0x1

    .line 376
    :cond_0
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/taobao/chardet/nsPSMDetector;->mVerifier:[Landroid/taobao/chardet/nsVerifier;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/taobao/chardet/nsPSMDetector;->mItemIdx:[I

    aget v11, v11, v7

    aget-object v10, v10, v11

    invoke-virtual {v10}, Landroid/taobao/chardet/nsVerifier;->isUCS2()Z

    move-result v10

    if-nez v10, :cond_1

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/taobao/chardet/nsPSMDetector;->mVerifier:[Landroid/taobao/chardet/nsVerifier;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/taobao/chardet/nsPSMDetector;->mItemIdx:[I

    aget v11, v11, v7

    aget-object v10, v10, v11

    invoke-virtual {v10}, Landroid/taobao/chardet/nsVerifier;->charset()Ljava/lang/String;

    move-result-object v10

    const-string v11, "GB18030"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 378
    add-int/lit8 v8, v8, 0x1

    .line 373
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 381
    :cond_2
    const/4 v10, 0x1

    if-le v6, v10, :cond_7

    const/4 v10, 0x1

    :goto_1
    move-object/from16 v0, p0

    iput-boolean v10, v0, Landroid/taobao/chardet/nsPSMDetector;->mRunSampler:Z

    .line 383
    move-object/from16 v0, p0

    iget-boolean v10, v0, Landroid/taobao/chardet/nsPSMDetector;->mRunSampler:Z

    if-eqz v10, :cond_9

    .line 384
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/taobao/chardet/nsPSMDetector;->mSampler:Landroid/taobao/chardet/nsEUCSampler;

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v10, v0, v1}, Landroid/taobao/chardet/nsEUCSampler;->Sample([BI)Z

    move-result v10

    move-object/from16 v0, p0

    iput-boolean v10, v0, Landroid/taobao/chardet/nsPSMDetector;->mRunSampler:Z

    .line 385
    if-eqz p3, :cond_3

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/taobao/chardet/nsPSMDetector;->mSampler:Landroid/taobao/chardet/nsEUCSampler;

    invoke-virtual {v10}, Landroid/taobao/chardet/nsEUCSampler;->GetSomeData()Z

    move-result v10

    if-nez v10, :cond_4

    :cond_3
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/taobao/chardet/nsPSMDetector;->mSampler:Landroid/taobao/chardet/nsEUCSampler;

    invoke-virtual {v10}, Landroid/taobao/chardet/nsEUCSampler;->EnoughData()Z

    move-result v10

    if-eqz v10, :cond_9

    :cond_4
    if-ne v6, v8, :cond_9

    .line 388
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/taobao/chardet/nsPSMDetector;->mSampler:Landroid/taobao/chardet/nsEUCSampler;

    invoke-virtual {v10}, Landroid/taobao/chardet/nsEUCSampler;->CalFreq()V

    .line 390
    const/4 v2, -0x1

    .line 391
    .local v2, bestIdx:I
    const/4 v4, 0x0

    .line 392
    .local v4, eucCnt:I
    const/4 v3, 0x0

    .line 393
    .local v3, bestScore:F
    const/4 v7, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget v10, v0, Landroid/taobao/chardet/nsPSMDetector;->mItems:I

    if-ge v7, v10, :cond_8

    .line 394
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/taobao/chardet/nsPSMDetector;->mStatisticsData:[Landroid/taobao/chardet/nsEUCStatistics;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/taobao/chardet/nsPSMDetector;->mItemIdx:[I

    aget v11, v11, v7

    aget-object v10, v10, v11

    if-eqz v10, :cond_6

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/taobao/chardet/nsPSMDetector;->mVerifier:[Landroid/taobao/chardet/nsVerifier;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/taobao/chardet/nsPSMDetector;->mItemIdx:[I

    aget v11, v11, v7

    aget-object v10, v10, v11

    invoke-virtual {v10}, Landroid/taobao/chardet/nsVerifier;->charset()Ljava/lang/String;

    move-result-object v10

    const-string v11, "Big5"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 397
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/taobao/chardet/nsPSMDetector;->mSampler:Landroid/taobao/chardet/nsEUCSampler;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/taobao/chardet/nsPSMDetector;->mStatisticsData:[Landroid/taobao/chardet/nsEUCStatistics;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/taobao/chardet/nsPSMDetector;->mItemIdx:[I

    aget v12, v12, v7

    aget-object v11, v11, v12

    invoke-virtual {v11}, Landroid/taobao/chardet/nsEUCStatistics;->mFirstByteFreq()[F

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/taobao/chardet/nsPSMDetector;->mStatisticsData:[Landroid/taobao/chardet/nsEUCStatistics;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/taobao/chardet/nsPSMDetector;->mItemIdx:[I

    aget v13, v13, v7

    aget-object v12, v12, v13

    invoke-virtual {v12}, Landroid/taobao/chardet/nsEUCStatistics;->mFirstByteWeight()F

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/taobao/chardet/nsPSMDetector;->mStatisticsData:[Landroid/taobao/chardet/nsEUCStatistics;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/taobao/chardet/nsPSMDetector;->mItemIdx:[I

    aget v14, v14, v7

    aget-object v13, v13, v14

    invoke-virtual {v13}, Landroid/taobao/chardet/nsEUCStatistics;->mSecondByteFreq()[F

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/taobao/chardet/nsPSMDetector;->mStatisticsData:[Landroid/taobao/chardet/nsEUCStatistics;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/taobao/chardet/nsPSMDetector;->mItemIdx:[I

    aget v15, v15, v7

    aget-object v14, v14, v15

    invoke-virtual {v14}, Landroid/taobao/chardet/nsEUCStatistics;->mSecondByteWeight()F

    move-result v14

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/taobao/chardet/nsEUCSampler;->GetScore([FF[FF)F

    move-result v9

    .line 403
    .local v9, score:F
    add-int/lit8 v5, v4, 0x1

    .end local v4           #eucCnt:I
    .local v5, eucCnt:I
    if-eqz v4, :cond_5

    cmpl-float v10, v3, v9

    if-lez v10, :cond_a

    .line 404
    :cond_5
    move v3, v9

    .line 405
    move v2, v7

    move v4, v5

    .line 393
    .end local v5           #eucCnt:I
    .end local v9           #score:F
    .restart local v4       #eucCnt:I
    :cond_6
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    .line 381
    .end local v2           #bestIdx:I
    .end local v3           #bestScore:F
    .end local v4           #eucCnt:I
    :cond_7
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 409
    .restart local v2       #bestIdx:I
    .restart local v3       #bestScore:F
    .restart local v4       #eucCnt:I
    :cond_8
    if-ltz v2, :cond_9

    .line 411
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/taobao/chardet/nsPSMDetector;->mVerifier:[Landroid/taobao/chardet/nsVerifier;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/taobao/chardet/nsPSMDetector;->mItemIdx:[I

    aget v11, v11, v2

    aget-object v10, v10, v11

    invoke-virtual {v10}, Landroid/taobao/chardet/nsVerifier;->charset()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iput-object v10, v0, Landroid/taobao/chardet/nsPSMDetector;->charset:Ljava/lang/String;

    .line 413
    const/4 v10, 0x1

    move-object/from16 v0, p0

    iput-boolean v10, v0, Landroid/taobao/chardet/nsPSMDetector;->mDone:Z

    .line 414
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/taobao/chardet/nsPSMDetector;->charset:Ljava/lang/String;

    .line 418
    .end local v2           #bestIdx:I
    .end local v3           #bestScore:F
    .end local v4           #eucCnt:I
    :goto_4
    return-object v10

    :cond_9
    const/4 v10, 0x0

    goto :goto_4

    .restart local v2       #bestIdx:I
    .restart local v3       #bestScore:F
    .restart local v5       #eucCnt:I
    .restart local v9       #score:F
    :cond_a
    move v4, v5

    .end local v5           #eucCnt:I
    .restart local v4       #eucCnt:I
    goto :goto_3
.end method

.method public Sample([BI)V
    .locals 1
    .parameter "aBuf"
    .parameter "aLen"

    .prologue
    .line 364
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/taobao/chardet/nsPSMDetector;->Sample([BIZ)Ljava/lang/String;

    .line 365
    return-void
.end method

.method public getProbableCharsets()[Ljava/lang/String;
    .locals 5

    .prologue
    .line 423
    iget v3, p0, Landroid/taobao/chardet/nsPSMDetector;->mItems:I

    if-gtz v3, :cond_0

    .line 424
    const/4 v3, 0x1

    new-array v1, v3, [Ljava/lang/String;

    .line 425
    .local v1, nomatch:[Ljava/lang/String;
    const/4 v3, 0x0

    const-string v4, "nomatch"

    aput-object v4, v1, v3

    .line 432
    .end local v1           #nomatch:[Ljava/lang/String;
    :goto_0
    return-object v1

    .line 429
    :cond_0
    iget v3, p0, Landroid/taobao/chardet/nsPSMDetector;->mItems:I

    new-array v2, v3, [Ljava/lang/String;

    .line 430
    .local v2, ret:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget v3, p0, Landroid/taobao/chardet/nsPSMDetector;->mItems:I

    if-ge v0, v3, :cond_1

    .line 431
    iget-object v3, p0, Landroid/taobao/chardet/nsPSMDetector;->mVerifier:[Landroid/taobao/chardet/nsVerifier;

    iget-object v4, p0, Landroid/taobao/chardet/nsPSMDetector;->mItemIdx:[I

    aget v4, v4, v0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/taobao/chardet/nsVerifier;->charset()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 430
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move-object v1, v2

    .line 432
    goto :goto_0
.end method

.method protected initVerifiers(I)V
    .locals 9
    .parameter "currVerSet"

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v6, 0x0

    .line 100
    iput-object v6, p0, Landroid/taobao/chardet/nsPSMDetector;->charset:Ljava/lang/String;

    .line 104
    if-ltz p1, :cond_1

    const/4 v3, 0x6

    if-ge p1, v3, :cond_1

    .line 105
    move v0, p1

    .line 111
    .local v0, currVerifierSet:I
    :goto_0
    iput-object v6, p0, Landroid/taobao/chardet/nsPSMDetector;->mVerifier:[Landroid/taobao/chardet/nsVerifier;

    .line 112
    iput-object v6, p0, Landroid/taobao/chardet/nsPSMDetector;->mStatisticsData:[Landroid/taobao/chardet/nsEUCStatistics;

    .line 114
    const/4 v3, 0x4

    if-ne v0, v3, :cond_2

    .line 116
    const/4 v3, 0x7

    new-array v3, v3, [Landroid/taobao/chardet/nsVerifier;

    new-instance v4, Landroid/taobao/chardet/nsUTF8Verifier;

    invoke-direct {v4}, Landroid/taobao/chardet/nsUTF8Verifier;-><init>()V

    aput-object v4, v3, v2

    new-instance v4, Landroid/taobao/chardet/nsBIG5Verifier;

    invoke-direct {v4}, Landroid/taobao/chardet/nsBIG5Verifier;-><init>()V

    aput-object v4, v3, v1

    new-instance v4, Landroid/taobao/chardet/nsISO2022CNVerifier;

    invoke-direct {v4}, Landroid/taobao/chardet/nsISO2022CNVerifier;-><init>()V

    aput-object v4, v3, v7

    new-instance v4, Landroid/taobao/chardet/nsEUCTWVerifier;

    invoke-direct {v4}, Landroid/taobao/chardet/nsEUCTWVerifier;-><init>()V

    aput-object v4, v3, v8

    const/4 v4, 0x4

    new-instance v5, Landroid/taobao/chardet/nsCP1252Verifier;

    invoke-direct {v5}, Landroid/taobao/chardet/nsCP1252Verifier;-><init>()V

    aput-object v5, v3, v4

    const/4 v4, 0x5

    new-instance v5, Landroid/taobao/chardet/nsUCS2BEVerifier;

    invoke-direct {v5}, Landroid/taobao/chardet/nsUCS2BEVerifier;-><init>()V

    aput-object v5, v3, v4

    const/4 v4, 0x6

    new-instance v5, Landroid/taobao/chardet/nsUCS2LEVerifier;

    invoke-direct {v5}, Landroid/taobao/chardet/nsUCS2LEVerifier;-><init>()V

    aput-object v5, v3, v4

    iput-object v3, p0, Landroid/taobao/chardet/nsPSMDetector;->mVerifier:[Landroid/taobao/chardet/nsVerifier;

    .line 126
    const/4 v3, 0x7

    new-array v3, v3, [Landroid/taobao/chardet/nsEUCStatistics;

    aput-object v6, v3, v2

    new-instance v4, Landroid/taobao/chardet/Big5Statistics;

    invoke-direct {v4}, Landroid/taobao/chardet/Big5Statistics;-><init>()V

    aput-object v4, v3, v1

    aput-object v6, v3, v7

    new-instance v4, Landroid/taobao/chardet/EUCTWStatistics;

    invoke-direct {v4}, Landroid/taobao/chardet/EUCTWStatistics;-><init>()V

    aput-object v4, v3, v8

    const/4 v4, 0x4

    aput-object v6, v3, v4

    const/4 v4, 0x5

    aput-object v6, v3, v4

    const/4 v4, 0x6

    aput-object v6, v3, v4

    iput-object v3, p0, Landroid/taobao/chardet/nsPSMDetector;->mStatisticsData:[Landroid/taobao/chardet/nsEUCStatistics;

    .line 248
    :cond_0
    :goto_1
    iget-object v3, p0, Landroid/taobao/chardet/nsPSMDetector;->mStatisticsData:[Landroid/taobao/chardet/nsEUCStatistics;

    if-eqz v3, :cond_7

    :goto_2
    iput-boolean v1, p0, Landroid/taobao/chardet/nsPSMDetector;->mClassRunSampler:Z

    .line 249
    iget-object v1, p0, Landroid/taobao/chardet/nsPSMDetector;->mVerifier:[Landroid/taobao/chardet/nsVerifier;

    array-length v1, v1

    iput v1, p0, Landroid/taobao/chardet/nsPSMDetector;->mClassItems:I

    .line 251
    return-void

    .line 108
    .end local v0           #currVerifierSet:I
    :cond_1
    const/4 v0, 0x0

    .restart local v0       #currVerifierSet:I
    goto :goto_0

    .line 138
    :cond_2
    const/4 v3, 0x5

    if-ne v0, v3, :cond_3

    .line 140
    const/4 v3, 0x6

    new-array v3, v3, [Landroid/taobao/chardet/nsVerifier;

    new-instance v4, Landroid/taobao/chardet/nsUTF8Verifier;

    invoke-direct {v4}, Landroid/taobao/chardet/nsUTF8Verifier;-><init>()V

    aput-object v4, v3, v2

    new-instance v4, Landroid/taobao/chardet/nsEUCKRVerifier;

    invoke-direct {v4}, Landroid/taobao/chardet/nsEUCKRVerifier;-><init>()V

    aput-object v4, v3, v1

    new-instance v4, Landroid/taobao/chardet/nsISO2022KRVerifier;

    invoke-direct {v4}, Landroid/taobao/chardet/nsISO2022KRVerifier;-><init>()V

    aput-object v4, v3, v7

    new-instance v4, Landroid/taobao/chardet/nsCP1252Verifier;

    invoke-direct {v4}, Landroid/taobao/chardet/nsCP1252Verifier;-><init>()V

    aput-object v4, v3, v8

    const/4 v4, 0x4

    new-instance v5, Landroid/taobao/chardet/nsUCS2BEVerifier;

    invoke-direct {v5}, Landroid/taobao/chardet/nsUCS2BEVerifier;-><init>()V

    aput-object v5, v3, v4

    const/4 v4, 0x5

    new-instance v5, Landroid/taobao/chardet/nsUCS2LEVerifier;

    invoke-direct {v5}, Landroid/taobao/chardet/nsUCS2LEVerifier;-><init>()V

    aput-object v5, v3, v4

    iput-object v3, p0, Landroid/taobao/chardet/nsPSMDetector;->mVerifier:[Landroid/taobao/chardet/nsVerifier;

    goto :goto_1

    .line 151
    :cond_3
    if-ne v0, v8, :cond_4

    .line 153
    const/16 v3, 0x8

    new-array v3, v3, [Landroid/taobao/chardet/nsVerifier;

    new-instance v4, Landroid/taobao/chardet/nsUTF8Verifier;

    invoke-direct {v4}, Landroid/taobao/chardet/nsUTF8Verifier;-><init>()V

    aput-object v4, v3, v2

    new-instance v4, Landroid/taobao/chardet/nsGB2312Verifier;

    invoke-direct {v4}, Landroid/taobao/chardet/nsGB2312Verifier;-><init>()V

    aput-object v4, v3, v1

    new-instance v4, Landroid/taobao/chardet/nsGB18030Verifier;

    invoke-direct {v4}, Landroid/taobao/chardet/nsGB18030Verifier;-><init>()V

    aput-object v4, v3, v7

    new-instance v4, Landroid/taobao/chardet/nsISO2022CNVerifier;

    invoke-direct {v4}, Landroid/taobao/chardet/nsISO2022CNVerifier;-><init>()V

    aput-object v4, v3, v8

    const/4 v4, 0x4

    new-instance v5, Landroid/taobao/chardet/nsHZVerifier;

    invoke-direct {v5}, Landroid/taobao/chardet/nsHZVerifier;-><init>()V

    aput-object v5, v3, v4

    const/4 v4, 0x5

    new-instance v5, Landroid/taobao/chardet/nsCP1252Verifier;

    invoke-direct {v5}, Landroid/taobao/chardet/nsCP1252Verifier;-><init>()V

    aput-object v5, v3, v4

    const/4 v4, 0x6

    new-instance v5, Landroid/taobao/chardet/nsUCS2BEVerifier;

    invoke-direct {v5}, Landroid/taobao/chardet/nsUCS2BEVerifier;-><init>()V

    aput-object v5, v3, v4

    const/4 v4, 0x7

    new-instance v5, Landroid/taobao/chardet/nsUCS2LEVerifier;

    invoke-direct {v5}, Landroid/taobao/chardet/nsUCS2LEVerifier;-><init>()V

    aput-object v5, v3, v4

    iput-object v3, p0, Landroid/taobao/chardet/nsPSMDetector;->mVerifier:[Landroid/taobao/chardet/nsVerifier;

    goto/16 :goto_1

    .line 166
    :cond_4
    if-ne v0, v1, :cond_5

    .line 168
    const/4 v3, 0x7

    new-array v3, v3, [Landroid/taobao/chardet/nsVerifier;

    new-instance v4, Landroid/taobao/chardet/nsUTF8Verifier;

    invoke-direct {v4}, Landroid/taobao/chardet/nsUTF8Verifier;-><init>()V

    aput-object v4, v3, v2

    new-instance v4, Landroid/taobao/chardet/nsSJISVerifier;

    invoke-direct {v4}, Landroid/taobao/chardet/nsSJISVerifier;-><init>()V

    aput-object v4, v3, v1

    new-instance v4, Landroid/taobao/chardet/nsEUCJPVerifier;

    invoke-direct {v4}, Landroid/taobao/chardet/nsEUCJPVerifier;-><init>()V

    aput-object v4, v3, v7

    new-instance v4, Landroid/taobao/chardet/nsISO2022JPVerifier;

    invoke-direct {v4}, Landroid/taobao/chardet/nsISO2022JPVerifier;-><init>()V

    aput-object v4, v3, v8

    const/4 v4, 0x4

    new-instance v5, Landroid/taobao/chardet/nsCP1252Verifier;

    invoke-direct {v5}, Landroid/taobao/chardet/nsCP1252Verifier;-><init>()V

    aput-object v5, v3, v4

    const/4 v4, 0x5

    new-instance v5, Landroid/taobao/chardet/nsUCS2BEVerifier;

    invoke-direct {v5}, Landroid/taobao/chardet/nsUCS2BEVerifier;-><init>()V

    aput-object v5, v3, v4

    const/4 v4, 0x6

    new-instance v5, Landroid/taobao/chardet/nsUCS2LEVerifier;

    invoke-direct {v5}, Landroid/taobao/chardet/nsUCS2LEVerifier;-><init>()V

    aput-object v5, v3, v4

    iput-object v3, p0, Landroid/taobao/chardet/nsPSMDetector;->mVerifier:[Landroid/taobao/chardet/nsVerifier;

    goto/16 :goto_1

    .line 179
    :cond_5
    if-ne v0, v7, :cond_6

    .line 181
    const/16 v3, 0xa

    new-array v3, v3, [Landroid/taobao/chardet/nsVerifier;

    new-instance v4, Landroid/taobao/chardet/nsUTF8Verifier;

    invoke-direct {v4}, Landroid/taobao/chardet/nsUTF8Verifier;-><init>()V

    aput-object v4, v3, v2

    new-instance v4, Landroid/taobao/chardet/nsGB2312Verifier;

    invoke-direct {v4}, Landroid/taobao/chardet/nsGB2312Verifier;-><init>()V

    aput-object v4, v3, v1

    new-instance v4, Landroid/taobao/chardet/nsGB18030Verifier;

    invoke-direct {v4}, Landroid/taobao/chardet/nsGB18030Verifier;-><init>()V

    aput-object v4, v3, v7

    new-instance v4, Landroid/taobao/chardet/nsBIG5Verifier;

    invoke-direct {v4}, Landroid/taobao/chardet/nsBIG5Verifier;-><init>()V

    aput-object v4, v3, v8

    const/4 v4, 0x4

    new-instance v5, Landroid/taobao/chardet/nsISO2022CNVerifier;

    invoke-direct {v5}, Landroid/taobao/chardet/nsISO2022CNVerifier;-><init>()V

    aput-object v5, v3, v4

    const/4 v4, 0x5

    new-instance v5, Landroid/taobao/chardet/nsHZVerifier;

    invoke-direct {v5}, Landroid/taobao/chardet/nsHZVerifier;-><init>()V

    aput-object v5, v3, v4

    const/4 v4, 0x6

    new-instance v5, Landroid/taobao/chardet/nsEUCTWVerifier;

    invoke-direct {v5}, Landroid/taobao/chardet/nsEUCTWVerifier;-><init>()V

    aput-object v5, v3, v4

    const/4 v4, 0x7

    new-instance v5, Landroid/taobao/chardet/nsCP1252Verifier;

    invoke-direct {v5}, Landroid/taobao/chardet/nsCP1252Verifier;-><init>()V

    aput-object v5, v3, v4

    const/16 v4, 0x8

    new-instance v5, Landroid/taobao/chardet/nsUCS2BEVerifier;

    invoke-direct {v5}, Landroid/taobao/chardet/nsUCS2BEVerifier;-><init>()V

    aput-object v5, v3, v4

    const/16 v4, 0x9

    new-instance v5, Landroid/taobao/chardet/nsUCS2LEVerifier;

    invoke-direct {v5}, Landroid/taobao/chardet/nsUCS2LEVerifier;-><init>()V

    aput-object v5, v3, v4

    iput-object v3, p0, Landroid/taobao/chardet/nsPSMDetector;->mVerifier:[Landroid/taobao/chardet/nsVerifier;

    .line 194
    const/16 v3, 0xa

    new-array v3, v3, [Landroid/taobao/chardet/nsEUCStatistics;

    aput-object v6, v3, v2

    new-instance v4, Landroid/taobao/chardet/GB2312Statistics;

    invoke-direct {v4}, Landroid/taobao/chardet/GB2312Statistics;-><init>()V

    aput-object v4, v3, v1

    aput-object v6, v3, v7

    new-instance v4, Landroid/taobao/chardet/Big5Statistics;

    invoke-direct {v4}, Landroid/taobao/chardet/Big5Statistics;-><init>()V

    aput-object v4, v3, v8

    const/4 v4, 0x4

    aput-object v6, v3, v4

    const/4 v4, 0x5

    aput-object v6, v3, v4

    const/4 v4, 0x6

    new-instance v5, Landroid/taobao/chardet/EUCTWStatistics;

    invoke-direct {v5}, Landroid/taobao/chardet/EUCTWStatistics;-><init>()V

    aput-object v5, v3, v4

    const/4 v4, 0x7

    aput-object v6, v3, v4

    const/16 v4, 0x8

    aput-object v6, v3, v4

    const/16 v4, 0x9

    aput-object v6, v3, v4

    iput-object v3, p0, Landroid/taobao/chardet/nsPSMDetector;->mStatisticsData:[Landroid/taobao/chardet/nsEUCStatistics;

    goto/16 :goto_1

    .line 209
    :cond_6
    if-nez v0, :cond_0

    .line 211
    const/16 v3, 0xf

    new-array v3, v3, [Landroid/taobao/chardet/nsVerifier;

    new-instance v4, Landroid/taobao/chardet/nsUTF8Verifier;

    invoke-direct {v4}, Landroid/taobao/chardet/nsUTF8Verifier;-><init>()V

    aput-object v4, v3, v2

    new-instance v4, Landroid/taobao/chardet/nsSJISVerifier;

    invoke-direct {v4}, Landroid/taobao/chardet/nsSJISVerifier;-><init>()V

    aput-object v4, v3, v1

    new-instance v4, Landroid/taobao/chardet/nsEUCJPVerifier;

    invoke-direct {v4}, Landroid/taobao/chardet/nsEUCJPVerifier;-><init>()V

    aput-object v4, v3, v7

    new-instance v4, Landroid/taobao/chardet/nsISO2022JPVerifier;

    invoke-direct {v4}, Landroid/taobao/chardet/nsISO2022JPVerifier;-><init>()V

    aput-object v4, v3, v8

    const/4 v4, 0x4

    new-instance v5, Landroid/taobao/chardet/nsEUCKRVerifier;

    invoke-direct {v5}, Landroid/taobao/chardet/nsEUCKRVerifier;-><init>()V

    aput-object v5, v3, v4

    const/4 v4, 0x5

    new-instance v5, Landroid/taobao/chardet/nsISO2022KRVerifier;

    invoke-direct {v5}, Landroid/taobao/chardet/nsISO2022KRVerifier;-><init>()V

    aput-object v5, v3, v4

    const/4 v4, 0x6

    new-instance v5, Landroid/taobao/chardet/nsBIG5Verifier;

    invoke-direct {v5}, Landroid/taobao/chardet/nsBIG5Verifier;-><init>()V

    aput-object v5, v3, v4

    const/4 v4, 0x7

    new-instance v5, Landroid/taobao/chardet/nsEUCTWVerifier;

    invoke-direct {v5}, Landroid/taobao/chardet/nsEUCTWVerifier;-><init>()V

    aput-object v5, v3, v4

    const/16 v4, 0x8

    new-instance v5, Landroid/taobao/chardet/nsGB2312Verifier;

    invoke-direct {v5}, Landroid/taobao/chardet/nsGB2312Verifier;-><init>()V

    aput-object v5, v3, v4

    const/16 v4, 0x9

    new-instance v5, Landroid/taobao/chardet/nsGB18030Verifier;

    invoke-direct {v5}, Landroid/taobao/chardet/nsGB18030Verifier;-><init>()V

    aput-object v5, v3, v4

    const/16 v4, 0xa

    new-instance v5, Landroid/taobao/chardet/nsISO2022CNVerifier;

    invoke-direct {v5}, Landroid/taobao/chardet/nsISO2022CNVerifier;-><init>()V

    aput-object v5, v3, v4

    const/16 v4, 0xb

    new-instance v5, Landroid/taobao/chardet/nsHZVerifier;

    invoke-direct {v5}, Landroid/taobao/chardet/nsHZVerifier;-><init>()V

    aput-object v5, v3, v4

    const/16 v4, 0xc

    new-instance v5, Landroid/taobao/chardet/nsCP1252Verifier;

    invoke-direct {v5}, Landroid/taobao/chardet/nsCP1252Verifier;-><init>()V

    aput-object v5, v3, v4

    const/16 v4, 0xd

    new-instance v5, Landroid/taobao/chardet/nsUCS2BEVerifier;

    invoke-direct {v5}, Landroid/taobao/chardet/nsUCS2BEVerifier;-><init>()V

    aput-object v5, v3, v4

    const/16 v4, 0xe

    new-instance v5, Landroid/taobao/chardet/nsUCS2LEVerifier;

    invoke-direct {v5}, Landroid/taobao/chardet/nsUCS2LEVerifier;-><init>()V

    aput-object v5, v3, v4

    iput-object v3, p0, Landroid/taobao/chardet/nsPSMDetector;->mVerifier:[Landroid/taobao/chardet/nsVerifier;

    .line 229
    const/16 v3, 0xf

    new-array v3, v3, [Landroid/taobao/chardet/nsEUCStatistics;

    aput-object v6, v3, v2

    aput-object v6, v3, v1

    new-instance v4, Landroid/taobao/chardet/EUCJPStatistics;

    invoke-direct {v4}, Landroid/taobao/chardet/EUCJPStatistics;-><init>()V

    aput-object v4, v3, v7

    aput-object v6, v3, v8

    const/4 v4, 0x4

    new-instance v5, Landroid/taobao/chardet/EUCKRStatistics;

    invoke-direct {v5}, Landroid/taobao/chardet/EUCKRStatistics;-><init>()V

    aput-object v5, v3, v4

    const/4 v4, 0x5

    aput-object v6, v3, v4

    const/4 v4, 0x6

    new-instance v5, Landroid/taobao/chardet/Big5Statistics;

    invoke-direct {v5}, Landroid/taobao/chardet/Big5Statistics;-><init>()V

    aput-object v5, v3, v4

    const/4 v4, 0x7

    new-instance v5, Landroid/taobao/chardet/EUCTWStatistics;

    invoke-direct {v5}, Landroid/taobao/chardet/EUCTWStatistics;-><init>()V

    aput-object v5, v3, v4

    const/16 v4, 0x8

    new-instance v5, Landroid/taobao/chardet/GB2312Statistics;

    invoke-direct {v5}, Landroid/taobao/chardet/GB2312Statistics;-><init>()V

    aput-object v5, v3, v4

    const/16 v4, 0x9

    aput-object v6, v3, v4

    const/16 v4, 0xa

    aput-object v6, v3, v4

    const/16 v4, 0xb

    aput-object v6, v3, v4

    const/16 v4, 0xc

    aput-object v6, v3, v4

    const/16 v4, 0xd

    aput-object v6, v3, v4

    const/16 v4, 0xe

    aput-object v6, v3, v4

    iput-object v3, p0, Landroid/taobao/chardet/nsPSMDetector;->mStatisticsData:[Landroid/taobao/chardet/nsEUCStatistics;

    goto/16 :goto_1

    :cond_7
    move v1, v2

    .line 248
    goto/16 :goto_2
.end method
