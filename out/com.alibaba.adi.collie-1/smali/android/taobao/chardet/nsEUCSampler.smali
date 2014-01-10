.class public Landroid/taobao/chardet/nsEUCSampler;
.super Ljava/lang/Object;
.source "nsEUCSampler.java"


# instance fields
.field public mFirstByteCnt:[I

.field public mFirstByteFreq:[F

.field public mSecondByteCnt:[I

.field public mSecondByteFreq:[F

.field mState:I

.field mThreshold:I

.field mTotal:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x5e

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput v2, p0, Landroid/taobao/chardet/nsEUCSampler;->mTotal:I

    .line 42
    const/16 v0, 0xc8

    iput v0, p0, Landroid/taobao/chardet/nsEUCSampler;->mThreshold:I

    .line 43
    iput v2, p0, Landroid/taobao/chardet/nsEUCSampler;->mState:I

    .line 44
    new-array v0, v1, [I

    iput-object v0, p0, Landroid/taobao/chardet/nsEUCSampler;->mFirstByteCnt:[I

    .line 45
    new-array v0, v1, [I

    iput-object v0, p0, Landroid/taobao/chardet/nsEUCSampler;->mSecondByteCnt:[I

    .line 46
    new-array v0, v1, [F

    iput-object v0, p0, Landroid/taobao/chardet/nsEUCSampler;->mFirstByteFreq:[F

    .line 47
    new-array v0, v1, [F

    iput-object v0, p0, Landroid/taobao/chardet/nsEUCSampler;->mSecondByteFreq:[F

    .line 50
    invoke-virtual {p0}, Landroid/taobao/chardet/nsEUCSampler;->Reset()V

    .line 51
    return-void
.end method


# virtual methods
.method CalFreq()V
    .locals 4

    .prologue
    .line 116
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0x5e

    if-ge v0, v1, :cond_0

    .line 117
    iget-object v1, p0, Landroid/taobao/chardet/nsEUCSampler;->mFirstByteFreq:[F

    iget-object v2, p0, Landroid/taobao/chardet/nsEUCSampler;->mFirstByteCnt:[I

    aget v2, v2, v0

    int-to-float v2, v2

    iget v3, p0, Landroid/taobao/chardet/nsEUCSampler;->mTotal:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    aput v2, v1, v0

    .line 118
    iget-object v1, p0, Landroid/taobao/chardet/nsEUCSampler;->mSecondByteFreq:[F

    iget-object v2, p0, Landroid/taobao/chardet/nsEUCSampler;->mSecondByteCnt:[I

    aget v2, v2, v0

    int-to-float v2, v2

    iget v3, p0, Landroid/taobao/chardet/nsEUCSampler;->mTotal:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    aput v2, v1, v0

    .line 116
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 120
    :cond_0
    return-void
.end method

.method EnoughData()Z
    .locals 2

    .prologue
    .line 60
    iget v0, p0, Landroid/taobao/chardet/nsEUCSampler;->mTotal:I

    iget v1, p0, Landroid/taobao/chardet/nsEUCSampler;->mThreshold:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method GetScore([FF[FF)F
    .locals 2
    .parameter "aFirstByteFreq"
    .parameter "aFirstByteWeight"
    .parameter "aSecondByteFreq"
    .parameter "aSecondByteWeight"

    .prologue
    .line 125
    iget-object v0, p0, Landroid/taobao/chardet/nsEUCSampler;->mFirstByteFreq:[F

    invoke-virtual {p0, p1, v0}, Landroid/taobao/chardet/nsEUCSampler;->GetScore([F[F)F

    move-result v0

    mul-float/2addr v0, p2

    iget-object v1, p0, Landroid/taobao/chardet/nsEUCSampler;->mSecondByteFreq:[F

    invoke-virtual {p0, p3, v1}, Landroid/taobao/chardet/nsEUCSampler;->GetScore([F[F)F

    move-result v1

    mul-float/2addr v1, p4

    add-float/2addr v0, v1

    return v0
.end method

.method GetScore([F[F)F
    .locals 5
    .parameter "array1"
    .parameter "array2"

    .prologue
    .line 131
    const/4 v2, 0x0

    .line 133
    .local v2, sum:F
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v3, 0x5e

    if-ge v0, v3, :cond_0

    .line 134
    aget v3, p1, v0

    aget v4, p2, v0

    sub-float v1, v3, v4

    .line 135
    .local v1, s:F
    mul-float v3, v1, v1

    add-float/2addr v2, v3

    .line 133
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 137
    .end local v1           #s:F
    :cond_0
    invoke-static {v2}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v3

    const/high16 v4, 0x42bc

    div-float/2addr v3, v4

    return v3
.end method

.method GetSomeData()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 62
    iget v1, p0, Landroid/taobao/chardet/nsEUCSampler;->mTotal:I

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public Reset()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 54
    iput v3, p0, Landroid/taobao/chardet/nsEUCSampler;->mTotal:I

    .line 55
    iput v3, p0, Landroid/taobao/chardet/nsEUCSampler;->mState:I

    .line 56
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0x5e

    if-ge v0, v1, :cond_0

    .line 57
    iget-object v1, p0, Landroid/taobao/chardet/nsEUCSampler;->mFirstByteCnt:[I

    iget-object v2, p0, Landroid/taobao/chardet/nsEUCSampler;->mSecondByteCnt:[I

    aput v3, v2, v0

    aput v3, v1, v0

    .line 56
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 58
    :cond_0
    return-void
.end method

.method Sample([BI)Z
    .locals 9
    .parameter "aIn"
    .parameter "aLen"

    .prologue
    const/16 v8, 0xff

    const/16 v7, 0xa1

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 66
    iget v4, p0, Landroid/taobao/chardet/nsEUCSampler;->mState:I

    if-ne v4, v2, :cond_0

    .line 111
    :goto_0
    return v3

    .line 69
    :cond_0
    const/4 v1, 0x0

    .line 75
    .local v1, p:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, p2, :cond_7

    iget v4, p0, Landroid/taobao/chardet/nsEUCSampler;->mState:I

    if-eq v2, v4, :cond_7

    .line 77
    iget v4, p0, Landroid/taobao/chardet/nsEUCSampler;->mState:I

    packed-switch v4, :pswitch_data_0

    .line 108
    iput v2, p0, Landroid/taobao/chardet/nsEUCSampler;->mState:I

    .line 75
    :cond_1
    :goto_2
    :pswitch_0
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 79
    :pswitch_1
    aget-byte v4, p1, v1

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_1

    .line 81
    aget-byte v4, p1, v1

    and-int/lit16 v4, v4, 0xff

    if-eq v8, v4, :cond_2

    aget-byte v4, p1, v1

    and-int/lit16 v4, v4, 0xff

    if-le v7, v4, :cond_3

    .line 82
    :cond_2
    iput v2, p0, Landroid/taobao/chardet/nsEUCSampler;->mState:I

    goto :goto_2

    .line 84
    :cond_3
    iget v4, p0, Landroid/taobao/chardet/nsEUCSampler;->mTotal:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Landroid/taobao/chardet/nsEUCSampler;->mTotal:I

    .line 85
    iget-object v4, p0, Landroid/taobao/chardet/nsEUCSampler;->mFirstByteCnt:[I

    aget-byte v5, p1, v1

    and-int/lit16 v5, v5, 0xff

    add-int/lit16 v5, v5, -0xa1

    aget v6, v4, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v4, v5

    .line 86
    const/4 v4, 0x2

    iput v4, p0, Landroid/taobao/chardet/nsEUCSampler;->mState:I

    goto :goto_2

    .line 93
    :pswitch_2
    aget-byte v4, p1, v1

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_6

    .line 95
    aget-byte v4, p1, v1

    and-int/lit16 v4, v4, 0xff

    if-eq v8, v4, :cond_4

    aget-byte v4, p1, v1

    and-int/lit16 v4, v4, 0xff

    if-le v7, v4, :cond_5

    .line 97
    :cond_4
    iput v2, p0, Landroid/taobao/chardet/nsEUCSampler;->mState:I

    goto :goto_2

    .line 99
    :cond_5
    iget v4, p0, Landroid/taobao/chardet/nsEUCSampler;->mTotal:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Landroid/taobao/chardet/nsEUCSampler;->mTotal:I

    .line 100
    iget-object v4, p0, Landroid/taobao/chardet/nsEUCSampler;->mSecondByteCnt:[I

    aget-byte v5, p1, v1

    and-int/lit16 v5, v5, 0xff

    add-int/lit16 v5, v5, -0xa1

    aget v6, v4, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v4, v5

    .line 101
    iput v3, p0, Landroid/taobao/chardet/nsEUCSampler;->mState:I

    goto :goto_2

    .line 104
    :cond_6
    iput v2, p0, Landroid/taobao/chardet/nsEUCSampler;->mState:I

    goto :goto_2

    .line 111
    :cond_7
    iget v4, p0, Landroid/taobao/chardet/nsEUCSampler;->mState:I

    if-eq v2, v4, :cond_8

    :goto_3
    move v3, v2

    goto :goto_0

    :cond_8
    move v2, v3

    goto :goto_3

    .line 77
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
