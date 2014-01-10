.class Lcom/taobao/statistic/module/a/b$a;
.super Ljava/lang/Thread;
.source "ConfigurationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/statistic/module/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field private nB:Ljava/lang/String;

.field final synthetic nC:Lcom/taobao/statistic/module/a/b;


# direct methods
.method public constructor <init>(Lcom/taobao/statistic/module/a/b;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "aConfigurationUrl"

    .prologue
    .line 370
    iput-object p1, p0, Lcom/taobao/statistic/module/a/b$a;->nC:Lcom/taobao/statistic/module/a/b;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 368
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/statistic/module/a/b$a;->nB:Ljava/lang/String;

    .line 371
    iput-object p2, p0, Lcom/taobao/statistic/module/a/b$a;->nB:Ljava/lang/String;

    .line 372
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 376
    iget-object v7, p0, Lcom/taobao/statistic/module/a/b$a;->nB:Ljava/lang/String;

    invoke-static {v7}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 378
    iget-object v7, p0, Lcom/taobao/statistic/module/a/b$a;->nC:Lcom/taobao/statistic/module/a/b;

    invoke-static {v7}, Lcom/taobao/statistic/module/a/b;->a(Lcom/taobao/statistic/module/a/b;)Lorg/json/JSONObject;

    move-result-object v3

    .line 379
    .local v3, localData:Lorg/json/JSONObject;
    iget-object v7, p0, Lcom/taobao/statistic/module/a/b$a;->nC:Lcom/taobao/statistic/module/a/b;

    invoke-static {v7, v3}, Lcom/taobao/statistic/module/a/b;->a(Lcom/taobao/statistic/module/a/b;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    .line 381
    .local v0, cf:Ljava/lang/String;
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 382
    .local v4, postbody:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v7, "cf"

    invoke-interface {v4, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    const/4 v7, 0x3

    iget-object v8, p0, Lcom/taobao/statistic/module/a/b$a;->nB:Ljava/lang/String;

    invoke-static {v7, v8, v4}, Lcom/taobao/statistic/module/data/b;->a(ILjava/lang/String;Ljava/util/Map;)[B

    move-result-object v1

    .line 386
    .local v1, data:[B
    const-string v5, ""

    .line 387
    .local v5, responseText:Ljava/lang/String;
    if-eqz v1, :cond_1

    array-length v7, v1

    if-lez v7, :cond_1

    .line 389
    :try_start_0
    new-instance v6, Ljava/lang/String;

    const/4 v7, 0x0

    array-length v8, v1

    const-string v9, "UTF-8"

    invoke-direct {v6, v1, v7, v8, v9}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 390
    .end local v5           #responseText:Ljava/lang/String;
    .local v6, responseText:Ljava/lang/String;
    const/4 v7, 0x2

    :try_start_1
    const-string v8, "ConfigurationData"

    invoke-static {v7, v8, v6}, Lcom/taobao/statistic/core/d;->b(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_3

    .line 397
    :try_start_2
    invoke-static {v6}, Lcom/taobao/statistic/d/a/a;->R(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 398
    iget-object v7, p0, Lcom/taobao/statistic/module/a/b$a;->nC:Lcom/taobao/statistic/module/a/b;

    invoke-static {v7, v6, v3}, Lcom/taobao/statistic/module/a/b;->a(Lcom/taobao/statistic/module/a/b;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 414
    .end local v0           #cf:Ljava/lang/String;
    .end local v1           #data:[B
    .end local v3           #localData:Lorg/json/JSONObject;
    .end local v4           #postbody:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v6           #responseText:Ljava/lang/String;
    :goto_0
    return-void

    .line 392
    .restart local v0       #cf:Ljava/lang/String;
    .restart local v1       #data:[B
    .restart local v3       #localData:Lorg/json/JSONObject;
    .restart local v4       #postbody:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v5       #responseText:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 393
    .local v2, e:Ljava/io/UnsupportedEncodingException;
    :goto_1
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .end local v2           #e:Ljava/io/UnsupportedEncodingException;
    .end local v5           #responseText:Ljava/lang/String;
    .restart local v6       #responseText:Ljava/lang/String;
    :cond_0
    move-object v5, v6

    .line 407
    .end local v6           #responseText:Ljava/lang/String;
    .restart local v5       #responseText:Ljava/lang/String;
    :cond_1
    :goto_2
    :try_start_3
    iget-object v7, p0, Lcom/taobao/statistic/module/a/b$a;->nC:Lcom/taobao/statistic/module/a/b;

    invoke-static {v7, v5}, Lcom/taobao/statistic/module/a/b;->a(Lcom/taobao/statistic/module/a/b;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 409
    :catch_1
    move-exception v7

    .line 413
    .end local v0           #cf:Ljava/lang/String;
    .end local v1           #data:[B
    .end local v3           #localData:Lorg/json/JSONObject;
    .end local v4           #postbody:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v5           #responseText:Ljava/lang/String;
    :cond_2
    iget-object v7, p0, Lcom/taobao/statistic/module/a/b$a;->nC:Lcom/taobao/statistic/module/a/b;

    const-string v8, ""

    invoke-static {v7, v8}, Lcom/taobao/statistic/module/a/b;->a(Lcom/taobao/statistic/module/a/b;Ljava/lang/String;)V

    goto :goto_0

    .line 401
    .restart local v0       #cf:Ljava/lang/String;
    .restart local v1       #data:[B
    .restart local v3       #localData:Lorg/json/JSONObject;
    .restart local v4       #postbody:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v6       #responseText:Ljava/lang/String;
    :catch_2
    move-exception v7

    move-object v5, v6

    .end local v6           #responseText:Ljava/lang/String;
    .restart local v5       #responseText:Ljava/lang/String;
    goto :goto_2

    .line 392
    .end local v5           #responseText:Ljava/lang/String;
    .restart local v6       #responseText:Ljava/lang/String;
    :catch_3
    move-exception v2

    move-object v5, v6

    .end local v6           #responseText:Ljava/lang/String;
    .restart local v5       #responseText:Ljava/lang/String;
    goto :goto_1
.end method
