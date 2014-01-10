.class Landroid/taobao/filecache/FileBufferPool$BlockStateMgr;
.super Ljava/lang/Object;
.source "FileBufferPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/taobao/filecache/FileBufferPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BlockStateMgr"
.end annotation


# instance fields
.field private blockNum:I

.field private blockStates:[B

.field final synthetic this$0:Landroid/taobao/filecache/FileBufferPool;


# direct methods
.method protected constructor <init>(Landroid/taobao/filecache/FileBufferPool;I)V
    .locals 7
    .parameter
    .parameter "blockNum"

    .prologue
    .line 345
    iput-object p1, p0, Landroid/taobao/filecache/FileBufferPool$BlockStateMgr;->this$0:Landroid/taobao/filecache/FileBufferPool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 346
    iput p2, p0, Landroid/taobao/filecache/FileBufferPool$BlockStateMgr;->blockNum:I

    .line 348
    div-int/lit8 v0, p2, 0x8

    .line 350
    .local v0, byteNum:I
    rem-int/lit8 v4, p2, 0x8

    rsub-int/lit8 v3, v4, 0x8

    .line 352
    .local v3, otioseBit:I
    if-eqz v3, :cond_0

    .line 353
    add-int/lit8 v0, v0, 0x1

    .line 354
    :cond_0
    new-array v4, v0, [B

    iput-object v4, p0, Landroid/taobao/filecache/FileBufferPool$BlockStateMgr;->blockStates:[B

    .line 356
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 357
    iget-object v4, p0, Landroid/taobao/filecache/FileBufferPool$BlockStateMgr;->blockStates:[B

    const/4 v5, 0x0

    aput-byte v5, v4, v1

    .line 356
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 360
    :cond_1
    if-eqz v3, :cond_3

    .line 361
    iget-object v4, p0, Landroid/taobao/filecache/FileBufferPool$BlockStateMgr;->blockStates:[B

    add-int/lit8 v5, v0, -0x1

    const/4 v6, 0x1

    aput-byte v6, v4, v5

    .line 362
    const/4 v2, 0x0

    .local v2, j:I
    :goto_1
    if-ge v2, v3, :cond_2

    .line 363
    iget-object v4, p0, Landroid/taobao/filecache/FileBufferPool$BlockStateMgr;->blockStates:[B

    add-int/lit8 v5, v0, -0x1

    aget-byte v6, v4, v5

    mul-int/lit8 v6, v6, 0x2

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 362
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 364
    :cond_2
    iget-object v4, p0, Landroid/taobao/filecache/FileBufferPool$BlockStateMgr;->blockStates:[B

    add-int/lit8 v5, v0, -0x1

    aget-byte v6, v4, v5

    add-int/lit8 v6, v6, -0x1

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 367
    .end local v2           #j:I
    :cond_3
    return-void
.end method


# virtual methods
.method public getBlockNum()I
    .locals 1

    .prologue
    .line 370
    iget v0, p0, Landroid/taobao/filecache/FileBufferPool$BlockStateMgr;->blockNum:I

    return v0
.end method

.method public getBlockState(I)Z
    .locals 7
    .parameter "blockIndex"

    .prologue
    const/4 v5, 0x0

    .line 380
    iget v6, p0, Landroid/taobao/filecache/FileBufferPool$BlockStateMgr;->blockNum:I

    if-gt p1, v6, :cond_0

    if-gez p1, :cond_1

    .line 391
    :cond_0
    :goto_0
    return v5

    .line 383
    :cond_1
    div-int/lit8 v0, p1, 0x8

    .line 384
    .local v0, byteIndex:I
    rem-int/lit8 v3, p1, 0x8

    .line 386
    .local v3, redundantBit:I
    iget-object v6, p0, Landroid/taobao/filecache/FileBufferPool$BlockStateMgr;->blockStates:[B

    aget-byte v4, v6, v0

    .line 388
    .local v4, state:B
    const/4 v2, 0x1

    .line 389
    .local v2, mask:B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    rsub-int/lit8 v6, v3, 0x7

    if-ge v1, v6, :cond_2

    .line 390
    mul-int/lit8 v6, v2, 0x2

    int-to-byte v2, v6

    .line 389
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 391
    :cond_2
    and-int v6, v4, v2

    if-nez v6, :cond_0

    const/4 v5, 0x1

    goto :goto_0
.end method

.method public setBlockState(ZI)V
    .locals 7
    .parameter "state"
    .parameter "blockIndex"

    .prologue
    .line 401
    iget v4, p0, Landroid/taobao/filecache/FileBufferPool$BlockStateMgr;->blockNum:I

    if-gt p2, v4, :cond_0

    if-gez p2, :cond_1

    .line 417
    :cond_0
    :goto_0
    return-void

    .line 404
    :cond_1
    div-int/lit8 v0, p2, 0x8

    .line 405
    .local v0, byteIndex:I
    rem-int/lit8 v3, p2, 0x8

    .line 408
    .local v3, redundantBit:I
    const/4 v2, 0x1

    .line 410
    .local v2, mask:B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    rsub-int/lit8 v4, v3, 0x7

    if-ge v1, v4, :cond_2

    .line 411
    mul-int/lit8 v4, v2, 0x2

    int-to-byte v2, v4

    .line 410
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 412
    :cond_2
    if-eqz p1, :cond_3

    .line 413
    iget-object v4, p0, Landroid/taobao/filecache/FileBufferPool$BlockStateMgr;->blockStates:[B

    aget-byte v5, v4, v0

    xor-int/lit8 v6, v2, -0x1

    and-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v4, v0

    goto :goto_0

    .line 415
    :cond_3
    iget-object v4, p0, Landroid/taobao/filecache/FileBufferPool$BlockStateMgr;->blockStates:[B

    aget-byte v5, v4, v0

    or-int/2addr v5, v2

    int-to-byte v5, v5

    aput-byte v5, v4, v0

    goto :goto_0
.end method
