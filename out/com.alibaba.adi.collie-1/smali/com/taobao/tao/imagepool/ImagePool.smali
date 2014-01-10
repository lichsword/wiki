.class public Lcom/taobao/tao/imagepool/ImagePool;
.super Ljava/lang/Object;
.source "ImagePool.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/tao/imagepool/ImagePool$SingletonHolder;,
        Lcom/taobao/tao/imagepool/ImagePool$ImageMemCache;,
        Lcom/taobao/tao/imagepool/ImagePool$BitmapCreatorExecutor;,
        Lcom/taobao/tao/imagepool/ImagePool$IconExecutor;,
        Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;,
        Lcom/taobao/tao/imagepool/ImagePool$BitmapStatics;
    }
.end annotation


# static fields
.field public static final PERF_IMAGE_LEAK:Ljava/lang/String; = "PerfImageLeak"

.field private static final PROTOCOL_CREATOR:I = 0x3

.field private static final PROTOCOL_HTTP:I = 0x1

.field private static final PROTOCOL_PACKAGE:I = 0x2

.field private static final PROTOCOL_UNKNOWN:I = 0x0

.field public static final SCHEME_TYPE_FILE:Ljava/lang/String; = "file"

.field public static final SCHEME_TYPE_RESOURCE:Ljava/lang/String; = "resource"

.field private static m_b_exit:Z

.field static m_picPattern:Ljava/util/regex/Pattern;

.field private static m_scheduleThread:Ljava/lang/Thread;

.field private static m_scheduleThreadStarted:Z

.field static m_userAgent:Ljava/lang/String;


# instance fields
.field public final LEAK_ALERT_THRESHOLD:I

.field private mStragery:Lcom/taobao/tao/imagepool/IImageQualityStrategy;

.field private final m_HandlerMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/taobao/tao/imagepool/ImageHandler;",
            ">;>;"
        }
    .end annotation
.end field

.field m_IC:Lcom/taobao/tao/imagepool/ImageCache;

.field private m_b_needSchedule:Z

.field private m_concurrentDownloadCount:I

.field m_context:Landroid/app/Application;

.field private m_dormantGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/taobao/tao/imagepool/ImageGroup;",
            ">;"
        }
    .end annotation
.end field

.field private m_downloaders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;",
            ">;"
        }
    .end annotation
.end field

.field private m_memCahce:Lcom/taobao/tao/imagepool/ImagePool$ImageMemCache;

.field private m_normalGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/taobao/tao/imagepool/ImageGroup;",
            ">;"
        }
    .end annotation
.end field

.field private m_threadPage:Landroid/taobao/threadpool2/ThreadPage;

.field private m_topGroup:Lcom/taobao/tao/imagepool/ImageGroup;

.field stat:Lcom/taobao/tao/imagepool/ImagePool$BitmapStatics;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1547
    const/4 v0, 0x0

    sput-object v0, Lcom/taobao/tao/imagepool/ImagePool;->m_scheduleThread:Ljava/lang/Thread;

    .line 1548
    const/4 v0, 0x0

    sput-boolean v0, Lcom/taobao/tao/imagepool/ImagePool;->m_scheduleThreadStarted:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/16 v4, 0x8

    .line 1553
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/16 v2, 0x19

    iput v2, p0, Lcom/taobao/tao/imagepool/ImagePool;->LEAK_ALERT_THRESHOLD:I

    .line 1258
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v3, 0x80

    invoke-direct {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v2, p0, Lcom/taobao/tao/imagepool/ImagePool;->m_HandlerMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 1528
    new-instance v2, Lcom/taobao/tao/imagepool/ImagePool$ImageMemCache;

    invoke-direct {v2, p0}, Lcom/taobao/tao/imagepool/ImagePool$ImageMemCache;-><init>(Lcom/taobao/tao/imagepool/ImagePool;)V

    iput-object v2, p0, Lcom/taobao/tao/imagepool/ImagePool;->m_memCahce:Lcom/taobao/tao/imagepool/ImagePool$ImageMemCache;

    .line 1555
    :try_start_0
    new-instance v2, Lcom/taobao/tao/imagepool/ImagePool$BitmapStatics;

    invoke-direct {v2, p0}, Lcom/taobao/tao/imagepool/ImagePool$BitmapStatics;-><init>(Lcom/taobao/tao/imagepool/ImagePool;)V

    iput-object v2, p0, Lcom/taobao/tao/imagepool/ImagePool;->stat:Lcom/taobao/tao/imagepool/ImagePool$BitmapStatics;

    .line 1556
    const/4 v2, 0x0

    sput-boolean v2, Lcom/taobao/tao/imagepool/ImagePool;->m_b_exit:Z

    .line 1557
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    .line 1558
    .local v0, count:I
    if-le v0, v5, :cond_0

    if-gt v0, v4, :cond_0

    .line 1559
    iput v0, p0, Lcom/taobao/tao/imagepool/ImagePool;->m_concurrentDownloadCount:I

    .line 1566
    :goto_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/taobao/tao/imagepool/ImagePool;->m_b_needSchedule:Z

    .line 1567
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/taobao/tao/imagepool/ImagePool;->m_topGroup:Lcom/taobao/tao/imagepool/ImageGroup;

    .line 1568
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/taobao/tao/imagepool/ImagePool;->m_normalGroups:Ljava/util/ArrayList;

    .line 1569
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/taobao/tao/imagepool/ImagePool;->m_dormantGroups:Ljava/util/ArrayList;

    .line 1570
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/taobao/tao/imagepool/ImagePool;->m_downloaders:Ljava/util/ArrayList;

    .line 1572
    new-instance v2, Ljava/lang/Thread;

    const-string v3, "image_pool_thread"

    invoke-direct {v2, p0, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    sput-object v2, Lcom/taobao/tao/imagepool/ImagePool;->m_scheduleThread:Ljava/lang/Thread;

    .line 1573
    sget-object v2, Lcom/taobao/tao/imagepool/ImagePool;->m_scheduleThread:Ljava/lang/Thread;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setPriority(I)V

    .line 1574
    const/4 v2, 0x0

    sput-boolean v2, Lcom/taobao/tao/imagepool/ImagePool;->m_scheduleThreadStarted:Z

    .line 1581
    .end local v0           #count:I
    :goto_1
    return-void

    .line 1560
    .restart local v0       #count:I
    :cond_0
    if-le v0, v4, :cond_1

    .line 1561
    const/16 v2, 0x8

    iput v2, p0, Lcom/taobao/tao/imagepool/ImagePool;->m_concurrentDownloadCount:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1576
    .end local v0           #count:I
    :catch_0
    move-exception v1

    .line 1578
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 1563
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #count:I
    :cond_1
    const/4 v2, 0x2

    :try_start_1
    iput v2, p0, Lcom/taobao/tao/imagepool/ImagePool;->m_concurrentDownloadCount:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/taobao/tao/imagepool/ImagePool$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/taobao/tao/imagepool/ImagePool;-><init>()V

    return-void
.end method

.method private static UUIDUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "url"

    .prologue
    .line 1864
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 1866
    :cond_0
    const-string v0, "TaoSdk.ImgPool"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad format url:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/taobao/util/TaoLog;->Logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 1867
    const-string p0, ""

    .line 1878
    .end local p0
    :cond_1
    return-object p0
.end method

.method static _createTBDrawable([BLjava/lang/String;)Lcom/taobao/tao/imagepool/utility/TBDrawable;
    .locals 8
    .parameter "bs"
    .parameter "url"

    .prologue
    const/4 v4, 0x0

    .line 1595
    if-eqz p0, :cond_1

    array-length v5, p0

    if-eqz v5, :cond_1

    .line 1597
    const/4 v1, 0x0

    .line 1602
    .local v1, dr:Lcom/taobao/tao/imagepool/utility/TBDrawable;
    :try_start_0
    invoke-static {p0, p1}, Lcom/taobao/tao/imagepool/utility/BitmapHelperFactory;->Bytes2Bimap([BLjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1603
    .local v0, b:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 1605
    new-instance v2, Lcom/taobao/tao/imagepool/utility/TBDrawable;

    invoke-direct {v2, v0}, Lcom/taobao/tao/imagepool/utility/TBDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .end local v1           #dr:Lcom/taobao/tao/imagepool/utility/TBDrawable;
    .local v2, dr:Lcom/taobao/tao/imagepool/utility/TBDrawable;
    move-object v1, v2

    .line 1629
    .end local v0           #b:Landroid/graphics/Bitmap;
    .end local v2           #dr:Lcom/taobao/tao/imagepool/utility/TBDrawable;
    :goto_0
    return-object v1

    .line 1609
    .restart local v0       #b:Landroid/graphics/Bitmap;
    .restart local v1       #dr:Lcom/taobao/tao/imagepool/utility/TBDrawable;
    :cond_0
    const-string v5, "TaoSdk.ImgPool"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "can\'t create bitmap from url:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/taobao/util/TaoLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v1, v4

    .line 1610
    goto :goto_0

    .line 1616
    .end local v0           #b:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v3

    .line 1618
    .local v3, e:Ljava/lang/OutOfMemoryError;
    invoke-virtual {v3}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 1619
    const-string v4, "TaoSdk.ImgPool"

    const-string v5, "out of memory dump image pool stat:"

    invoke-static {v4, v5}, Landroid/taobao/util/TaoLog;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 1620
    invoke-static {}, Lcom/taobao/tao/imagepool/ImagePool;->instance()Lcom/taobao/tao/imagepool/ImagePool;

    move-result-object v4

    invoke-virtual {v4}, Lcom/taobao/tao/imagepool/ImagePool;->dumpMemory()V

    goto :goto_0

    .line 1622
    .end local v3           #e:Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v3

    .line 1624
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1628
    .end local v1           #dr:Lcom/taobao/tao/imagepool/utility/TBDrawable;
    .end local v3           #e:Ljava/lang/Exception;
    :cond_1
    const-string v5, "TaoSdk.ImgPool"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_createTBDrawable failed "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v4

    .line 1629
    goto :goto_0
.end method

.method private _createTBDrawable(Lcom/taobao/tao/imagepool/ImageHandler;Ljava/lang/String;I)V
    .locals 12
    .parameter "ih"
    .parameter "url"
    .parameter "cachePolicy"

    .prologue
    const/4 v11, 0x0

    .line 1912
    iget-object v8, p0, Lcom/taobao/tao/imagepool/ImagePool;->m_IC:Lcom/taobao/tao/imagepool/ImageCache;

    if-nez v8, :cond_1

    .line 1965
    :cond_0
    :goto_0
    return-void

    .line 1914
    :cond_1
    if-eqz p1, :cond_0

    .line 1916
    const/4 v1, 0x0

    .line 1917
    .local v1, d:Lcom/taobao/tao/imagepool/utility/TBDrawable;
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 1918
    .local v7, uri:Landroid/net/Uri;
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_3

    invoke-virtual {v7}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    const-string v9, "file"

    invoke-static {v8, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1919
    const-string v8, "TaoSdk.ImgPool"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "load image from local file :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1920
    new-instance v1, Lcom/taobao/tao/imagepool/utility/TBDrawable;

    .end local v1           #d:Lcom/taobao/tao/imagepool/utility/TBDrawable;
    invoke-virtual {v7}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/taobao/tao/imagepool/utility/BitmapHelper;->URI2Bimap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-direct {v1, v8}, Lcom/taobao/tao/imagepool/utility/TBDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 1949
    .restart local v1       #d:Lcom/taobao/tao/imagepool/utility/TBDrawable;
    :cond_2
    :goto_1
    if-eqz v1, :cond_6

    .line 1951
    invoke-virtual {p1, v1, v11}, Lcom/taobao/tao/imagepool/ImageHandler;->setDrawable(Landroid/graphics/drawable/Drawable;Z)Z

    move-result v6

    .line 1952
    .local v6, res:Z
    iget-object v8, p0, Lcom/taobao/tao/imagepool/ImagePool;->m_memCahce:Lcom/taobao/tao/imagepool/ImagePool$ImageMemCache;

    invoke-virtual {v8, p1}, Lcom/taobao/tao/imagepool/ImagePool$ImageMemCache;->add(Lcom/taobao/tao/imagepool/ImageHandler;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1954
    if-eqz v6, :cond_0

    .line 1956
    iget-object v8, p0, Lcom/taobao/tao/imagepool/ImagePool;->stat:Lcom/taobao/tao/imagepool/ImagePool$BitmapStatics;

    iget v9, v8, Lcom/taobao/tao/imagepool/ImagePool$BitmapStatics;->createNum:I

    add-int/lit8 v9, v9, 0x1

    iput v9, v8, Lcom/taobao/tao/imagepool/ImagePool$BitmapStatics;->createNum:I

    .line 1957
    iget-object v8, p0, Lcom/taobao/tao/imagepool/ImagePool;->stat:Lcom/taobao/tao/imagepool/ImagePool$BitmapStatics;

    iget v9, v8, Lcom/taobao/tao/imagepool/ImagePool$BitmapStatics;->createSize:I

    invoke-virtual {v1}, Lcom/taobao/tao/imagepool/utility/TBDrawable;->bitmapSize()I

    move-result v10

    add-int/2addr v9, v10

    iput v9, v8, Lcom/taobao/tao/imagepool/ImagePool$BitmapStatics;->createSize:I

    goto :goto_0

    .line 1921
    .end local v6           #res:Z
    :cond_3
    if-eqz v7, :cond_4

    invoke-virtual {v7}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_4

    invoke-virtual {v7}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    const-string v9, "resource"

    invoke-static {v8, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1925
    const-string v8, "TaoSdk.ImgPool"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "load image from resouce file :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1928
    const/16 v8, 0x5c

    invoke-virtual {p2, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    .line 1929
    .local v5, index:I
    const/4 v8, -0x1

    if-eq v5, v8, :cond_2

    add-int/lit8 v8, v5, 0x1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v8, v9, :cond_2

    .line 1931
    add-int/lit8 v8, v5, 0x1

    :try_start_0
    invoke-virtual {p2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 1932
    .local v4, id:I
    iget-object v8, p0, Lcom/taobao/tao/imagepool/ImagePool;->m_context:Landroid/app/Application;

    invoke-virtual {v8}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 1934
    .local v0, bd:Landroid/graphics/drawable/BitmapDrawable;
    new-instance v2, Lcom/taobao/tao/imagepool/utility/TBDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-direct {v2, v8}, Lcom/taobao/tao/imagepool/utility/TBDrawable;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #d:Lcom/taobao/tao/imagepool/utility/TBDrawable;
    .local v2, d:Lcom/taobao/tao/imagepool/utility/TBDrawable;
    move-object v1, v2

    .line 1937
    .end local v2           #d:Lcom/taobao/tao/imagepool/utility/TBDrawable;
    .restart local v1       #d:Lcom/taobao/tao/imagepool/utility/TBDrawable;
    goto/16 :goto_1

    .line 1935
    .end local v0           #bd:Landroid/graphics/drawable/BitmapDrawable;
    .end local v4           #id:I
    :catch_0
    move-exception v3

    .line 1936
    .local v3, e:Ljava/lang/NumberFormatException;
    invoke-virtual {v3}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto/16 :goto_1

    .line 1942
    .end local v3           #e:Ljava/lang/NumberFormatException;
    .end local v5           #index:I
    :cond_4
    iget-object v8, p0, Lcom/taobao/tao/imagepool/ImagePool;->mStragery:Lcom/taobao/tao/imagepool/IImageQualityStrategy;

    if-eqz v8, :cond_5

    .line 1944
    iget-object v8, p0, Lcom/taobao/tao/imagepool/ImagePool;->mStragery:Lcom/taobao/tao/imagepool/IImageQualityStrategy;

    invoke-interface {v8, p2}, Lcom/taobao/tao/imagepool/IImageQualityStrategy;->decideUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1946
    :cond_5
    iget-object v8, p0, Lcom/taobao/tao/imagepool/ImagePool;->m_IC:Lcom/taobao/tao/imagepool/ImageCache;

    invoke-virtual {v8, p2, p3}, Lcom/taobao/tao/imagepool/ImageCache;->getDrawalbe(Ljava/lang/String;I)Lcom/taobao/tao/imagepool/utility/TBDrawable;

    move-result-object v1

    goto/16 :goto_1

    .line 1964
    :cond_6
    invoke-virtual {p1, v11}, Lcom/taobao/tao/imagepool/ImageHandler;->setState(I)V

    goto/16 :goto_0
.end method

.method private final _findGroup(Lcom/taobao/tao/imagepool/ImageGroup;)Z
    .locals 2
    .parameter "group"

    .prologue
    const/4 v0, 0x1

    .line 124
    iget-object v1, p0, Lcom/taobao/tao/imagepool/ImagePool;->m_topGroup:Lcom/taobao/tao/imagepool/ImageGroup;

    if-ne v1, p1, :cond_1

    .line 129
    :cond_0
    :goto_0
    return v0

    .line 126
    :cond_1
    iget-object v1, p0, Lcom/taobao/tao/imagepool/ImagePool;->m_normalGroups:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 129
    iget-object v0, p0, Lcom/taobao/tao/imagepool/ImagePool;->m_dormantGroups:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private _getImageHandler(Ljava/lang/String;I)Lcom/taobao/tao/imagepool/ImageHandler;
    .locals 4
    .parameter "URL"
    .parameter "cache_Type"

    .prologue
    .line 1794
    invoke-direct {p0, p1}, Lcom/taobao/tao/imagepool/ImagePool;->_getImageHandlerInMemory(Ljava/lang/String;)Lcom/taobao/tao/imagepool/ImageHandler;

    move-result-object v0

    .line 1796
    .local v0, res:Lcom/taobao/tao/imagepool/ImageHandler;
    if-nez v0, :cond_0

    .line 1799
    new-instance v0, Lcom/taobao/tao/imagepool/ImageHandler;

    .end local v0           #res:Lcom/taobao/tao/imagepool/ImageHandler;
    invoke-direct {v0, p1, p2}, Lcom/taobao/tao/imagepool/ImageHandler;-><init>(Ljava/lang/String;I)V

    .line 1800
    .restart local v0       #res:Lcom/taobao/tao/imagepool/ImageHandler;
    iget-object v1, p0, Lcom/taobao/tao/imagepool/ImagePool;->m_HandlerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Lcom/taobao/tao/imagepool/ImagePool;->UUIDUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1803
    :cond_0
    invoke-virtual {v0}, Lcom/taobao/tao/imagepool/ImageHandler;->isRecyceled()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/taobao/tao/imagepool/ImageHandler;->m_dr:Lcom/taobao/tao/imagepool/utility/TBDrawable;

    if-nez v1, :cond_2

    .line 1806
    :cond_1
    invoke-direct {p0, v0, p1, p2}, Lcom/taobao/tao/imagepool/ImagePool;->_createTBDrawable(Lcom/taobao/tao/imagepool/ImageHandler;Ljava/lang/String;I)V

    .line 1808
    :cond_2
    return-object v0
.end method

.method private _getImageHandlerInMemory(Ljava/lang/String;)Lcom/taobao/tao/imagepool/ImageHandler;
    .locals 4
    .parameter "URL"

    .prologue
    .line 1885
    const/4 v0, 0x0

    .line 1888
    .local v0, res:Lcom/taobao/tao/imagepool/ImageHandler;
    invoke-static {p1}, Lcom/taobao/tao/imagepool/ImagePool;->UUIDUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1889
    .local v1, uuidUrl:Ljava/lang/String;
    iget-object v3, p0, Lcom/taobao/tao/imagepool/ImagePool;->m_HandlerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 1890
    .local v2, wih:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/taobao/tao/imagepool/ImageHandler;>;"
    if-nez v2, :cond_0

    .line 1891
    const/4 v3, 0x0

    .line 1906
    :goto_0
    return-object v3

    .line 1893
    :cond_0
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #res:Lcom/taobao/tao/imagepool/ImageHandler;
    check-cast v0, Lcom/taobao/tao/imagepool/ImageHandler;

    .line 1894
    .restart local v0       #res:Lcom/taobao/tao/imagepool/ImageHandler;
    if-eqz v0, :cond_1

    .line 1896
    invoke-virtual {v0}, Lcom/taobao/tao/imagepool/ImageHandler;->isRecyceled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1898
    const/4 v0, 0x0

    .line 1902
    :cond_1
    if-nez v0, :cond_2

    .line 1904
    iget-object v3, p0, Lcom/taobao/tao/imagepool/ImagePool;->m_HandlerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    move-object v3, v0

    .line 1906
    goto :goto_0
.end method

.method private _parseProtocol(Ljava/lang/String;)I
    .locals 1
    .parameter "uri"

    .prologue
    .line 686
    const-string v0, "http"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 687
    const/4 v0, 0x1

    .line 692
    :goto_0
    return v0

    .line 688
    :cond_0
    const-string v0, "package"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 689
    const/4 v0, 0x2

    goto :goto_0

    .line 690
    :cond_1
    const-string v0, "creator"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 691
    const/4 v0, 0x3

    goto :goto_0

    .line 692
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/taobao/tao/imagepool/ImagePool;)Lcom/taobao/tao/imagepool/IImageQualityStrategy;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/taobao/tao/imagepool/ImagePool;->mStragery:Lcom/taobao/tao/imagepool/IImageQualityStrategy;

    return-object v0
.end method

.method static synthetic access$100(Lcom/taobao/tao/imagepool/ImagePool;Ljava/lang/String;I)Lcom/taobao/tao/imagepool/ImageHandler;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/taobao/tao/imagepool/ImagePool;->_getImageHandler(Ljava/lang/String;I)Lcom/taobao/tao/imagepool/ImageHandler;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    invoke-static {p0}, Lcom/taobao/tao/imagepool/ImagePool;->UUIDUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/taobao/tao/imagepool/ImagePool;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/taobao/tao/imagepool/ImagePool;->m_HandlerMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/taobao/tao/imagepool/ImagePool;)Lcom/taobao/tao/imagepool/ImagePool$ImageMemCache;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/taobao/tao/imagepool/ImagePool;->m_memCahce:Lcom/taobao/tao/imagepool/ImagePool$ImageMemCache;

    return-object v0
.end method

.method static synthetic access$300(Lcom/taobao/tao/imagepool/ImagePool;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/taobao/tao/imagepool/ImagePool;->m_downloaders:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/taobao/tao/imagepool/ImagePool;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/taobao/tao/imagepool/ImagePool;->m_concurrentDownloadCount:I

    return v0
.end method

.method static synthetic access$500(Lcom/taobao/tao/imagepool/ImagePool;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/taobao/tao/imagepool/ImagePool;->reSchedule()V

    return-void
.end method

.method static synthetic access$800(Lcom/taobao/tao/imagepool/ImagePool;)Landroid/taobao/threadpool2/ThreadPage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/taobao/tao/imagepool/ImagePool;->m_threadPage:Landroid/taobao/threadpool2/ThreadPage;

    return-object v0
.end method

.method static synthetic access$802(Lcom/taobao/tao/imagepool/ImagePool;Landroid/taobao/threadpool2/ThreadPage;)Landroid/taobao/threadpool2/ThreadPage;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/taobao/tao/imagepool/ImagePool;->m_threadPage:Landroid/taobao/threadpool2/ThreadPage;

    return-object p1
.end method

.method private declared-synchronized doSchedule()V
    .locals 11

    .prologue
    .line 838
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    .line 842
    .local v3, start:J
    iget-object v5, p0, Lcom/taobao/tao/imagepool/ImagePool;->m_topGroup:Lcom/taobao/tao/imagepool/ImageGroup;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/taobao/tao/imagepool/ImagePool;->m_topGroup:Lcom/taobao/tao/imagepool/ImageGroup;

    invoke-interface {v5}, Lcom/taobao/tao/imagepool/ImageGroup;->getLoadingCount()I

    move-result v5

    if-nez v5, :cond_0

    .line 844
    iget-object v5, p0, Lcom/taobao/tao/imagepool/ImagePool;->m_topGroup:Lcom/taobao/tao/imagepool/ImageGroup;

    invoke-interface {v5}, Lcom/taobao/tao/imagepool/ImageGroup;->scheduleNext()Lcom/taobao/tao/imagepool/ScheduleInfo;

    move-result-object v1

    .line 845
    .local v1, info:Lcom/taobao/tao/imagepool/ScheduleInfo;
    if-eqz v1, :cond_0

    .line 847
    iget-object v5, v1, Lcom/taobao/tao/imagepool/ScheduleInfo;->ih:Lcom/taobao/tao/imagepool/ImageHandler;

    iget-object v6, p0, Lcom/taobao/tao/imagepool/ImagePool;->m_topGroup:Lcom/taobao/tao/imagepool/ImageGroup;

    iget v7, v1, Lcom/taobao/tao/imagepool/ScheduleInfo;->index:I

    invoke-direct {p0, v5, v6, v7}, Lcom/taobao/tao/imagepool/ImagePool;->processImageHandler(Lcom/taobao/tao/imagepool/ImageHandler;Lcom/taobao/tao/imagepool/ImageGroup;I)Z

    .line 853
    .end local v1           #info:Lcom/taobao/tao/imagepool/ScheduleInfo;
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/taobao/tao/imagepool/ImagePool;->m_downloaders:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    iget v6, p0, Lcom/taobao/tao/imagepool/ImagePool;->m_concurrentDownloadCount:I

    if-lt v5, v6, :cond_1

    invoke-direct {p0}, Lcom/taobao/tao/imagepool/ImagePool;->findIdleExecutor()Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 856
    :cond_1
    iget-object v5, p0, Lcom/taobao/tao/imagepool/ImagePool;->m_topGroup:Lcom/taobao/tao/imagepool/ImageGroup;

    if-nez v5, :cond_3

    .line 880
    :cond_2
    iget-object v5, p0, Lcom/taobao/tao/imagepool/ImagePool;->m_normalGroups:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 881
    .local v2, size:I
    if-nez v2, :cond_4

    .line 882
    const-string v5, "TaoSdk.ImgPool"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ImagePool::doSchedule() done "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    sub-long/2addr v7, v3

    const-wide/32 v9, 0xf4240

    div-long/2addr v7, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " milliseconds used"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 910
    :goto_1
    monitor-exit p0

    return-void

    .line 861
    .end local v2           #size:I
    :cond_3
    :try_start_1
    iget-object v5, p0, Lcom/taobao/tao/imagepool/ImagePool;->m_topGroup:Lcom/taobao/tao/imagepool/ImageGroup;

    invoke-interface {v5}, Lcom/taobao/tao/imagepool/ImageGroup;->scheduleNext()Lcom/taobao/tao/imagepool/ScheduleInfo;

    move-result-object v1

    .line 862
    .restart local v1       #info:Lcom/taobao/tao/imagepool/ScheduleInfo;
    if-eqz v1, :cond_2

    .line 864
    iget-object v5, v1, Lcom/taobao/tao/imagepool/ScheduleInfo;->ih:Lcom/taobao/tao/imagepool/ImageHandler;

    iget-object v6, p0, Lcom/taobao/tao/imagepool/ImagePool;->m_topGroup:Lcom/taobao/tao/imagepool/ImageGroup;

    iget v7, v1, Lcom/taobao/tao/imagepool/ScheduleInfo;->index:I

    invoke-direct {p0, v5, v6, v7}, Lcom/taobao/tao/imagepool/ImagePool;->processImageHandler(Lcom/taobao/tao/imagepool/ImageHandler;Lcom/taobao/tao/imagepool/ImageGroup;I)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_0

    .line 885
    .end local v1           #info:Lcom/taobao/tao/imagepool/ScheduleInfo;
    .restart local v2       #size:I
    :cond_4
    const/4 v0, 0x0

    .line 886
    .local v0, i:I
    :goto_2
    if-ge v0, v2, :cond_7

    .line 889
    iget-object v5, p0, Lcom/taobao/tao/imagepool/ImagePool;->m_normalGroups:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/taobao/tao/imagepool/ImageGroup;

    invoke-interface {v5}, Lcom/taobao/tao/imagepool/ImageGroup;->getLoadingCount()I

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/taobao/tao/imagepool/ImagePool;->m_downloaders:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    iget v6, p0, Lcom/taobao/tao/imagepool/ImagePool;->m_concurrentDownloadCount:I

    if-lt v5, v6, :cond_5

    invoke-direct {p0}, Lcom/taobao/tao/imagepool/ImagePool;->findIdleExecutor()Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 892
    :cond_5
    iget-object v5, p0, Lcom/taobao/tao/imagepool/ImagePool;->m_normalGroups:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/taobao/tao/imagepool/ImageGroup;

    invoke-interface {v5}, Lcom/taobao/tao/imagepool/ImageGroup;->scheduleNext()Lcom/taobao/tao/imagepool/ScheduleInfo;

    move-result-object v1

    .line 893
    .restart local v1       #info:Lcom/taobao/tao/imagepool/ScheduleInfo;
    if-eqz v1, :cond_6

    .line 895
    iget-object v6, v1, Lcom/taobao/tao/imagepool/ScheduleInfo;->ih:Lcom/taobao/tao/imagepool/ImageHandler;

    iget-object v5, p0, Lcom/taobao/tao/imagepool/ImagePool;->m_normalGroups:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/taobao/tao/imagepool/ImageGroup;

    iget v7, v1, Lcom/taobao/tao/imagepool/ScheduleInfo;->index:I

    invoke-direct {p0, v6, v5, v7}, Lcom/taobao/tao/imagepool/ImagePool;->processImageHandler(Lcom/taobao/tao/imagepool/ImageHandler;Lcom/taobao/tao/imagepool/ImageGroup;I)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 906
    .end local v1           #info:Lcom/taobao/tao/imagepool/ScheduleInfo;
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 909
    :cond_7
    const-string v5, "TaoSdk.ImgPool"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ImagePool::doSchedule() done "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    sub-long/2addr v7, v3

    const-wide/32 v9, 0xf4240

    div-long/2addr v7, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " milliseconds used"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 838
    .end local v0           #i:I
    .end local v2           #size:I
    .end local v3           #start:J
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method private final findEqualLoadingExecutor(Ljava/lang/String;)Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;
    .locals 4
    .parameter "url"

    .prologue
    .line 623
    iget-object v3, p0, Lcom/taobao/tao/imagepool/ImagePool;->m_downloaders:Ljava/util/ArrayList;

    monitor-enter v3

    .line 625
    :try_start_0
    iget-object v2, p0, Lcom/taobao/tao/imagepool/ImagePool;->m_downloaders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;

    .line 628
    .local v1, ie:Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;
    #getter for: Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;->m_b_executing:Z
    invoke-static {v1}, Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;->access$600(Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 630
    #getter for: Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;->m_image:Lcom/taobao/tao/imagepool/ImageHandler;
    invoke-static {v1}, Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;->access$700(Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;)Lcom/taobao/tao/imagepool/ImageHandler;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 633
    #getter for: Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;->m_image:Lcom/taobao/tao/imagepool/ImageHandler;
    invoke-static {v1}, Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;->access$700(Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;)Lcom/taobao/tao/imagepool/ImageHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/tao/imagepool/ImageHandler;->URI()Ljava/lang/String;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 635
    monitor-exit v3

    .line 641
    .end local v1           #ie:Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;
    :goto_0
    return-object v1

    .line 640
    :cond_1
    monitor-exit v3

    .line 641
    const/4 v1, 0x0

    goto :goto_0

    .line 640
    .end local v0           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private final findIdleExecutor()Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;
    .locals 4

    .prologue
    .line 605
    iget-object v3, p0, Lcom/taobao/tao/imagepool/ImagePool;->m_downloaders:Ljava/util/ArrayList;

    monitor-enter v3

    .line 607
    :try_start_0
    iget-object v2, p0, Lcom/taobao/tao/imagepool/ImagePool;->m_downloaders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;

    .line 609
    .local v1, ie:Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;
    #getter for: Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;->m_b_executing:Z
    invoke-static {v1}, Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;->access$600(Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 610
    monitor-exit v3

    .line 614
    .end local v1           #ie:Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;
    :goto_0
    return-object v1

    .line 612
    :cond_1
    monitor-exit v3

    .line 614
    const/4 v1, 0x0

    goto :goto_0

    .line 612
    .end local v0           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static instance()Lcom/taobao/tao/imagepool/ImagePool;
    .locals 1

    .prologue
    .line 1589
    invoke-static {}, Lcom/taobao/tao/imagepool/ImagePool$SingletonHolder;->access$1900()Lcom/taobao/tao/imagepool/ImagePool;

    move-result-object v0

    return-object v0
.end method

.method private processDownload(Lcom/taobao/tao/imagepool/ImageHandler;Lcom/taobao/tao/imagepool/ImageGroup;I)Z
    .locals 5
    .parameter "ih"
    .parameter "imgGroup"
    .parameter "index"

    .prologue
    const/4 v4, 0x0

    .line 699
    const-string v1, "TaoSdk.ImgPool"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processDownload:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/taobao/tao/imagepool/ImageHandler;->URI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/taobao/util/TaoLog;->Logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/taobao/tao/imagepool/ImageHandler;->URI()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 723
    :cond_0
    :goto_0
    return v4

    .line 706
    :cond_1
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lcom/taobao/tao/imagepool/ImageHandler;->setState(I)V

    .line 707
    invoke-virtual {p1}, Lcom/taobao/tao/imagepool/ImageHandler;->URI()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/taobao/tao/imagepool/ImagePool;->_parseProtocol(Ljava/lang/String;)I

    move-result v0

    .line 708
    .local v0, protocol:I
    packed-switch v0, :pswitch_data_0

    .line 720
    const-string v1, "TaoSdk.ImgPool"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown protocol url:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/taobao/tao/imagepool/ImageHandler;->URI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/taobao/util/TaoLog;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 711
    :pswitch_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/taobao/tao/imagepool/ImagePool;->loadImage(Lcom/taobao/tao/imagepool/ImageHandler;Lcom/taobao/tao/imagepool/ImageGroup;I)V

    goto :goto_0

    .line 714
    :pswitch_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/taobao/tao/imagepool/ImagePool;->loadPackageIcon(Lcom/taobao/tao/imagepool/ImageHandler;Lcom/taobao/tao/imagepool/ImageGroup;I)V

    goto :goto_0

    .line 717
    :pswitch_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/taobao/tao/imagepool/ImagePool;->loadImageFromCreator(Lcom/taobao/tao/imagepool/ImageHandler;Lcom/taobao/tao/imagepool/ImageGroup;I)V

    goto :goto_0

    .line 708
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private processImageHandler(Lcom/taobao/tao/imagepool/ImageHandler;Lcom/taobao/tao/imagepool/ImageGroup;I)Z
    .locals 5
    .parameter "ih"
    .parameter "ig"
    .parameter "index"

    .prologue
    const/4 v1, 0x0

    .line 779
    if-nez p1, :cond_0

    .line 782
    invoke-virtual {p0, p2}, Lcom/taobao/tao/imagepool/ImagePool;->groupChanged(Lcom/taobao/tao/imagepool/ImageGroup;)V

    .line 829
    :goto_0
    return v1

    .line 787
    :cond_0
    const-string v2, "TaoSdk.ImgPool"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processImageHandler:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/taobao/tao/imagepool/ImageHandler;->URI()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",index:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "state:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/taobao/tao/imagepool/ImageHandler;->getState()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",ih="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/taobao/util/TaoLog;->Logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 792
    const/4 v0, 0x0

    .line 793
    .local v0, bnotify:Z
    invoke-virtual {p1}, Lcom/taobao/tao/imagepool/ImageHandler;->getState()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 823
    :cond_1
    :goto_1
    :pswitch_0
    if-eqz v0, :cond_2

    .line 825
    invoke-virtual {p1}, Lcom/taobao/tao/imagepool/ImageHandler;->URI()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v1, v2, p3}, Lcom/taobao/tao/imagepool/ImageGroup;->doSendMsg(ILjava/lang/String;I)V

    .line 827
    :cond_2
    invoke-virtual {p0, p2}, Lcom/taobao/tao/imagepool/ImagePool;->groupChanged(Lcom/taobao/tao/imagepool/ImageGroup;)V

    .line 829
    const/4 v1, 0x1

    goto :goto_0

    .line 796
    :pswitch_1
    const-string v2, "TaoSdk.ImgPool"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ih is already loading url:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/taobao/tao/imagepool/ImageHandler;->URI()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/taobao/util/TaoLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 797
    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/tao/imagepool/ImagePool;->processDownload(Lcom/taobao/tao/imagepool/ImageHandler;Lcom/taobao/tao/imagepool/ImageGroup;I)Z

    goto :goto_1

    .line 801
    :pswitch_2
    invoke-virtual {p1}, Lcom/taobao/tao/imagepool/ImageHandler;->isRecyceled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 803
    const-string v2, "TaoSdk.ImgPool"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loaded with recycle bitmap! url:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/taobao/tao/imagepool/ImageHandler;->URI()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/taobao/util/TaoLog;->Logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 805
    :cond_3
    const/4 v0, 0x1

    .line 806
    goto :goto_1

    .line 808
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/taobao/tao/imagepool/ImagePool;->processRecycle(Lcom/taobao/tao/imagepool/ImageHandler;)Z

    move-result v0

    .line 809
    if-nez v0, :cond_1

    .line 811
    invoke-virtual {p1, v1}, Lcom/taobao/tao/imagepool/ImageHandler;->setState(I)V

    .line 812
    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/tao/imagepool/ImagePool;->processImageHandler(Lcom/taobao/tao/imagepool/ImageHandler;Lcom/taobao/tao/imagepool/ImageGroup;I)Z

    move-result v1

    goto/16 :goto_0

    .line 816
    :pswitch_4
    const-string v2, "TaoSdk.ImgPool"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ih is failed! url:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/taobao/tao/imagepool/ImageHandler;->URI()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/taobao/util/TaoLog;->Logw(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 819
    :pswitch_5
    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/tao/imagepool/ImagePool;->processLoaded(Lcom/taobao/tao/imagepool/ImageHandler;Lcom/taobao/tao/imagepool/ImageGroup;I)Z

    move-result v0

    goto/16 :goto_1

    .line 793
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private processLoaded(Lcom/taobao/tao/imagepool/ImageHandler;Lcom/taobao/tao/imagepool/ImageGroup;I)Z
    .locals 2
    .parameter "ih"
    .parameter "ig"
    .parameter "index"

    .prologue
    .line 731
    if-eqz p1, :cond_1

    .line 734
    invoke-virtual {p1}, Lcom/taobao/tao/imagepool/ImageHandler;->URI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/taobao/tao/imagepool/ImageHandler;->getCachePolicy()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/taobao/tao/imagepool/ImagePool;->_loadDrawable(Lcom/taobao/tao/imagepool/ImageHandler;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 739
    const-wide/16 v0, 0x2

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 745
    :goto_0
    const/4 v0, 0x1

    .line 753
    :goto_1
    return v0

    .line 748
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/tao/imagepool/ImagePool;->processDownload(Lcom/taobao/tao/imagepool/ImageHandler;Lcom/taobao/tao/imagepool/ImageGroup;I)Z

    move-result v0

    goto :goto_1

    .line 753
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 741
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private processRecycle(Lcom/taobao/tao/imagepool/ImageHandler;)Z
    .locals 2
    .parameter "ih"

    .prologue
    const/4 v0, 0x0

    .line 759
    if-nez p1, :cond_1

    .line 772
    :cond_0
    :goto_0
    return v0

    .line 762
    :cond_1
    invoke-virtual {p1}, Lcom/taobao/tao/imagepool/ImageHandler;->isRecyceled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 767
    invoke-virtual {p1}, Lcom/taobao/tao/imagepool/ImageHandler;->_ReloadRecyceledIfNeed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 769
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private reSchedule()V
    .locals 5

    .prologue
    .line 656
    sget-object v1, Lcom/taobao/tao/imagepool/ImagePool;->m_scheduleThread:Ljava/lang/Thread;

    if-nez v1, :cond_0

    .line 673
    :goto_0
    return-void

    .line 658
    :cond_0
    sget-object v2, Lcom/taobao/tao/imagepool/ImagePool;->m_scheduleThread:Ljava/lang/Thread;

    monitor-enter v2

    .line 660
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/taobao/tao/imagepool/ImagePool;->m_b_needSchedule:Z

    .line 661
    sget-boolean v1, Lcom/taobao/tao/imagepool/ImagePool;->m_scheduleThreadStarted:Z

    if-nez v1, :cond_1

    .line 663
    sget-object v1, Lcom/taobao/tao/imagepool/ImagePool;->m_scheduleThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 664
    const/4 v1, 0x1

    sput-boolean v1, Lcom/taobao/tao/imagepool/ImagePool;->m_scheduleThreadStarted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 668
    :cond_1
    :try_start_1
    sget-object v1, Lcom/taobao/tao/imagepool/ImagePool;->m_scheduleThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 672
    :goto_1
    :try_start_2
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 669
    :catch_0
    move-exception v0

    .line 670
    .local v0, e:Ljava/lang/Exception;
    :try_start_3
    const-string v1, "TaoSdk.ImgPool"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ImagePool::reSchedule failed , resume thread exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method public BitmapRecycle()V
    .locals 2

    .prologue
    .line 1997
    iget-object v0, p0, Lcom/taobao/tao/imagepool/ImagePool;->m_memCahce:Lcom/taobao/tao/imagepool/ImagePool$ImageMemCache;

    if-eqz v0, :cond_0

    .line 1998
    iget-object v0, p0, Lcom/taobao/tao/imagepool/ImagePool;->m_memCahce:Lcom/taobao/tao/imagepool/ImagePool$ImageMemCache;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/taobao/tao/imagepool/ImagePool$ImageMemCache;->ForceBitmapRecycle(I)V

    .line 1999
    :cond_0
    return-void
.end method

.method public ForceBitmapRecycleAll()V
    .locals 1

    .prologue
    .line 2005
    iget-object v0, p0, Lcom/taobao/tao/imagepool/ImagePool;->m_memCahce:Lcom/taobao/tao/imagepool/ImagePool$ImageMemCache;

    if-eqz v0, :cond_0

    .line 2006
    iget-object v0, p0, Lcom/taobao/tao/imagepool/ImagePool;->m_memCahce:Lcom/taobao/tao/imagepool/ImagePool$ImageMemCache;

    invoke-virtual {v0}, Lcom/taobao/tao/imagepool/ImagePool$ImageMemCache;->ForceBitmapRecycleAll()V

    .line 2007
    :cond_0
    return-void
.end method

.method public declared-synchronized Init(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "userAgent"
    .parameter "picPattern"

    .prologue
    .line 1705
    monitor-enter p0

    :try_start_0
    const-string v0, "TaoSdk.ImgPool"

    const-string v1, "!!!ImagePool init"

    invoke-static {v0, v1}, Landroid/taobao/util/TaoLog;->Logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 1706
    iput-object p1, p0, Lcom/taobao/tao/imagepool/ImagePool;->m_context:Landroid/app/Application;

    .line 1707
    sput-object p2, Lcom/taobao/tao/imagepool/ImagePool;->m_userAgent:Ljava/lang/String;

    .line 1708
    invoke-static {p3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/taobao/tao/imagepool/ImagePool;->m_picPattern:Ljava/util/regex/Pattern;

    .line 1709
    iget-object v0, p0, Lcom/taobao/tao/imagepool/ImagePool;->m_IC:Lcom/taobao/tao/imagepool/ImageCache;

    if-nez v0, :cond_0

    .line 1711
    new-instance v0, Lcom/taobao/tao/imagepool/ImageCache;

    invoke-direct {v0, p1}, Lcom/taobao/tao/imagepool/ImageCache;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/taobao/tao/imagepool/ImagePool;->m_IC:Lcom/taobao/tao/imagepool/ImageCache;

    .line 1712
    iget-object v0, p0, Lcom/taobao/tao/imagepool/ImagePool;->m_IC:Lcom/taobao/tao/imagepool/ImageCache;

    iget-object v1, p0, Lcom/taobao/tao/imagepool/ImagePool;->mStragery:Lcom/taobao/tao/imagepool/IImageQualityStrategy;

    invoke-virtual {v0, v1}, Lcom/taobao/tao/imagepool/ImageCache;->setImageQualityStrategy(Lcom/taobao/tao/imagepool/IImageQualityStrategy;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1714
    :cond_0
    monitor-exit p0

    return-void

    .line 1705
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized ReleaseCache()V
    .locals 2

    .prologue
    .line 1660
    monitor-enter p0

    :try_start_0
    const-string v0, "TaoSdk.ImgPool"

    const-string v1, "!!!ImagePool ReleaseCache"

    invoke-static {v0, v1}, Landroid/taobao/util/TaoLog;->Logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 1662
    iget-object v0, p0, Lcom/taobao/tao/imagepool/ImagePool;->m_IC:Lcom/taobao/tao/imagepool/ImageCache;

    if-eqz v0, :cond_0

    .line 1664
    iget-object v0, p0, Lcom/taobao/tao/imagepool/ImagePool;->m_IC:Lcom/taobao/tao/imagepool/ImageCache;

    invoke-virtual {v0}, Lcom/taobao/tao/imagepool/ImageCache;->release()V

    .line 1665
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/tao/imagepool/ImagePool;->m_IC:Lcom/taobao/tao/imagepool/ImageCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1667
    :cond_0
    monitor-exit p0

    return-void

    .line 1660
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public URLtoPersistPath(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .parameter "URL"
    .parameter "cache_type"

    .prologue
    .line 1980
    iget-object v0, p0, Lcom/taobao/tao/imagepool/ImagePool;->mStragery:Lcom/taobao/tao/imagepool/IImageQualityStrategy;

    if-eqz v0, :cond_0

    .line 1982
    iget-object v0, p0, Lcom/taobao/tao/imagepool/ImagePool;->mStragery:Lcom/taobao/tao/imagepool/IImageQualityStrategy;

    invoke-interface {v0, p1}, Lcom/taobao/tao/imagepool/IImageQualityStrategy;->decideUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1985
    :cond_0
    iget-object v0, p0, Lcom/taobao/tao/imagepool/ImagePool;->m_IC:Lcom/taobao/tao/imagepool/ImageCache;

    if-eqz v0, :cond_1

    .line 1987
    iget-object v0, p0, Lcom/taobao/tao/imagepool/ImagePool;->m_IC:Lcom/taobao/tao/imagepool/ImageCache;

    invoke-virtual {v0, p1, p2}, Lcom/taobao/tao/imagepool/ImageCache;->URLtoPersistPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1990
    :goto_0
    return-object v0

    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public _createImageHandler(Ljava/lang/String;I)Lcom/taobao/tao/imagepool/ImageHandler;
    .locals 1
    .parameter "URL"
    .parameter "cache_Type"

    .prologue
    .line 1812
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/taobao/tao/imagepool/ImagePool;->_createImageHandler(Ljava/lang/String;ILcom/taobao/tao/imagepool/BitmapCreator;)Lcom/taobao/tao/imagepool/ImageHandler;

    move-result-object v0

    return-object v0
.end method

.method public _createImageHandler(Ljava/lang/String;ILcom/taobao/tao/imagepool/BitmapCreator;)Lcom/taobao/tao/imagepool/ImageHandler;
    .locals 4
    .parameter "URL"
    .parameter "cache_Type"
    .parameter "bc"

    .prologue
    .line 1823
    invoke-direct {p0, p1}, Lcom/taobao/tao/imagepool/ImagePool;->_getImageHandlerInMemory(Ljava/lang/String;)Lcom/taobao/tao/imagepool/ImageHandler;

    move-result-object v0

    .line 1824
    .local v0, res:Lcom/taobao/tao/imagepool/ImageHandler;
    if-nez v0, :cond_0

    .line 1827
    if-nez p3, :cond_1

    .line 1828
    new-instance v0, Lcom/taobao/tao/imagepool/ImageHandler;

    .end local v0           #res:Lcom/taobao/tao/imagepool/ImageHandler;
    invoke-direct {v0, p1, p2}, Lcom/taobao/tao/imagepool/ImageHandler;-><init>(Ljava/lang/String;I)V

    .line 1832
    .restart local v0       #res:Lcom/taobao/tao/imagepool/ImageHandler;
    :goto_0
    iget-object v1, p0, Lcom/taobao/tao/imagepool/ImagePool;->m_HandlerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Lcom/taobao/tao/imagepool/ImagePool;->UUIDUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1834
    :cond_0
    return-object v0

    .line 1830
    :cond_1
    new-instance v0, Lcom/taobao/tao/imagepool/ImageHandler;

    .end local v0           #res:Lcom/taobao/tao/imagepool/ImageHandler;
    invoke-direct {v0, p1, p2, p3}, Lcom/taobao/tao/imagepool/ImageHandler;-><init>(Ljava/lang/String;ILcom/taobao/tao/imagepool/BitmapCreator;)V

    .restart local v0       #res:Lcom/taobao/tao/imagepool/ImageHandler;
    goto :goto_0
.end method

.method _loadDrawable(Lcom/taobao/tao/imagepool/ImageHandler;Ljava/lang/String;I)Z
    .locals 4
    .parameter "ih"
    .parameter "ourl"
    .parameter "cachePolicy"

    .prologue
    .line 1736
    invoke-direct {p0, p2, p3}, Lcom/taobao/tao/imagepool/ImagePool;->_getImageHandler(Ljava/lang/String;I)Lcom/taobao/tao/imagepool/ImageHandler;

    move-result-object v0

    .line 1737
    .local v0, handler:Lcom/taobao/tao/imagepool/ImageHandler;
    if-eqz v0, :cond_1

    .line 1739
    if-eq p1, v0, :cond_0

    .line 1741
    const-string v1, "TaoSdk.ImgPool"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "different handler for one url:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/taobao/util/TaoLog;->Logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 1742
    invoke-virtual {p1}, Lcom/taobao/tao/imagepool/ImageHandler;->isRecyclable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1744
    move-object p1, v0

    .line 1748
    :cond_0
    invoke-virtual {v0}, Lcom/taobao/tao/imagepool/ImageHandler;->getState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 1750
    const/4 v1, 0x1

    .line 1753
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public addBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;IZ)Ljava/util/concurrent/Future;
    .locals 8
    .parameter "bitmap"
    .parameter "url"
    .parameter "cacheType"
    .parameter "save"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/String;",
            "IZ)",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2072
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v6

    .line 2073
    .local v6, executor:Ljava/util/concurrent/ExecutorService;
    new-instance v7, Ljava/util/concurrent/FutureTask;

    new-instance v0, Lcom/taobao/tao/imagepool/ImagePool$1;

    move-object v1, p0

    move-object v2, p2

    move v3, p3

    move-object v4, p1

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/taobao/tao/imagepool/ImagePool$1;-><init>(Lcom/taobao/tao/imagepool/ImagePool;Ljava/lang/String;ILandroid/graphics/Bitmap;Z)V

    invoke-direct {v7, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 2101
    .local v7, future:Ljava/util/concurrent/FutureTask;,"Ljava/util/concurrent/FutureTask<Ljava/lang/String;>;"
    invoke-interface {v6, v7}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 2103
    return-object v7
.end method

.method final declared-synchronized addGroup(Lcom/taobao/tao/imagepool/ImageGroup;)V
    .locals 3
    .parameter "group"

    .prologue
    .line 140
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/taobao/tao/imagepool/ImagePool;->_findGroup(Lcom/taobao/tao/imagepool/ImageGroup;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    :goto_0
    monitor-exit p0

    return-void

    .line 143
    :cond_0
    :try_start_1
    invoke-interface {p1}, Lcom/taobao/tao/imagepool/ImageGroup;->getPriority()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 162
    :goto_1
    const-string v0, "TaoSdk.ImgPool"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImagePool::addGroup() done, group priority "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/taobao/tao/imagepool/ImageGroup;->getPriority()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 140
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 147
    :pswitch_0
    :try_start_2
    iget-object v0, p0, Lcom/taobao/tao/imagepool/ImagePool;->m_topGroup:Lcom/taobao/tao/imagepool/ImageGroup;

    if-eqz v0, :cond_1

    .line 149
    iget-object v0, p0, Lcom/taobao/tao/imagepool/ImagePool;->m_topGroup:Lcom/taobao/tao/imagepool/ImageGroup;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/taobao/tao/imagepool/ImageGroup;->setPriority(I)V

    .line 151
    :cond_1
    iput-object p1, p0, Lcom/taobao/tao/imagepool/ImagePool;->m_topGroup:Lcom/taobao/tao/imagepool/ImageGroup;

    .line 152
    invoke-direct {p0}, Lcom/taobao/tao/imagepool/ImagePool;->reSchedule()V

    goto :goto_1

    .line 155
    :pswitch_1
    iget-object v0, p0, Lcom/taobao/tao/imagepool/ImagePool;->m_normalGroups:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    invoke-direct {p0}, Lcom/taobao/tao/imagepool/ImagePool;->reSchedule()V

    goto :goto_1

    .line 159
    :pswitch_2
    iget-object v0, p0, Lcom/taobao/tao/imagepool/ImagePool;->m_dormantGroups:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 143
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public cancelLoad(Ljava/lang/String;)V
    .locals 6
    .parameter "URI"

    .prologue
    .line 1182
    const-string v2, "TaoSdk.ImgPool"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ImagePool.cancelLoad() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1185
    iget-object v3, p0, Lcom/taobao/tao/imagepool/ImagePool;->m_downloaders:Ljava/util/ArrayList;

    monitor-enter v3

    .line 1187
    :try_start_0
    iget-object v2, p0, Lcom/taobao/tao/imagepool/ImagePool;->m_downloaders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;

    .line 1189
    .local v1, ie:Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;
    #getter for: Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;->m_image:Lcom/taobao/tao/imagepool/ImageHandler;
    invoke-static {v1}, Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;->access$700(Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;)Lcom/taobao/tao/imagepool/ImageHandler;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1191
    #getter for: Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;->m_image:Lcom/taobao/tao/imagepool/ImageHandler;
    invoke-static {v1}, Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;->access$700(Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;)Lcom/taobao/tao/imagepool/ImageHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/tao/imagepool/ImageHandler;->URI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1192
    #calls: Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;->stop()V
    invoke-static {v1}, Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;->access$1400(Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;)V

    .line 1195
    iget-object v2, p0, Lcom/taobao/tao/imagepool/ImagePool;->m_downloaders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v4, p0, Lcom/taobao/tao/imagepool/ImagePool;->m_concurrentDownloadCount:I

    if-le v2, v4, :cond_1

    .line 1196
    #calls: Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;->releaseIDL()V
    invoke-static {v1}, Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;->access$1500(Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;)V

    .line 1197
    iget-object v2, p0, Lcom/taobao/tao/imagepool/ImagePool;->m_downloaders:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1200
    :cond_1
    const-string v2, "TaoSdk.ImgPool"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "image download cancelled() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1205
    .end local v1           #ie:Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;
    :cond_2
    monitor-exit v3

    .line 1206
    return-void

    .line 1205
    .end local v0           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public clearCache(I)V
    .locals 1
    .parameter "policy"

    .prologue
    .line 2015
    iget-object v0, p0, Lcom/taobao/tao/imagepool/ImagePool;->m_IC:Lcom/taobao/tao/imagepool/ImageCache;

    if-eqz v0, :cond_0

    .line 2016
    iget-object v0, p0, Lcom/taobao/tao/imagepool/ImagePool;->m_IC:Lcom/taobao/tao/imagepool/ImageCache;

    invoke-virtual {v0, p1}, Lcom/taobao/tao/imagepool/ImageCache;->clearCache(I)V

    .line 2017
    :cond_0
    return-void
.end method

.method public delImage(Ljava/lang/String;I)V
    .locals 1
    .parameter "URI"
    .parameter "cache_Type"

    .prologue
    .line 1723
    iget-object v0, p0, Lcom/taobao/tao/imagepool/ImagePool;->m_IC:Lcom/taobao/tao/imagepool/ImageCache;

    if-eqz v0, :cond_0

    .line 1724
    iget-object v0, p0, Lcom/taobao/tao/imagepool/ImagePool;->m_IC:Lcom/taobao/tao/imagepool/ImageCache;

    invoke-virtual {v0, p1, p2}, Lcom/taobao/tao/imagepool/ImageCache;->deleteFile(Ljava/lang/String;I)V

    .line 1725
    :cond_0
    return-void
.end method

.method public dumpMemory()V
    .locals 2

    .prologue
    .line 2023
    iget-object v0, p0, Lcom/taobao/tao/imagepool/ImagePool;->m_memCahce:Lcom/taobao/tao/imagepool/ImagePool$ImageMemCache;

    if-eqz v0, :cond_0

    .line 2024
    iget-object v0, p0, Lcom/taobao/tao/imagepool/ImagePool;->m_memCahce:Lcom/taobao/tao/imagepool/ImagePool$ImageMemCache;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/taobao/tao/imagepool/ImagePool$ImageMemCache;->dumpMemory(Z)V

    .line 2025
    :cond_0
    return-void
.end method

.method public getImageHandler(Ljava/lang/String;I)Lcom/taobao/tao/imagepool/ImageHandler;
    .locals 2
    .parameter "URL"
    .parameter "cache_Type"

    .prologue
    .line 1767
    invoke-direct {p0, p1, p2}, Lcom/taobao/tao/imagepool/ImagePool;->_getImageHandler(Ljava/lang/String;I)Lcom/taobao/tao/imagepool/ImageHandler;

    move-result-object v0

    .line 1768
    .local v0, ih:Lcom/taobao/tao/imagepool/ImageHandler;
    if-eqz v0, :cond_0

    .line 1770
    invoke-virtual {v0}, Lcom/taobao/tao/imagepool/ImageHandler;->isValideDrawable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1772
    const/4 v0, 0x0

    .line 1775
    .end local v0           #ih:Lcom/taobao/tao/imagepool/ImageHandler;
    :cond_0
    return-object v0
.end method

.method public getImageHandlerInMemory(Ljava/lang/String;)Lcom/taobao/tao/imagepool/ImageHandler;
    .locals 4
    .parameter "URL"

    .prologue
    .line 1843
    invoke-direct {p0, p1}, Lcom/taobao/tao/imagepool/ImagePool;->_getImageHandlerInMemory(Ljava/lang/String;)Lcom/taobao/tao/imagepool/ImageHandler;

    move-result-object v0

    .line 1844
    .local v0, res:Lcom/taobao/tao/imagepool/ImageHandler;
    if-eqz v0, :cond_0

    .line 1846
    invoke-virtual {v0}, Lcom/taobao/tao/imagepool/ImageHandler;->isValideDrawable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1848
    const-string v1, "TaoSdk.ImgPool"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getImageHandlerInMemory ih is not contians bitmap url:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/taobao/util/TaoLog;->Logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 1849
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/taobao/tao/imagepool/ImageHandler;->setState(I)V

    .line 1850
    const/4 v0, 0x0

    .line 1854
    .end local v0           #res:Lcom/taobao/tao/imagepool/ImageHandler;
    :cond_0
    return-object v0
.end method

.method public getImageQualityStrategy()Lcom/taobao/tao/imagepool/IImageQualityStrategy;
    .locals 1

    .prologue
    .line 1686
    iget-object v0, p0, Lcom/taobao/tao/imagepool/ImagePool;->mStragery:Lcom/taobao/tao/imagepool/IImageQualityStrategy;

    return-object v0
.end method

.method public final declared-synchronized groupChanged(Lcom/taobao/tao/imagepool/ImageGroup;)V
    .locals 1
    .parameter "group"

    .prologue
    .line 196
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/taobao/tao/imagepool/ImagePool;->_findGroup(Lcom/taobao/tao/imagepool/ImageGroup;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/tao/imagepool/ImagePool;->m_dormantGroups:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 197
    invoke-direct {p0}, Lcom/taobao/tao/imagepool/ImagePool;->reSchedule()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    :cond_0
    monitor-exit p0

    return-void

    .line 196
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized groupPriorityChanged(Lcom/taobao/tao/imagepool/ImageGroup;II)V
    .locals 3
    .parameter "group"
    .parameter "from"
    .parameter "to"

    .prologue
    .line 208
    monitor-enter p0

    if-eq p2, p3, :cond_0

    if-nez p1, :cond_1

    .line 230
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 212
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/taobao/tao/imagepool/ImagePool;->m_topGroup:Lcom/taobao/tao/imagepool/ImageGroup;

    if-ne v0, p1, :cond_3

    .line 213
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/tao/imagepool/ImagePool;->m_topGroup:Lcom/taobao/tao/imagepool/ImageGroup;

    .line 219
    :cond_2
    const/4 v0, 0x2

    if-ne p3, v0, :cond_4

    .line 220
    iget-object v0, p0, Lcom/taobao/tao/imagepool/ImagePool;->m_dormantGroups:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    :goto_1
    const-string v0, "TaoSdk.ImgPool"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImagePool::groupPriorityChanged() from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 208
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 214
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/taobao/tao/imagepool/ImagePool;->m_normalGroups:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/taobao/tao/imagepool/ImagePool;->m_dormantGroups:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 215
    const-string v0, "TaoSdk.ImgPool"

    const-string v1, "ImagePool::groupPriorityChanged() abort, group not found"

    invoke-static {v0, v1}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 222
    :cond_4
    const/4 v0, 0x1

    if-ne p3, v0, :cond_5

    .line 223
    iget-object v0, p0, Lcom/taobao/tao/imagepool/ImagePool;->m_normalGroups:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    :goto_2
    invoke-direct {p0}, Lcom/taobao/tao/imagepool/ImagePool;->reSchedule()V

    goto :goto_1

    .line 225
    :cond_5
    iput-object p1, p0, Lcom/taobao/tao/imagepool/ImagePool;->m_topGroup:Lcom/taobao/tao/imagepool/ImageGroup;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method loadImage(Lcom/taobao/tao/imagepool/ImageHandler;Lcom/taobao/tao/imagepool/ImageGroup;I)V
    .locals 5
    .parameter "ih"
    .parameter "group"
    .parameter "index"

    .prologue
    .line 1141
    invoke-virtual {p1}, Lcom/taobao/tao/imagepool/ImageHandler;->URI()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/taobao/tao/imagepool/ImagePool;->findEqualLoadingExecutor(Ljava/lang/String;)Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;

    move-result-object v1

    .line 1142
    .local v1, ie:Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;
    if-eqz v1, :cond_0

    .line 1144
    #calls: Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;->joinExecutor(Lcom/taobao/tao/imagepool/ImageHandler;Lcom/taobao/tao/imagepool/ImageGroup;I)V
    invoke-static {v1, p1, p2, p3}, Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;->access$900(Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;Lcom/taobao/tao/imagepool/ImageHandler;Lcom/taobao/tao/imagepool/ImageGroup;I)V

    .line 1173
    :goto_0
    return-void

    .line 1149
    :cond_0
    invoke-direct {p0}, Lcom/taobao/tao/imagepool/ImagePool;->findIdleExecutor()Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;

    move-result-object v1

    .line 1151
    if-nez v1, :cond_1

    .line 1152
    :try_start_0
    new-instance v2, Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;-><init>(Lcom/taobao/tao/imagepool/ImagePool;Lcom/taobao/tao/imagepool/ImageHandler;Lcom/taobao/tao/imagepool/ImageGroup;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1153
    .end local v1           #ie:Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;
    .local v2, ie:Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;
    :try_start_1
    #calls: Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;->lockExecutor()V
    invoke-static {v2}, Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;->access$1000(Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;)V

    .line 1154
    iget-object v4, p0, Lcom/taobao/tao/imagepool/ImagePool;->m_downloaders:Ljava/util/ArrayList;

    monitor-enter v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1156
    :try_start_2
    iget-object v3, p0, Lcom/taobao/tao/imagepool/ImagePool;->m_downloaders:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1157
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v1, v2

    .line 1164
    .end local v2           #ie:Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;
    .restart local v1       #ie:Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;
    :goto_1
    :try_start_3
    #calls: Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;->start()V
    invoke-static {v1}, Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;->access$1300(Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 1166
    :catch_0
    move-exception v0

    .line 1168
    .local v0, e:Ljava/lang/Exception;
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1157
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #ie:Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;
    .restart local v2       #ie:Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;
    :catchall_0
    move-exception v3

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v3
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 1166
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2           #ie:Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;
    .restart local v1       #ie:Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;
    goto :goto_2

    .line 1160
    :cond_1
    :try_start_6
    #calls: Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;->lockExecutor()V
    invoke-static {v1}, Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;->access$1000(Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;)V

    .line 1161
    #calls: Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;->setImageHandler(Lcom/taobao/tao/imagepool/ImageHandler;I)V
    invoke-static {v1, p1, p3}, Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;->access$1100(Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;Lcom/taobao/tao/imagepool/ImageHandler;I)V

    .line 1162
    #calls: Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;->setGroup(Lcom/taobao/tao/imagepool/ImageGroup;)V
    invoke-static {v1, p2}, Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;->access$1200(Lcom/taobao/tao/imagepool/ImagePool$ImageExecutor;Lcom/taobao/tao/imagepool/ImageGroup;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_1
.end method

.method loadImageFromCreator(Lcom/taobao/tao/imagepool/ImageHandler;Lcom/taobao/tao/imagepool/ImageGroup;I)V
    .locals 4
    .parameter "ih"
    .parameter "group"
    .parameter "index"

    .prologue
    .line 1125
    const-string v1, "TaoSdk.ImgPool"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ImagePool::loadImageFromCreator url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/taobao/tao/imagepool/ImageHandler;->URI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1126
    new-instance v0, Lcom/taobao/tao/imagepool/ImagePool$BitmapCreatorExecutor;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/taobao/tao/imagepool/ImagePool$BitmapCreatorExecutor;-><init>(Lcom/taobao/tao/imagepool/ImagePool;Lcom/taobao/tao/imagepool/ImageHandler;Lcom/taobao/tao/imagepool/ImageGroup;I)V

    .line 1127
    .local v0, ie:Lcom/taobao/tao/imagepool/ImagePool$BitmapCreatorExecutor;
    invoke-virtual {v0}, Lcom/taobao/tao/imagepool/ImagePool$BitmapCreatorExecutor;->start()V

    .line 1128
    return-void
.end method

.method loadPackageIcon(Lcom/taobao/tao/imagepool/ImageHandler;Lcom/taobao/tao/imagepool/ImageGroup;I)V
    .locals 4
    .parameter "ih"
    .parameter "group"
    .parameter "index"

    .prologue
    .line 1034
    const-string v1, "TaoSdk.ImgPool"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ImagePool::loadPackageIcon url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/taobao/tao/imagepool/ImageHandler;->URI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1035
    new-instance v0, Lcom/taobao/tao/imagepool/ImagePool$IconExecutor;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/taobao/tao/imagepool/ImagePool$IconExecutor;-><init>(Lcom/taobao/tao/imagepool/ImagePool;Lcom/taobao/tao/imagepool/ImageHandler;Lcom/taobao/tao/imagepool/ImageGroup;I)V

    .line 1036
    .local v0, ie:Lcom/taobao/tao/imagepool/ImagePool$IconExecutor;
    invoke-virtual {v0}, Lcom/taobao/tao/imagepool/ImagePool$IconExecutor;->start()V

    .line 1037
    return-void
.end method

.method public final declared-synchronized release()V
    .locals 1

    .prologue
    .line 1640
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    sput-boolean v0, Lcom/taobao/tao/imagepool/ImagePool;->m_b_exit:Z

    .line 1641
    sget-object v0, Lcom/taobao/tao/imagepool/ImagePool;->m_scheduleThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 1643
    iget-object v0, p0, Lcom/taobao/tao/imagepool/ImagePool;->m_threadPage:Landroid/taobao/threadpool2/ThreadPage;

    if-eqz v0, :cond_0

    .line 1645
    iget-object v0, p0, Lcom/taobao/tao/imagepool/ImagePool;->m_threadPage:Landroid/taobao/threadpool2/ThreadPage;

    invoke-virtual {v0}, Landroid/taobao/threadpool2/ThreadPage;->destroy()V

    .line 1646
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/tao/imagepool/ImagePool;->m_threadPage:Landroid/taobao/threadpool2/ThreadPage;

    .line 1649
    :cond_0
    iget-object v0, p0, Lcom/taobao/tao/imagepool/ImagePool;->m_IC:Lcom/taobao/tao/imagepool/ImageCache;

    if-eqz v0, :cond_1

    .line 1650
    iget-object v0, p0, Lcom/taobao/tao/imagepool/ImagePool;->m_IC:Lcom/taobao/tao/imagepool/ImageCache;

    invoke-virtual {v0}, Lcom/taobao/tao/imagepool/ImageCache;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1651
    :cond_1
    monitor-exit p0

    return-void

    .line 1640
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public releaseImageHandler(Lcom/taobao/tao/imagepool/ImageHandler;)V
    .locals 0
    .parameter "ih"

    .prologue
    .line 1783
    if-eqz p1, :cond_0

    .line 1785
    invoke-virtual {p1}, Lcom/taobao/tao/imagepool/ImageHandler;->subRef()V

    .line 1787
    :cond_0
    return-void
.end method

.method public remove(Lcom/taobao/tao/imagepool/ImageHandler;)Z
    .locals 1
    .parameter "ih"

    .prologue
    .line 1537
    iget-object v0, p0, Lcom/taobao/tao/imagepool/ImagePool;->m_memCahce:Lcom/taobao/tao/imagepool/ImagePool$ImageMemCache;

    invoke-virtual {v0, p1}, Lcom/taobao/tao/imagepool/ImagePool$ImageMemCache;->remove(Lcom/taobao/tao/imagepool/ImageHandler;)Z

    move-result v0

    return v0
.end method

.method public final declared-synchronized removeGroup(Lcom/taobao/tao/imagepool/ImageGroup;)Z
    .locals 3
    .parameter "group"

    .prologue
    const/4 v0, 0x1

    .line 172
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/taobao/tao/imagepool/ImagePool;->m_topGroup:Lcom/taobao/tao/imagepool/ImageGroup;

    if-ne v1, p1, :cond_0

    .line 173
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/taobao/tao/imagepool/ImagePool;->m_topGroup:Lcom/taobao/tao/imagepool/ImageGroup;

    .line 174
    invoke-direct {p0}, Lcom/taobao/tao/imagepool/ImagePool;->reSchedule()V

    .line 175
    const-string v1, "TaoSdk.ImgPool"

    const-string v2, "ImagePool::removeGroup() removed from top group"

    invoke-static {v1, v2}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    :goto_0
    monitor-exit p0

    return v0

    .line 177
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/taobao/tao/imagepool/ImagePool;->m_dormantGroups:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 178
    const-string v1, "TaoSdk.ImgPool"

    const-string v2, "ImagePool::removeGroup() removed from dormant group"

    invoke-static {v1, v2}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 172
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 180
    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/taobao/tao/imagepool/ImagePool;->m_normalGroups:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 181
    invoke-direct {p0}, Lcom/taobao/tao/imagepool/ImagePool;->reSchedule()V

    .line 182
    const-string v1, "TaoSdk.ImgPool"

    const-string v2, "ImagePool::removeGroup() removed from normal group"

    invoke-static {v1, v2}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 185
    :cond_2
    const-string v0, "TaoSdk.ImgPool"

    const-string v1, "ImagePool::removeGroup() failed, group not found"

    invoke-static {v0, v1}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 186
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 1216
    const/16 v1, 0x13

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1219
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/taobao/tao/imagepool/ImagePool;->m_b_needSchedule:Z

    if-eqz v1, :cond_1

    .line 1222
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/taobao/tao/imagepool/ImagePool;->m_b_needSchedule:Z

    .line 1227
    :try_start_0
    invoke-direct {p0}, Lcom/taobao/tao/imagepool/ImagePool;->doSchedule()V

    .line 1228
    const-wide/16 v1, 0x2

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 1229
    iget-boolean v1, p0, Lcom/taobao/tao/imagepool/ImagePool;->m_b_needSchedule:Z

    if-nez v1, :cond_0

    .line 1231
    sget-object v2, Lcom/taobao/tao/imagepool/ImagePool;->m_scheduleThread:Ljava/lang/Thread;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1235
    :try_start_1
    sget-object v1, Lcom/taobao/tao/imagepool/ImagePool;->m_scheduleThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 1237
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1240
    :catch_0
    move-exception v0

    .line 1242
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "TaoSdk.ImgPool"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ImagePool::run() thread wait exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1245
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    sget-boolean v1, Lcom/taobao/tao/imagepool/ImagePool;->m_b_exit:Z

    if-eqz v1, :cond_0

    .line 1249
    return-void
.end method

.method public declared-synchronized setConcurrentDownloadCount(I)V
    .locals 1
    .parameter "count"

    .prologue
    .line 244
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/taobao/tao/imagepool/ImagePool;->m_concurrentDownloadCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    monitor-exit p0

    return-void

    .line 244
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setImageQualityStrategy(Lcom/taobao/tao/imagepool/IImageQualityStrategy;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 1676
    iput-object p1, p0, Lcom/taobao/tao/imagepool/ImagePool;->mStragery:Lcom/taobao/tao/imagepool/IImageQualityStrategy;

    .line 1677
    iget-object v0, p0, Lcom/taobao/tao/imagepool/ImagePool;->m_IC:Lcom/taobao/tao/imagepool/ImageCache;

    if-eqz v0, :cond_0

    .line 1678
    iget-object v0, p0, Lcom/taobao/tao/imagepool/ImagePool;->m_IC:Lcom/taobao/tao/imagepool/ImageCache;

    invoke-virtual {v0, p1}, Lcom/taobao/tao/imagepool/ImageCache;->setImageQualityStrategy(Lcom/taobao/tao/imagepool/IImageQualityStrategy;)V

    .line 1679
    :cond_0
    return-void
.end method

.method public setMaxMemory(I)V
    .locals 1
    .parameter "size"

    .prologue
    .line 2032
    iget-object v0, p0, Lcom/taobao/tao/imagepool/ImagePool;->m_memCahce:Lcom/taobao/tao/imagepool/ImagePool$ImageMemCache;

    if-eqz v0, :cond_0

    .line 2033
    iget-object v0, p0, Lcom/taobao/tao/imagepool/ImagePool;->m_memCahce:Lcom/taobao/tao/imagepool/ImagePool$ImageMemCache;

    invoke-virtual {v0, p1}, Lcom/taobao/tao/imagepool/ImagePool$ImageMemCache;->onSetMaxMemory(I)V

    .line 2034
    :cond_0
    return-void
.end method
