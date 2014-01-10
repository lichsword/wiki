.class public Landroid/taobao/apirequest/ApiConnectorUtil;
.super Ljava/lang/Object;
.source "ApiConnectorUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/taobao/apirequest/ApiConnectorUtil$ConnReUsedResult;,
        Landroid/taobao/apirequest/ApiConnectorUtil$FlagOutputStream;,
        Landroid/taobao/apirequest/ApiConnectorUtil$HostPair;
    }
.end annotation


# static fields
.field private static final HTTP_MONITOR_UTIL:Ljava/lang/String; = "httpMonitorUtil"

.field private static final LOG_TAG:Ljava/lang/String; = "ApiConnectorUtil"

.field static connection_hashmap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static hostList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/taobao/apirequest/ApiConnectorUtil$HostPair;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/taobao/apirequest/ApiConnectorUtil;->hostList:Ljava/util/List;

    .line 77
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Landroid/taobao/apirequest/ApiConnectorUtil;->connection_hashmap:Ljava/util/WeakHashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 629
    return-void
.end method

.method public static addHost(Ljava/lang/String;)V
    .locals 7
    .parameter "host"

    .prologue
    .line 45
    sget-object v3, Landroid/taobao/apirequest/ApiConnectorUtil;->hostList:Ljava/util/List;

    monitor-enter v3

    .line 46
    :try_start_0
    sget-object v2, Landroid/taobao/apirequest/ApiConnectorUtil;->hostList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/taobao/apirequest/ApiConnectorUtil$HostPair;

    .line 47
    .local v0, hp:Landroid/taobao/apirequest/ApiConnectorUtil$HostPair;
    iget-object v2, v0, Landroid/taobao/apirequest/ApiConnectorUtil$HostPair;->mHost:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 48
    monitor-exit v3

    .line 57
    .end local v0           #hp:Landroid/taobao/apirequest/ApiConnectorUtil$HostPair;
    :goto_0
    return-void

    .line 52
    :cond_1
    sget-object v2, Landroid/taobao/apirequest/ApiConnectorUtil;->hostList:Ljava/util/List;

    new-instance v4, Landroid/taobao/apirequest/ApiConnectorUtil$HostPair;

    const-wide/16 v5, 0x0

    invoke-direct {v4, p0, v5, v6}, Landroid/taobao/apirequest/ApiConnectorUtil$HostPair;-><init>(Ljava/lang/String;J)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    invoke-static {}, Landroid/taobao/apirequest/ApiConnectorUtil;->printHostList()V

    .line 56
    monitor-exit v3

    goto :goto_0

    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static checkTest(Ljava/net/HttpURLConnection;)V
    .locals 3
    .parameter "conn"

    .prologue
    .line 85
    const-string v0, "ApiConnectorUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "socket:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "outputStream"

    invoke-static {p0, v2}, Landroid/taobao/apirequest/ApiConnectorUtil;->getConnProperty(Ljava/net/HttpURLConnection;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ssl:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "sslOutputStream"

    invoke-static {p0, v2}, Landroid/taobao/apirequest/ApiConnectorUtil;->getConnProperty(Ljava/net/HttpURLConnection;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/taobao/util/TaoLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method public static forceCloseConnection(Ljava/net/HttpURLConnection;)V
    .locals 6
    .parameter "conn"

    .prologue
    .line 397
    if-nez p0, :cond_1

    .line 419
    :cond_0
    :goto_0
    return-void

    .line 401
    :cond_1
    invoke-static {p0}, Landroid/taobao/apirequest/ApiConnectorUtil;->getConnObj(Ljava/net/HttpURLConnection;)Ljava/lang/Object;

    move-result-object v1

    .line 402
    .local v1, connObj:Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 404
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "closeSocketAndStreams"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 405
    .local v0, closeSocketMethos:Ljava/lang/reflect/Method;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 406
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    const/4 v1, 0x0

    .line 410
    const-string v3, "httpMonitorUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "forceclose success:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/taobao/util/TaoLog;->Logw(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 412
    .end local v0           #closeSocketMethos:Ljava/lang/reflect/Method;
    .end local v1           #connObj:Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 413
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 414
    const-string v3, "httpMonitorUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "forceclose Exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ,"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/taobao/util/TaoLog;->Logw(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static getConnDownIceCream(Ljava/net/HttpURLConnection;)Ljava/lang/Object;
    .locals 6
    .parameter "conn"

    .prologue
    .line 443
    const/4 v1, 0x0

    .line 445
    .local v1, connObj:Ljava/lang/Object;
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 446
    .local v0, cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v4, "connection"

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 447
    .local v2, connection:Ljava/lang/reflect/Field;
    if-eqz v2, :cond_0

    .line 448
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 449
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    .line 462
    .end local v0           #cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v1           #connObj:Ljava/lang/Object;
    .end local v2           #connection:Ljava/lang/reflect/Field;
    :cond_0
    :goto_0
    return-object v1

    .line 452
    .restart local v1       #connObj:Ljava/lang/Object;
    :catch_0
    move-exception v3

    .line 454
    .local v3, e:Ljava/lang/NoSuchFieldException;
    const-string v4, "httpMonitorUtil"

    const-string v5, "https connection"

    invoke-static {v4, v5}, Landroid/taobao/util/TaoLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    invoke-static {p0}, Landroid/taobao/apirequest/ApiConnectorUtil;->getHttpsConnDownIceCream(Ljava/net/HttpURLConnection;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 456
    .end local v3           #e:Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v3

    .line 457
    .local v3, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 458
    .end local v3           #e:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v3

    .line 459
    .local v3, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v3}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0
.end method

.method protected static getConnHashCode(Ljava/net/HttpURLConnection;)I
    .locals 3
    .parameter "conn"

    .prologue
    const/4 v2, 0x0

    .line 308
    invoke-static {p0}, Landroid/taobao/apirequest/ApiConnectorUtil;->getConnObj(Ljava/net/HttpURLConnection;)Ljava/lang/Object;

    move-result-object v0

    .line 310
    .local v0, connObj:Ljava/lang/Object;
    if-nez v0, :cond_1

    move v1, v2

    .line 319
    :cond_0
    :goto_0
    return v1

    .line 314
    :cond_1
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    .line 316
    .local v1, hash:I
    if-gtz v1, :cond_0

    move v1, v2

    .line 317
    goto :goto_0
.end method

.method protected static getConnObj(Ljava/net/HttpURLConnection;)Ljava/lang/Object;
    .locals 3
    .parameter "conn"

    .prologue
    .line 329
    const/4 v0, 0x0

    .line 331
    .local v0, connObj:Ljava/lang/Object;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-ge v1, v2, :cond_0

    .line 332
    invoke-static {p0}, Landroid/taobao/apirequest/ApiConnectorUtil;->getConnDownIceCream(Ljava/net/HttpURLConnection;)Ljava/lang/Object;

    move-result-object v0

    .line 337
    :goto_0
    return-object v0

    .line 334
    :cond_0
    invoke-static {p0}, Landroid/taobao/apirequest/ApiConnectorUtil;->getConnUpIceCream(Ljava/net/HttpURLConnection;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public static getConnProperty(Ljava/net/HttpURLConnection;Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .parameter "conn"
    .parameter "fieldName"

    .prologue
    const/4 v2, 0x0

    .line 245
    if-nez p0, :cond_1

    .line 265
    :cond_0
    :goto_0
    return-object v2

    .line 249
    :cond_1
    invoke-static {p0}, Landroid/taobao/apirequest/ApiConnectorUtil;->getConnObj(Ljava/net/HttpURLConnection;)Ljava/lang/Object;

    move-result-object v0

    .line 251
    .local v0, connObj:Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 253
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 254
    .local v3, propertyField:Ljava/lang/reflect/Field;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 256
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 258
    .local v2, proObj:Ljava/lang/Object;
    goto :goto_0

    .line 259
    .end local v2           #proObj:Ljava/lang/Object;
    .end local v3           #propertyField:Ljava/lang/reflect/Field;
    :catch_0
    move-exception v1

    .line 260
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static getConnUpIceCream(Ljava/net/HttpURLConnection;)Ljava/lang/Object;
    .locals 9
    .parameter "conn"

    .prologue
    .line 508
    const/4 v1, 0x0

    .line 511
    .local v1, connObj:Ljava/lang/Object;
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 515
    .local v0, cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v7, "getHttpEngine"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-virtual {v0, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 516
    .local v6, getEngineMethod:Ljava/lang/reflect/Method;
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 517
    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v6, p0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 518
    .local v5, engObj:Ljava/lang/Object;
    if-eqz v5, :cond_0

    .line 519
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 520
    .local v4, engCls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v7, "connection"

    invoke-virtual {v4, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 521
    .local v2, connection:Ljava/lang/reflect/Field;
    if-eqz v2, :cond_0

    .line 522
    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 523
    invoke-virtual {v2, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v1

    .line 539
    .end local v0           #cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v1           #connObj:Ljava/lang/Object;
    .end local v2           #connection:Ljava/lang/reflect/Field;
    .end local v4           #engCls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v5           #engObj:Ljava/lang/Object;
    .end local v6           #getEngineMethod:Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    return-object v1

    .line 526
    .restart local v1       #connObj:Ljava/lang/Object;
    :catch_0
    move-exception v3

    .line 527
    .local v3, e:Ljava/lang/NoSuchFieldException;
    invoke-virtual {v3}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    .line 528
    const-string v7, "httpMonitorUtil"

    const-string v8, "can\'t not get field uperIceCream!"

    invoke-static {v7, v8}, Landroid/taobao/util/TaoLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 529
    .end local v3           #e:Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v3

    .line 530
    .local v3, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 531
    .end local v3           #e:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v3

    .line 532
    .local v3, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v3}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 533
    .end local v3           #e:Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v3

    .line 534
    .local v3, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v3}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    .line 535
    .end local v3           #e:Ljava/lang/NoSuchMethodException;
    :catch_4
    move-exception v3

    .line 536
    .local v3, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v3}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0
.end method

.method private static getHttpsConnDownIceCream(Ljava/net/HttpURLConnection;)Ljava/lang/Object;
    .locals 8
    .parameter "conn"

    .prologue
    .line 472
    const/4 v1, 0x0

    .line 474
    .local v1, connObj:Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 477
    .local v0, cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :try_start_0
    const-string v7, "httpsEngine"

    invoke-virtual {v0, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    .line 479
    .local v6, engine:Ljava/lang/reflect/Field;
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 480
    invoke-virtual {v6, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 482
    .local v5, engObj:Ljava/lang/Object;
    if-eqz v5, :cond_0

    .line 483
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 484
    .local v4, engCls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v7, "connection"

    invoke-virtual {v4, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 485
    .local v2, connection:Ljava/lang/reflect/Field;
    if-eqz v2, :cond_0

    .line 486
    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 487
    invoke-virtual {v2, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    .line 498
    .end local v1           #connObj:Ljava/lang/Object;
    .end local v2           #connection:Ljava/lang/reflect/Field;
    .end local v4           #engCls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v5           #engObj:Ljava/lang/Object;
    .end local v6           #engine:Ljava/lang/reflect/Field;
    :cond_0
    :goto_0
    return-object v1

    .line 490
    .restart local v1       #connObj:Ljava/lang/Object;
    :catch_0
    move-exception v3

    .line 491
    .local v3, e:Ljava/lang/NoSuchFieldException;
    invoke-virtual {v3}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_0

    .line 492
    .end local v3           #e:Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v3

    .line 493
    .local v3, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 494
    .end local v3           #e:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v3

    .line 495
    .local v3, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v3}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0
.end method

.method public static isConnReUsedWithWeakMap(Ljava/net/HttpURLConnection;)Landroid/taobao/apirequest/ApiConnectorUtil$ConnReUsedResult;
    .locals 12
    .parameter "conn"

    .prologue
    const/4 v3, 0x0

    .line 97
    if-nez p0, :cond_1

    .line 116
    :cond_0
    :goto_0
    return-object v3

    .line 100
    :cond_1
    invoke-static {p0}, Landroid/taobao/apirequest/ApiConnectorUtil;->getConnObj(Ljava/net/HttpURLConnection;)Ljava/lang/Object;

    move-result-object v0

    .line 102
    .local v0, connObj:Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 103
    sget-object v7, Landroid/taobao/apirequest/ApiConnectorUtil;->connection_hashmap:Ljava/util/WeakHashMap;

    monitor-enter v7

    .line 104
    :try_start_0
    sget-object v6, Landroid/taobao/apirequest/ApiConnectorUtil;->connection_hashmap:Ljava/util/WeakHashMap;

    invoke-virtual {v6, v0}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 105
    const-string v6, "ApiConnectorUtil"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "reused connetion:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 107
    .local v4, time:J
    sget-object v6, Landroid/taobao/apirequest/ApiConnectorUtil;->connection_hashmap:Ljava/util/WeakHashMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v0, v8}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sub-long v8, v4, v8

    const-wide/32 v10, 0xf4240

    div-long v1, v8, v10

    .line 108
    .local v1, exptime:J
    new-instance v3, Landroid/taobao/apirequest/ApiConnectorUtil$ConnReUsedResult;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    const/4 v8, 0x0

    invoke-direct {v3, v6, v1, v2, v8}, Landroid/taobao/apirequest/ApiConnectorUtil$ConnReUsedResult;-><init>(IJI)V

    .line 109
    .local v3, result:Landroid/taobao/apirequest/ApiConnectorUtil$ConnReUsedResult;
    monitor-exit v7

    goto :goto_0

    .line 114
    .end local v1           #exptime:J
    .end local v3           #result:Landroid/taobao/apirequest/ApiConnectorUtil$ConnReUsedResult;
    .end local v4           #time:J
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 111
    :cond_2
    :try_start_1
    sget-object v6, Landroid/taobao/apirequest/ApiConnectorUtil;->connection_hashmap:Ljava/util/WeakHashMap;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v0, v8}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    const-string v6, "ApiConnectorUtil"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "new connection:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method protected static isExceptionConnReused(Ljava/net/HttpURLConnection;)Z
    .locals 3
    .parameter "conn"

    .prologue
    .line 142
    const-string v0, "outputStream"

    invoke-static {p0, v0}, Landroid/taobao/apirequest/ApiConnectorUtil;->getConnProperty(Ljava/net/HttpURLConnection;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "sslOutputStream"

    invoke-static {p0, v0}, Landroid/taobao/apirequest/ApiConnectorUtil;->getConnProperty(Ljava/net/HttpURLConnection;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 143
    const-string v0, "httpMonitorUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exception conn reused!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Landroid/taobao/apirequest/ApiConnectorUtil;->getConnHashCode(Ljava/net/HttpURLConnection;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/taobao/util/TaoLog;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const/4 v0, 0x1

    .line 147
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static printHostList()V
    .locals 5

    .prologue
    .line 61
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .local v2, sb:Ljava/lang/StringBuilder;
    sget-object v3, Landroid/taobao/apirequest/ApiConnectorUtil;->hostList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/taobao/apirequest/ApiConnectorUtil$HostPair;

    .line 63
    .local v0, hp:Landroid/taobao/apirequest/ApiConnectorUtil$HostPair;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Landroid/taobao/apirequest/ApiConnectorUtil$HostPair;->mHost:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 65
    .end local v0           #hp:Landroid/taobao/apirequest/ApiConnectorUtil$HostPair;
    :cond_0
    const-string v3, "hostPair"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public static randomThrowSocketTimeoutException(I)V
    .locals 3
    .parameter "max"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketTimeoutException;
        }
    .end annotation

    .prologue
    .line 614
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 615
    .local v0, ra:Ljava/util/Random;
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Random;->setSeed(J)V

    .line 616
    invoke-virtual {v0, p0}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    if-nez v1, :cond_0

    .line 617
    const-string v1, "sockettimeout"

    const-string v2, "random Exception!"

    invoke-static {v1, v2}, Landroid/taobao/util/TaoLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    new-instance v1, Ljava/net/SocketTimeoutException;

    const-string v2, "random Exception!"

    invoke-direct {v1, v2}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 620
    :cond_0
    return-void
.end method

.method public static resetRequestConnectionProperty(Ljava/net/HttpURLConnection;Ljava/lang/String;)V
    .locals 0
    .parameter "conn"
    .parameter "value"

    .prologue
    .line 433
    return-void
.end method

.method static setConnProperty(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 7
    .parameter "conn"
    .parameter "fieldName"
    .parameter "newObj"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 212
    if-nez p0, :cond_1

    .line 235
    :cond_0
    :goto_0
    return v4

    .line 215
    :cond_1
    invoke-static {p0}, Landroid/taobao/apirequest/ApiConnectorUtil;->getConnObj(Ljava/net/HttpURLConnection;)Ljava/lang/Object;

    move-result-object v0

    .line 216
    .local v0, connObj:Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 218
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 219
    .local v3, propertyField:Ljava/lang/reflect/Field;
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 221
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 223
    .local v2, proObj:Ljava/lang/Object;
    if-nez v2, :cond_0

    .line 227
    invoke-virtual {v3, v0, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v5

    .line 228
    goto :goto_0

    .line 230
    .end local v2           #proObj:Ljava/lang/Object;
    .end local v3           #propertyField:Ljava/lang/reflect/Field;
    :catch_0
    move-exception v1

    .line 231
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static setHttpExceptionConnFlag(Ljava/net/HttpURLConnection;)V
    .locals 2
    .parameter "conn"

    .prologue
    .line 157
    if-nez p0, :cond_0

    .line 158
    const-string v0, "httpMonitorUtil"

    const-string v1, "connection is null!"

    invoke-static {v0, v1}, Landroid/taobao/util/TaoLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    :cond_0
    const-string v0, "sslOutputStream"

    new-instance v1, Landroid/taobao/apirequest/ApiConnectorUtil$FlagOutputStream;

    invoke-direct {v1}, Landroid/taobao/apirequest/ApiConnectorUtil$FlagOutputStream;-><init>()V

    invoke-static {p0, v0, v1}, Landroid/taobao/apirequest/ApiConnectorUtil;->setConnProperty(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 162
    const-string v0, "outputStream"

    new-instance v1, Landroid/taobao/apirequest/ApiConnectorUtil$FlagOutputStream;

    invoke-direct {v1}, Landroid/taobao/apirequest/ApiConnectorUtil$FlagOutputStream;-><init>()V

    invoke-static {p0, v0, v1}, Landroid/taobao/apirequest/ApiConnectorUtil;->setConnProperty(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 163
    const-string v0, "httpMonitorUtil"

    const-string v1, "set setHttpExceptionConnFlag failed!"

    invoke-static {v0, v1}, Landroid/taobao/util/TaoLog;->Logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    :cond_1
    const-string v0, "ApiConnectorUtil"

    const-string v1, "set setHttpExceptionConnFlag success!"

    invoke-static {v0, v1}, Landroid/taobao/util/TaoLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    return-void
.end method

.method public static setHttpsExceptionConnFlag(Ljava/net/HttpURLConnection;)V
    .locals 2
    .parameter "conn"

    .prologue
    .line 174
    if-nez p0, :cond_0

    .line 175
    const-string v0, "httpMonitorUtil"

    const-string v1, "connection is null!"

    invoke-static {v0, v1}, Landroid/taobao/util/TaoLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    :cond_0
    const-string v0, "outputStream"

    new-instance v1, Landroid/taobao/apirequest/ApiConnectorUtil$FlagOutputStream;

    invoke-direct {v1}, Landroid/taobao/apirequest/ApiConnectorUtil$FlagOutputStream;-><init>()V

    invoke-static {p0, v0, v1}, Landroid/taobao/apirequest/ApiConnectorUtil;->setConnProperty(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 178
    const-string v0, "sslOutputStream"

    new-instance v1, Landroid/taobao/apirequest/ApiConnectorUtil$FlagOutputStream;

    invoke-direct {v1}, Landroid/taobao/apirequest/ApiConnectorUtil$FlagOutputStream;-><init>()V

    invoke-static {p0, v0, v1}, Landroid/taobao/apirequest/ApiConnectorUtil;->setConnProperty(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 179
    const-string v0, "httpMonitorUtil"

    const-string v1, "set setHttpsExceptionConnFlag failed!"

    invoke-static {v0, v1}, Landroid/taobao/util/TaoLog;->Logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    :cond_1
    const-string v0, "ApiConnectorUtil"

    const-string v1, "set setHttpsExceptionConnFlag success!"

    invoke-static {v0, v1}, Landroid/taobao/util/TaoLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    return-void
.end method

.method public static updateConnUsedTimeWithWeakMap(Ljava/net/HttpURLConnection;)V
    .locals 5
    .parameter "conn"

    .prologue
    .line 125
    if-nez p0, :cond_0

    .line 132
    :goto_0
    return-void

    .line 129
    :cond_0
    sget-object v1, Landroid/taobao/apirequest/ApiConnectorUtil;->connection_hashmap:Ljava/util/WeakHashMap;

    monitor-enter v1

    .line 130
    :try_start_0
    sget-object v0, Landroid/taobao/apirequest/ApiConnectorUtil;->connection_hashmap:Ljava/util/WeakHashMap;

    invoke-static {p0}, Landroid/taobao/apirequest/ApiConnectorUtil;->getConnObj(Ljava/net/HttpURLConnection;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
