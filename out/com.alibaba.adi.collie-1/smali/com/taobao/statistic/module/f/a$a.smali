.class public Lcom/taobao/statistic/module/f/a$a;
.super Ljava/lang/Object;
.source "RecordManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/statistic/module/f/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field private oI:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private oJ:[B

.field final synthetic oK:Lcom/taobao/statistic/module/f/a;


# direct methods
.method public constructor <init>(Lcom/taobao/statistic/module/f/a;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 367
    iput-object p1, p0, Lcom/taobao/statistic/module/f/a$a;->oK:Lcom/taobao/statistic/module/f/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 368
    iput-object v0, p0, Lcom/taobao/statistic/module/f/a$a;->oI:Ljava/util/ArrayList;

    .line 369
    iput-object v0, p0, Lcom/taobao/statistic/module/f/a$a;->oJ:[B

    return-void
.end method


# virtual methods
.method public a(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 376
    .local p1, resourceHandlers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/taobao/statistic/module/f/a$a;->oI:Ljava/util/ArrayList;

    .line 377
    return-void
.end method

.method public dO()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 372
    iget-object v0, p0, Lcom/taobao/statistic/module/f/a$a;->oI:Ljava/util/ArrayList;

    return-object v0
.end method

.method public dP()[B
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 384
    iget-object v1, p0, Lcom/taobao/statistic/module/f/a$a;->oJ:[B

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/taobao/statistic/module/f/a$a;->oJ:[B

    array-length v1, v1

    if-lez v1, :cond_0

    .line 385
    iget-object v1, p0, Lcom/taobao/statistic/module/f/a$a;->oJ:[B

    array-length v1, v1

    add-int/lit8 v1, v1, 0x4

    new-array v0, v1, [B

    .line 386
    .local v0, buffer:[B
    iget-object v1, p0, Lcom/taobao/statistic/module/f/a$a;->oJ:[B

    invoke-static {v1}, Lorg/usertrack/android/utils/d;->s([B)I

    move-result v1

    invoke-static {v1}, Lorg/usertrack/android/utils/e;->getBytes(I)[B

    move-result-object v1

    invoke-static {v1, v3, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 388
    iget-object v1, p0, Lcom/taobao/statistic/module/f/a$a;->oJ:[B

    iget-object v2, p0, Lcom/taobao/statistic/module/f/a$a;->oJ:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 391
    .end local v0           #buffer:[B
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setData([B)V
    .locals 0
    .parameter "data"

    .prologue
    .line 395
    iput-object p1, p0, Lcom/taobao/statistic/module/f/a$a;->oJ:[B

    .line 396
    return-void
.end method
