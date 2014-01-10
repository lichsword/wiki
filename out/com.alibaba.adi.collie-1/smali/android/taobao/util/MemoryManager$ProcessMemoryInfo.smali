.class public Landroid/taobao/util/MemoryManager$ProcessMemoryInfo;
.super Ljava/lang/Object;
.source "MemoryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/taobao/util/MemoryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ProcessMemoryInfo"
.end annotation


# instance fields
.field mem_dalvik:I

.field mem_limit:I

.field mem_max:I

.field mem_native:I

.field final synthetic this$0:Landroid/taobao/util/MemoryManager;


# direct methods
.method public constructor <init>(Landroid/taobao/util/MemoryManager;IIII)V
    .locals 0
    .parameter
    .parameter "mem_dalvik"
    .parameter "mem_native"
    .parameter "mem_max"
    .parameter "mem_limit"

    .prologue
    .line 351
    iput-object p1, p0, Landroid/taobao/util/MemoryManager$ProcessMemoryInfo;->this$0:Landroid/taobao/util/MemoryManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 352
    iput p2, p0, Landroid/taobao/util/MemoryManager$ProcessMemoryInfo;->mem_dalvik:I

    .line 353
    iput p3, p0, Landroid/taobao/util/MemoryManager$ProcessMemoryInfo;->mem_native:I

    .line 354
    iput p4, p0, Landroid/taobao/util/MemoryManager$ProcessMemoryInfo;->mem_max:I

    .line 355
    iput p5, p0, Landroid/taobao/util/MemoryManager$ProcessMemoryInfo;->mem_limit:I

    .line 356
    return-void
.end method


# virtual methods
.method public getDalvikUsedSize()I
    .locals 1

    .prologue
    .line 391
    iget v0, p0, Landroid/taobao/util/MemoryManager$ProcessMemoryInfo;->mem_dalvik:I

    return v0
.end method

.method public getFreeSize()I
    .locals 2

    .prologue
    .line 409
    invoke-virtual {p0}, Landroid/taobao/util/MemoryManager$ProcessMemoryInfo;->getMaxSize()I

    move-result v0

    invoke-virtual {p0}, Landroid/taobao/util/MemoryManager$ProcessMemoryInfo;->getUsedSize()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getLimitSize()I
    .locals 1

    .prologue
    .line 383
    iget v0, p0, Landroid/taobao/util/MemoryManager$ProcessMemoryInfo;->mem_limit:I

    return v0
.end method

.method public getMaxSize()I
    .locals 1

    .prologue
    .line 364
    iget v0, p0, Landroid/taobao/util/MemoryManager$ProcessMemoryInfo;->mem_max:I

    return v0
.end method

.method public getNativeUsedSize()I
    .locals 1

    .prologue
    .line 400
    iget v0, p0, Landroid/taobao/util/MemoryManager$ProcessMemoryInfo;->mem_native:I

    return v0
.end method

.method public getUsedSize()I
    .locals 2

    .prologue
    .line 373
    iget v0, p0, Landroid/taobao/util/MemoryManager$ProcessMemoryInfo;->mem_dalvik:I

    iget v1, p0, Landroid/taobao/util/MemoryManager$ProcessMemoryInfo;->mem_native:I

    add-int/2addr v0, v1

    return v0
.end method
