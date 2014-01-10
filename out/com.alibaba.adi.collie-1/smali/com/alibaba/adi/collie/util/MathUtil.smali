.class public Lcom/alibaba/adi/collie/util/MathUtil;
.super Ljava/lang/Object;
.source "MathUtil.java"


# static fields
.field public static final VALUE_ROOT_2:F = 1.414f

.field public static final VALUE_ROOT_3:F = 1.732f


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static mod(II)I
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 21
    rem-int v0, p0, p1

    .line 22
    .local v0, ret:I
    if-gez v0, :cond_0

    add-int/2addr v0, p1

    .end local v0           #ret:I
    :cond_0
    return v0
.end method
