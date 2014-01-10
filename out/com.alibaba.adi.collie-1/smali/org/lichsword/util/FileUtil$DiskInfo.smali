.class public final Lorg/lichsword/util/FileUtil$DiskInfo;
.super Ljava/lang/Object;
.source "FileUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lichsword/util/FileUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DiskInfo"
.end annotation


# instance fields
.field public final blockSize:I

.field public final freeBlockCount:I

.field public final freeSize:J

.field public final path:Ljava/lang/String;

.field public final totalBlockCount:I

.field public final totalSize:J


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 9
    .parameter "path"

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lorg/lichsword/util/FileUtil$DiskInfo;->path:Ljava/lang/String;

    .line 53
    new-instance v4, Landroid/os/StatFs;

    invoke-direct {v4, p1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 54
    .local v4, fs:Landroid/os/StatFs;
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSize()I

    move-result v7

    int-to-long v0, v7

    .line 55
    .local v0, blockSize:J
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockCount()I

    move-result v7

    int-to-long v5, v7

    .line 56
    .local v5, totalBlocks:J
    invoke-virtual {v4}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v7

    int-to-long v2, v7

    .line 58
    .local v2, freeBlocks:J
    mul-long v7, v0, v5

    iput-wide v7, p0, Lorg/lichsword/util/FileUtil$DiskInfo;->totalSize:J

    .line 59
    mul-long v7, v0, v2

    iput-wide v7, p0, Lorg/lichsword/util/FileUtil$DiskInfo;->freeSize:J

    .line 60
    long-to-int v7, v0

    iput v7, p0, Lorg/lichsword/util/FileUtil$DiskInfo;->blockSize:I

    .line 61
    long-to-int v7, v5

    iput v7, p0, Lorg/lichsword/util/FileUtil$DiskInfo;->totalBlockCount:I

    .line 62
    long-to-int v7, v2

    iput v7, p0, Lorg/lichsword/util/FileUtil$DiskInfo;->freeBlockCount:I

    .line 63
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lorg/lichsword/util/FileUtil$DiskInfo;->path:Ljava/lang/String;

    return-object v0
.end method
