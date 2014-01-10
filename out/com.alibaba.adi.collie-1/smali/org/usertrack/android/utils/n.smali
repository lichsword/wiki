.class public Lorg/usertrack/android/utils/n;
.super Ljava/lang/Object;
.source "ShortUtils.java"


# direct methods
.method public static a(S)[B
    .locals 4
    .parameter "i"

    .prologue
    .line 6
    const/4 v2, 0x2

    new-array v0, v2, [B

    .line 7
    .local v0, bInt:[B
    move v1, p0

    .line 8
    .local v1, value:S
    const/4 v2, 0x1

    rem-int/lit16 v3, v1, 0x100

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 9
    shr-int/lit8 v2, v1, 0x8

    int-to-short v1, v2

    .line 10
    const/4 v2, 0x0

    rem-int/lit16 v3, v1, 0x100

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 11
    return-object v0
.end method
