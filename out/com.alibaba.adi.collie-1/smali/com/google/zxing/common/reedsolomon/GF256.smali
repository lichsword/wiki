.class public final Lcom/google/zxing/common/reedsolomon/GF256;
.super Ljava/lang/Object;
.source "GF256.java"


# static fields
.field public static final DATA_MATRIX_FIELD:Lcom/google/zxing/common/reedsolomon/GF256;

.field public static final QR_CODE_FIELD:Lcom/google/zxing/common/reedsolomon/GF256;


# instance fields
.field private final expTable:[I

.field private final logTable:[I

.field private final one:Lcom/google/zxing/common/reedsolomon/GF256Poly;

.field private final zero:Lcom/google/zxing/common/reedsolomon/GF256Poly;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    new-instance v0, Lcom/google/zxing/common/reedsolomon/GF256;

    const/16 v1, 0x11d

    invoke-direct {v0, v1}, Lcom/google/zxing/common/reedsolomon/GF256;-><init>(I)V

    sput-object v0, Lcom/google/zxing/common/reedsolomon/GF256;->QR_CODE_FIELD:Lcom/google/zxing/common/reedsolomon/GF256;

    .line 32
    new-instance v0, Lcom/google/zxing/common/reedsolomon/GF256;

    const/16 v1, 0x12d

    invoke-direct {v0, v1}, Lcom/google/zxing/common/reedsolomon/GF256;-><init>(I)V

    sput-object v0, Lcom/google/zxing/common/reedsolomon/GF256;->DATA_MATRIX_FIELD:Lcom/google/zxing/common/reedsolomon/GF256;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 6
    .parameter "primitive"

    .prologue
    const/4 v5, 0x1

    const/16 v3, 0x100

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-array v2, v3, [I

    iput-object v2, p0, Lcom/google/zxing/common/reedsolomon/GF256;->expTable:[I

    .line 48
    new-array v2, v3, [I

    iput-object v2, p0, Lcom/google/zxing/common/reedsolomon/GF256;->logTable:[I

    .line 49
    const/4 v1, 0x1

    .line 50
    .local v1, x:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v3, :cond_0

    .line 57
    const/4 v0, 0x0

    :goto_1
    const/16 v2, 0xff

    if-lt v0, v2, :cond_2

    .line 61
    new-instance v2, Lcom/google/zxing/common/reedsolomon/GF256Poly;

    new-array v3, v5, [I

    invoke-direct {v2, p0, v3}, Lcom/google/zxing/common/reedsolomon/GF256Poly;-><init>(Lcom/google/zxing/common/reedsolomon/GF256;[I)V

    iput-object v2, p0, Lcom/google/zxing/common/reedsolomon/GF256;->zero:Lcom/google/zxing/common/reedsolomon/GF256Poly;

    .line 62
    new-instance v2, Lcom/google/zxing/common/reedsolomon/GF256Poly;

    new-array v3, v5, [I

    const/4 v4, 0x0

    aput v5, v3, v4

    invoke-direct {v2, p0, v3}, Lcom/google/zxing/common/reedsolomon/GF256Poly;-><init>(Lcom/google/zxing/common/reedsolomon/GF256;[I)V

    iput-object v2, p0, Lcom/google/zxing/common/reedsolomon/GF256;->one:Lcom/google/zxing/common/reedsolomon/GF256Poly;

    .line 63
    return-void

    .line 51
    :cond_0
    iget-object v2, p0, Lcom/google/zxing/common/reedsolomon/GF256;->expTable:[I

    aput v1, v2, v0

    .line 52
    shl-int/lit8 v1, v1, 0x1

    .line 53
    if-lt v1, v3, :cond_1

    .line 54
    xor-int/2addr v1, p1

    .line 50
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 58
    :cond_2
    iget-object v2, p0, Lcom/google/zxing/common/reedsolomon/GF256;->logTable:[I

    iget-object v3, p0, Lcom/google/zxing/common/reedsolomon/GF256;->expTable:[I

    aget v3, v3, v0

    aput v0, v2, v3

    .line 57
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method static addOrSubtract(II)I
    .locals 1
    .parameter "a"
    .parameter "b"

    .prologue
    .line 94
    xor-int v0, p0, p1

    return v0
.end method


# virtual methods
.method buildMonomial(II)Lcom/google/zxing/common/reedsolomon/GF256Poly;
    .locals 2
    .parameter "degree"
    .parameter "coefficient"

    .prologue
    .line 77
    if-gez p1, :cond_0

    .line 78
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 80
    :cond_0
    if-nez p2, :cond_1

    .line 81
    iget-object v1, p0, Lcom/google/zxing/common/reedsolomon/GF256;->zero:Lcom/google/zxing/common/reedsolomon/GF256Poly;

    .line 85
    :goto_0
    return-object v1

    .line 83
    :cond_1
    add-int/lit8 v1, p1, 0x1

    new-array v0, v1, [I

    .line 84
    .local v0, coefficients:[I
    const/4 v1, 0x0

    aput p2, v0, v1

    .line 85
    new-instance v1, Lcom/google/zxing/common/reedsolomon/GF256Poly;

    invoke-direct {v1, p0, v0}, Lcom/google/zxing/common/reedsolomon/GF256Poly;-><init>(Lcom/google/zxing/common/reedsolomon/GF256;[I)V

    goto :goto_0
.end method

.method exp(I)I
    .locals 1
    .parameter "a"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/zxing/common/reedsolomon/GF256;->expTable:[I

    aget v0, v0, p1

    return v0
.end method

.method getOne()Lcom/google/zxing/common/reedsolomon/GF256Poly;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/zxing/common/reedsolomon/GF256;->one:Lcom/google/zxing/common/reedsolomon/GF256Poly;

    return-object v0
.end method

.method getZero()Lcom/google/zxing/common/reedsolomon/GF256Poly;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/zxing/common/reedsolomon/GF256;->zero:Lcom/google/zxing/common/reedsolomon/GF256Poly;

    return-object v0
.end method

.method inverse(I)I
    .locals 2
    .parameter "a"

    .prologue
    .line 118
    if-nez p1, :cond_0

    .line 119
    new-instance v0, Ljava/lang/ArithmeticException;

    invoke-direct {v0}, Ljava/lang/ArithmeticException;-><init>()V

    throw v0

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/google/zxing/common/reedsolomon/GF256;->expTable:[I

    iget-object v1, p0, Lcom/google/zxing/common/reedsolomon/GF256;->logTable:[I

    aget v1, v1, p1

    rsub-int v1, v1, 0xff

    aget v0, v0, v1

    return v0
.end method

.method log(I)I
    .locals 1
    .parameter "a"

    .prologue
    .line 108
    if-nez p1, :cond_0

    .line 109
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/google/zxing/common/reedsolomon/GF256;->logTable:[I

    aget v0, v0, p1

    return v0
.end method

.method multiply(II)I
    .locals 3
    .parameter "a"
    .parameter "b"

    .prologue
    const/4 v0, 0x1

    .line 130
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 131
    :cond_0
    const/4 p2, 0x0

    .line 139
    .end local p2
    :cond_1
    :goto_0
    return p2

    .line 133
    .restart local p2
    :cond_2
    if-eq p1, v0, :cond_1

    .line 136
    if-ne p2, v0, :cond_3

    move p2, p1

    .line 137
    goto :goto_0

    .line 139
    :cond_3
    iget-object v0, p0, Lcom/google/zxing/common/reedsolomon/GF256;->expTable:[I

    iget-object v1, p0, Lcom/google/zxing/common/reedsolomon/GF256;->logTable:[I

    aget v1, v1, p1

    iget-object v2, p0, Lcom/google/zxing/common/reedsolomon/GF256;->logTable:[I

    aget v2, v2, p2

    add-int/2addr v1, v2

    rem-int/lit16 v1, v1, 0xff

    aget p2, v0, v1

    goto :goto_0
.end method
