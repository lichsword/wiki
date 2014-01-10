.class public Lcom/taobao/tao/imagepool/utility/BitmapHelperFactory;
.super Ljava/lang/Object;
.source "BitmapHelperFactory.java"


# static fields
.field static m_helpers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/taobao/tao/imagepool/utility/IBitmapHelper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/taobao/tao/imagepool/utility/BitmapHelperFactory;->m_helpers:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Bytes2Bimap([BLjava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "b"
    .parameter "url"

    .prologue
    .line 40
    const/4 v2, 0x0

    .line 42
    .local v2, obsCopy:[Ljava/lang/Object;
    sget-object v4, Lcom/taobao/tao/imagepool/utility/BitmapHelperFactory;->m_helpers:Ljava/util/ArrayList;

    monitor-enter v4

    .line 43
    :try_start_0
    sget-object v3, Lcom/taobao/tao/imagepool/utility/BitmapHelperFactory;->m_helpers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v2

    .line 44
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 48
    aget-object v0, v2, v1

    check-cast v0, Lcom/taobao/tao/imagepool/utility/IBitmapHelper;

    .line 49
    .local v0, helper:Lcom/taobao/tao/imagepool/utility/IBitmapHelper;
    invoke-interface {v0, p0, p1}, Lcom/taobao/tao/imagepool/utility/IBitmapHelper;->isSupport([BLjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 51
    invoke-interface {v0, p0, p1}, Lcom/taobao/tao/imagepool/utility/IBitmapHelper;->Bytes2Bimap([BLjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 54
    .end local v0           #helper:Lcom/taobao/tao/imagepool/utility/IBitmapHelper;
    :goto_1
    return-object v3

    .line 44
    .end local v1           #i:I
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 46
    .restart local v0       #helper:Lcom/taobao/tao/imagepool/utility/IBitmapHelper;
    .restart local v1       #i:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 54
    .end local v0           #helper:Lcom/taobao/tao/imagepool/utility/IBitmapHelper;
    :cond_1
    invoke-static {p0}, Lcom/taobao/tao/imagepool/utility/BitmapHelper;->Bytes2Bimap([B)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_1
.end method

.method public static isSupport([BLjava/lang/String;)Z
    .locals 4
    .parameter "b"
    .parameter "url"

    .prologue
    .line 64
    sget-object v3, Lcom/taobao/tao/imagepool/utility/BitmapHelperFactory;->m_helpers:Ljava/util/ArrayList;

    monitor-enter v3

    .line 66
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    :try_start_0
    sget-object v2, Lcom/taobao/tao/imagepool/utility/BitmapHelperFactory;->m_helpers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 68
    sget-object v2, Lcom/taobao/tao/imagepool/utility/BitmapHelperFactory;->m_helpers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/tao/imagepool/utility/IBitmapHelper;

    .line 69
    .local v0, helper:Lcom/taobao/tao/imagepool/utility/IBitmapHelper;
    invoke-interface {v0, p0, p1}, Lcom/taobao/tao/imagepool/utility/IBitmapHelper;->isSupport([BLjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 71
    const/4 v2, 0x1

    monitor-exit v3

    .line 75
    .end local v0           #helper:Lcom/taobao/tao/imagepool/utility/IBitmapHelper;
    :goto_1
    return v2

    .line 66
    .restart local v0       #helper:Lcom/taobao/tao/imagepool/utility/IBitmapHelper;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 74
    .end local v0           #helper:Lcom/taobao/tao/imagepool/utility/IBitmapHelper;
    :cond_1
    monitor-exit v3

    .line 75
    const/4 v2, 0x0

    goto :goto_1

    .line 74
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static registerHelper(Lcom/taobao/tao/imagepool/utility/IBitmapHelper;)V
    .locals 2
    .parameter "helper"

    .prologue
    .line 22
    sget-object v1, Lcom/taobao/tao/imagepool/utility/BitmapHelperFactory;->m_helpers:Ljava/util/ArrayList;

    monitor-enter v1

    .line 24
    :try_start_0
    sget-object v0, Lcom/taobao/tao/imagepool/utility/BitmapHelperFactory;->m_helpers:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 26
    sget-object v0, Lcom/taobao/tao/imagepool/utility/BitmapHelperFactory;->m_helpers:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    :cond_0
    monitor-exit v1

    .line 30
    return-void

    .line 29
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
