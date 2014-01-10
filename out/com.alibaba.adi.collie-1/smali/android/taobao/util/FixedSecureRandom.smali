.class public Landroid/taobao/util/FixedSecureRandom;
.super Ljava/security/SecureRandom;
.source "FixedSecureRandom.java"


# static fields
.field private static final serialVersionUID:J = -0x1ffdcc93e605807L


# instance fields
.field seed:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/security/SecureRandom;-><init>()V

    .line 12
    const/16 v0, 0x14

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Landroid/taobao/util/FixedSecureRandom;->seed:[B

    return-void

    nop

    :array_0
    .array-data 0x1
        0xaat
        0xfdt
        0x12t
        0xf6t
        0x59t
        0xcat
        0xe6t
        0x34t
        0x89t
        0xb4t
        0x79t
        0xe5t
        0x7t
        0x6dt
        0xdet
        0xc2t
        0xf0t
        0x6ct
        0xb5t
        0x8ft
    .end array-data
.end method


# virtual methods
.method public nextBytes([B)V
    .locals 4
    .parameter "bytes"

    .prologue
    const/4 v3, 0x0

    .line 22
    const/4 v0, 0x0

    .line 24
    .local v0, offset:I
    :goto_0
    iget-object v1, p0, Landroid/taobao/util/FixedSecureRandom;->seed:[B

    array-length v1, v1

    add-int/2addr v1, v0

    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 26
    iget-object v1, p0, Landroid/taobao/util/FixedSecureRandom;->seed:[B

    iget-object v2, p0, Landroid/taobao/util/FixedSecureRandom;->seed:[B

    array-length v2, v2

    invoke-static {v1, v3, p1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 27
    iget-object v1, p0, Landroid/taobao/util/FixedSecureRandom;->seed:[B

    array-length v1, v1

    add-int/2addr v0, v1

    goto :goto_0

    .line 30
    :cond_0
    iget-object v1, p0, Landroid/taobao/util/FixedSecureRandom;->seed:[B

    array-length v2, p1

    sub-int/2addr v2, v0

    invoke-static {v1, v3, p1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 31
    return-void
.end method
