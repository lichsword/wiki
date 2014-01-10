.class public Lcom/taobao/android/sso/internal/TokenInfo;
.super Ljava/lang/Object;
.source "TokenInfo.java"


# instance fields
.field public mPid:I

.field public mTokens:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public mUid:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/taobao/android/sso/internal/TokenInfo;->mTokens:Landroid/util/SparseArray;

    .line 5
    return-void
.end method
